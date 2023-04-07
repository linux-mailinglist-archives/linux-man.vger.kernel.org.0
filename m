Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C81546DAFCA
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 17:40:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjDGPkD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 11:40:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjDGPkC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 11:40:02 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4BC268A42
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 08:40:01 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9FDDD5A02;
        Fri,  7 Apr 2023 17:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680882000;
        bh=UAbCDPrmUOPsUoXp8Af+bALKOFGK4EfZOri3OPTUStc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jQHos73Hdpi9nCBDLzZUIcqvs8y6iNZ5a8FsZX450ZjLzTHW4CgSJGtuc+8bMeLCT
         qH7kR2PNOQ3Y/keZ03hXnMVrvVjM/DyIaDSQRWSZsIdoTUPQBc4iwpBFgHmR+wrbJ+
         VILOsCQbDGZ37l+p6YupjHmYCua/djeGpG4VygNEr1M31ad4QBGDOb4+oALLvYD9hh
         qXEswNMhePWgbfNZ7+gHDRo6X8hIoH1ofMIT9xukpuAbMr3t2rNjKU38zv4biUEOop
         fRgWC7CmmybQrqaVxDyVQ26cEZMCk21+ATHQ7NhX7S6Zyiy6PniaAKgKWYLmS2B5Dt
         Ys5BQ3S1ggFyA==
Date:   Fri, 7 Apr 2023 17:39:59 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] personality.2: review, update for Linux 6.2
Message-ID: <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="275ybmqf6fj4fxr6"
Content-Disposition: inline
In-Reply-To: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--275ybmqf6fj4fxr6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Settle on "no effect", concretify vaguely-described behaviours;
both [to be documented]s replaced with documentation
(these match my 6.2 checkout, if there were subtleties in the history
 they got lost).

Added the full system names to the PER_s that lacked them;
no clue what UW7 is though.

Didn't validate or chase down the versions except for PER_RISCOS.

Having these be sorted instead of in the original enumeration order is
really more trouble than it's worth.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/personality.2 | 96 ++++++++++++++++++++++++++++++++--------------
 1 file changed, 68 insertions(+), 28 deletions(-)

diff --git a/man2/personality.2 b/man2/personality.2
index caca709b8..598e2cd2f 100644
--- a/man2/personality.2
+++ b/man2/personality.2
@@ -67,10 +67,12 @@ With this flag set, use 0xc0000000 as the offset at whi=
ch to search
 a virtual memory chunk on
 .BR mmap (2);
 otherwise use 0xffffe000.
+Applies to 32-bit x86 processes only.
 .TP
 .BR FDPIC_FUNCPTRS " (since Linux 2.6.11)"
 User-space function pointers to signal handlers point
-(on certain architectures) to descriptors.
+to descriptors.
+Applies only to ARM if BINFMT_ELF_FDPIC and SuperH.
 .TP
 .BR MMAP_PAGE_ZERO " (since Linux 2.4.0)"
 Map page 0 as read-only
@@ -85,7 +87,7 @@ for
 .BR mmap (2).
 .TP
 .BR SHORT_INODE " (since Linux 2.4.0)"
-No effects(?).
+No effect.
 .TP
 .BR STICKY_TIMEOUTS " (since Linux 1.2.0)"
 With this flag set,
@@ -99,7 +101,7 @@ interrupted by a signal handler.
 .BR UNAME26 " (since Linux 3.1)"
 Have
 .BR uname (2)
-report a 2.6.40+ version number rather than a 3.x version number.
+report a 2.6.(40+x) version number rather than a MAJ.x version number.
 Added as a stopgap measure to support broken applications that
 could not handle the
 kernel version-numbering switch from Linux 2.6.x to Linux 3.x.
@@ -127,111 +129,149 @@ Implies
 IRIX 6 64-bit.
 Implies
 .BR STICKY_TIMEOUTS ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_IRIXN32 " (since Linux 2.2)"
 IRIX 6 new 32-bit.
 Implies
 .BR STICKY_TIMEOUTS ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_ISCR4 " (since Linux 1.2.0)"
 Implies
 .BR STICKY_TIMEOUTS ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_LINUX " (since Linux 1.2.0)"
 Linux.
 .TP
 .BR PER_LINUX32 " (since Linux 2.2)"
-[To be documented.]
+.BR uname (2)
+returns the name of the 32-bit architecture in the
+.I machine
+field ("i686" instead of "x86_64", &c.).
+.IP
+Under ia64 (Itanium), processes with this personality don't have the
+O_LARGEFILE
+.BR open (2)
+flag forced.
+.IP
+Under 64-bit ARM, setting this personality is forbidden if
+.BR execve (2)ing
+a 32-bit process would also be forbidden
+(cf. the allow_mismatched_32bit_el0 kernel parameter and
+.IR Documentation/arm64/asymmetric-32bit.rst ).
 .TP
 .BR PER_LINUX32_3GB " (since Linux 2.4)"
-Implies
+.BR PER_LINUX32 ;
+implies
 .BR ADDR_LIMIT_3GB .
 .TP
 .BR PER_LINUX_32BIT " (since Linux 2.0)"
-Implies
+.BR PER_LINUX ;
+implies
 .BR ADDR_LIMIT_32BIT .
 .TP
 .BR PER_LINUX_FDPIC " (since Linux 2.6.11)"
