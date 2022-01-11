Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA12348B5AA
	for <lists+linux-man@lfdr.de>; Tue, 11 Jan 2022 19:27:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344784AbiAKS1r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jan 2022 13:27:47 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55476 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S241941AbiAKS1r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jan 2022 13:27:47 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8401D1F64;
        Tue, 11 Jan 2022 19:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641925663;
        bh=W/4VSnZqNLQLAxmMuGtMl8aYpiyf/u/b4TdR/caK5fM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=M4xaCzSx1PCY54aMNr/FaPdchRH7krZtWLGA0sX1yto4sPncUhvRKZwXxRvxei6RW
         vV/e8pvuOAHAzfrr8IVEaSDRWZr7jjvXavqpJgy7dMmq0q0gdS83SM9iEIEjXVhPDr
         23Ztsyv7ucU8NXd1eyEfKquUi/i2lPIVlJtZmCnSZSO0ytOGAHXmWnu/FqTgmpS4Ej
         ad90TJbAqGdMppTQs54wKACNhiOCqPhtn4tIUD3T603Jaq9ngoV2vX66BTA3ckQk5J
         7FIXJD1gIO0QrTbDAqOGLMpZ9nzKFbA9q53evnN/51+5oVEuP6QoNbHHytV9Q20LVQ
         M/HyyI+tm/9Uw==
Date:   Tue, 11 Jan 2022 19:27:42 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] pkeys.7: wfix
Message-ID: <cca0611edc27083e28da425ca6082e0c31ba6064.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
References: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="m7mi4k6e4i6pe2ek"
Content-Disposition: inline
In-Reply-To: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m7mi4k6e4i6pe2ek
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/pkeys.7 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 73ddcdc43..9c2356f65 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -42,8 +42,9 @@ to change the contents of a register in order to remove w=
rite
 access, or all access to a tagged page.
 .PP
 Protection keys work in conjunction with the existing
-.BR PROT_READ /
-.BR PROT_WRITE /
+.BR PROT_READ ,
+.BR PROT_WRITE ,
+and
 .BR PROT_EXEC
 permissions passed to system calls such as
 .BR mprotect (2)
--=20
2.30.2


--m7mi4k6e4i6pe2ek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHdzB0ACgkQvP0LAY0m
WPGNchAAoTi/btEBMRd247C31bO6JhUg8bPOWHuK151eOm0KtHYZL2jTDZbHblQ5
tNb1pmv0O8TqQDlzuVTCqCnMKPZvDY5YrANY6zXfGG7tDfA5SrwZh2k4VClWbDQD
wgeRpwRtp4uXb6Bw2FpvZhe0O//Cczbf6MgwnDFfU6kd1LcAGuNmyF99SmrWSVWO
gbWw+wbqBk3164NXLz2cTJ/irKfgc/oGRA7jIN4frje7N9Ho3IbTWmu+gCy8/HX/
MfJgrl017Vt/Z+SYO2JiepFskH47Q1sTeZLZqb8BVsSLzR0CMGqBQfzXyMCsENT+
Qc/fsOIRlJ77NbFI2Z9ex/ermMDRRMYgc9iOd7k7XzaeqbSN1QprnbvBt7xiL+bT
UAPPN01OIPoCZfYhQIMSkA6G8sxBz2zl5l+bXwYS6kBR54jJ9noORADF+1mDI3iO
RoyzPb0wguHK8H67DWgb2jGKxLEHXNP6sgL1w3Kyp7h0wB0s4XMixMXPFECih+R/
UCUMFu2yyAaajY8obxKDnPP1csLpLyQFIqv1X3ZKpiJhwS1yXivF5FpEyA85mQUs
f076DyQw70gRq6Wf1o1LKMVYcciVGOdOX/SDoizBbCFVmOkknWhksYGaU7L/cKPl
14cLIjlpqr0T/hh4hwjkeAb4GVhRAtrepVDMa1WdgP32W9kMa7c=
=4/CX
-----END PGP SIGNATURE-----

--m7mi4k6e4i6pe2ek--
