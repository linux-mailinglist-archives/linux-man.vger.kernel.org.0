Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29BCF591FF3
	for <lists+linux-man@lfdr.de>; Sun, 14 Aug 2022 15:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbiHNN4a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 09:56:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231397AbiHNN43 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 09:56:29 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A12F1D0DD
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 06:56:27 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oNE6L-00HSYW-3b; Sun, 14 Aug 2022 15:56:25 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oNE6K-007Khd-At; Sun, 14 Aug 2022 15:56:24 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oNE6K-0000wq-9Z; Sun, 14 Aug 2022 15:56:24 +0200
Date:   Sun, 14 Aug 2022 15:56:24 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     DJ Chase <u9000@posteo.mx>
Cc:     g.branden.robinson@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Standardize roff (was: *roff `\~` support)
Message-ID: <Yvj/CAUSL1jVbAot@asta-kit.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:

> Have we ever considered a de jure *roff standard?

No, i think that would be pure madness given the amount of working
time available in any of the roff projects.

I expect the amount of effort required to be significantly larger
than the amount of effort that would be required for rewriting
the entire groff documentation from scratch because:

 1. You would have to study all features of all the major roff
    implementations (groff, Heirloom, neatroff, Plan 9, and possibly
    some others, maybe even historical ones) and compare the features.
    For every difference (i.e. typically multiple times for almost every
    feature), you would have to descide which behaviour to standardize
    and what to leave unspecified.

 2. Discussions of the kind mentioned in item 1 are typically
    lengthy and often heated.  If you don't believe me, just buy
    several pounds of popcorn and watch the Austin list, where
    maintenance of the POSIX standard is being discussed.
    Even discussions of the most minute details tend to be
    complicated and extended.

 3. Even after deciding what you want to specify, looking at the
    manuals typically provides very little help because a
    standard document requires a completely different style.
    User and even reference documentation is optimized for clarity,
    comprehensibility, and usefulness in practice; a standard document
    needs to be optimized for formal precision, whereas
    comprehensibility and conciseness matters much less.

 4. Even when you have the text - almost certainly after many years
    of work by many people - be prepared for huge amounts of red
    tape, like dealing with elected decision-making bodies of
    professional associations, for example the IEEE.  Be prepared
    for having to know things like what technical societies,
    technical councils, and technical committees are, and how to
    deal with each of them.  You are certainly in for a lot of
    committee work, and i would count you lucky if you got away
    without having to deal with lawyers, paying membership fees,
    buying expensive standard documents you need for your work,
    and so on and so forth.  Even when you submit a technically
    perfect proposal, it will typically be rejected without even
    being considered until you secure the official sponsorship
    of at least one of the following: the IEEE, the Open Group,
    or ISO/IEC JTC 1/SC 22.  Of course, your milage may vary
    depending on what exactly you want to standardize and how,
    but since roff(1) is arguably the most famous UNIX program,
    i wouldn't be surprised if you were if for an uanbridged
    POSIX-style Odyssey.

 5. The above is not helped by standards committee work being
    typically conducted in ways that are technically ridiculously
    outdated, and i'm saying that as an avid user of cvs(1) who
    somewhat dislikes git(1) as overengineered and very strongly
    detests GitHub.  Take the Austin groups as an example.  Most of
    its work is changing the content of technical documents,
    but the group *never* uses diff(1), never uses patch(1), and
    never makes diffs available even after they have been approved.
    They are very firmly stuck in the 1980ies regarding the technolgies
    they are using and missed even most of the 1990ies innovations.
    They do have some kind of version control system internally, but
    no web interface of such version control ins publicly available,
    nor any other public read-only access to that version control.
    Even the source code of the finished version of the standard
    is typically not made available to the public (at least not
    without forcing people to jump through hoops).

> A standard could lead to more implementations because
> developers would not have to be intimately familiar with the
> {groff,heirloom,neatroff} toolchain before implementing a
> *roff toolchain themselves.

That's not even wishful thinking.  Better maintenance of the
existing implementations would be so much more useful than yet
another implementation.

> It could also lead to more users & use cases because existing
> users could count on systems supporting certain features, so
> they could use *roff in more situations, which would lead to
> more exposure.

You appear to massively overrate the importance end-users
typically attribute to standardization.  Even people *implementing*
a system rarely put such an emphasis on standardization.

> It’s ridiculous that *roff isn’t part of POSIX when it was Unix’s
> killer feature.

You are welcome to spend the many years required to change that.
But be aware that some standardization efforts that are part of
POSIX resulted in parts of the standard that are barely useable
for practical work.  One famous example is make(1).

Don't get me wrong: i think standardization is very nice to have,
should be taken very seriously when available, and provides some
value even when the standardization effort mostly failed, like in
the case of make(1).  But standardization is absolutely not cheap.
To the contrary, it is usually significantly more expensive than
implementation and documentation.

Yours,
  Ingo
