Return-Path: <linux-man+bounces-1766-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 583AE96D767
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2024 13:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77B3B1C22B5A
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2024 11:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA391991D4;
	Thu,  5 Sep 2024 11:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="HHtcEJMy"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3BE198A32
	for <linux-man@vger.kernel.org>; Thu,  5 Sep 2024 11:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725536533; cv=none; b=Z1LOd59o2H1Np9E5K/5gOoJB7kCJd3UFfDQ6CHdOvoTTvCCmUQRhLb+p5QGuaN30zz5BQwGiMZhU1gaQtUSXW13hxk3cp1c9X+zMBENonPgrAR9179jg4ES9IGDtQb1XASbuBDdt+mJ0NSX0AFozpRTd6yzTJwe4ac2Y10LD86Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725536533; c=relaxed/simple;
	bh=cb3d6QUEeBETs95jRLeXsa+PGWOhpP9P3AeqPevtfY4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=nv4gTsjzx0snhUHXfrSL0G5CRAAa7rwvWlcOXT7AQWUd0oKJ4flGdjW36Q5XL1wal0hb5Ij3d90GhiH7jqaW24wqELci4kA5BAu+/Aub8yeN2+60pBxkwPIOkru6dkY9DePxPK8UOq/U64GLu0SBI97Qkq44aoWB9M6nZA/XNtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=HHtcEJMy; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1725536518;
	bh=cb3d6QUEeBETs95jRLeXsa+PGWOhpP9P3AeqPevtfY4=;
	h=Date:From:To:Cc:Subject:From;
	b=HHtcEJMyJZ2DG9cJ8UBrcL9/fnAqJFDWmIUyN7IOts97YFvzfbywbqXIBaSSrdu/y
	 vXSDRIpgdoIlG3U9so6sB8Nzp0HmeVPpYLocgYqCGRYtjKabRczl79wkC9NvWKm0Td
	 WYpcXdqGS/mv2sfJV78H9Q+JBKramHQ8X5+BIi+9tvetvZZ6cWybvgSZcGG1RY63vw
	 xozy3WJ70wyO2ZycqJCqX8j795KBAmHF4UxIiYKgH0JetlAqaCtpdIclbphb+uN7Vj
	 XSg2vF+JAVYUCbWQRln52adzy6Hm6WYfrN5lSEnSwavtfiqt63AquTio/TUcKG5WKE
	 HjOgJHgNKPOKQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B3CED1656;
	Thu,  5 Sep 2024 13:41:58 +0200 (CEST)
Date: Thu, 5 Sep 2024 13:41:58 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH] timespec_get.3: new page (timespec_get(), timespec_getres())
Message-ID: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3pdvdsj33odq4bnl"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--3pdvdsj33odq4bnl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

If you're wondering how errno is affected, so am I; no-one really says;
quoth POSIX:
  If base is TIME_UTC, the members of ts shall be set to the same values as=
 would be set by a call
  to clock_gettime(CLOCK_REALTIME, ts).

  RETURN VALUE
    If the timespec_get( ) function is successful it shall return the non-z=
ero value base; otherwise, it
    shall return zero.

  ERRORS
    See DESCRIPTION.

But this is a moot point since clock_gettime() can't fail anyway
(glibc doesn't even check the error).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/timespec_get.3 | 82 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 man/man3/timespec_get.3

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
new file mode 100644
index 000000000..5e053d551
--- /dev/null
+++ b/man/man3/timespec_get.3
@@ -0,0 +1,82 @@
+'\" t
+.\" SPDX-License-Identifier: 0BSD
+.\"
+.TH timespec_get 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+timespec_get, timespec_getres \- standard C clock and time functions
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc ),
+.SH SYNOPSIS
+.nf
+.B #include <time.h>
+.P
+.BI "int timespec_get(struct timespec *" res ", int " base );
+.BI "int timespec_getres(struct timespec *" tp ", int " base );
+.fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR timespec_get ():
+.nf
+    _ISOC11_SOURCE || _ISOC2X_SOURCE
+        || __STDC_VERSION__ >=3D 201112L
+        || /* glibc <=3D 2.19: */ _BSD_SOURCE || _SVID_SOURCE
+.P
+.BR timespec_getres ():
+.nf
+    _ISOC2X_SOURCE || __STDC_VERSION__ > 201710L
+.fi
+.SH DESCRIPTION
+.BI timespec_get\fR(\fP tp ", TIME_UTC)"
+is defined as
+.BI "clock_gettime\fR(\fPCLOCK_REALTIME, " tp )\fR.\fP
+.P
+.BI timespec_getres\fR(\fP res ", TIME_UTC)"
+is equivalent to
+.BI "timespec_getres\fR(\fPCLOCK_REALTIME, " res )\fR.\fP
+.P
+.BR TIME_UTC
+is universally guaranteed to be a valid
+.IR base ,
+and is the only one supported under Linux.
+.SH RETURN VALUE
+.B 0
+if base is unsupported or the call failed, otherwise
+.IR base .
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.na
+.nh
+.BR timespec_get (),
+.BR timespec_getres ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+.BR timespec_get (),
+.BR TIME_UTC :
+C23, POSIX.1-2024.
+.br
+.BR timespec_getres ():
+C23.
+.br
+.SH HISTORY
+.BR timespec_get (),
+.BR TIME_UTC :
+C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
+.br
+.BR timespec_getres ():
+C23, glibc 2.34.
+.SH SEE ALSO
+.BR clock_gettime (2),
+.BR clock_getres (2)
--=20
2.39.2

--3pdvdsj33odq4bnl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmbZmQYACgkQvP0LAY0m
WPEnuBAAh3SDp48DWglO4/gv1az3LsDi/qyc3HH69IVDJeejzkRHYjlsac6+vV7d
H8Zt63PjC3strYuwNfqM0tkQIxKhkQBuxmnKNcxOzqTj06Dat183xvX9DHUByyaw
ROAjZwXEGscoBstcISEVfMoGknwVsRuOz2OiV38tWbrv9DWv2FfGgRPO+dZSE2i8
7fsZPpXY9PS7Cy8CXmLEiHbATPivCitrSCy3tGBJK9Jorwlf78VTFlkf0z4sXmub
o35KoKTVtUxDX6OTXbtk+VKPZqP2ZrA1G0wcEPRDwVRKsAJ20gzxU/QAypQOmsK3
aap04pD8w8d2UFwU9TydD/0hINV6Qt9imRE/BNbVabBVF1V96rLXF+3YPT8TLTmH
EtKhJebkMBI3+wcFS9F6GH0MdBK4rNsDzQEmDfP2EuawehSHDJdcMaFtlAsCXEsn
/RJ8xPkL35OH6/OzP6rcldgqiU11t9VtWsjKY1GdjopZFXbdCHaZlial1NE6r4yy
zSgjErzGD+TxShClGNQyy0Ip6GxCH2ls7pa6ZUPQnCEIYLkaPYQWKI0ohr+6ODPR
INpjR8dEcWpOL2d8akY/MHgEOQPKqhRx+LnKFt19eXXaqzj0QzQnqTMCjcDTmSuv
EJ7iqvcd4WvqO7G/22XEAXEie2WQ4ATcSz+WrICzSeP2Grt09Ao=
=9k7p
-----END PGP SIGNATURE-----

--3pdvdsj33odq4bnl--

