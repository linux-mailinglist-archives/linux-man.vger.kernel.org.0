Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 480DB550DA2
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 01:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234701AbiFSXjm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Jun 2022 19:39:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232300AbiFSXjl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Jun 2022 19:39:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40E0995AF
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 16:39:38 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B80EB2F98;
        Mon, 20 Jun 2022 01:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655681975;
        bh=7PAVgBHNXgwaRygNdu0RN8a9LKDnwfDT3IcZqhQPwAE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nscKhBLS/24PpRe8Ifn/PsEGvEiYe5pKEze3A/2DWMPG8M7HQNFgSpRTWN8Foy6+D
         iMbyqE78pTy1OcxMzSVM9Ice4xj9fQlCxObDhXbSFqPKSM+1MkStbKBg8ENcQQXK2o
         CZNOPAPyGqddXFR8bXAE95gjxoIR1Xhn1ke8SN+CpWu0ZjIru8KPamHsPBA6djcGUV
         u5RizBFjeLMqiE5IN91OsAgGW3O2vgH3YoOxta6raAhi/EIaH7BPrxHgj3iKGGWQ6s
         6272v6Q4locZBX82FZ7xU8G7Fu4lmCPRk4VHGfZwivW43MdHsPwf3J8q+MqbyW0i1r
         LqsTwDFg1Liv+rsTsOwef3NMFK4QliEUBAjd9WbWBsKRkqt8twqlKQ3ObNVdgkqNVZ
         WjAe+AvZzADr5xIMI/wNAwdEVPk1oNC2hp0CeWoXbngXgUFWJ6iGevi/JVRsTBoOKo
         iIK4pzcZPe5GCyoy6k0AiPxXVaH7JGDIayjSMO+lz7Ya7n0brAJhY2dO6Qs5lUfIbF
         GomgjhkrRTDrtDhoPCvFPCp2i8dnyoVAPAM5wANKuLA9ToBF7t/86EBRueXH9aWXxH
         22eoIVvR2esYYoV76/521PgPOzhvpxYInLD3opMi5/PYhQutMKK5M5smqsZIOOqpft
         2m7WzOKss5n23vuxu44Xec9Q=
Date:   Mon, 20 Jun 2022 01:39:34 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] environ.7: align PWD with the standard
Message-ID: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kg3ak7v4y3tgs4lf"
Content-Disposition: inline
In-Reply-To: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kg3ak7v4y3tgs4lf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/environ.7 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man7/environ.7 b/man7/environ.7
index 019c5a25a..24446c709 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -158,8 +158,12 @@ used by
 to find manual pages, and so on.
 .TP
 .B PWD
-The current working directory.
-Set by some shells.
+Absolute path to the current working directory;
+required to be partially canonical (no
+.I .\&
+or
+.I ..\&
+components).
 .TP
 .B SHELL
 The absolute pathname of the user's login shell.
--=20
2.30.2

--kg3ak7v4y3tgs4lf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKvs7YACgkQvP0LAY0m
WPH7wg//WOQEs4HgbyRRSlB4NVAv3dYPsyPh1bDUEPV0ia1sTzHWTMWEkYz1UtMt
Z50VVIDvTdgsFIswf20wYwQuFq7eWZeMPCQkAtGKHtGxwitsPD7t0l4yMQhn/j1B
rPFnLXb4e/gVWUDrZemq6u0cfwH+FkogCeVRFGvzU0oxpUHqKx+vbZF7wtrfTaEg
6rDrTZO8xE2gzZ/vHXndhUQRxViNfK8JnzeFsE00Uyr/bCPNBhmT8wsLRn/iVOfk
Grwz6QMNeHeE1YciLik+p1s9h0+2hYm9pU2tDEkSvuFbmkESLtytAovYPQtoeJQJ
UFNcJBsUt/ol7pg5USbOoKyRTWtjeJkra5FxCox/HIf11tBrd1IA872FO0m+Yd6H
60P6q6Xi7gPA+ij1gGS3ZN8BBs5oszAqknDgkOgZYN6ZkmmNbXUlFlcvpMTDwx4L
bbqkia6ZHEDt14Zum9HaSlrUIBRmkWZWj7c4yl+p5QYaLl+6u33NM7dlXjIwRVis
0rzP6MKIaIf+jgaxuj6GhyUYoukY69mQZvQzQ4/UkWBZmX9y11JimO9JwyLZnffn
ohOEEP/D3ixRGnK40CtRhqe23bmPE3uridlKPmmZJH7NzLuEWRJZ+jWnozYiYyoN
17gi0I1uns8xtyqEY/YOGTZOPK0MwYKudTEAlWD4GftloQntbSI=
=LsNE
-----END PGP SIGNATURE-----

--kg3ak7v4y3tgs4lf--
