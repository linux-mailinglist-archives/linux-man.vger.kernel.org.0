Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE9F48354A
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:03:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234602AbiACRD7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:03:59 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56556 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230009AbiACRD6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:03:58 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 933201176;
        Mon,  3 Jan 2022 18:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641229437;
        bh=hkOzEUTr/qtbgZiCB31wfVtitVCqvoaND3agBscolwE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mfQCwkuw2Owt74O0dAq8ozOgfP1elCulFTmW6vLafcvfbkhBsDONWOzDxZbL5ducc
         uhjLxYlPw5zilI2POSWZwXBDInIZHL4doPzSVI04R+HAC0FFqsAJ/8I5Ajc1bDG2ML
         OKFuJxSO0NAum1sJqNG0BLeQ229wpuFKQhmsZE+D9qRVkJokA26ukOVYMUKBe0JhZN
         Xmze5ZdzIh59I/WXCO9UmI7RMCHWUh2z0dJ3X95EqWvNOAGUiD93c6fMs8IHyUONCI
         17CKYkPS/2zx99IvzAHmBR42GWr0YzgQNnPAyLE2eOycGjnX6nDBG4pObtMeSl3TsE
         sr8z//QxBIbgA==
Date:   Mon, 3 Jan 2022 18:03:56 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 4/4] tee.2: always fail after perror() in example
Message-ID: <d052b1fbff77ccfbd11d9f3ddd2eed70f9c1eb05.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="np5vzhl5gbskh7us"
Content-Disposition: inline
In-Reply-To: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--np5vzhl5gbskh7us
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/tee.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/tee.2 b/man2/tee.2
index 831c02b77..89b119b81 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -200,7 +200,7 @@ main(int argc, char *argv[])
                           len, SPLICE_F_MOVE);
             if (slen < 0) {
                 perror("splice");
-                break;
+                exit(EXIT_FAILURE);
             }
             len \-=3D slen;
         }
--=20
2.30.2

--np5vzhl5gbskh7us
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTLHwACgkQvP0LAY0m
WPHosRAAh+llsSY6qh7yPAXCAYdNQOsUOykcYyEuqwZKsScryyvizF79WeebAnU8
wiN9cDYxtlWLHgWHH1M/sfQ6KeQmfID4Ph0jYxsUBhPd6hmqm7uQyGGpkkWt0CeO
Pm8zTuSW69sCjt3LIKYyirM3GzE7aNIrg8iGk/wdqT4gqzFb2fNAgENUGDL86nuG
Nf3xht7nFxa0TIla1G+exWyK2hw/lssPlTo+aPZXZ/V6zCyEdtl/ooz09Zx0roNH
0IZgXRDHgZMNRoUb7K7mBgM9sVc5zvkA4OhaR2u97Vw6rDv7/W65UCMya2rYtSeq
3DY4g/0FZfK5jRth6xG2REV6C+pOHH2vlBNtlcNjkt7P4ME9sW0/6V4QB06+LGit
Xc3UeuibpUMBdXna0VftaH/YNNYk7l8N5oyOMWEF+uIHZFzOMAXszX5XwyDJaoLm
c34nyv9GuMV2GjEnpZ9hEMEa0fqQDYamNaUXQq26jr4Cag1WMwZ8HUaPrThdDzOe
7RuxmnCAm0ikZUhajlwmJZNT6yFFAOyd+RuD5OEhaMATbhGuRtFirZaL2TlGUZpU
EoQwF1PgIQ7Rou7eygR9v/K8BInjwCD9IKh+4+36zvEUuuxOUzpzeydvEiHIXkPe
6h3H9he11DZlxoHFwqbNNTIIr+gEGtZFmO6jVFF1/G2LjQ7RPH4=
=2P/i
-----END PGP SIGNATURE-----

--np5vzhl5gbskh7us--
