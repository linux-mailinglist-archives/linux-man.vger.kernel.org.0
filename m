Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8808488A7D
	for <lists+linux-man@lfdr.de>; Sun,  9 Jan 2022 17:21:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234204AbiAIQVf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jan 2022 11:21:35 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:46452 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234018AbiAIQVf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jan 2022 11:21:35 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 02A7D1D5C;
        Sun,  9 Jan 2022 17:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641745293;
        bh=99gsNbwgbIKvbjtgkM81dqA0Mu/WCGYbkbTOIAnWlY4=;
        h=Date:From:To:Cc:Subject:From;
        b=gjIHLbjHqxbasLzFFm57oGkl8CS92rST3gulELotX8o1bv0O4+rz94VWfCD/pr6nY
         sEpNijNlg60XqACzh/sFTr7+rvZTUqUXna6KU2vxnH0qkqLhMcBURY6mCxQzaVUPzD
         ZKf387LezXGOI70wYY4GBKPxXYK6UxnpO5ZQUbRnTrNjsIjKc55GWctwOX3M1lYTqV
         pjav8qsKb+WvH5aRo/sHwegEbs/ad5hPUqfXXGGn12XF/INe0hZHXkR4G39Yzd+97Z
         X5ovfwwclDbJ+N1fxOLNRl3+2K9QPiNtCXu4atkHZrrE5aDMjp8T2MmOGvc3DxO3sP
         vN9l549JVI2zQ==
Date:   Sun, 9 Jan 2022 17:21:31 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] pkeys.7: ffix
Message-ID: <20220109162131.oi7qv4shvk2swsa2@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hszeibd3nop3ugwn"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hszeibd3nop3ugwn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/pkeys.7 | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/man7/pkeys.7 b/man7/pkeys.7
index 73ddcdc43..0fff6493f 100644
--- a/man7/pkeys.7
+++ b/man7/pkeys.7
@@ -42,9 +42,7 @@ to change the contents of a register in order to remove w=
rite
 access, or all access to a tagged page.
 .PP
 Protection keys work in conjunction with the existing
-.BR PROT_READ /
-.BR PROT_WRITE /
-.BR PROT_EXEC
+.BR PROT_READ / PROT_WRITE / PROT_EXEC
 permissions passed to system calls such as
 .BR mprotect (2)
 and
--=20
2.30.2

--hszeibd3nop3ugwn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHbC4sACgkQvP0LAY0m
WPEaTg/8CCRGUj82iuYcZnCbAAt6I7Kd+ljS80NTNlJaEo+lIncRTxHWMjMhJlM3
LokV26QBISpnicIoYxJTMrjsmBd5OAKzy4+BAjURrhsBF+rmRZ3JReaBIukAPh/I
OuJd1l9vbeu4Ui2tWy9u5UulEjdE2fjAvIFy94tNG53ArJZytdolHzYxmO5N+lGB
fiFnElGwUa4OzHprOf8+Dcw4DqFWvwaRwcSLgcNW0PBedNMRV2sn45Ux3q81Ydel
FIWtpEeCD7/3nZdvQ71v/GZIIADqHXLYyIZoNk2ZlL0HPYHrwRxplbT8GJ7kdh7s
OtSAaLhmTg8+vTGL3YXB8oEu4KCxzSSVkkRpOGjiQA4fYtP5heHnu6QB8Os1S/Yi
8ahDdmpR0KG8Odx+kZmdXQ9OsiBXWGpmnpoCe+ntAPuL64BDmN0nUKgpsTlt1tJB
fRbYo02IStnEiRAtZs+zeS3VLISkv5lxck1a1iyuQ5ya3WPLCQ67zWKlMyluj6fu
Ab9oDNHSt3DLrDHJR0o6Ky4CfPcUoyFh/Oywzk/9d0e4LHvugwWTkrhx8c+sNwBZ
jTpS/GoUgy8nfpf1+sogPkRDnusI3AmkpPvW5bXsUF2kazlshZ3RV0lcsk+Bu8lj
QRWZYFah0QUSgZVd0keA7IsexWFpvKlgBy7a7SK1+Rcs95ZVWDk=
=3kXQ
-----END PGP SIGNATURE-----

--hszeibd3nop3ugwn--