-Implies
+.BR PER_LINUX ;
+implies
 .BR FDPIC_FUNCPTRS .
 .TP
 .BR PER_OSF4 " (since Linux 2.4)"
 OSF/1 v4.
-On alpha,
+.\" commit 987f20a9dcce3989e48d87cff3952c095c994445
+No effect since Linux 6.1, which removed a.out binary support.
+Before, on alpha,
 .\" Following is from a comment in arch/alpha/kernel/osf_sys.c
-clear top 32 bits of iov_len in the user's buffer for
+would clear top 32 bits of iov_len in the user's buffer for
 compatibility with old versions of OSF/1 where iov_len
 was defined as.
 .IR int .
 .TP
 .BR PER_OSR5 " (since Linux 2.4)"
-Implies
+Same base personality as
+.BR PER_SCOSVR3 ,
+but implies
 .B STICKY_TIMEOUTS
 and
-.BR WHOLE_SECONDS ;
-otherwise no effects.
+.B WHOLE_SECONDS
+instead.
 .TP
-.BR PER_RISCOS " (since Linux 2.2)"
-[To be documented.]
+.BR PER_RISCOS " (since Linux 2.3.7; macro since Linux 2.3.13)"
+Acorn RISC OS/Arthur (MIPS).
+No effect.
+.\" commit 125ec7b4e90cbae4eed5a7ff1ee479cc331dcf3c
+Up to Linux v4.0, would set the emulation altroot to
+.I /usr/gnemul/riscos
+(cf.\&
+.BR PER_SUNOS,
+below).
+Before then, up to Linux 2.6.3, just Arthur emulation.
 .TP
 .BR PER_SCOSVR3 " (since Linux 1.2.0)"
+SCO UNIX System V Release 3.
 Implies
 .BR STICKY_TIMEOUTS ,
 .BR WHOLE_SECONDS ,
 and
 .BR SHORT_INODE ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_SOLARIS " (since Linux 2.4)"
+Solaris.
 Implies
 .BR STICKY_TIMEOUTS ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_SUNOS " (since Linux 2.4.0)"
-Implies
+Sun OS.
+Same as
+.BR PER_BSD ,
+but implies
 .BR STICKY_TIMEOUTS .
-Divert library and dynamic linker searches to
+Prior to Linux 2.6.26,
+diverted library and dynamic linker searches to
 .IR /usr/gnemul .
-Buggy, largely unmaintained, and almost entirely unused;
-support was removed in Linux 2.6.26.
+Buggy, largely unmaintained, and almost entirely unused.
 .TP
 .BR PER_SVR3 " (since Linux 1.2.0)"
+AT&T UNIX System V Release 3.
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR SHORT_INODE ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_SVR4 " (since Linux 1.2.0)"
+AT&T UNIX System V Release 4.
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR MMAP_PAGE_ZERO ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_UW7 " (since Linux 2.4)"
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR MMAP_PAGE_ZERO ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_WYSEV386 " (since Linux 1.2.0)"
+WYSE UNIX System V/386.
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR SHORT_INODE ;
-otherwise no effects.
+otherwise no effect.
 .TP
 .BR PER_XENIX " (since Linux 1.2.0)"
+XENIX.
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR SHORT_INODE ;
-otherwise no effects.
+otherwise no effect.
 .SH RETURN VALUE
 On success, the previous
 .I persona
--=20
2.30.2

--275ybmqf6fj4fxr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQwOU8ACgkQvP0LAY0m
WPEMcw/9GUAfy4P+4kBUok86aMQ++eH0MpxQnP2RF4u6vDFF+XBzIaO8wnZcStDe
3W0ItbnAIWvcFMVTHkeY3KjpFHMNiuRxHTxtQgRTb6E0MvSNSkW4ROcdSuN+K3/c
hQrcAd2Q8QainyqoTIE0U+Ks5P+fuVN3BYMOJS40eWr/lGb7tx55Hl/7RtedsS45
X/Majc4mUW9ujlfkdo7v/aHLXzcmoei5QfNPlfyenmzlxaWMtVpgv1SUdBblKJOI
5JzRtrgPX8UP0OP2LjSK4n6ijajGCPyks9eKb3AlRIEvPIroYhScM1mX5ULKCe0p
JQlm0U9HAo6hvYMF7s6Uz3rahxbBUgGVa/dF+Y5HoPNE1cNwmkLzStMz5IC7uc+U
XxYaifNj4Yn4++UPYRR4GQAktbcX0+Vn3SrIz3vB5K68PNo+iKmPaJAeyL+KLRld
/QX5L7GkqeB+0FNwtqm8YCtkWDmdFknYXU2qW43S5pTniaBbcU1TDaBv7gynlWMX
zhYJIUDFEii2e6ry1uPnucS31hjBA3xuOd3tXVasdec9XCX+PBdd7QBrfFQfb3k4
LGeh5F83x+vrMfzVZgzDru0qJdLzFXYkZb4OmWB9d9d+ufobNkClV1cGDw9zevg3
t8NvLaNLs4yJxlinQZNtLn5YvW/2YET3Niep/D86wGX0g5c773U=
=m4VJ
-----END PGP SIGNATURE-----

--275ybmqf6fj4fxr6--
