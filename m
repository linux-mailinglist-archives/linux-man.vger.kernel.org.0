Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5F9A488A53
	for <lists+linux-man@lfdr.de>; Sun,  9 Jan 2022 16:51:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234148AbiAIPvO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jan 2022 10:51:14 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:46072 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232739AbiAIPvN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jan 2022 10:51:13 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9A72813F8;
        Sun,  9 Jan 2022 16:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641743468;
        bh=piIEMQDFFSIL3vbc5jKkoibuL0WMmwrnz7lc6D3n20Y=;
        h=Date:From:To:Cc:Subject:From;
        b=UphcadzuIjTtBOBtUGb60bckuTd4ChUTMI7xjK6A3vvhgPse3JEkKm/f/6/VlLZPI
         Y6Locfq/Ld5Y/1NvpS7H+vVc1z5rqL6LZ2Au/3FqT22efO+KnTqBw68YCdQYnyFN+3
         ad0hFwtyw8Y0w0yejmu4LVO02rlwRTVjjtz8T9wIlil9NxuRbXQkcCDaBg6DTVSTAR
         WQVwYWQ7jXYPEsKfSEFZbRTdhxBZ25FM2ngY7pUHS6DZjwGLq6tKLT2/WPyplsZzDP
         LMblItE9e4DXdAKToVSCj1Bq0Z+OFU5xryNaAiRGR0acTuvrWuqnGKtg3ng1LFRzsy
         pZFfwV1dxyadQ==
Date:   Sun, 9 Jan 2022 16:51:07 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] personality.2: WHOLE_SECONDS never did anything
Message-ID: <20220109155107.uthnq5f4zay5pnq4@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y2xgctrauytz7a5s"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--y2xgctrauytz7a5s
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

git log -SWHOLE_SECONDS on a unified pre-2.6 linux repository
reveals the following three releases:
  Author: Andrew Morton <akpm@osdl.org>
  Date:   Sun Aug 31 04:30:04 2003 -0700

      [PATCH] abi doc update

      From: <ffrederick@prov-liege.be>

      Update the abi sysctl documentation.

  Author: Linus Torvalds <torvalds@athlon.transmeta.com>
  Date:   Mon Feb 4 20:17:27 2002 -0800

      v2.4.9.7 -> v2.4.9.8

        - Christoph Hellwig: clean up personality handling a bit
        - Robert Love: update sysctl/vm documentation
        - make the three-argument (that everybody hates) "min()" be "min_t(=
)",
        and introduce a type-anal "min()" that complains about arguments of
        different types.

  Author: Linus Torvalds <torvalds@linuxfoundation.org>
  Date:   Fri Nov 23 15:09:30 2007 -0500

      Import 1.1.14

1.1.14 adds personality.h:
  diff --git a/include/linux/personality.h b/include/linux/personality.h
  new file mode 100644
  index 0000000000..714a5a66b5
  --- /dev/null
  +++ b/include/linux/personality.h
  @@ -0,0 +1,12 @@
  +/* Flags for bug emulation. These occupy the top three bytes. */
  +#define STICKY_TIMEOUTS                0x8000000
  +#define WHOLE_SECONDS          0x4000000
  +
  +/* Personality types. These go in the low byte. */
  +#define PER_MASK               (0x00ff)
  +#define PER_LINUX              (0x0000)
  +#define PER_SVR4               (0x0001 | STICKY_TIMEOUTS)
  +#define PER_SVR3               (0x0002 | STICKY_TIMEOUTS)
  +#define PER_SCOSVR3            (0x0003 | STICKY_TIMEOUTS | WHOLE_SECONDS)
  +#define PER_WYSEV386           (0x0004 | STICKY_TIMEOUTS)
  +#define PER_ISCR4              (0x0005 | STICKY_TIMEOUTS)

