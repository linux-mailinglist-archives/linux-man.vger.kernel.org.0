Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 557467919AC
	for <lists+linux-man@lfdr.de>; Mon,  4 Sep 2023 16:29:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233928AbjIDO3e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Sep 2023 10:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233338AbjIDO3d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Sep 2023 10:29:33 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC479E5C
        for <linux-man@vger.kernel.org>; Mon,  4 Sep 2023 07:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1693837760;
        bh=lLt2+ZwvgClKGH4Jv9MEexrN/zTFU1+FpSe9ofOk75s=;
        h=Date:From:To:Cc:Subject:From;
        b=bZRSyKS2Dsdr4yUss7+uVYb3xOpIlz34LtKXy2PitxY7iUVqqkcR56MQzxdTbYmdA
         9eiVGYveL5FTqpFdMFKVRPxIBwsa6iC/pMmKvCih7aX+OIh5L2Qj2F0sjttZtJYuQ+
         f2rSjOGYx33+dxRaqMKofk/qCccbLvcI4pcUcqJ11SzfIGl2nOd8G3yFFC05NAc4Gb
         Q0s3zLmyRYhwXOvz/4TygTcCXA1Lp5We8myotA+yIEIXYBLUCUaCQSynMtazQlYItY
         ifXkptw5ekHOYgkTlTPAEeLDhalBb9NvYXrBRsDRU6G4/4LMk8M50T0F/0hsx/OnOW
         MA0wMiyW3djng==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CCFC6B536;
        Mon,  4 Sep 2023 16:29:20 +0200 (CEST)
Date:   Mon, 4 Sep 2023 16:29:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Message-ID: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dl2424yk4ufpexb6"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dl2424yk4ufpexb6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Bit me in https://github.com/thecoshman/http/issues/155:
musl (and, thus, bionic) takes an int!

Kill the "POSIX says 'request' is int" comment,
POSIX says nothing about ioctl:
it invented tc[gs]etattr() and tc[gs]etwinsize() to avoid having
ioctl() at all, and STREAMS is long dead from POSIX.

Note how the interface evolved in HISTORY. The NetBSD CVS has
  revision 1.1
  date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;
  branches:  1.1.1;
  Initial revision
  ----------------------------
  revision 1.1.1.2
  date: 1995-02-27 11:49:43 +0100;  author: cgd;  state: Exp;  lines: +6
  -6;
  from Lite
  ----------------------------
  revision 1.1.1.1
  date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;  lines: +0
  -0;
  initial import of 386bsd-0.1 sources
  ----------------------------
and it's char * in 1.1.1.1 and 1.1.1.2 but ... in 1.1, so hell knows.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/ioctl.2 | 40 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/man2/ioctl.2 b/man2/ioctl.2
index 6b55d47c9..a658da354 100644
--- a/man2/ioctl.2
+++ b/man2/ioctl.2
@@ -20,9 +20,8 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/ioctl.h>
 .PP
-.BI "int ioctl(int " fd ", unsigned long " request ", ...);"
-.\" POSIX says 'request' is int, but glibc has the above
-.\" See https://bugzilla.kernel.org/show_bug.cgi?id=3D42705
+.BI "int ioctl(int " fd ", unsigned long " request ", ...);" "\fR  /* glib=
c, BSD */\fP"
+.BI "int ioctl(int " fd ", int " request ", ...);" "\fR            /* musl=
, other UNIX */\fP"
 .fi
 .SH DESCRIPTION
 The
@@ -103,7 +102,40 @@ .SH VERSIONS
 .SH STANDARDS
 None.
 .SH HISTORY
-Version\~7 AT&T UNIX.
+Version\~7 AT&T UNIX has
+.nf
+.ti +.5i
+.BI "ioctl(int " fildes ", int " request ", struct sgttyb *" argp );
+.fi
+(where
+.B struct sgttyb
+has historically been used by
+.BR stty (2)
+and
+.BR gtty(2),
+and is polymorphic by request type (like a
+.B void *
+would be, if it had been available)).
+.PP
+SysIII documents
+.I arg
+without a type at all.
+.PP
+4.3BSD has
+.nf
+.ti +.5i
+.BI "ioctl(int " d ", unsigned long " request ", char *" argp );
+.fi
+(with
+.B char *
+similarly in for
+.BR "void *" ).
+.PP
+SysVr4 has
+.nf
+.ti +.5i
+.BI "int ioctl(int " fildes ", int " request ", ... /* " arg " */);"
+.fi
 .SH NOTES
 In order to use this call, one needs an open file descriptor.
 Often the
--=20
2.39.2

--dl2424yk4ufpexb6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmT16b8ACgkQvP0LAY0m
WPGKKQ//eEWMlJuD6WWniW/tTvpX4x5UgTID7/piY/fDVPJZ+eaap8twSaR6/XJL
CTlBYPBUhtI3+9PtP+GKYC+F0ldc7VSot0ALpQJRD6HVdVIEqKKEFV/yPe77kY4r
wBMXzTgxljvupWezX5lAnHdWImllz90rHotLImHy7rZEHqD8GfzejQYQj4VlwGkv
RU0gVIi97XyC+GoZNhfba7iXsOniT17fVPRXT6+5qbpVmq/U7d0BcekxbydqZJi1
j4LSbO0pss1XXF8xrtMDIQ9NPDb4kBp95ENSWzTj3yCbRn57c+kiVWVTZFpMaO3S
hXJpFs33Ck0vcRbT56WB2qTgddGLXlSzwFYVH80Y+xlst+BRSArAZ0pYoPItmImT
ZZcouCQMQPYkVYGdi3d1GMZXl2RSiig0FVzlZp59n0KHmxsV9iw7v2l45R5c0Ciq
kpHLWBTkJn4h99Lp49bjgib8XOIL1X1CJZ7U6wKMNTsGHY0wQmLQkdwO9M/pfFkP
KCd7+Bp4eDTtkHj5H1u6MnuGsqijyI9/PZ3P0NA2wL7MuhWEB1y0+C221uHSjQKn
hY3xmfKS1Jw4C80oxmitpPOP2IzWx2uNPhWDX/NkH9diKMqQ75B8afQvRTlUpp61
n59Vc9fXfvozXZhIdDC15CZ3xQtRB4+0gtSlcbXEuFhSasUTsXA=
=Vjxh
-----END PGP SIGNATURE-----

--dl2424yk4ufpexb6--
