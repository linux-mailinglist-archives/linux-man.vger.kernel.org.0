Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6DD483548
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:03:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234546AbiACRDk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:03:40 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56540 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230009AbiACRDk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:03:40 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1246E190C;
        Mon,  3 Jan 2022 18:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641229414;
        bh=pwji9pZcTK4yx1Qxwfj0IsXOYWYuIz9AEuUaqujgrT4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=p7CT0HiRe2F/7nQrt6zc53/fJi0X6/FZgro0+TTtmvTK7ayq0PGArmfE5JoWXklPq
         J+3eCIojNq4lcgXRdz/EEI5JxlzsKM+J72m7iuFs8uSdD2b6dcux7Eqa6jZc83VXZ+
         gBykugHvkaIGdJKRQdO9fWdMrwT7EknkjiomnibHbofNGzeq59nxpf7v2T3gOpao2d
         LM1SwxOqZN+xjeUAwDGS/TosDgv4nKTtvoqJYQViKMFFrx2JMMgt+TntAFL757qFlQ
         VMvz2kKMnhi4xLmdyjh8nCzTr+cI6hzU9uZgDUxzfGotpCoFtZ7lS3xGggsyPjDZsL
         eCHLlWMlrNiTA==
Date:   Mon, 3 Jan 2022 18:03:32 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/4] tee.2: use proper types in example
Message-ID: <be236ff0a523fb44c3b88cd9d26c1c1255714725.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="idypqcrneo5z6jjp"
Content-Disposition: inline
In-Reply-To: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--idypqcrneo5z6jjp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
The difference is, realistically, negligible, but it does make the code
look like it came from the 4.3BSD era.

Comments applied. 1/4 not re-sent since you applied it.

 man2/tee.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/tee.2 b/man2/tee.2
index 14a927c93..9d83ee982 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -164,7 +164,7 @@ int
 main(int argc, char *argv[])
 {
     int fd;
-    int len, slen;
+    ssize_t len, slen;
=20
     if (argc !=3D 2) {
         fprintf(stderr, "Usage: %s <file>\en", argv[0]);
@@ -183,7 +183,6 @@ main(int argc, char *argv[])
          */
         len =3D tee(STDIN_FILENO, STDOUT_FILENO,
                   INT_MAX, SPLICE_F_NONBLOCK);
-
         if (len < 0) {
             if (errno =3D=3D EAGAIN)
                 continue;
--=20
2.30.2


--idypqcrneo5z6jjp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTLGQACgkQvP0LAY0m
WPEA4BAAgAivtZHLOrwfVTioUzD+pfIQAHpFtOCoOEkHqryyakkWAZyjBFf2gWsE
eeyUHR45bvj775delYch2MT2VKnYOy5ZevVZM3a8Lt+3IojA8txW72ysL2EzKio3
mX8SNrRq/zJio48CEDPwGSH1zrhpmXJrFlBp2chaPI0n9+mlckUlrtVjxdeRkjmz
kOttytfLGw/fW/d/xL3lIi4lgUaQUJiuhy4Y+dAsMxzWf7te04wQRO0gQxhFJMUO
vvhHKKo6ZkOSCU0cBlGIe07Y4GuNO3I9w3k2OROTfLBpMkemDV4n8wYxZpD1WOsH
IYgYuOuKmdSmJBjOCwhON1SIS4TUDbHnG0KV1yefgP3jC5EteweYimCBvJQV9hvp
8MCvOIrnr+cEjy+3FYHpiNxOSR6RcV+jW2wRyOuXEgs27nW4LqiAfkirWbg+CGJ9
ebhcQMbMKTSGa8oRjQp54sf6aeoMmblFahaaunlL56Fm4R0cdDgKRymdxvwwCeIb
GXy1hlocUZd2sMRHn3soYUj2ZsAf4qxZNaGJ/usNL0KsNff+x/PZ69RF1A2GDLsg
QCj9420LGAb5mLRBc6Nq/EN1WB5ijtDMSvclHR0Z0dmtU6RWtcwz9x8bYpybqcm1
AQFui9IQjxpkMpTtrpNeJAo86ofMbuASc/ZK/EN8i4iwwQF+Udo=
=RmuA
-----END PGP SIGNATURE-----

--idypqcrneo5z6jjp--
