Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38945483447
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 16:34:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232611AbiACPeF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 10:34:05 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55428 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231320AbiACPeF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 10:34:05 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DC56C1908;
        Mon,  3 Jan 2022 16:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641224043;
        bh=JkuUfvlmmVv4uuoQA0hE+u7yNyIem2Vv78pzZtThAsw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lc6S+d34JCwNSFT6Oa3NU/fNKf4gZZViv6wdB2CSzzOEyaUZfjNv63loBzR0BJLDB
         hEQjOBx/nVx8j4GH5hMv0dfdfOObzjiU8R5GUgcElNQP2LqilDa9QsiE6OJ2igPAjB
         ox0oINkh1rcqMidArANXlemKrm1S+F/drchEqvWVj+SuLfnuAtl0LZK0nUsIs+uPAz
         TTFyKVE8k6LBf2DFIj75LmBaAB0A+0UQOyjNJVnSWyeGudMSbwKNHMt8cvbSwl9Aee
         HYe1ySf7kYY+ABqMciSEF/m4MRH+RzvoU4VzxlGSkXrAeJ2J1DHo5n4RV7UxkJfy6H
         Je6S1PnrzMOVg==
Date:   Mon, 3 Jan 2022 16:34:02 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/3] tee.2: use proper types in example, declare variables at
 point-of-use
Message-ID: <2b35693db4d1e63c41b0decf949d08f1966e7ad7.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
References: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zlw7zlnbtczinoct"
Content-Disposition: inline
In-Reply-To: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zlw7zlnbtczinoct
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man2/tee.2 | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/man2/tee.2 b/man2/tee.2
index 14a927c93..17b93882d 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -163,15 +163,12 @@ Tue Oct 28 10:06:00 CET 2014
 int
 main(int argc, char *argv[])
 {
-    int fd;
-    int len, slen;
-
     if (argc !=3D 2) {
         fprintf(stderr, "Usage: %s <file>\en", argv[0]);
         exit(EXIT_FAILURE);
     }
=20
-    fd =3D open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
+    int fd =3D open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);
     if (fd =3D=3D \-1) {
         perror("open");
         exit(EXIT_FAILURE);
@@ -181,9 +178,8 @@ main(int argc, char *argv[])
         /*
          * tee stdin to stdout.
          */
-        len =3D tee(STDIN_FILENO, STDOUT_FILENO,
-                  INT_MAX, SPLICE_F_NONBLOCK);
-
+        ssize_t len =3D tee(STDIN_FILENO, STDOUT_FILENO,
+                          INT_MAX, SPLICE_F_NONBLOCK);
         if (len < 0) {
             if (errno =3D=3D EAGAIN)
                 continue;
@@ -197,8 +193,8 @@ main(int argc, char *argv[])
          * Consume stdin by splicing it to a file.
          */
         while (len > 0) {
-            slen =3D splice(STDIN_FILENO, NULL, fd, NULL,
-                          len, SPLICE_F_MOVE);
+            ssize_t slen =3D splice(STDIN_FILENO, NULL, fd, NULL,
+                                  len, SPLICE_F_MOVE);
             if (slen < 0) {
                 perror("splice");
                 break;
--=20
2.30.2


--zlw7zlnbtczinoct
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTF2oACgkQvP0LAY0m
WPGVxg//YlCLgJhlIB1JSwwOfgfd2Vk45ALTp5vc3T7IKiO9G7mcwCfondg85sop
1udJWx2YVt6xNforh0yKcJbJQetqyOu5jDNv2zM8CWuARinorCyN3vPhYBPYsw00
LUXyqzni4Bb8zG9WS5PbyXdqgwA0LX0Aw4rV6OzxSGZuGHPBjUadGhVHM6/I1s1z
tfaLTWR2RjAMi8MZne916b1Q08QNaAZKChXpR6h2VgDhBR2/zGjEUKd3SsSHtVEi
UuJFO74hSPtzApoFDof6junxRMISMmkTwnzxJ6LMDxQK5ZM9PxoDpSrNNDZk6G7Z
Fw230vaKtP1gZI9IV27aiKup3CophyXtdp31EzvXSjsNKl4KN5AaDG+61jZ61ZmZ
BBOcpGpNj6BXf68UlnVUo8xiyiTFc3yQsi8mSCK2ORK3adpzdpfoINs2/TYQJQMQ
5CF1uKtf4XC021KY87MDV7GL2cPtXVCN3X321IbxYLij0+jjdpsJch3P3ST1TWRg
m2MNjN6imYf9Tci+shlN8xsICpzKO3idNa1+kdSSPEkVjifV9yZYeytdCUB2821R
L44wToVf8KxSio5ulq8E96s3OO2irggq6Pg31upidLSanpHRs+U+uVFD2BIHmeYD
DTsr+0BWUDTYGuzGEmsr4RLJXiULZjEqXopP0ZdrijMrYPEwGyE=
=BcmG
-----END PGP SIGNATURE-----

--zlw7zlnbtczinoct--
