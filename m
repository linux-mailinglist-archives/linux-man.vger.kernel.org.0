Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4EA96DCB47
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 21:06:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbjDJTGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Apr 2023 15:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjDJTF7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Apr 2023 15:05:59 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7901718
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 12:05:57 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 33AJ5TxO002622
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Mon, 10 Apr 2023 21:05:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1681153531; bh=YIwaZq+JQ1Mm/njuz8B59S/1C9bUgsg2XLkcSwn/ycg=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=FX0b0EABCjpl4On/CfA/bLwcE/Cl0hRy/J3xCF3F2UQz+N0SbZqbYR3xdYxFV4sn7
         owJrE2oe0hGh4K4M8WI8RrEx4xqTOKiVOh4M51VaePqb4cbuD3EbBeZ5MQkn4IY94b
         EKLmnAG1KYOJTStyTgaYYbeXxbcKDCI2n8/ChO0Y=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff <groff@gnu.org>
Subject: Re: reformatting man pages at SIGWINCH
In-Reply-To: <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com> (Alejandro
        Colomar's message of "Sat, 8 Apr 2023 00:16:51 +0200")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <20230407021822.3grfnenicwjhdive@illithid>
        <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
        <ghwn2nl4yn.fsf@gouders.net>
        <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Mon, 10 Apr 2023 21:05:24 +0200
Message-ID: <ghsfd7k16z.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Alejandro Colomar <alx.manpages@gmail.com> writes:

> On 4/8/23 00:09, Dirk Gouders wrote:
>>> Maybe it could be done with .SH and .SS.  The heuristics to find these
>>> are simple.  It wouldn't be very precise, but it could try to find the
>>> closest (only upwards) (sub)section heading.  With some luck, .TP would
>>> also be helpful.
>> 
>> Yes, that should give nice results.  But for manual pages like git(1)
>> with large areas between those this becomes difficult, again.
>> 
>> Today, I experimented with one more heuristics, adjusting the current
>> position according to the proportional change of avg. line size and also
>> change of window dimension (horizontal) but all of those didn't get better
>> results than what I currently implemented (stay at the position).
>> 
>> Out of curiosity, I checked how firefox behaves on horizontal resizes
>> and comparing to some of those results, lsp is not the worst on earth ;-)
>> 
>> If time allows, I want to see if working with Levenshtein distances
>> could get exact results.  Perhaps this will turn out to be too expensive
>> but maybe the fact that the area to be checked is limited helps...
>
> For something simpler, you could just count words since the start of the
> section divided by total words in the section.  That should be fast, and
> I expect, also quite precise.  Hyphenating might work against you on
> this, but on average it shouldn't move you too much.

very pragmatic -- very effective, thanks for that suggestion.  I
started with implementing a simpler version of that (no counting of all
words in the section):

- Backwards count words until we reach an empty line, the section
  header or the beginning of the document

        Stop if it was the section header or beginning of the document

        Continue and just count empty lines until we reach the
        section header or the beginning of the document

This relies on the assumption that horizontal resizes don't create or
delete emty lines and it still has the weakness that manual pages
(e.g. bash(1)) contain large areas without empty lines but it's
definitely better than just staying at the position as it was before.

If it turns out to still be too weak, I could count all words between
two empty lines and set that in relation to the words from the
preceeding empty line.

But perhaps, I now learn that empty lines are by no means that constant
value that I assume...

Dirk
