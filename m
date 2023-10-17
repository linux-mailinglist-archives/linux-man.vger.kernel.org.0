Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0E27CC506
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 15:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234635AbjJQNoN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 09:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234651AbjJQNoN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 09:44:13 -0400
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C0DF7
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 06:44:09 -0700 (PDT)
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id 3D2D3D60; Tue, 17 Oct 2023 08:44:08 -0500 (CDT)
Date:   Tue, 17 Oct 2023 08:44:08 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Rituparna ghosh <ghosh.rituparna@gmail.com>,
        linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
        Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query
Message-ID: <20231017134408.GA181875@mail.hallyn.com>
References: <CABP5-fx2YvLup4GFXicJapue=qpyZ61oHuRuBB82ne1Ka7uctw@mail.gmail.com>
 <ZSgiKU2TtlDgVkv2@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSgiKU2TtlDgVkv2@debian>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Oct 12, 2023 at 06:43:15PM +0200, Alejandro Colomar wrote:
> Hi Rituparna,
> 
> On Thu, Oct 12, 2023 at 08:24:13PM +0530, Rituparna ghosh wrote:
> > Hello
> > I am not sure if this is the right place to raise this concern I have from
> > man7 https://man7.org/linux/man-pages/man8/useradd.8.html
> 
> That page says it belongs to the shadow project, not to the Linux
> man-pages project
> 
> COLOPHON         top
> 
>        This page is part of the shadow-utils (utilities for managing
>        accounts and shadow password files) project.  Information about
>        the project can be found at 
>        ⟨https://github.com/shadow-maint/shadow⟩.  If you have a bug
>        report for this manual page, send it to
>        pkg-shadow-devel@alioth-lists.debian.net.  This page was obtained
>        from the project's upstream Git repository
>        ⟨https://github.com/shadow-maint/shadow⟩ on 2023-06-23.  (At that
>        time, the date of the most recent commit that was found in the
>        repository was 2023-06-22.)  If you discover any rendering
>        problems in this HTML version of the page, or you believe there
>        is a better or more up-to-date source for the page, or you have
>        corrections or improvements to the information in this COLOPHON
>        (which is not part of the original manual page), send a mail to
>        man-pages@man7.org
> 
> I've CCed the mailing list for shadow, although the project is more
> active on GitHub, in the link above.  I've also CCed Iker, a shadow
> maintainer from Red Hat.
> 
> > 
> > The useradd command here is showing an option   -F which is shown as
> > invalid in RH 8.8 or RH 9.
> > Is this correct?
> 
> From what I see in the source code of useradd.c in shadow, the feature
> is compiled conditionally, #ifdef ENABLE_SUBIDS.  It may be that RHEL,
> or your version, doesn't build with that option; I ignore it, I'm a
> Debian user.

Yeah - but the manpage should likewise should not show the option if
it is not compiled in, I guess.  At the moment it looks like we
conditionally complie some manpages, like newuidmap.1, but I don't
see any sections compiled out in the man/*.xml files.

> alx@debian:~/src/shadow/shadow/master$ grep -rl add.subids.for.system
> man/useradd.8.xml
> po/fr.po
> tests/run_all.coverage
> tests/run_all
> src/useradd.c
> alx@debian:~/src/shadow/shadow/master$ grep -rn -C1 add.subids.for.system src/
> src/useradd.c-954-#ifdef ENABLE_SUBIDS
> src/useradd.c:955:	(void) fputs (_("  -F, --add-subids-for-system   add entries to sub[ud]id even when adding a system user\n"), usageout);
> src/useradd.c-956-#endif
> --
> src/useradd.c-1245-#ifdef ENABLE_SUBIDS
> src/useradd.c:1246:			{"add-subids-for-system", no_argument,NULL, 'F'},
> src/useradd.c-1247-#endif
> 
> Cheers,
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>


