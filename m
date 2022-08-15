Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A51275951C7
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232767AbiHPFQP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:16:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231941AbiHPFP5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:15:57 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7033CF23E4
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:34:04 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BE6C6198C;
        Mon, 15 Aug 2022 23:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1660599219;
        bh=aHq/uPLn7fAEFoKgz5aoYqUhcthiyrYvA28X7JVyx9Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h4MDbi9WHq4api0GALEyJQ5d0SdXkB6Id4mNnqH+ARuNzeaoPewSIrAfA1KKntv36
         SYsOunJOq0+MAgrWfzsPtnCstkqVaIlD0+gYgr50rZcO3tUR3UuiJZNDUolT2JWWHX
         pTZK96jIn6SAQHAIT24svyoWy/N6f5D+Vv4OT9N8bnUtabqX70ysn7OexjbhfY9SjQ
         r3aVFXdIbgGJF1Ic7+G5zF0JkYNLNpDWvPKmUziL72XEjzh48N2OkGjzj3u6nwC32c
         kCt0hNLj6JquiP+RQ0Z9YwDIkZOx9vk16G6UMaXArDkps1yZdh33b89YmY43imlnc/
         lIqmZkPvaRhT6v+54iAzXZqo55AcollbnRrsAgyfKJp0aCKoRPM1KIynGR0VNy2nhR
         G5bw4AVaN356U6MT0hJy+JDhI26vynNDWj3Ym+tG4v132B9jO2cJQBJhYfV1IxnDF4
         rWxjmcpicCxdD1yhSAmlY4b1ILt/3dUSRffqp8dRLD8hvgZNcvTgEh4JzBTIl3DdPv
         KFkOBCFA9D7/BE5JXH651NwbH5yKoSu/9Zyf9pUMfcFQyqL1uU426ODMlZZa/IoaDO
         W3eilcpAhkUlhxqwTtbMCGhwqXvpVfDe1ppm+o9WLQ7gZg68YmMYcQXg+qnwF9Dm4l
         P74BC227eCRwys9O6csx9e1A=
Date:   Mon, 15 Aug 2022 23:33:38 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Message-ID: <58232532c5ed11b553a77f1cfc68b84495eaa37c.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
References: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7rutwikfqevg4ryi"
Content-Disposition: inline
In-Reply-To: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7rutwikfqevg4ryi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Make the address consistent between 128.30.2.36
(some address in MIT space) and 139.178.88.99 (valid, current)

ftp.us.kernel.org EAI_NONAMEs: turn it into mirrors.kernel.org,
because the new text uses 139.178.88.99 which is mirrors.kernel.org

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 2922ef320..a5eb85843 100644
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
 gnu.org: 209.51.188.116
 .EE
@@ -403,17 +403,17 @@ An example session might look like this:
 .in +4n
 .EX
 $ \fB./a.out\fP
-> a ftp.us.kernel.org enoent.linuxfoundation.org gnu.cz
+> a mirrors.kernel.org enoent.linuxfoundation.org gnu.cz
 > c 2
 [2] gnu.org: Request not canceled
 > w 0 1
-[00] ftp.us.kernel.org: Finished
+[00] mirrors.kernel.org: Finished
 > l
-[00] ftp.us.kernel.org: 216.165.129.139
+[00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Processing request in progress
 [02] gnu.org: 209.51.188.116
 > l
-[00] ftp.us.kernel.org: 216.165.129.139
+[00] mirrors.kernel.org: 139.178.88.99
 [01] enoent.linuxfoundation.org: Name or service not known
 [02] gnu.org: 209.51.188.116
 .EE
--=20
2.30.2


--7rutwikfqevg4ryi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmL6u7IACgkQvP0LAY0m
WPEnOQ/+Lr3wWE9y3a8qXVxgUxIgo4+FH6YIwOSWmZNOAH+9g+QnupHLRFh7xRRT
nxAA0+LaW1lSaYoq7Wy4E1Z9hTGIQxh/6UO8MXyRsLvd+lVd5+W4j3krP/bfv0J2
4pIHkjjKNzfox297fraZabSTjSE4gfKuuPpmqsBgsgABAz8AH/xj5i5ba72aCCLq
tKkQ1lfYor5uIcu1Xi98hWrCV2DhDs4ysOYRJaFDzo64tx19VBqQTfsXvjigIKgs
r5CmHmQVHQ9I70wT0RAURa6Q78Cspc0urfgX9/PYU4iV6jkn4Zo7RzWYlXg8jlfi
ZYCZpSzjfRR3eh198zCLAr+t2zOJItdjST3U2JJdNK1+7d7ZuZVWzFIp3zuM/IaB
UH2WEfwOQM4+Rfzb+58GQNqXBM1rRaHWlXtE4VLZBNTdJMnzmsQwlI3kiEhQ12Co
z0SEOjMgUS+VArAnk8WOpatlXVkXKIbm+h3MKnYq9+TqUb0NIX2OFintjI8k5VHV
EKTBb0JYXrR/dPZGfLNrcrU3jHBYpp7ORzPWR2lTE+dU28gI9gvfQ765wCvP+9u5
Lw5XCjQ3LRCdlYR0d7gbKTwSAOq5OwgOBQVFwxPgaKQKTQwiatl5tLykVvPoXBrR
HVytBs5rjrvmZRvF3zylq5uMhx6z1M+T8hAsQVXGoc3c7hNUitY=
=Uzuk
-----END PGP SIGNATURE-----

--7rutwikfqevg4ryi--
