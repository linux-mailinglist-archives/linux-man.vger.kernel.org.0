Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 742F673C531
	for <lists+linux-man@lfdr.de>; Sat, 24 Jun 2023 02:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbjFXAjS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jun 2023 20:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjFXAjR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jun 2023 20:39:17 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 27E311AC
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 17:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687567152;
        bh=RON2/TOF909/sOR5m/Dtq7mx2CLniCWkByLdkQySleI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CgZgo3LeKEF3rSo2jiwkOJ2k5KqW/bRUV62d52ugC22A4RUqPOIhit/ho9DUnEAOk
         FOjfhYY1FmvEMobaEXS/VufW+w85wGajWuTZ6ae1RrUB95ja6HLy9eip5nHtXIkUdJ
         MrLn4Uo57nbv6ncfVH7Yvp04eazWF8GV6StrvOZrGYoyKWMTqyDivlNL8uHgnacaDu
         PN1evQrJmpi/jnxO1cqHjswU2gne9uAGBSGUv2zt8eE9QBkP05aTD7DI47ebkTrPfS
         ZxJnypvh4Qr19VLxr+oA/vnA5bOgkGG+1vvqdTkYU1NPpT8fU18izmz0eTHtnwzBca
         +94sbjS3fMDew==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 130255FE;
        Sat, 24 Jun 2023 02:39:12 +0200 (CEST)
Date:   Sat, 24 Jun 2023 02:39:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] statvfs.3: note f_favail = f_ffree on Linux
Message-ID: <xve2ekfim2chw5s47wf76wtnan3khk5d4jdow4jkmlt7ifa2oy@uicda22mmppt>
References: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="smnebdmpaju76nv5"
Content-Disposition: inline
In-Reply-To: <3a449220b1a5b1d0be1749a98e5c284222072427.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--smnebdmpaju76nv5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Quoting myself from #musl:
01:59:40 hm, I think this was just invented for symmetry with bfree/bavail
02:00:46 FFS has minfree for space but nothing equivalent for inodes
02:32:31 (this is mirrored in ext4;
	  a global grep over DragonFlyBSD and the illumos gate
	  showed just NFSv3 forwarding from the server;
	  OpenBSD always sets it to the same thing as f_ffree;
	  oddly, NetBSD /does/ calculate it differently
	  for LFS and FFS but due to queued writes or
	  w/e not because of root reservation;
	  and as expected a lot of "/* what to put in here? */"
	                       and "// XXX same??")

Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha6hsl=
ahv24szs4raroaz@ogivjbfdaqtb/t/#u
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/statvfs.3 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man3/statvfs.3 b/man3/statvfs.3
index b1f0e7545..272ee5391 100644
--- a/man3/statvfs.3
+++ b/man3/statvfs.3
@@ -227,6 +227,14 @@ .SH NOTES
 .BR statvfs ()
 with the argument
 .IR path .
+.PP
+Under Linux,
+.I f_favail
+is always the same as
+.IR f_ffree ,
+and there's no way for a file-system to report otherwise.
+This is not an issue, since no filesystems with an i-node
+root reservation exist.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--smnebdmpaju76nv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSWOy4ACgkQvP0LAY0m
WPGV0w/+NkxQU1HctQtujRQ+1/2S+CnnLJo9CIo/awBeMWXn4OwRfsHLrlhtzLNx
7nxUs0h4szi1/hUsNox+lddgShAcTSVAvPH/D0veglQ9uaaYyISZFownqovQbNbS
oknzI0LpCt4tPhqPMfdvY9QckOTjT2Ky68ty84nZA0Vu0e306sHxiYPlBJ6Srl+Z
8VgbSaAm2rVWqCdnq9HM+jN7ZuaZVnSa8LtdyHGO2pKSbinG+S/3L4PS1nMA3MW+
cTLXBNWceGEq17eBiRaOwYMQoLkaj09Dllg6dnsHgxw697feZJUC5R2fHd70DktG
iFYlJ4wXFcao3xVEI+V8TjJywWT6yDcd2Lt8Xv/VmLUGCZ8Kye4aCXk3Sh39c+No
z34gLQ/M5fEznMLw+aUrH38GgIIZ5gfo5Lq+c/GUSVyvJcOPxVWW3sVwmZ2OA7uQ
kFaz5ajKm8wG8N0s7d8p5tBwxkPgKGze/04frrAqnbNCCLG9IAqIivN8w4S50xQs
1SQc2iVJP298vxip57XhncB/GtM4hrc1/gwLTR7elvzbtlN4nD/JcqJ9gmYA4Zge
gPd3dPlWqPYVV1RT00DWkRe6fjlKVpH9FTdDdQ1ZeHq2EA85QdLlnzwV98C8+n11
tRMTDWV3a8s4EX3NQHuGqNivokp/BS0qUBW3kcEf4aYD1lu9cjQ=
=j1EY
-----END PGP SIGNATURE-----

--smnebdmpaju76nv5--
