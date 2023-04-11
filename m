Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 457F16DD70A
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 11:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbjDKJkM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 05:40:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbjDKJjx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 05:39:53 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D7940F6
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 02:39:25 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 33B9dGmw001622
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Tue, 11 Apr 2023 11:39:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1681205957; bh=0xiU1eRzohm/kAfzRtFtIKdcSPnNgxVWTBUKRbOl/Zk=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=o5RhcpgM+FgeDA6wflCwG2Ozl3YMI0CYpN1Ov4cZwGRkKeLtRO49i2ngzenvYE0Zw
         mM9KKjOjgV9wncKjAIVbNA7jk34w2WKCz9s4Oz7SHFXyYllzXpALTDHd/A7/6bYQpr
         T7jmtZQ4j2zu+n9c/PDoWUuRKrrj70dhCIXh9raQ=
From:   Dirk Gouders <dirk@gouders.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff <groff@gnu.org>
Subject: Re: reformatting man pages at SIGWINCH
In-Reply-To: <20230410202422.s4xdqcdxzsgdge7v@illithid> (G. Branden Robinson's
        message of "Mon, 10 Apr 2023 15:24:22 -0500")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <834jpuuc1a.fsf@gnu.org>
        <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
        <20230407021822.3grfnenicwjhdive@illithid>
        <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
        <ghwn2nl4yn.fsf@gouders.net>
        <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
        <ghsfd7k16z.fsf@gouders.net>
        <20230410202422.s4xdqcdxzsgdge7v@illithid>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Tue, 11 Apr 2023 11:39:11 +0200
Message-ID: <ghfs96kbb4.fsf@gouders.net>
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

Hi Branden,

"G. Branden Robinson" <g.branden.robinson@gmail.com> writes:

> At 2023-04-10T21:05:24+0200, Dirk Gouders wrote:
>> This relies on the assumption that horizontal resizes don't create or
>> delete emty lines and it still has the weakness that manual pages
>> (e.g. bash(1)) contain large areas without empty lines but it's
>> definitely better than just staying at the position as it was before.
>
> I think this assumption should hold for man and mdoc documents rendered
> by a *roff--I'm not sure about mandoc(1), but it probably will for
> reasons I'll elaborate below.
>
> Vertical space in *roff documents might get reduced at page breaks, but
> not to zero, except at page breaks.
>
> There are a few reasons that I think reinforce the assumption holding:
>
> 1.  man(7) and mdoc(7) don't offer macros for just sticking an arbitrary
> amount of vertical space into a document.  If you want that, you'll need
> to go down to formatter requests, which is seldom done by human man page
> authors, but a bit more frequently by automated generators of man(7) or
> mdoc(7) from other formats.
>
> 2.  Even in traditional *roff, if you issued an ".sp 6" request
> (demanding 6 blank lines), then if you were within 6 lines of a "trap"
> (usually a page footer trap or the actual bottom of the page), the
> result would be that you'd get blank lines until the trap sprung, and
> any excess would be thrown away.  So if there were only 4 lines of
> distance to the page footer, the leftover two would be discarded and
> _not_ appear after the header of the next page.[1]
>
> 3.  mandoc(1) and groff's man(7) and mdoc(7) macro packages both
> implement "continuous rendering" for terminal output.  This means that
> they contrive to arrange for an effectively infinite page length, so
> there are no page breaks.  (Except when you render multiple man pages at
> a time, a use case groff 1.23.0 will support.) Since pager programs are
> applicable only to terminal output in the first place, this should
> address your use case.  (You _can_ turn off continuous rendering in
> groff, and see man pages as they would have formatted for Western
> Electric Teletype machines, which printed to long spools of paper with
> 66 lines to the nominal page.)
>
> 4.  A habit has grown up among man(1) programs and pagers to call for
> and support, respectively, a "blank line squeezing" feature: any runs of
> more than one blank line are condensed to 1 blank line each.  In groff
> 1.23.0, this will no longer be necessary when continuously rendering.
> (Historically, this squeezing feature was used to "tighten up" vertical
> space after the page header, prior to the "NAME" section heading of the
> document.)  In my opinion, pager programs should perform as few
> transformations as possible on the output of grotty(1), the groff output
> driver that supports terminal devices.  The long-time author and
> maintainer of less(1) does not agree, so you have to call that program
> with its "-R" flag to view grotty(1) output as groff intends it.  (To
> see what those intentions are, format the document without paging it.)

Thank you for the detailled assessment.  Perhaps my misunderstanding is
because I'm not a native speaker but which document should I format to
see what those intentions are?

>> If it turns out to still be too weak, I could count all words between
>> two empty lines and set that in relation to the words from the
>> preceeding empty line.
>
> You might do this only as a fallback, if there were no blank lines on
> the screen at the old window size when the resizing event happened.

Yes, such a fallback would be good to have.  I am again about to
implement a suggestion with some modifications: I would make using the
section-word-count (which is expensive) dependent on _how many_ words I
found while searching for an empty line or the section header.  My
motivation for this is that an increasing number of continuous words
also increases the possibility for hyphenation working against the
heuristics.  Saying that, I probably also need to consider the number of
lines that contain those words.  I have to think more about this.

>> But perhaps, I now learn that empty lines are by no means that
>> constant value that I assume...
>
> In my opinion, the presence or absence of a single blank line in
> formatted output is important.  groff 1.23.0 will feature some bug fixes
> with respect to their handling within and adjacent to tbl(1) input.[2]
>
> Since I flogged groff 1.23.0 three times in this email, I suppose I
> should point people to where they can get the 1.23.0.rc3 release
> candidate source archive.  Feedback would be appreciated.

Oh well, I didn't measure it but I spent quite some time to work on
doc/lsp-help.1 and try to find a solution for that "nasty empty line"
that appeared in of the tables that I use for the online help -- I was
convinced it was my fault.

Gentoo already has an ebuild for groff-1.23.0-rc3 and simply using this
fixes that problem in the table.  So, from now on all my testing happens
with groff-1.23.0-rc3 and I will report should I recognize problems.

Regards,

Dirk
