Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 064C577E6D3
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 18:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244171AbjHPQpY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Aug 2023 12:45:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345048AbjHPQou (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Aug 2023 12:44:50 -0400
X-Greylist: delayed 626 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 16 Aug 2023 09:44:16 PDT
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2572F30ED
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 09:44:15 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1qWJSr-00Eegf-1M;
        Wed, 16 Aug 2023 18:33:46 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qWJSr-000c9u-1d; Wed, 16 Aug 2023 18:33:45 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qWJSr-008PKg-1C; Wed, 16 Aug 2023 18:33:45 +0200
Date:   Wed, 16 Aug 2023 18:33:45 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <ZNz6acTbfc6SydZc@asta-kit.de>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230816035522.fhfkciclx4dvxpzk@illithid>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

G. Branden Robinson wrote on Tue, Aug 15, 2023 at 10:55:22PM -0500:

> If the page is withdrawn, I expect distributors will need to manage the
> man.7 page using Debian's "alternatives" mechanism or similar; if
> groff_man.7 is installed, man.7 should be a symlink to it.  If
> mandoc_man.7 is installed, likewise.  If both are installed, the
> distributor needs to select a default preference.

I think that most general-purpose Linux distributions are probably
better off simply prefering groff_man.7 over the man.7 bundled with
mandoc.  As you know, the mandoc distribution regards the man(7)
language as a legacy language that is obsolete since about 1990 -
which makes sense for all operating systems based on BSD and Illumos.
Consequently, the mandoc man(7) page only provides bare-bone information
focussing on questions of compatibily and no advice whatsoever
for people intending to write new manual pages.

That perspective is not really helpful for general purpose Linux
distributions: for these, the Linux man-pages project matters a lot,
and that project is not considering the man(7) language as obsolete at
all.  That i keep recommending changing that stance does not appear to
have much effect so far and isn't relevant for the questions at hand.
Either war, a disagreement regarding the merits of some policy is
not a good reason to deprive users of information they might require.

> I expect you will want to emphasize this in the release announcement,
> when the time comes.

In the Linux man-pages project release announcement, i recommend
simply saying that groff_man(7) replaces the former man(7) that used
to be bundled in the Linux man-pages project.  For the purposes of
the Linux man-pages project, the man(7) page distributed with mandoc
isn't useful, so no need to confuse the users of the Linux man-pages
project by talking about it.

> This already needs to happen with soelim(1) and roff(7),

I'm not convinced.  The soelim(1) bundled with mandoc is
really only a stopgap implementation in case people need something
quickly but don't have a real ROFF system around.  I don't think
it sees much use at all.

For the roff(7) manual page bundled with mandoc, the same applies
as for man(7), only more strongly so.  The mandoc roff(7) page is
totally inadequate for learning the roff language.  It merely
intends to document the subset of roff(7) relevant for manual
page authors and maintainers, and the subset supported by mandoc.

> but it doesn't, exactly; Debian renames mandoc's versions of the
> former to msoelim(1) and the latter to mandoc_roff(1).

That makes sense to me, more than using "alternatives" for these two
would, in the case of Debian.  I'm not sure installing the mandoc
soelim program on Debian is even useful in the first place.  If you
really need soelim(1) on Debian, you almost certainly already have
groff(1) installed, or at least you ought to install it.

> Termux simply throws groff's versions
> away and installs mandoc's versions as soelim(1) and roff(7).

That also makes some sense to me.  In Termux, the complete
subsystem for searching, displaying, and viewing manual pages has
been exclusively based on mandoc since 2015.  So while Termux is, in
most aspects, more similar to a Linux distro than to a BSD system,
regarding documentation, it is essentially a BSD and not a Linux
system, so it totally makes sense to follow BSD conventions regarding
manual page naming, installation, and manual page tools.

Besides, it is a system for relatively small devices, and consequently,
the decision to use BSD tools for documentation actually makes
sense because the mandoc toolchain is significantly less resource-
hungry than the groff toolchain.  Of course, mandoc is inadequate
for general-purpose typographic and publishing work - but who in
their right mind would want to write their books and journal
articles on Termux anyway?

A small number of other Linux systems exist where similar arguments
apply, most notably Alpine Linux and Void Linux.  Alpine is heavily
geared towards very small hardware.  Void is among the Linux distros
closest to BSD in philosophy.  Both have been using mandoc exclusively
for even longer than Termux.

But even for Linux distros officially supporting that users switch
their manual page search and display system from man-db+groff to
mandoc if they want to - last time i looked, that included Arch,
openSUSE, and Fedora - installing the mandoc roff(7) as roff(7)
would seem like a bad idea to me.

> I also use Termux.  Imagine my surprise when I upgraded to groff 1.23.0
> on my tablet and brought up roff(7).  I was expecting to see myself in
> the mirror, and what should greet me but the visage of Ingo Schwarze!
> 
> Unnerving, no?

Heh, buhuuu!  <evil grin>

Yours,
  Ingo
