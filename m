Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0085850D1
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 15:23:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236553AbiG2NXA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 09:23:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236264AbiG2NW7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 09:22:59 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 804D1664E3
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 06:22:57 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oHPx9-0072dU-KH; Fri, 29 Jul 2022 15:22:55 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oHPx9-006viz-0k; Fri, 29 Jul 2022 15:22:55 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oHPx8-0002UZ-WB; Fri, 29 Jul 2022 15:22:54 +0200
Date:   Fri, 29 Jul 2022 15:22:54 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: man -M tcl (was: All caps .TH page title)
Message-ID: <YuPfLqJldAA9XP9t@asta-kit.de>
References: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
 <YuFafSnjPxSCLP8B@asta-kit.de>
 <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d9221f6d-9ba3-f690-8fad-a59a9dc65c89@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Fri, Jul 29, 2022 at 02:03:51PM +0200:

> BTW, I guess you also have the POSIX man pages in BSDs.  Do they come 
> from the kernel repo that I maintain, or do you have your own separate 
> repos?

  $ less /usr/ports/books/man-pages-posix/Makefile
 [...]
 COMMENT =    POSIX manual pages
 DISTNAME =   man-pages-posix-2013-a
 MASTER_SITES=https://www.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
 EXTRACT_SUFX=.tar.xz
 [...]
 DOCDIR =     ${PREFIX}/share/doc/posix
 [...]
 # mapping of categories: source => destination
 MANS =          0p      3
 MANS +=         1p      1
 MANS +=         3p      3
 [...]

I don't know off the top of my head what FreeBSD and NetBSD ports do,
but you can no doubt look it up if you are interested.

> I'd like to discuss about the best place to recommend putting manual pages.
> 
> Do you know if any projects (Tcl and Tk maybe) are already using a 
> specific path for man pages?

 $ pkg_locate /man/man | grep -v :/usr/local/man | \
   sed 's/[^\/]*\/[^\/]*$//' | sed -E 's/(.*):(.*):(.*)/\3:\1/' | \
   sort | uniq > tmp.txt
 $ vi tmp.txt  # minimal manual cleanup
 $ cat tmp.txt
/usr/local/cyrus/man/:cyrus-imapd-3.4.4
/usr/local/heirloom-doctools/man/:heirloom-doctools-191015p0
/usr/local/jdk-1.8.0/man/:jdk-1.8.0.332.b09.1v0
/usr/local/jdk-11/man/:jdk-11.0.15.10.1v0
/usr/local/jdk-17/man/:jdk-17.0.3.7.1v0
/usr/local/lib/eopenssl/man/:openssl-1.0.2up4
/usr/local/lib/eopenssl11/man/:libretls-3.5.2
/usr/local/lib/eopenssl11/man/:openssl-1.1.1q
/usr/local/lib/eopenssl30/man/:openssl-3.0.5
/usr/local/lib/erlang21/man/:erlang-21.3.8.24v0
/usr/local/lib/erlang21/man/:erlang-wx-21.3.8.24v0
/usr/local/lib/node_modules/npm/man/:node-16.15.1v0
/usr/local/lib/ruby/gems/3.1/gems/kramdown-2.3.1/man/:ruby31-kramdown-2.3.1
/usr/local/lib/stk/4.0.1/man/:STk-4.0.1p19
/usr/local/lib/swipl-7.6.0/xpce/prolog/lib/:swi-prolog-7.6.0p15
/usr/local/lib/tcl/tcl8.5/man/:tcl-8.5.19p6
/usr/local/lib/tcl/tcl8.6/man/:tcl-8.6.12
/usr/local/lib/tcl/tk8.5/man/:tk-8.5.19p2
/usr/local/lib/tcl/tk8.6/man/:tk-8.6.12
/usr/local/plan9/man/:plan9port-20210323
/usr/local/riscv32-esp-elf/share/man/:riscv32-esp-elf-binutils-2.35.1.2020.1223
/usr/local/riscv32-esp-elf/share/man/:riscv32-esp-elf-gcc-8.4.0.2021.2
/usr/local/riscv32-esp-elf/share/man/:riscv32-esp-elf-gdb-2.35.1.2021.2
/usr/local/share/doc/posix/man/:man-pages-posix-2017a
/usr/local/share/docbook2X/xslt/:docbook2x-0.8.8p5
/usr/local/share/fish/man/:fish-3.4.1p3
/usr/local/share/libowfat/man/:libowfat-0.32p0
/usr/local/share/man/:smplayer-22.2.0
/usr/local/xtensa-esp32-elf/share/man/:xtensa-esp32-elf-binutils-2.35.1.2020.1223p0
/usr/local/xtensa-esp32-elf/share/man/:xtensa-esp32-elf-gcc-8.4.0.2021.2
/usr/local/xtensa-esp32-elf/share/man/:xtensa-esp32-elf-gdb-2.35.1.2021.2p0
/usr/local/xtensa-esp32s2-elf/share/man/:xtensa-esp32s2-elf-binutils-2.35.1.2020.1223
/usr/local/xtensa-esp32s2-elf/share/man/:xtensa-esp32s2-elf-gcc-8.4.0.2021.2
/usr/local/xtensa-esp32s2-elf/share/man/:xtensa-esp32s2-elf-gdb-2.35.1.2021.2
/usr/local/xtensa-esp32s3-elf/share/man/:xtensa-esp32s3-elf-binutils-2.35.1.2020.1223
/usr/local/xtensa-esp32s3-elf/share/man/:xtensa-esp32s3-elf-gcc-8.4.0.2021.2
/usr/local/xtensa-esp32s3-elf/share/man/:xtensa-esp32s3-elf-gdb-2.35.1.2021.2
/usr/local/xtensa-lx106-elf/share/man/:xtensa-lx106-elf-binutils-2.32p0
/usr/local/xtensa-lx106-elf/share/man/:xtensa-lx106-elf-gcc-10.2.0p3

I can't say so far if those paths are the default paths upstream chose
or in how many cases the OpenBSD porter chose them instead.
Finding out requires looking at each of these about 35 ports
individually.

> I think something under $docdir would be a nice place.
> 
> The FHS mentions[1] </usr[/local]/share/doc>.
> GNU specifies[2] that $docdir should be </usr/local/share/doc/pkgname> 
> for a </usr/local> prefix.
> 
> So they seem to agree in where $docdir lives.  Then we could make the 
> pkg-specific mandirs be </usr/local/share/doc/pkgname/man/man*>.
> 
> What are your thoughts?

Yes, even though /usr/local/share/doc/pkgname/man/man* is a bit long,
it makes more sense than paths like

  /usr/local/cyrus/man/
  /usr/local/heirloom-doctools/man/
  /usr/local/lib/erlang21/man/
  /usr/local/lib/node_modules/npm/man/
  /usr/local/lib/stk/4.0.1/man/
  /usr/local/lib/tcl/tcl8.6/man/
  /usr/local/plan9/man/
  /usr/local/share/fish/man/

Then again, *if* we go the -M alias way, these paths are only
ever used in the man.conf(5) file.  So where exactly they are
has no major impact on the user and is more a matter of system
cleanliness.

Yours,
  Ingo