2.4.9.8 shuffles it around with no substantial changes
(hunk enhanced to show texture):
  diff --git a/include/linux/personality.h b/include/linux/personality.h
  index 58cab509e3..230d394603 100644
  --- a/include/linux/personality.h
  +++ b/include/linux/personality.h
  @@ -1,68 +1,126 @@
  -/* Flags for bug emulation. These occupy the top three bytes. */
  -#define STICKY_TIMEOUTS                0x4000000
  -#define WHOLE_SECONDS          0x2000000
  -#define ADDR_LIMIT_32BIT       0x0800000

  -/* Personality types. These go in the low byte. Avoid using the top bit,
  - * it will conflict with error returns.
  +/*
  + * Flags for bug emulation.
  + *
  + * These occupy the top three bytes.
    */
  -#define PER_MASK               (0x00ff)
  -#define PER_LINUX              (0x0000)
  -#define PER_LINUX_32BIT                (0x0000 | ADDR_LIMIT_32BIT)
  -#define PER_SVR4               (0x0001 | STICKY_TIMEOUTS)
  -#define PER_SVR3               (0x0002 | STICKY_TIMEOUTS)
  -#define PER_SCOSVR3            (0x0003 | STICKY_TIMEOUTS | WHOLE_SECONDS)
  -#define PER_WYSEV386           (0x0004 | STICKY_TIMEOUTS)
  -#define PER_ISCR4              (0x0005 | STICKY_TIMEOUTS)
  -#define PER_BSD                        (0x0006)
  -#define PER_SUNOS              (PER_BSD | STICKY_TIMEOUTS)
  -#define PER_XENIX              (0x0007 | STICKY_TIMEOUTS)
  -#define PER_LINUX32            (0x0008)
  -#define PER_IRIX32              (0x0009 | STICKY_TIMEOUTS) /* IRIX5 32-b=
it     */
  -#define PER_IRIXN32             (0x000a | STICKY_TIMEOUTS) /* IRIX6 new =
32-bit */
  -#define PER_IRIX64              (0x000b | STICKY_TIMEOUTS) /* IRIX6 64-b=
it     */
  -#define PER_RISCOS             (0x000c)
  -#define PER_SOLARIS            (0x000d | STICKY_TIMEOUTS)
  -
  -/* Description of an execution domain - personality range supported,
  - * lcall7 syscall handler, start up / shut down functions etc.
  - * N.B. The name and lcall7 handler must be where they are since the
  - * offset of the handler is hard coded in kernel/sys_call.S.
  +enum {
  +       MMAP_PAGE_ZERO =3D        0x0100000,
  +       ADDR_LIMIT_32BIT =3D      0x0800000,
  +       SHORT_INODE =3D           0x1000000,
  +       WHOLE_SECONDS =3D         0x2000000,
  +       STICKY_TIMEOUTS =3D       0x4000000,
  +};
  +
  +/*
  + * Personality types.
  + *
  + * These go in the low byte.  Avoid using the top bit, it will
  + * conflict with error returns.
  + */
  +enum {
  +       PER_LINUX =3D             0x0000,
  +       PER_LINUX_32BIT =3D       0x0000 | ADDR_LIMIT_32BIT,
  +       PER_SVR4 =3D              0x0001 | STICKY_TIMEOUTS | MMAP_PAGE_ZE=
RO,
  +       PER_SVR3 =3D              0x0002 | STICKY_TIMEOUTS | SHORT_INODE,
  +       PER_SCOSVR3 =3D           0x0003 | STICKY_TIMEOUTS |
  +                                        WHOLE_SECONDS | SHORT_INODE,
  +       PER_OSR5 =3D              0x0003 | STICKY_TIMEOUTS | WHOLE_SECOND=
S,
  +       PER_WYSEV386 =3D          0x0004 | STICKY_TIMEOUTS | SHORT_INODE,
  +       PER_ISCR4 =3D             0x0005 | STICKY_TIMEOUTS,
  +       PER_BSD =3D               0x0006,
  +       PER_SUNOS =3D             0x0006 | STICKY_TIMEOUTS,
  +       PER_XENIX =3D             0x0007 | STICKY_TIMEOUTS | SHORT_INODE,
  +       PER_LINUX32 =3D           0x0008,
  +       PER_IRIX32 =3D            0x0009 | STICKY_TIMEOUTS,/* IRIX5 32-bi=
t */
  +       PER_IRIXN32 =3D           0x000a | STICKY_TIMEOUTS,/* IRIX6 new 3=
2-bit */
  +       PER_IRIX64 =3D            0x000b | STICKY_TIMEOUTS,/* IRIX6 64-bi=
t */
  +       PER_RISCOS =3D            0x000c,
  +       PER_SOLARIS =3D           0x000d | STICKY_TIMEOUTS,
  +       PER_UW7 =3D               0x000e | STICKY_TIMEOUTS | MMAP_PAGE_ZE=
RO,
  +       PER_UW7 =3D               0x000e | STICKY_TIMEOUTS | MMAP_PAGE_ZE=
RO,
  +       PER_MASK =3D              0x00ff,
  +};

