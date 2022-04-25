Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 177BB50D672
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 03:04:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235178AbiDYBHJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Apr 2022 21:07:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbiDYBHI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Apr 2022 21:07:08 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F076872446
        for <linux-man@vger.kernel.org>; Sun, 24 Apr 2022 18:04:00 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0DCA2A7E;
        Mon, 25 Apr 2022 03:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1650848632;
        bh=rXN6Ba37iWw5qKrrTNeqQvhhpBzCiy3LmRxNsSBGtrE=;
        h=Date:From:To:Cc:Subject:From;
        b=PoFm6FgJFxNMYgNcg/LGyYRD7wypq351VQzg+gaaRrDs4wbI3nRXFp/aQb6RYIJ/k
         fU0k6tPSuoa74am4sqIodQJUFQgOvyax/ERAQdosKyBdIms/D6BIY8klYBAHuhxz26
         pD7DGxyft9EwoeWPQ1FcSO8Aj0FCOECYuFq8BKZfABb3wph12yaKVTybTf2gapl7RN
         qM9rxSCnDIwOC/GTjV3QYzL4xDO/MLPHoxL8dWlBgEAygOkvEix0MJUhK5gxthf6ek
         Y5kqD6LahQUpzq5H1vFwb0nbM1L/p8BDx11SaPEQjV9ZPqL1eHCew8+1rm7ovHLrAH
         jo5tZ2VJbG4ag==
Date:   Mon, 25 Apr 2022 03:03:50 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] umask.2: S_I* are B
Message-ID: <20220425010350.pfrni7crp75oq3a5@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="blenc4mg2ynvqyok"
Content-Disposition: inline
User-Agent: NeoMutt/20220415
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--blenc4mg2ynvqyok
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is more consistent with the other pages and, more importantly,
fixes the atrocious "I[S_IWGRP] I[|] I[S_IWOTH]" highlighting in the
first hunk

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/umask.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/umask.2 b/man2/umask.2
index 8a11c50e9..ef1a6decf 100644
--- a/man2/umask.2
+++ b/man2/umask.2
@@ -85,7 +85,7 @@ are described in
 .BR inode (7).
 .PP
 The typical default value for the process umask is
-.I S_IWGRP\ |\ S_IWOTH
+.BR S_IWGRP " | " S_IWOTH
 (octal 022).
 In the usual case where the
 .I mode
@@ -95,7 +95,7 @@ is specified as:
 .PP
 .in +4n
 .EX
-S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH
+.BR S_IRUSR " | " S_IWUSR " | " S_IRGRP " | " S_IWGRP " | " S_IROTH " | " =
S_IWOTH
 .EE
 .in
 .PP
@@ -104,11 +104,11 @@ resulting file will be:
 .PP
 .in +4n
 .EX
-S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH
+.BR S_IRUSR " | " S_IWUSR " | " S_IRGRP " | " S_IROTH
 .EE
 .in
 .PP
-(because 0666 & \(ti022 =3D 0644; i.e., rw\-r\-\-r\-\-).
+(because 0666 & \(ti022 =3D 0644; i.e. rw\-r\-\-r\-\-).
 .SH RETURN VALUE
 This system call always succeeds and the previous value of the mask
 is returned.
--=20
2.30.2

--blenc4mg2ynvqyok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmJl83YACgkQvP0LAY0m
WPG/mw/+Lk/zUM+dpUgWhcAWZDwgsywI+/5U0jloq1da7kLqIJosljyreQyXd5fp
U9Hobm6sdNoRVWyofnB1o4lA+fTtloCUgflEbcB0PHlH7Wg2FN2m2C77qUvQuNJF
kKU+BHgdUfIt/a8LxodG6v0V+uF9nVuTDjHKHk+Zl5moqfS2W07UlvEA/7YDAE5F
zpsLLP46msPXhOCYrzM6bvy9AFGqlRlfuThl4VfzHCqqsZv4OafEmGiceht/hkQE
uXL1Qsd4uRcx1b/XGBYOiIp8eALP2QAW796uMv/pEptkxbhFM9BWKUEUVJPsEpix
6orgq1qkQXlxRLfb8gAwRzenTz438j/8F+nMLKMPgPOtfM2qZy9sv4iaA6IymHYH
9IXW+ljKCkso1qVyNY9vbgOCVLZozx/A3hc4xpya4Rr2HY0M4brA6RRrS5DX7EGu
LJ+y9a16ymf8jt9oLla1tfI7okVEZNV4GUqKUDM2/sNV98SoBXstYycz6LLyFOHh
0AgkfIRTBWq4xB9ZF1Akq/wXZ5p36vvAQA57rjEX7wOcIaeQ7k4fgrYPD81da3/j
ORaNpSitd81RAtEZnOCE36qWglXb3BnMADU7yeW84dUGXS1q6H870elHzjCd9ROz
z1Zn2UGofaQlILQfDOqPleMluNAOXPsZxBvfDuAODnc/yv6m+hE=
=j8+B
-----END PGP SIGNATURE-----

--blenc4mg2ynvqyok--
