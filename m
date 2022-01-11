Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6D0548B5AE
	for <lists+linux-man@lfdr.de>; Tue, 11 Jan 2022 19:28:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241941AbiAKS2b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jan 2022 13:28:31 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55490 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1344939AbiAKS2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jan 2022 13:28:30 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 64F67250C;
        Tue, 11 Jan 2022 19:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641925708;
        bh=WLSyOoxinJbJV5+yXaO/bjaF1QeQNhLILrhBYQf/yJg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=A60Zg44r3Q/0TfujDsfPrTNoEETXwk1jyEc4DeOeZwu3n4R17L5VUfY8RvPojn1Kk
         04k5wbPSJCj23Z80xAdgR6sqtApCfGBHR/fQT/9E40oRJvsdTSUi4aOCc1cTT7ZzdB
         80dPRuXhRq7vlfS61EKdAbq2GhFdiZVLbGRs3DYLI0K8u/lhtNXBBakMBsYIZirUvH
         tntabDS4tL6knCl/Yg96vSMKI4OPBbXsSXLwr68hlpcoqEWq1ozuFSvzMdn1jF6YgA
         ntKH25mBzZUWHG9zhSCRW5kpTXHtUMvpaMomJl8zfepGYrlfY0cVkQfaaUwRTLTbJ/
         J8gLa4o6H2iKg==
Date:   Tue, 11 Jan 2022 19:28:27 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] glob.3: srcfix
Message-ID: <d88ca9bcc8d1b28b33fe7a7ff76ffd64212a405d.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
References: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="3t2gycu7jxv7iipg"
Content-Disposition: inline
In-Reply-To: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3t2gycu7jxv7iipg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

For consistency: this is the only non-false-positive for ", and",
which now reads:
  $ git grep '", and"'
  man2/ioctl_tty.2:.BR "#include <termios.h>" "      /* Definition of " CLO=
CAL ", and"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/glob.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/glob.3 b/man3/glob.3
index 82fb16948..50516d600 100644
--- a/man3/glob.3
+++ b/man3/glob.3
@@ -147,7 +147,8 @@ Use alternative functions
 .IR pglob\->gl_closedir ,
 .IR pglob\->gl_readdir ,
 .IR pglob\->gl_opendir ,
-.IR pglob\->gl_lstat ", and"
+.IR pglob\->gl_lstat ,
+and
 .I pglob\->gl_stat
 for filesystem access instead of the normal library
 functions.
--=20
2.30.2

--3t2gycu7jxv7iipg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHdzEoACgkQvP0LAY0m
WPGa1Q//T7Z2vUvuoOUF2SfGVwCYAgErHiwa94XuBw57z033kgZhTlKTZAKi/O+P
KStoDvSQUJCXYVsgW1E/qo4ScjP+R8P84WnhX+5kWDmaTLqCYyt1LJb6kPQTth08
9VXIHiE1b92B8Acc6f/QSVgand7KeKmpeOcNQILEjG0ZsDdqWubpLNSPBwoGzbAV
1mTLLGyt//4QS/lFP2hp88xhbkYuRWJgOcai5CGxHPLarf0AUoK2J8YoCn2bkMMn
2bCNOLgNb8OoiJ714Thp3TAHDHW+u0bLxu2c638u9c5zof4IuMbBfOQhEfmPprx1
lCffNYjdlUSVWJo6cayAj7acL1QNFLXCRIVsaK8zbV5ZYo0QZAAGBHMWJtAQ2bIf
7Be2hGVahbFl/DtNVJF0FjKgYw9vJIQBsr5/Q/L16uBpTm2gB4r60+oUQ1VAH/nu
WziND1BgZ3F8TQtQb3J3zVx2Q0GbQzbaEkrGYhaDOVZRIGBdG7Zpkk19ZjKaCQKS
rCxQAtBGCDqjiaKeBSFdQO3PuJHe5T3LJ3AaBahSFbXV6KyvYpMIG1+vCP+PZTRv
0kk7dI1w/6H24m/nsR0kv/JtIehuAzrIOkt4NmtYYn2Q8fLcpDdLFs7jZYa8679h
lGjV63Su5b66tFAakMKzJ9f32cVPsj0OanIz4Foa52Qmmfuq3gg=
=U21W
-----END PGP SIGNATURE-----

--3t2gycu7jxv7iipg--
