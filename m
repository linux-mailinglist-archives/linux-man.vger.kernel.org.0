Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE74359FB34
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 15:22:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233687AbiHXNWa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 09:22:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237983AbiHXNW2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 09:22:28 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A2D67165
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 06:22:27 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oQqKv-00CaO0-92; Wed, 24 Aug 2022 15:22:25 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oQqKu-007cUa-PJ; Wed, 24 Aug 2022 15:22:24 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oQqKu-00088F-Nu; Wed, 24 Aug 2022 15:22:24 +0200
Date:   Wed, 24 Aug 2022 15:22:24 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Message-ID: <YwYmENPAprVbooAP@asta-kit.de>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sat, Aug 20, 2022 at 02:40:58PM +0200:

> Should I keep the static part of the COLOPHON in a REPORTING BUGS section?

I do not think a manual page should include *any* boilerplate text.
Text that is the same everywhere is nothing but a distraction
and a waste of screen real estate.

> And an even more general question?  Should a manual page state the 
> COPYRIGHT,

No, it should *not* state any Copyright in the *formatted* text.
Every file should contain a Copyright and license header at the top
as a comment though: in a manual page file, .\" stating the Coypright
and license of that particular manual page, in a program source file,
/* */ stating the Coypright and license of that particular source file.

Manual pages are for users who want to use the program or function.
For merely using it, they do not need to consider *any* Copyright or
license, at least as long as it is more or less free software.

Stating the Copyright and license matters for packagers and for
developers or companies who consider copying parts of files for their
own projects, and those people are used to looking at source files.

> AUTHORS,

Mentioning the main AUTHORS of the original implementation of the program -
for example, Robert Morris and Lorinda Cherry for bc(1) - and also
mentioning the main AUTHORS of your current implementation, if it
was rewritten from scratch, seems most important to me.

Mentioning the AUTHORS of the manual page seems much less relevant
to me, and it is usually omitted.  Mentioning them is not wrong, though,
and it some cases, it can be interesting.  For example, some programs
used to be notorious for not having any manual page whatsoever until
some Debian developers - who were not even associated with the projects
maintaining those programs - took pity and wrote a manual page.
Crediting those brave souls feels fair to me, just as an example.

If you mention people who wrote the manual but did not contribute
significantly to the program itself, be explicit that they wrote
the manual page.

> and REPORTING BUGS of the software it documents, or 
> of the page itself, or both?

Any REPORTING BUGS section feels like a bad idea to me - see above
regarding boilerplate text.

Besides, if a user is unable to use whatever package manager they
have, inspect which package the program they are using (and its
manual page) belong to, and inspect the project website how to
properly report a bug, would you really expect a useful bug report?
I certainly wouldn't.  So not having a REPORTING BUGS section
will discourage only extremely clueless users, whereas having one
will likely annoy anyone of even minimal competence.

On top of that, i have often seen bug reporting instructions in
manual pages that were literally several decades out of date,
up to and including advertising bang path mail addresses.
I guess you would not like ending up in that trap, right?

Yours,
  Ingo
