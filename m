Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5237C54CBF8
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 16:57:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239131AbiFOO52 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 10:57:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235863AbiFOO51 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 10:57:27 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9DBAC34BA3
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 07:57:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D1B032840;
        Wed, 15 Jun 2022 16:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655305040;
        bh=iyu/oiRvc+Qk767BqJoh8gjZ7eE/ypd+V81L3nHJS1k=;
        h=Date:From:To:Cc:Subject:From;
        b=bcGNPElgKEE+H+dS9Si9ZyqxMqT0EEIiI5TDq6QgnYEePhj5fzo9SsBW0syrPSS1M
         CfClm1V76ki/KBTVnTBxhx0qdRRvHmH0i5ZdqvNHBt3vRhZm3mW9YC4azuiumE6Ial
         ahfizsdetEg7xI8x6+71T8h0oz7x6IWUE+KrPPDUvZr/okgxlb6PoX9ix4troUlWhd
         NCJtSD6F982sxzMWvHwSgybFgY5iFX3s/b1DL2cfgu6QV4KlITnxZwBU/UQwkYMoRa
         c4Ai6gd0A0/TLcsAY+e6BjIgP81DBKZ8U/vfbpPqLkc9pDfW9LTiWknxXwUhugMrmk
         r2sNEWB/chW3zosCZHa9V63cR4NOhT95Z6eYmio6o1gb2QnILsq7TuXp514rFVpN9r
         i6c2X6klDCy5QM84EbBqfZIXZrSsqK2t9D5S3WrHPpBo7R/YLQQoSpzHSC7kokiepi
         Q4ANNZfevJTUbUoZbg5/+RlwnFbmohrLJAOZ1KFpNlqr0IMTReC1ILllE5p9O689GE
         RmMlUmrlc5o5+EqOfPRb0lH7+zDZyz2V9Gqt06qj7tjwdUhrUyoBRwvjD5uYQgnTtI
         IquotDmdnpnA4dHCTjyLw+EeZfpB9YqoJspYXrcN1z9//pLt+I0AslBJUFNyLJg43H
         oZEBaSy0Yzo+UJhjN/QBUv3U=
Date:   Wed, 15 Jun 2022 16:57:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] system_data_types.7: struct stat: describe blkcnt_t and
 blksize_t
Message-ID: <20220615145719.co5l7hmqys22x77j@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ooertd4a653bwuri"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ooertd4a653bwuri
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Per Issue 7, both are signed integers.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/system_data_types.7 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 23acc1393..785182134 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -668,6 +668,8 @@ it contains, without a terminating null byte.
 .TP
 .I st_blksize
 This field gives the "preferred" block size for efficient filesystem I/O.
+.I blksize_t
+is a signed integer type.
 .TP
 .I st_blocks
 This field indicates the number of blocks allocated to the file,
@@ -675,6 +677,8 @@ in 512-byte units.
 (This may be smaller than
 .IR st_size /512
 when the file has holes.)
+.I blkcnt_t
+is a signed integer type.
 .TP
 .I st_atime
 This is the time of the last access of file data.
--=20
2.30.2

--ooertd4a653bwuri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKp808ACgkQvP0LAY0m
WPEQdQ//QQZXzcz9r6excT01EkAOFE6nIrx5c6U/K/ghty3mgQMtApySTVZCeHtG
CTKi1sup3AVg4TXnJeeC/V5R5mATA7Ao7+z0g/5NTupHn8Qlnikx3r4SAcBJPGXr
nMkLOAyasG8N+xPhwcBI5Q0QLKmB/ZNifQORxM6Hx47lXrMFk0Ap08orcUwgWbXv
NqckUziEuCaPSOifXGPgqpc/DIcSy/LEGxVXDV4G6TDYE3+GvyizTOoCAHCd2nsB
1sW5wvy2LLICt0g1RhXizocWhcym5RTxO/Sv6gZB7SJOXB8bxGR2+u6a2HrGAERY
3DG1eRyfP6FK39/oG1pwZ3Xz+u3A+feaaMaC5NwYrn6Sy4jiS6jJEod9+Uibw1ec
Si6D4kp41wNWum8uuIyJv6uSEoh4PjjD48VVxPMzdNSPX8twmLX+23NeuFfTBQ7n
7kjkYG2qPj3sfD+kYIpi1PiP7SPf0YtLx8wwoqCaySbqbhg+GbXKejzVCXL7Kabg
4Y+0j6vufKgbw5QYOY7taQWqKY1zXXtL1MheNa6y2CKdymKTwqPxKZSPKp2ZiVIC
ywUG/bTLeCECu2Q4iyzlLQAmZ3a6+hJ6NVhzDMsM2yD+R/lVeVa9ARCfYvy3F1Ck
GbKMQ8zl2UrzDah2aCoyAgYSK4finFzvQd4PSNwtaaBQ/YmZXE0=
=y9bc
-----END PGP SIGNATURE-----

--ooertd4a653bwuri--
