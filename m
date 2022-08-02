Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A99815880F8
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 19:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232429AbiHBR13 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 13:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbiHBR13 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 13:27:29 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C669C27CEB
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 10:27:27 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0B6AD942;
        Tue,  2 Aug 2022 19:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659461247;
        bh=L7e0FaEIVt0DK/vfbroIoiwf7BVGPtGLMnZ5mt7kpnA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SqBBKgcBdfXcwoNmup9xmtZJ8WRPRYD1G06PqRibKp/piTSvFn4hmrcVwphtK66Le
         so5OeFY808iV2t+gjuLAWpopvBdid0O3w2XZQm/5naXqkk/WBijrbHp/0NGyAgLA91
         KRovg1UT+91yzHw4GrQGrFFFQb3MfKWnaUFMlGILGgeIGmaXeRItWmOwXElJnyG1KE
         coyI7rwE99KZMM/mqeeF3kdqqQpgwh3LrCAZVO42UTR8xJ1IxC3pD7oO00FAB1z9+B
         VPXYeOQhnVpOwrx/YM5hnd+60SEnwnGwOgQuDYJlSYibae8Zaym+6L5smVL1/xj+9B
         L9dUORx0WshzE9xRhUXP0LuaJUW+sMXE6xK4GcnwIv/8WSq14YkJbnUPowJ4afJl8J
         FWDCLIEM9UGiYZlUp+InXaI1ZxK+m0gvEZgmTD9SbzHVxzBeFEDpCzUnFocAWXTQTi
         ciNV7W0/WQVMJOiU5g01wnyunL8kHvyL5VM9Jz4lQx0qzOtG3jN6ic/AnEbr/9+LSK
         l4i574B4AQ6NdH4UiSwl4dTvYxgdLcCXGQm4BRbOR0qTf90p4uPvKkaBJnBkb/pb4L
         CMKcrmeVH49UPKmvGwwx/xHO1gIZYUxSSSFutXbTUXvdHFKyv8upNGfbBKs3b4YplG
         yQj6fvDxShC2LPq5N2jeWYy4=
Date:   Tue, 2 Aug 2022 19:27:25 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Message-ID: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="w7nhqjqjhnrjze6d"
Content-Disposition: inline
In-Reply-To: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--w7nhqjqjhnrjze6d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

ftp.us.kernel.org EAI_NONAMEs: turn it into mirrors.kernel.org,
because the current text uses 139.178.88.99 which is mirrors.kernel.org

Make the address consistent between 128.30.2.36
(some address in MIT space) and 139.178.88.99 (valid, current)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index e47874f5b..4a5b38078 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -323,8 +323,8 @@ The program might be used like this:
 .PP
 .in +4n
 .EX
-$ \fB./a.out ftp.us.kernel.org enoent.linuxfoundation.org gnu.cz\fP
-ftp.us.kernel.org: 128.30.2.36
+$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.cz\fP
+mirrors.kernel.org: 139.178.88.99
 enoent.linuxfoundation.org: Name or service not known
 gnu.cz: 87.236.197.13
 .EE
@@ -403,17 +403,17 @@ An example session might look like this:
 .in +4n
 .EX
 $ \fB./a.out\fP
-> a ftp.us.kernel.org enoent.linuxfoundation.org gnu.cz
+> a mirrors.kernel.org enoent.linuxfoundation.org gnu.cz
 > c 2
 [2] gnu.cz: Request not canceled
 > w 0 1
-[00] ftp.us.kernel.org: Finished
+[00] mirrors.kernel.org: Finished
 > l
-[00] ftp.us.kernel.org: 216.165.129.139
+[00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Processing request in progress
 [02] gnu.cz: 87.236.197.13
 > l
-[00] ftp.us.kernel.org: 216.165.129.139
+[00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Name or service not known
 [02] gnu.cz: 87.236.197.13
 .EE
--=20
2.30.2


--w7nhqjqjhnrjze6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLpXn0ACgkQvP0LAY0m
WPEZGA/9GYS9E62mUhD6XHh3X706SWXYztfw9EvX5Gr3vJsl6WsRWlbs8PRW6czk
9MfVJnzT9dI08SQWfnYj7sCoXFxPBUzNzFqo6Z5y/6LZLjGK7WvnIwjYZbNoJRi2
fYG4/O1/yB2vCqT7IzdrhVWLvLLiyoM8demUnLbyXqWhiVnBHojjUKf2QDi95V6H
BnYzFQWiKdi7Zv/yYMphVfx7dP6D6GNlp3uomtF0Iha63nIXD41RYBpz9tfqLCS6
We8IcdWMuX4wFeC/32wQ2DqZhVVMEWJFhiotvQCKauLDgCHuQ4yyHye9YCMWPZUG
VzImrp86G9TF3RuZG8xbPxsnxIwYhnN4iH05Kg/nJX8+3ySFXLRxxQkVL/z5Qhox
Q1VZMU0lHS3/phcbL9gv6CYV1uupBVd2EAsFFz05Lve58OFIUq6fsgJxvxno5JUo
mSn71KolOonahRuqCeUUVjxqK1iu3ZBQtZZlwJU1aHblKSe+kQCYsbtc4GQJJGLA
KtNCCS31lCERUG/U0d4y49mN/LDuvZ+dqS4sLYHzooQb+hqaL3CzEefSZZDXeJ3s
GrS544z+HkMhCqHuxDNNHbtF14I+PzhwVD5aI6eB7/8i3il8nd3pfDlDYH+45vUs
ffflr5kJ6k5txjzK7WMZMfa1Vr9UR7Tr1WN8G0ETQyUJ1kL0LcM=
=TkqV
-----END PGP SIGNATURE-----

--w7nhqjqjhnrjze6d--
