Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB0365A001E
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 19:12:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238474AbiHXRM0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 13:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238988AbiHXRMY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 13:12:24 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 688A763B9
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 10:12:21 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oQtvP-00Dd6R-4k; Wed, 24 Aug 2022 19:12:19 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oQtvO-007cg5-KI; Wed, 24 Aug 2022 19:12:18 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oQtvO-0000z0-Ir; Wed, 24 Aug 2022 19:12:18 +0200
Date:   Wed, 24 Aug 2022 19:12:18 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Message-ID: <YwZb8s7URld24bli@asta-kit.de>
References: <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
 <YwYmENPAprVbooAP@asta-kit.de>
 <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Wed, Aug 24, 2022 at 05:04:57PM +0200:
> On 8/24/22 15:22, Ingo Schwarze wrote:
>> Alejandro Colomar wrote on Sat, Aug 20, 2022 at 02:40:58PM +0200:

>>> Should I keep the static part of the COLOPHON in a REPORTING BUGS section?

>> I do not think a manual page should include *any* boilerplate text.
>> Text that is the same everywhere is nothing but a distraction
>> and a waste of screen real estate.

> Agree.  I was hesitant of removing that, which mtk added a long time 
> ago, since he claimed an important improvement in awareness of the 
> existence of the project.  But I prefer using reportbug(1) and dpkg(1) 
> or apt(8) (or equivalent in other distros) to find out how to report bugs.

Hum.  Interesting aspect.  Maybe Micheal had a point that advertising
the Linux man-pages project - even in such an aggressive way - had some
value in the early days.  I'm not an expert in Linux history, but i
believe use of manual pages was initially much less common in Linux-
based operating systems compared to AT&T UNIX, other commercial UNIX
systems, and BSD.  Also, due to the fragmentation of Linux-based
operating systems into Linux (the kernel), GNU (the most important
parts of userland), and software from many third-party sources,
a single, uniform corpus of manual pages was slower to develop for
Linux than, for example, in BSD.

But nowadays, i would no longer subscribe to such a theory, it seems
to me that times have changed in this respect.  Debian has fostered
some progress in writing missing manual pages.  Web sites like
manpages.debian.org and even man.archlinux.org now provide more
comprehensive collections of manual pages than even BSDs do.
And such sites usually clearly identify package names, much reducing
the effects of the conceptual fragmentation.  So i expect many more
Linux users are now aware of the man-pages project than used to be,
and even those who aren't yet are likely to find out once they need to.

> Greg KH expressed concern about the copyright of the example programs 
> some time ago.  He asked what license applies to them, and how should a 
> user know, that is, is a user allowed to create derived programs from 
> those examples?  Should we state their license in a C comment within the 
> example program?  Or just assume that it's a meaningless program and 
> that anyone can just copy it indiscriminately because, who cares about 
> such a tiny insignificant piece of code?

That is an interesting question, too.  I believe it never occurred
to me because EXAMPLES in OpenBSD manual pages are typically kept so
short and simple that they only demonstrate well-established aspects
of prior art and do not really involve any creative act by the author
of the manual pages, hence obviously being in in the public domain
in the first place.

But in the Linux man-pages project, you have many long and complex
programs below EXAMPLES, some of which certainly pass the test of
originality, hence being protected by Copyright law.

Now obviously, unless otherwise stated, such examples are covered
by the SPDX-License-Identifier: at the top of the file.  For pages
licensed under the BSD or MIT licenses, everything is obviously
fine, anyone can use such example code in any project.  For pages
under GPL licenses, the situation is also tolerable: while BSD
projects cannot use these example, at least GPL projects can, which
feels like the main purpose of a Linux project.  I sense a real
problem with EXAMPLES in Linux-man-pages-copyleft pages though:
Those can *neither* be used in BSD projects *nor* in GPL projects
as far as i can see.

Maybe it would be worth finding the authors of significant examples
in Linux-man-pages-copyleft pages and getting their permission
to add a line like

  /* This example code is released into the public domain. */

at the top of such examples, maybe together with a roff(7) comment
like

  .\" This example code was written by Alice and Bob in 2015.

Anything more complicated, like refering to GPL-2+ would seem like
overkill to me.

>>> AUTHORS,

>> Mentioning the main AUTHORS of the original implementation of the program -
>> for example, Robert Morris and Lorinda Cherry for bc(1) - and also
>> mentioning the main AUTHORS of your current implementation, if it
>> was rewritten from scratch, seems most important to me.

> I guess in the Linux man-pages that means just don't use it at all. 
> Original authors of Linux and GNU are Linux and RMS and that's well 
> known.  Current author of any given feature is probably a combination of 
> thousands of people.

I didn't mean naming all contributors; that would be completely
unreasonable even in the (usually smaller) BSD projects.  It seems
sufficient to me to name the main and original author(s).  For
example, for GNU troff, that is James Clark.  I don't doubt there
is much GNU software where Linus and RMS are not the principle
authors.

However, i realize that

 (1) AUTHORS sections are on average less useful in sections 2, 3, and 4
     than in sections 1 and 8, and the Linux man-pages projects is
     sparse in sections 1 and 8, for obvious reasons;

 (2) If something really goes back all the way to Linus or RMS,
     not explicitly saying so would be reasonable for similar
     reasons as BSD manual pages rarely use AUTHORS sections for
     features that have existed since the 1970s because those
     were usually invented by Dennis Ritchie or Ken Thompson.
     We do use AUTHORS sections for programs written from 1BSD
     (1978) onwards, even if written by Bill Joy, Keith Bostic,
     Eric Allman, Mary Ann Horton, Kurt Shoens, Rob Pike, or
     similarly well-known people.

I think it's a case-by-case decision: is there clear enough and
significant enough authorship of the initial version, or was it
a cast of many right from the start?

Yours,
  Ingo
