Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A26965874FA
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 03:11:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234162AbiHBBLd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 21:11:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234075AbiHBBL0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 21:11:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2B8DA2654D
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 18:11:23 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2A3F5268;
        Tue,  2 Aug 2022 03:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659402679;
        bh=yzWcIczyVpT6PzFukIqlTjtNF0B53ISOgok+JAppS1Y=;
        h=Date:From:To:Cc:Subject:From;
        b=QR30GHpHoEo/XvDq3blOL+j1VJLaSxrSAa74PMgd5xipI2d2S7i32BrJEU4QhoJd2
         aLbW4QdvBEi4O+KdkZg1nr9VcLkhTZdujWhJVmB6f2uxpM3bF+fouquSY0nBS7gyHO
         ATMDs4SCGRiFYi82gSSgWgewdFeYH5LbdFvfEtyMbDEgSvfx4VB7A6GOZp0k6g65bd
         lnl5WNOBcu7V6eZvC+mz3PeDb6/Es8mTXAzsshHyhOlvlo0mBhBHNJ0DXjQ8drH/rm
         ibE/K9u2QT9/Zu1ixCxc0dtOUBlQlKyc5b0HjCuqFBHcT2RxeR6KTx56oSs7u+t5rz
         2XxokTNUZQkrP76w5mtyvU+fQh3NhUFNq7QNq30CM/e/tyL07kfFRoR0rQS1ZDAZ/u
         YpWU60y3jw+UQs7Nu1UO//LawxlS7XcnU1nS/6VNfbwLjUWtnqQjiDV1DPhoynYS3Z
         Gc5iAd+1f2kLCdbXLumwIU5uvVpIJNdjY2ddmy5rXdxL6LeuAGfHyyimd3LzQJ52zr
         hphqb8S1VwS9GMl56H6b/RufWbf+jKCPuEeyK0RnSDWOEaLLqrNFZqzojeALi630bw
         ovGkwJAvYsQ545tEaDMBlujY0LEMGE0EuHw3lPeCmPopWFRu+FLuPoqWZ7K9gN+vx4
         Byc7mnqvaQKS1e/aQELvOwMA=
Date:   Tue, 2 Aug 2022 03:11:18 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Message-ID: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="djeyp52qn452daca"
Content-Disposition: inline
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--djeyp52qn452daca
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

ftp.us.kernel.org EAI_NONAMEs: turn it into mirrors.kernel.org,
because the current text uses 216.165.129.139 which is m.k.o

Make the address consistent between 128.30.2.36
(some address in MIT space) and 216.165.129.139 (valid, current)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/getaddrinfo_a.3 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index e47874f5b..259e7e40e 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -323,8 +323,8 @@ The program might be used like this:
 .PP
 .in +4n
 .EX
-$ \fB./a.out ftp.us.kernel.org enoent.linuxfoundation.org gnu.cz\fP
-ftp.us.kernel.org: 128.30.2.36
+$ \fB./a.out mirrors.kernel.org enoent.linuxfoundation.org gnu.cz\fP
+mirrors.kernel.org: 216.165.129.139
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
+[00] mirrors.kernel.org: 216.165.129.139
 [01] enoent.linuxfoundation.org: Processing request in progress
 [02] gnu.cz: 87.236.197.13
 > l
-[00] ftp.us.kernel.org: 216.165.129.139
+[00] mirrors.kernel.org: 216.165.129.139
 [01] enoent.linuxfoundation.org: Name or service not known
 [02] gnu.cz: 87.236.197.13
 .EE
--=20
2.30.2


--djeyp52qn452daca
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLoebUACgkQvP0LAY0m
WPGd5A/8D9nSAQQ/ayM4Ou+lu70Y7ENs7bW8PSE2Hscu3PeJtERSbpzfWPviWp6X
BYYTuWqmTdahqqXmxgyGUMexlXIEr9448jbUPdHyoqidmUMaPqKIdHq8l5jtAscf
G2qoyLKmSkJ9v5PUUrq4CqDWXnJIh41X27VjzxSLQC9wZn8YJ3sQyf8NOCpKXVZH
K9w3sXG2fKCTAnCzeMiJnM3m9JeEwxD4LqhJnoy5YQ6iNwxgG23AFYPeYwkV+/Xc
WiQ/Fp9AYU/rfrENVa3sBTbNyU17OBRC4SSvS8UpQ+ell2NON9kjta4qvd9YxqYf
3dIbMjYjQvDay6hKPRyNOFvaHDhpWThfFhxnKICv6DrtFRcrKc8X8U0ZCkxR6xZN
U9PBt6G+4kJuBEeq4U6AJ+8cB5+XbcytzOsZGnT6muCHAwM1UClG0aU9RzE1wheq
uO0qk+LIVgW+1MCZB7dXHhyR4bX2E8OtuBOPbTtTiiZU4nnTy0DcsGPp4T9kinnH
Dzd2rw2l2TKEEHGAg0CSbh+NL/eAr46YvYPdPjVluj5zj9EEv6b2gREvcCwfOFsx
fI6cTU2CFzQHTfwVeoWWrOJgGLTHtW+UKaAdtdlSbBd3Mmv+EbrmLQZZ3rZgLjpX
xXK/+kLjAJ2SQ2FsBtwqiB1LDEFMbpdQRL5ZN7/bHWsyNi8iT9E=
=fUW/
-----END PGP SIGNATURE-----

--djeyp52qn452daca--
