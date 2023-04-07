Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECEC16DAFC9
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 17:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237881AbjDGPkB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 11:40:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231635AbjDGPjy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 11:39:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 845738A42
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 08:39:52 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B8E0251FE;
        Fri,  7 Apr 2023 17:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680881990;
        bh=hxpv1qhr/MTSfaYMBIvGMlxQhtGijZRRQ8GfwvAZYYQ=;
        h=Date:From:To:Cc:Subject:From;
        b=GBY3nxhoNzZ8AGa/ES1YGzowPeLRprZB1AOUHEjK5eK/T6Ybw92CrRi78FtcDTJYr
         P4MkF7b3ZYCVMhXmR4ya0R+xCgfPcpThjHcUsEnD+YZCLdwBLzFlVdYs0sKl45ugdd
         wXjVg3OiITBPL2Jqr5s6WFXj6VxyDbTuU6MGAIFznovsy5H5maY722vhQPaOqOjpnc
         4sImPdkEAUd3kI5VizlcjlKTQQz1YqQHphxynT2HcUHI2SS+wkdiE+9KeZt7spyI+7
         uoJ/2Dq9G1kVbpcBxuCbHJRMDgo/GLRcUQT6ZctdIsx0N/mg+b/OABNOFQB/KVRVUG
         Vqx7K+h7t6ZSQ==
Date:   Fri, 7 Apr 2023 17:39:49 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] proc.5: note effective removal of /proc/execdomains in
 v4.1
Message-ID: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nugqxxo2cypxvdqw"
Content-Disposition: inline
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nugqxxo2cypxvdqw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The file was turned into a fixed string in upstream commit
973f911f55a0e510dd6db8bbb29cd82ff138d3c0 ("Remove execution domain
support"); the entire mechanism was fully removed in a patchset by
Weinberger ending at commit 720d70716d137c0cb83b9a5279c384286c02a1c0
("sparc: Fix execution domain removal").

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/proc.5 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 233cc1c9d..2cc2c5e95 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3216,7 +3216,8 @@ channels in use.
 Empty subdirectory.
 .TP
 .I /proc/execdomains
-List of the execution domains (ABI personalities).
+Used to list ABI personalities before Linux 4.1,
+now contains a constant string for userspace compatibility.
 .TP
 .I /proc/fb
 Frame buffer information when
--=20
2.30.2


--nugqxxo2cypxvdqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQwOUUACgkQvP0LAY0m
WPHiKQ/+I3e7K7jRzUSP8VHoAyoN0hj4jr3lOCy/VuC+7abcRz0o2NeeBx2UHMjI
r3njSgJghCM8nh6Wdg3JP9rnDO9Y1kyB5lPFauKC0TRyySuu6NGFTdAQ8aitZZQp
wFvafiNJjZt8UFx/ev8nk/YStS1LiKXn9fUyfQKL7KrVpV8CNjuhF2dWztTfseXz
LnnGvR0VY4faabh7CJ4pdV7bAm/ZpR50cCDrLoPv5AKQEudR2gQYYv3YLc7JBnUi
Mt7DXw66Co427GImi+43AFKvLz86SGA38Q2WXyvvD8vLwSa40+4uUeuKe5CzSxob
vapPdC66dcgbUIBVC+GfUoiHlJDvrRajCiKp2olBaDK44N1PadGtGvEm9mflKdMU
HF7gMlKv8tMgBXR4w7InPygAViCxmAbGZhSxs5zv4W3axg6slu8x7dhn+cf27RaN
laQbZBiseLM2Dm/qJ7siRqVcJuh08GENDoYH9/70ueXFcVgaR9t14IGEqJdK02L+
hPJUVJ+BCLFP4+LDrnmH1W6JrjUGS5MKUhqP8S+auCn4mHVeIJU00LWOCZ+gTwFt
TzPLKJ5Or9DqBr5SQf5NSSG2/YsPChFPoU3AaPYPQ/so6pRcngnC13pZLMEBlxBq
ruCwwr3FHLKrZyIuIDLN0iMwL+NXYsKjXcs1CaNA2M1kt2RwfK0=
=eO/1
-----END PGP SIGNATURE-----

--nugqxxo2cypxvdqw--
