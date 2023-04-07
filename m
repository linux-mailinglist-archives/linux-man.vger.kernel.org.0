Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 982B46DB64F
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 00:10:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbjDGWKQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 18:10:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjDGWKP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 18:10:15 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3B2C67E
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 15:10:13 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 337M9gCU002835
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sat, 8 Apr 2023 00:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680905383; bh=4YrEPNWv0VoPVGK1wtTrN8Penhpp+pqn12pIN86+N5I=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=ay/5Ac1YWWiBaex6yf2PeVyPTRunJvYiN0djGjVO61vPRqxKxCulMIavUh0cXieEN
         kdzLAesJHq9rdPQm18jvZO/Z/Gren4hye71LxX68UH2939WpR783z/hSi5iIAwcohm
         jg9yc2a3kv1s5L/tkFE0hASIAlgdHgAKVGRFZrCE=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff <groff@gnu.org>
Subject: Re: reformatting man pages at SIGWINCH
In-Reply-To: <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com> (Alejandro
        Colomar's message of "Fri, 7 Apr 2023 23:26:35 +0200")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <20230407021822.3grfnenicwjhdive@illithid>
        <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sat, 08 Apr 2023 00:09:36 +0200
Message-ID: <ghwn2nl4yn.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:

> Hi Branden,
>
> On 4/7/23 04:18, G. Branden Robinson wrote:
>> At 2023-04-06T03:10:59+0200, Alejandro Colomar wrote:
>>> Hmm, now that I think, it's probably an issue of coordinating man(1)
>>> and less(1).  I sometimes wish that when I resize a window where I'm
>>> reading a man page, it would reformat the page from source.
>>=20
>> Seems like it shouldn't be impossible to me, but what I imagine would
>> require a little re=C3=ABngineering of man(1), perhaps to spawn a little
>> custom program to manage zcat/nroff pipeline it constructs.  This little
>> program's sole job could be to be aware of this pipeline and listen for
>> SIGWINCH; if it happens, kill the rest of the pipeline and re=C3=ABxecut=
e it.
>>=20
>> Maybe I thought of it this way because (I suspect) it aligns with my
>> vision I've expressed elsewhere of man(1) having unfortunately
>> aggregated two separate functions: librarian vs. renderer.
>> Historically, of course the latter function was almost vestigial, since
>> early Unix systems had no pager program and their man pages required
>> little to no preprocessing; man(1) slowly accreted into a larger thing.
>>=20
>>> Of course, that might be a problem for keeping track of where I was,
>>> since lines moved around.
>>=20
>> That seems like a harder problem to me.  You'd need a way for the pager
>> to communicate position information back to the mini-man renderer
>> program I envision.  Two challenges here: (1) what part of the screen
>> was the reader actually looking at?  (2) how is the pager supposed to
>> know how to map any given location on the screen back to a place in the
>> unrendered source document so it can be accurately found when the
>> document is rerendered?  These feel nearly intractable to me.  But maybe
>> I have a poor imagination.
>
> Maybe it could be done with .SH and .SS.  The heuristics to find these
> are simple.  It wouldn't be very precise, but it could try to find the
> closest (only upwards) (sub)section heading.  With some luck, .TP would
> also be helpful.

Yes, that should give nice results.  But for manual pages like git(1)
with large areas between those this becomes difficult, again.

Today, I experimented with one more heuristics, adjusting the current
position according to the proportional change of avg. line size and also
change of window dimension (horizontal) but all of those didn't get better
results than what I currently implemented (stay at the position).

Out of curiosity, I checked how firefox behaves on horizontal resizes
and comparing to some of those results, lsp is not the worst on earth ;-)

If time allows, I want to see if working with Levenshtein distances
could get exact results.  Perhaps this will turn out to be too expensive
but maybe the fact that the area to be checked is limited helps...

Regards,

Dirk
