Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CD0679EDE0
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbjIMQCc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:02:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbjIMQCb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:02:31 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3126292
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1694620942;
        bh=jqwY06d4DIKgMb7DAQj5k4yA0x+s3wXMQVeWPLrWa1o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NWSPRluvrS2SouLxs2nufhvUlH84WjECDhl4zlqHUv2LjpAwDW4lrW51gah1q0ONO
         2ytjtRKPUsXadWRkGuiRhjihDebuVNMgj6rJM/EvFo1vwGQEcL+gdv0UbukVHSx6TM
         xrX0Y8kcV47s5Neaeu3HDuftxabUlSbjtUoj86EBKbsMC2EL7JWGMhAi5bYtVn/b8e
         uQxnQ8Uf1pxWSJD1W8SGH13kx0X810Plghk2Yk93mnO9TcHY5nLBIJLQ7+p6Mm5SVo
         37jamroY81SLZSgxxq3Ji/QRdVUfCrr47/DKMWYG4D6ioJvQZkSMONDGleYhKEsPuo
         j89QF6Smmz8lA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 00CC0CE3A;
        Wed, 13 Sep 2023 18:02:21 +0200 (CEST)
Date:   Wed, 13 Sep 2023 18:02:20 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Message-ID: <r7xxnlpgj3aft424fthkpxtfvhtjc45nsoymr2jlybge2722pn@l7pobift4psj>
References: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gtijv2e6asakqtkl"
Content-Disposition: inline
In-Reply-To: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
User-Agent: NeoMutt/20230517
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gtijv2e6asakqtkl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Bit me in https://github.com/thecoshman/http/issues/155:
musl (and, thus, bionic) takes an int!

Kill the "POSIX says 'request' is int" comment;
prior to Issue 7, ioctl() is shaded STREAMS,
it's obsolescent in Issue 7,
and gone completely in Issue 8.
The POSIX interface has never been supported by Linux,
and the common ioctl() interface has never existed in POSIX or the SUS.

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
 man2/ioctl.2 | 52 ++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/man2/ioctl.2 b/man2/ioctl.2
index 6b55d47c9..d52f245c7 100644
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
@@ -103,7 +102,52 @@ .SH VERSIONS
 .SH STANDARDS
 None.
 .SH HISTORY
-Version\~7 AT&T UNIX.
+Version\~7 AT&T UNIX has
+.PD 0
+.in +4n
+.nf
+.BI "ioctl(int " fildes ", int " request ", struct sgttyb *" argp );
+.fi
+.in
+.PP
+.PD
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
+.PD 0
+.in +4n
+.nf
+.BI "ioctl(int " d ", unsigned long " request ", char *" argp );
+.fi
+.in
+.PP
+.PD
+(with
+.B char *
+similarly in for
+.BR "void *" ).
+.PP
+SysVr4 has
+.PD 0
+.in +4n
+.nf
+.BI "int ioctl(int " fildes ", int " request ", ... /* " arg " */);"
+.fi
+.in
+.PP
+.PD
 .SH NOTES
 In order to use this call, one needs an open file descriptor.
 Often the
--=20
2.39.2

--gtijv2e6asakqtkl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmUB3QwACgkQvP0LAY0m
WPGYBg//YouVEptnI8qXzJRdB2hdnXC0jtgUoCAa6TiwFKgRFx2CAWwblQaIh+46
mT4rinPvxFyFE9gmbZgHhc1/cKhlL5ld5NnINNK8cdqGoUPhyDoV6yvn4wkoCaxx
YZQgNGBsHjilxf0ZYSp93GDLAwuZbxdBMK6FrdK5k+pFmLb9Yt50VH1Mr77EryCU
7h5aOjAUSLcpXgv8qBP7c/7Jq4mH1iBj+IZHZOJSGx947/uKmwh/Gg8x6iD4vOag
P+um9Le4QmjUBld6tKB7L7dwX/Krm0WdHF8XrFdw0UmcJKg2YB+XJp/zuqL0vDKl
9sthmCByHCmXRWxt3D3Ez8xf36DcygOjeX9mHc8tTDsKcoDrAGBLe7IHATpvv/CG
0i5y8t1wm1SgDU9RbcBZd1HP9r0MV3phDhU4E56iNEG9/G+t0blHxIMFJ9vfIWxX
dwHL9HP5K9XWKQIIG388sYtCYY4FJnkuliYlpKfoK7oUAi9N69KzpwYtUNgoSWvZ
lwLH8p2IAodFL5QAwVmajEXK9+veaATHOBDSA8BGQhHv6qsbFjPvz1JaITAM4tD5
9weBjh5U3zCAA6yOz3hNriFhvw177CfnoABEa+3h5Py9uM72IV/UotICr0mGk25w
Jvh3mN0rzBnf63DIGYIlVbOGPDU9Uqcrsxk55HDHs43GJAquJjc=
=lDpB
-----END PGP SIGNATURE-----

--gtijv2e6asakqtkl--