And the ABI doc creates Documentation/sysctl/abi.txt, noting
  +defhandler_coff:
  +defined value :
  +PER_SCOSVR3
  +0x0003 | STICKY_TIMEOUTS | WHOLE_SECONDS | SHORT_INODE

The same log of mainline reveals, apart from the original 2.6.12-rc2
import:
  1. 607ca46e97a1b6594b29647d98a32d545c24bdff ("UAPI: (Scripted)
     Disintegrate include/linux") =E2=80=92 include/linux/{=3D> uapi/}perso=
nality.h
  2. 53b9537509654a6267c3f56b4d2e7409b9089686 ("docs: sysctl: convert to
     ReST") =E2=80=92 Documentation/sysctl/abi.{rst =3D> txt}
  3. 9f35cf8bd7e3347b0679c3f9b5e0bc5493925a1f ("docs: rewrite
     admin-guide/sysctl/abi.rst") =E2=80=92 rewrites
     Documentation/admin-guide/sysctl/abi.rst entirely, removing all
     personality bits ("all the existing entries are no longer present,
     so this removes them;")

Current mainline contains WHOLE_SECONDS thrice:
  include/uapi/linux/personality.h:       WHOLE_SECONDS =3D         0x20000=
00,
  include/uapi/linux/personality.h-       PER_SCOSVR3 =3D           0x0003 =
| STICKY_TIMEOUTS |
  include/uapi/linux/personality.h:                                        =
WHOLE_SECONDS | SHORT_INODE,
  include/uapi/linux/personality.h:       PER_OSR5 =3D              0x0003 =
| STICKY_TIMEOUTS | WHOLE_SECONDS,

It never did anything.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/personality.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/personality.2 b/man2/personality.2
index b42692896..8f1b623b6 100644
--- a/man2/personality.2
+++ b/man2/personality.2
@@ -120,8 +120,8 @@ report a 2.6.40+ version number rather than a 3.x versi=
on number.
 Added as a stopgap measure to support broken applications that
 could not handle the kernel version-numbering switch from 2.6.x to 3.x.
 .TP
-.BR WHOLE_SECONDS " (since Linux 1.2.0)"
-No effects(?).
+.BR WHOLE_SECONDS " (since Linux 1.1.14)"
+No effect.
 .PP
 The available execution domains are:
 .TP
--=20
2.30.2

--y2xgctrauytz7a5s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHbBGsACgkQvP0LAY0m
WPFN4Q/+INiXL/xGPBCz1XcY4pA5vF2rRnlYFKIJTDWwmPSzosclEEP1w+yy0XDh
pd1E46Oxp+VSUT1SYn/eEX+kQ+91+8EsaZNK+pg+4EnJzRF73N7T/SMwQdH0hxHM
oAhua9vtQB5fqfp1FG5cEcyg2Nf+HXG9/SBTO684FiJiGb0gPutn5WVJtqkoTCXD
w/3L68DVJeI7cCEeYBDdjCn/NodGMeHh10Nj/RbagwnarrT+xMEhrrpLemj1OloC
Tvvbgm18zc/JGNj0B9nnH3K/lcvv5OckHwXVNkLAa1PamA3H8c/XSEeFw5hezHDb
zOLWUZxzm7aOzNJqb1wXz0xdUSJdfRNMCU/JwkqWWXGfI/PNO5NwjsvDY7vWboV5
F328mvSJXQ6B0nwF0f+PZQnfTJwuSbdLI7g3Hi+/rEptcqQfBlm159EWWdas48W2
jgauNFiEggGyaMa6jvJsv51Pbid3kPJlZ99LBSZLd2ASSPggMOasYEiI/OEezD1R
ArBzWcGA/vzrxR8WaeIovFTuXvL/hru9D4jtgHv70TPbXPpaxK5r201fbFEnAYQU
SnUY98COPifDeOVOER7qEijl0z265PgBMfvyd0e9SmazIMVV/0sUX7xOgxICNyYB
rdSlsmbbINeSnHgWcoJbE7Dch8cx0fHbRwtDzM2rJ6HIJT+8lH0=
=f9cp
-----END PGP SIGNATURE-----

--y2xgctrauytz7a5s--
