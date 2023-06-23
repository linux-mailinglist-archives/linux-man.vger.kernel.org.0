Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58E0073C1A5
	for <lists+linux-man@lfdr.de>; Fri, 23 Jun 2023 23:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230171AbjFWVAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Jun 2023 17:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjFWVAK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Jun 2023 17:00:10 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3C3102695
        for <linux-man@vger.kernel.org>; Fri, 23 Jun 2023 14:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687554005;
        bh=XtMfUNLBxLuWEpP2LIyhl5upUBlnq7NgIU1ebObDjis=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L0OIXqF849ksQaah9scrZyw4DpOgH8+YBGNO1DqCcq8L+twCuqkr5PilAKBI25dTs
         LUdwe8M2gX17hfxLihFUkvIeDpV3E+l1ISz7/e0Ra0j9yo8nm8aLFJk+SysD3ik//N
         t8UgjDkFrPoDyEB9K02ru7/zaTZlYj6t22Z1SXz8ovuycxiMbnZbURgSLvW5vJFt7K
         S85Tu8cF4agVC9RdTxiL0sycbouPzNEcTOQvFWsQMcAasvt9TUWkrIJajOcJgNVbPx
         s9ApynyBqt6t1t1+e+07VsLWc0CLvdJcaxraOs9PnBlp5U/D8PjfUSrCNOHHYWKvdp
         GBJwEvDW5U3iA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C07B41586;
        Fri, 23 Jun 2023 23:00:05 +0200 (CEST)
Date:   Fri, 23 Jun 2023 23:00:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] statfs.2: unshade as deprecated, but direct to statvfs(3)
Message-ID: <b4b871ffdf8f764ffd6c25039f3944b08748bd3e.1687553930.git.nabijaczleweli@nabijaczleweli.xyz>
References: <a24c9d24-c131-5dcf-3089-353e2451a9e7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5aan2kzpy24kx3uj"
Content-Disposition: inline
In-Reply-To: <a24c9d24-c131-5dcf-3089-353e2451a9e7@gmail.com>
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


--5aan2kzpy24kx3uj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Link: https://lore.kernel.org/linux-man/f54kudgblgk643u32tb6at4cd3kkzha6hsl=
ahv24szs4raroaz@ogivjbfdaqtb/t/#u
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Eeh, no rush.

Posted as
  https://sourceware.org/pipermail/libc-alpha/2023-June/149350.html
  https://www.openwall.com/lists/musl/2023/06/23/1

 man2/statfs.2 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man2/statfs.2 b/man2/statfs.2
index 0496ab6c9..307a29b3a 100644
--- a/man2/statfs.2
+++ b/man2/statfs.2
@@ -15,9 +15,15 @@ .SH SYNOPSIS
 .nf
 .BR "#include <sys/vfs.h>    " "/* or <sys/statfs.h> */"
 .PP
-.BI "[[deprecated]] int statfs(const char *" path ", struct statfs *" buf =
);
-.BI "[[deprecated]] int fstatfs(int " fd ", struct statfs *" buf );
+.BI "int statfs(const char *" path ", struct statfs *" buf );
+.BI "int fstatfs(int " fd ", struct statfs *" buf );
 .fi
+.PP
+Unless you need the
+.I f_type
+field, you should use the standard
+.BR statvfs (3)
+interface instead.
 .SH DESCRIPTION
 The
 .BR statfs ()
--=20
2.39.2


--5aan2kzpy24kx3uj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSWB9QACgkQvP0LAY0m
WPG8RBAAnh95ZUA0kOCyOxQGsw6fKXQ0glNe/HOFVyJJqtUCZUK4xFzi2U9SsRoJ
O9PQrHWZRBGs2nJaBA3mNjszX+NEp6RlBoVNVQmZRbkgkeG0C+O0xzQjcpfbdfpa
xi0bf3PZTZfTrQy0G1wspyw8HrAHtICiuKkdR+fqpB9i+wvRUuSCZuZkc0fXAsRe
5AkguZemTZvy5aqDkISkpPHV7SwmSxlT7h3tywfGyX5cR9cHb0BHTZBOpLNg9+49
qWj3pbdNioc7/82wkzAhf7tKA7sZcTpKLTG8x6zvhri2v01/Qoe+hm60vDOybDrY
qFFPX/krd5/SyL1rJs1rIpcRu+Rp47Jq26aBzorXwFkw83T9DMknGksw3FmvEq/j
xDMmCC9/cOD+SRsxw1G38s4tlzU6nDVJ3gOM72qEMbdmIzwnY4wqwUZoV3QWQ79P
C3lITxpDwImxLizuJlZgPk/I0gop2P7eHLDDeizfpjsHCJ9gosf9sYaVPNgieQhY
PStCTrqeSvKR+jlNYWukYX2o1j9N4BgqlkfjigugEM9KR8EZHmCDEyNIyNc6gRhS
ykYO9CUktmxA34MNTahB1ArygmXuIDxhxncoNBD2yzGw93gvNMCC0Sfyz1OgcXWM
0+r3JfZSoK/wNVHbINfr1NSI1YjZ3DwYUHu0yDKfSpeYv5C/i6k=
=VmPL
-----END PGP SIGNATURE-----

--5aan2kzpy24kx3uj--
