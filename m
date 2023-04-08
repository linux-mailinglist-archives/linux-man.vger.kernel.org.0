Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DCA16DB779
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 02:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjDHACJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 20:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjDHACI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 20:02:08 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9F58AC660
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 17:02:03 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B0C6A5832;
        Sat,  8 Apr 2023 02:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680912121;
        bh=7ikOQqBfZouuHfaePfBqRfKWL1vwkmwhOcEWU6gnOgc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZoCvH3s9oA0yNKw2kjWn2zsvtqukbD1aDSgbk/aIrf12IAqZyXEgBVEOdQiuPAa3z
         EPBsi3KivioSpPPRvUG2Mof/g4hmmfK6TARon8tQtkjwKFAOyxL5nBLc7DWb9mLWir
         uPgrwbHw/YuM3KmgJ+kOALTmmgrWyWWRBKI7BS4IDNoPOQG0pmnAjUJmoXO+hwT4uZ
         gfVCLuUjOjGpCxZQ58SAEIR7QCmLG87+1dKXU9sNo+u0csDhb2yQHj6AVC9ota4l6c
         hbzNZSf5DDoNgFG6RNp9sAZzn9NsewiQevhErZs3AqEekibRZ6E0dg0QCwWKDnzSxX
         Tl3aV6Fbp7vdg==
Date:   Sat, 8 Apr 2023 02:02:00 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] personality.2: review, update for Linux 6.2
Message-ID: <vfmpxt7sggfoj3zxrb2nbrcqr3hreyxxgmvjzc3jsvezugrpr2@qa2bjtt3zd2l>
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <60d0a9233d92929cf5b4e984729f12bf9716c98b.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
 <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jadtttapxawil6pa"
Content-Disposition: inline
In-Reply-To: <2b86e735-adda-20d5-936f-26032cdf64f8@gmail.com>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jadtttapxawil6pa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sat, Apr 08, 2023 at 01:02:29AM +0200, Alejandro Colomar wrote:
> On 4/7/23 17:39, =D0=BD=D0=B0=D0=B1 wrote:
> > @@ -99,7 +101,7 @@ interrupted by a signal handler.
> >  .BR UNAME26 " (since Linux 3.1)"
> >  Have
> >  .BR uname (2)
> > -report a 2.6.40+ version number rather than a 3.x version number.
> > +report a 2.6.(40+x) version number rather than a MAJ.x version number.
> I prefer MAJOR.
Applied.

> >  .TP
> >  .BR PER_LINUX32_3GB " (since Linux 2.4)"
> > -Implies
> > +.BR PER_LINUX32 ;
> > +implies
> >  .BR ADDR_LIMIT_3GB .
> I'm not sure I understand.  Why on the description for tag A we
> say that B implies C?  What's the relationship?

Cf. the UAPI definition:
  /*
   * Personality types.
   *
   * These go in the low byte.  Avoid using the top bit, it will
   * conflict with error returns.
   */
  enum {
          PER_LINUX =3D             0x0000,
          PER_LINUX_32BIT =3D       0x0000 | ADDR_LIMIT_32BIT,
          PER_LINUX_FDPIC =3D       0x0000 | FDPIC_FUNCPTRS,
          PER_SVR4 =3D              0x0001 | STICKY_TIMEOUTS | MMAP_PAGE_ZE=
RO,
          PER_SVR3 =3D              0x0002 | STICKY_TIMEOUTS | SHORT_INODE,
          PER_SCOSVR3 =3D           0x0003 | STICKY_TIMEOUTS |
                                           WHOLE_SECONDS | SHORT_INODE,
          PER_OSR5 =3D              0x0003 | STICKY_TIMEOUTS | WHOLE_SECOND=
S,
          PER_WYSEV386 =3D          0x0004 | STICKY_TIMEOUTS | SHORT_INODE,
          PER_ISCR4 =3D             0x0005 | STICKY_TIMEOUTS,
          PER_BSD =3D               0x0006,
          PER_SUNOS =3D             0x0006 | STICKY_TIMEOUTS,
          PER_XENIX =3D             0x0007 | STICKY_TIMEOUTS | SHORT_INODE,
          PER_LINUX32 =3D           0x0008,
          PER_LINUX32_3GB =3D       0x0008 | ADDR_LIMIT_3GB,
          PER_IRIX32 =3D            0x0009 | STICKY_TIMEOUTS,/* IRIX5 32-bi=
t */
          PER_IRIXN32 =3D           0x000a | STICKY_TIMEOUTS,/* IRIX6 new 3=
2-bit */
          PER_IRIX64 =3D            0x000b | STICKY_TIMEOUTS,/* IRIX6 64-bi=
t */
          PER_RISCOS =3D            0x000c,
          PER_SOLARIS =3D           0x000d | STICKY_TIMEOUTS,
          PER_UW7 =3D               0x000e | STICKY_TIMEOUTS | MMAP_PAGE_ZE=
RO,
          PER_OSF4 =3D              0x000f,                  /* OSF/1 v4 */
          PER_HPUX =3D              0x0010,
          PER_MASK =3D              0x00ff,
  };

