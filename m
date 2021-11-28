Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BAE04608FA
	for <lists+linux-man@lfdr.de>; Sun, 28 Nov 2021 19:28:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231792AbhK1Sbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Nov 2021 13:31:36 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:45400 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234495AbhK1S3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Nov 2021 13:29:35 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1E5461238;
        Sun, 28 Nov 2021 19:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638123467;
        bh=w1cH4YOeGg2ftKNapkoDLr4MWywI3SXstEKfSEw6XrQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rkMPbei2/S0HIHAQX0ndvqGnRQ0i5eqcPlnkKABXvMxdSpYsj0Zf035xH5knDKzWA
         yA3FqhA4SXAEcjBVLhbeM42DNF/qYFU1fruu+qG0yNscMYJcg0z9lpLmUs8ILlhZRl
         6LoUfpq3sSo+Y3Js39hpw/kVxI1zWlkmMvcuYfAi2p0Fs80Rc1w3eY+BQ9ttmEHYbF
         eApN/e6/w1b93BnlL1qkPgGh0BDgneL3UW4WdrYGRfSN8aP4ZKuPisl8kmWjms1WJQ
         ukOhPoZnubuGV2IKhWInzhvTc2AsM+0COaZ6EH2SClc8ZPncXrHb5zoQEG3s1xu9U8
         3JpRqyVBlgvtg==
Date:   Sun, 28 Nov 2021 19:17:46 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 4/4] system_data_types.7: note that struct timespec::tv_nsec
 being long long on x32 is an extension
Message-ID: <12fabe90351668fa1582cb67b2c56d33d1e247aa.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5fi6xhiq53q5vhft"
Content-Disposition: inline
In-Reply-To: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5fi6xhiq53q5vhft
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/system_data_types.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 80679b180..10b3bd13c 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1556,6 +1556,7 @@ Describes times in seconds and nanoseconds.
 .PP
 .IR "Conforming to" :
 C11 and later; POSIX.1-2001 and later.
+The 64-bit tv_nsec on x32 is an extension.
 .PP
 .IR "See also" :
 .BR clock_gettime (2),
--=20
2.30.2

--5fi6xhiq53q5vhft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGjx8kACgkQvP0LAY0m
WPGAeg//UmdRctuYTlYz6lDaYjxJBQYeHAUlqUAjadvAnJKrsPZjimdO9iBJOTuC
TSgFRGgeEKaH/XMJ4DwKqaHiEtISEcShSvMZyDgcKZoDbecrhQ7I8vfuhp6o6mHb
13+YKhI4HD+q+PB2M1ZHtMsVOagJPUkzHBw8d4oo00MCrNe7LLWLxqo3/kIxCpfm
MWlzGGCh6rNS8UqqDYwC7lmp3QGeRcoSgXUgiSqWUrWpMQeCE5RYmsX9Fabenm6U
o0kfPKlrGKLIRQPzkGGIrwBxz87yRlnL1jrZ0QVeHPWn3+x5O519/OXnbhRELbHH
G3ACb0c8ljP8cHmuDoM0o4rM3lym2vzCLQSQS/2WgwK60ZQyEbc4scAI4F7Tt0Lo
pxNJEHWs6aq0kSHEqaHtOOJHcID8SF9uMxok9z3JsolGHDfLqys3iipQSqoETGJS
I22kDWXFMQMdzUVF7DQaCPKf0AcQ63EQwXT89LVcgdkIskyqgkdD2qkhumo/iIgz
V2YsBw3ue2kHoTCboaG+rtySnByXGV8Ro9we0ug2z/AnHWM+2toBrnRsekayZ4ax
xpmwrMY2gzsuMnbpu2moqJ9hjJlmmHaCuSB82XehxlklzJe0JFfFpa1OaATVMvXQ
IHzjhq27MFqNmxKUHpk9rlgLtkPbHeLaKe7H730kPpG3/aD6ojA=
=0tSB
-----END PGP SIGNATURE-----

--5fi6xhiq53q5vhft--
