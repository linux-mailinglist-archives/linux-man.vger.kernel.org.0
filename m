Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FCF7410CD1
	for <lists+linux-man@lfdr.de>; Sun, 19 Sep 2021 20:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230415AbhISSOI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Sep 2021 14:14:08 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:57740 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S229517AbhISSOI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Sep 2021 14:14:08 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 78D63360ECC;
        Sun, 19 Sep 2021 20:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1632075157;
        bh=uZNVWk+ShTF1+0w78fcXCxJIKGvN2ZOa6rssCoIVEjI=;
        h=Date:From:To:Cc:Subject:From;
        b=Ym/WfU8012E+zQNq7bL0aNJtDJn4cNo2CLOaFaeeuRDb18YCDvxOlY/8Y1DH94reF
         gaDdqNjS41Sy7JraFOr4AJ4YJmeGIgIQLIdfRSUC+5EqrJOsJgEqpvx67pdntVS1dy
         o8sSns/BiX6VPnz9n5bZi476JC5dVehBpnzw9bwj1BXm5F8h1BK6MfvowRzuQZEMSG
         OpD2M8wogMjQzH67NiiXDFtr7iknHx8grAiD4N4aNGui2uMI7Rr3tDFdHFPEO3p3xT
         0NIPVyh9kax89fABrtbed6Hr+zMcJHcNJn1tnPChRt3iWX9iaqHT27olm71gekqMmF
         oe5FNSHEbJVCA==
Date:   Sun, 19 Sep 2021 20:12:36 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] listxattr.2: tfix
Message-ID: <20210919181236.kz5zeam2vxb7rkui@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cyhx3cmknul2mka3"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cyhx3cmknul2mka3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/listxattr.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/listxattr.2 b/man2/listxattr.2
index 18d008e04..cdd0ba7bb 100644
--- a/man2/listxattr.2
+++ b/man2/listxattr.2
@@ -167,7 +167,7 @@ As noted in
 .BR xattr (7),
 the VFS imposes a limit of 64\ kB on the size of the extended
 attribute name list returned by
-.BR listxattr (7).
+.BR listxattr (2).
 If the total size of attribute names attached to a file exceeds this limit,
 it is no longer possible to retrieve the list of attribute names.
 .SH EXAMPLES
--=20
2.20.1

--cyhx3cmknul2mka3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFHfZMACgkQvP0LAY0m
WPHTkxAAgvoVIUREGQSnrXnKzakuUQ+Q/0XABH/gcPOftQyLayPlkI4DJS1waTOR
uHcdyBRUfPMfRpJzYHoDoimhoAa+HsceeU0qObb2GoDbXUo0Z3zgiKkcOoEU/L0+
mDPWPybyLdTUJFuIzchkoqj2Oy9CIPKKLxbO0zCV804Ev61WVNblv0t80kzRTE5F
eTghbjqWs4H88ugy7+LC0rrJ7XAYYxllnd7geWw8DYBzSJvAjf4/UQ6DRatJ/QwZ
TfdnHSLy+m+wQluxhJids5gaEZr3N9f+aZFCBDp6pCjXUxhtjYIFpfIaBIhWECXL
DIK3B8fOYAGEj75M8Qqh9eRnRrLKWMRjz8wsOKpXErLvFbRfNk23X0d3osICg+jS
JY5x/yvwPiP+XVLjjrF8gaj4wBB3cYKnuRltkyYSzlPJeO1gGiMTjlOqaFBjAMuv
HXTVnBNPfKqudebNNW0DbOQ2DJHDjgBkGMhvaSSmCUtN1yKuFU+5F8ryT49LG5ZA
vjQMBYZIt4+m3lp+b8sYhjXszhESAzrypR78K6Jaa/Tq3PTbe+K2DWzeynd4N6AV
vapLsP3Hp2s+9Ebw1vWRUkTQwNM0M0aM2G1e7z5IHHXeWJDHMTLkI4MWlmXy6iBR
AqdQk/N9PXwzF8NYyYYfKDjYLJlC5B80+/TKNDTcp7wwBc44Vmc=
=BJiz
-----END PGP SIGNATURE-----

--cyhx3cmknul2mka3--