PER_LINUX is a base personality, PER_LINUX_{32BIT,FDPIC} are
PER_LINUX|ADDR_LIMIT_32BIT and PER_LINUX|FDPIC_FUNCPTRS, resp.

PER_BSD is a base personality, PER_SUNOS is PER_BSD|STICKY_TIMEOUTS.

PER_LINUX32 is a base personality, PER_LINUX32_3GB is
PER_LINUX32|ADDR_LIMIT_3GB.

I updated these all to be "Same as {base personality},
but implies {...}.". PER_SCOSVR3 has an "also", since it's the only one
where the base case PER_OSR5 has a list.

Should make more sense.

Scissor-patch below.

Best,
-- >8 --
Settle on "no effect", concretify vaguely-described behaviours;
both [to be documented]s replaced with documentation
(these match my 6.2 checkout, if there were subtleties in the history
 they got lost).

Added the full system names to the PER_s that lacked them.

Didn't validate or chase down the versions except for PER_RISCOS.

Having these be sorted instead of in the original enumeration order is
really more trouble than it's worth.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/personality.2 | 103 +++++++++++++++++++++++++++++++--------------
 1 file changed, 72 insertions(+), 31 deletions(-)

diff --git a/man2/personality.2 b/man2/personality.2
index caca709b8..d9418b38e 100644
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
+report a 2.6.(40+x) version number rather than a MAJOR.x version number.
 Added as a stopgap measure to support broken applications that
 could not handle the
 kernel version-numbering switch from Linux 2.6.x to Linux 3.x.
@@ -127,111 +129,150 @@ Implies
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
+Same as
+.BR PER_LINUX32 ,
+but implies
 .BR ADDR_LIMIT_3GB .
 .TP
 .BR PER_LINUX_32BIT " (since Linux 2.0)"
-Implies
+Same as
+.BR PER_LINUX ,
+but implies
 .BR ADDR_LIMIT_32BIT .
 .TP
 .BR PER_LINUX_FDPIC " (since Linux 2.6.11)"
-Implies
+Same as
+.BR PER_LINUX ,
+but implies
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
+SCO OpenServer 5.
 Implies
 .B STICKY_TIMEOUTS
 and
 .BR WHOLE_SECONDS ;
-otherwise no effects.
+otherwise no effect.
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
-Implies
-.BR STICKY_TIMEOUTS ,
-.BR WHOLE_SECONDS ,
-and
-.BR SHORT_INODE ;
-otherwise no effects.
+SCO UNIX System V Release 3.
+Same as
+.BR PER_OSR5 ,
+but also implies
+.BR SHORT_INODE .
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
+UnixWare 7.
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

--jadtttapxawil6pa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQwrvgACgkQvP0LAY0m
WPF40A/+JbEn+wsXWFxhpnv2ScB6L9uAG51A0FpPrRXzYy07vXug2WEq+G9eQw1p
CKH7z/ff5xvGP4DttkWd78JFP6T6Mix46mJUokjtct62c7XdTtFYS5GKaK/xBFlI
WQ0IZ7jNh/QcJbTkQvE5xQSbJIcyFIzpr/RG4T57Cg6smY36zXln2L6ub54G6Z2x
56LGLiJoPw9myYqwZ43SWMqjIRe9mioq+8avhfewWx0jzsO0TP1OlhvFEiEv4WLk
jGsNJauG2KE8xjxMvT+feGyZ+SjC2XEvTfbZ4Y2GdLgPyiklLFbRDFRHVCZknNU0
YLw4ChYw08xi6iwJVP7MIhR5zTB+uP+vscOwAXoF7+1H2Id06iz4IMs6QT2qOSf7
xWyTS2EAlK1tgeTcBA46+/AHRVAJyZGPyyZUywalB5llaw3evmx3xcNH8dKnkOiP
0o5A+8hMqTjkLWTY2voSIXjNnxy8NCv1UKPi4zUTSJPvUFm+dSLi47zhWt4+KupU
KO42YlWc6NLu5hU4GiZmqUxq90BUGUSP9HDwvYz1EInO/mvHxGoq9cN+lAG3xoLg
AkHKIQLf3dHRbHDElDu/J+W56JIFeW2FIHh+vsX6vRlXbpbAsSrvl6ChBY1tGXTD
RLyHINqq2zPGX4e7+nKXcFOjiC8xJ1ORWB+6gd+vwlpUArMWXcQ=
=TwhC
-----END PGP SIGNATURE-----

--jadtttapxawil6pa--
