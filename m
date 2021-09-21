Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64F984134CB
	for <lists+linux-man@lfdr.de>; Tue, 21 Sep 2021 15:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233099AbhIUNt5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Sep 2021 09:49:57 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:60484 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S233404AbhIUNtx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Sep 2021 09:49:53 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E2099360ECD;
        Tue, 21 Sep 2021 15:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1632232001;
        bh=SSoBl6DKpDBV0dNO9ascZ+ALAt4/8mGRdPeUa7HKqTs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TlrzdhqCzb8erJoeK9gcIitUsY5ihCS56ZZnG/mv0NKYxUyy61UDeiFNeMOfuJshQ
         Y2p6wZCGZXmRy1lZkznc4HV3Sps1f+iLaOppFTjzE19u3BfIRmGMogQldplUQ+63sl
         ymAEIEY2crPUfxY5R+UgEzeFWekWA/Xk6rbebuC50CrnOejgwy4WF12tfYgRcb8AiO
         u9ggMykIzWAjUeq4V0gp5xSRW1XN9vv1jZdeBzVfJdSPwbTnajSBlNLNqz9PgceygX
         aR+4WCDIZtQmK3Jl6+FYoysyFftiJGKxDFnX259L65AUC6DK+I9arTvDXdlYpE/tDS
         D3bmelZZY9eAw==
Date:   Tue, 21 Sep 2021 15:46:40 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] rpmatch.3: clarify availability to glibc, Fx, and AIX
Message-ID: <0d2a879becab0b3e5b23bd76f92626847e6d32f2.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="he52ezieshdzrb54"
Content-Disposition: inline
In-Reply-To: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--he52ezieshdzrb54
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"On a few other systems" is misleading, implying that it's available on
/this/ system; this is not strictly true, seeing as musl doesn't have it

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/rpmatch.3 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
index e0f92a20d..8719d4871 100644
--- a/man3/rpmatch.3
+++ b/man3/rpmatch.3
@@ -120,9 +120,8 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH CONFORMING TO
 .BR rpmatch ()
-is not required by any standard, but
-is available on a few other systems.
-.\" It is available on at least AIX 5.1 and FreeBSD 6.0.
+is not required by any standard,
+but available under the GNU C library, FreeBSD, and AIX.
 .SH EXAMPLES
 The following program displays the results when
 .BR rpmatch ()
--=20
2.20.1

--he52ezieshdzrb54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFJ4kAACgkQvP0LAY0m
WPGHGxAAgkPQkKdcbeDhU673GAmrgMxLx08Jx3U8dIaeGP8lDo2PrZvsKlL8LqgZ
c9Rj3V1jbnsaz8/JHbjWMiSDwpu5CGdC4zm+CBr1zGE/R1OueZZGfiBYVhrmUW22
A9cpmT/0SXBKSmeWVFP2D22SYJ+2d/O359ctzIqMvdJz/J5ZIjZuosFeBFFeQgQJ
9ScKCrONAA3IdB+T2ukxywlsPSuFxvYnkbyOgXvfSBCy2MwacSCdM+g9GTkc6r9z
gjcdg3XwohA3Sf9JUBlnfelHeRYHwjNLYpcPLT5FddVrGXOpLkrgfUiVEsAQM/D7
FjakQiSrFCw/Gg+zvCXr+cwtTipgvZWVmnOfvyPmiEqmRDLT0pOXiC15NnBnWQhQ
NbS2yNLGhCfxlwODgzH8ca4gB2gkleph3KTWvIcY+5P93suDL3VZFPBDkLRUfp+v
GwWn3laWlg8vp1PAnJNSW61llXrfFh6bi4qxUpIvn1KLvZZ7AgBOm1yk8FL7UQzQ
f5kIRyQvUocmvNcIu3dlwkhqczGIe22NHJNMveD6OisHLmocFB9BjcdNRLr2NLjT
9iqT0BBpZbHUKbMkkZFhTqopJazotoIELFSDENsIvKVD6DEcUmeth3jW40kI2qwe
RLY+SDtzmuExAJUNj+eHQBubJ59WX9FGRNqb37ZhGuIpj7XFyKE=
=VB+b
-----END PGP SIGNATURE-----

--he52ezieshdzrb54--
