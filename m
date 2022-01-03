Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A931A483445
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 16:33:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232587AbiACPd6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 10:33:58 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55420 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231320AbiACPd6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 10:33:58 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 77C0FC70;
        Mon,  3 Jan 2022 16:33:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641224034;
        bh=oQim6+qrOx/zmSA4bVz0gawlsApFFu8trVVVe30Rgdc=;
        h=Date:From:To:Cc:Subject:From;
        b=XfErPEwK0/c1gbA9jspV34qV/V2rOYLb0tgRygHA8UyVyT0Bo7ycF6d4xH5vipnQV
         W/b/S6yJY5qt5e9un25tLxD8NZ+4je77BoAfSg8IXY4J7/WPbZ3D/3hpju3fYqMPM2
         sGKeVVBhccIQENH3cwIFPCzj0CF9RjMhAT1X4n/m6BEntmEWwvuezMDkJJxPF0ONme
         uu6NTGIGTK6DMnXtbBmGZXIndfa69O0UG16w8w2vaGFsLT8ciEcK9ZD2wol2vPnEs5
         gXUosOjGWAi3oe6dvZWTbwYaDR8cAcdMw8jWME/mi/DZIGCGagN8T37WsJPR+ogzbQ
         PFtBTGQ05l1VA==
Date:   Mon, 3 Jan 2022 16:33:53 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/3] tee.2: ffix
Message-ID: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hexq4imymppfgztg"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hexq4imymppfgztg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

---
 man2/tee.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/tee.2 b/man2/tee.2
index d2ceef331..14a927c93 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -143,7 +143,7 @@ Here is an example of its use:
 .PP
 .in +4n
 .EX
-$ \fBdate |./a.out out.log | cat\fP
+$ \fBdate | ./a.out out.log | cat\fP
 Tue Oct 28 10:06:00 CET 2014
 $ \fBcat out.log\fP
 Tue Oct 28 10:06:00 CET 2014
--=20
2.30.2


--hexq4imymppfgztg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTF2AACgkQvP0LAY0m
WPEQFg//Z0FrfVTSvQiWc4Of2wKmvTQbPuZYFjBGTlW8kQQzOuUfD/40zVbDvmm2
TEU5YyOMpUgp2CHF47o82ejuGFHi7pdi147cAXlnvEEda5PSaiAwza5SrV7Y/zfi
tFisB7CRR87Pmsdm4pPqSfURoBZsSDuePTiFpdJK2olNE0GEWYz3bs7cfEi9DOCk
SJU6xG1hOuk4lzbqo6HXE0czrwjx70ZI7lyeDGqQniMVICcAMnWuLf1usM1qqB7M
VuS1VkgIXeqfd4EIJgFTzNCF9G+qmuY5NIcf7Mz+Dm8aBLt+UbrZpmelKhseg9qQ
wRC41/PnSMvxVWdupkRza6rk0U7GVf2ZKgi5RsxK8ikTeh02jWeQ/SQz358uMox3
Jr9ukOBr7DAF1yKoE+L8rDTz8YN7kE6jHqaa/00Hg9Fz08urJTsN94chCX3R/iX3
TAGubDxz2Mb1cRxlhhw5nxIcdZbDGA7VLIPFm6K0jHbWwdJ3qXmKiLJcu7UA+JG5
btCrSvZyWxrbcf3tKnmkbA7RNjQL7eceQEzRoKGRUC3AFjdWuYRW0LLbvMPMoZtx
O4GMtm7V1sGbQEp74hkJrc/M7fRBqddfPoUhwLf9vZmMuS+Mh56+Ddg66lgz/9Al
b1kRWPB0nw+2HQAob9Myd4ykBXbvhnT47vD6yA6FaQymEPAGEWY=
=q/FC
-----END PGP SIGNATURE-----

--hexq4imymppfgztg--
