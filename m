Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E2CF496E4F
	for <lists+linux-man@lfdr.de>; Sun, 23 Jan 2022 00:53:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbiAVXxB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Jan 2022 18:53:01 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:39246 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231288AbiAVXxB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Jan 2022 18:53:01 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 83DC32C70;
        Sun, 23 Jan 2022 00:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642895575;
        bh=SidHPwHVugwoJ4faoHWM7OgtoJ79PHuCPn5CXPfhRKk=;
        h=Date:From:To:Cc:Subject:From;
        b=YorLnEQnAMBLjJG6PZSg/onA23USbCj/O5DfNPFwO68MMf+Wkar0IwvsdrKWEaRPz
         l35/AroYXfgMZm+JzaVfCpO1Uy+m/feqOhPZsGBiMQJETikBl5WjgMabizcbbPjb6+
         1UMQ0G6mAeZOj15iUSxcyUOIgDopYxuaoxCkr6sdpoyRUrOL+H/upPUA8WwzYQ6E7l
         mM1LCbfs19GRTaUzpOlwV/r/Zi/05z6soWbYKSJ8OxYSIrUQsNt5N1BwMDabYXkkn0
         xaOorxkHxbbfwAgiT05VKIw+tWDvKC6Qcrcs4xepvTXyAsIhlQ+qCYjQNuwaqvGaNm
         w9aMSDo+Z44Qg==
Date:   Sun, 23 Jan 2022 00:52:54 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] strsep.3: tfix
Message-ID: <20220122235254.fkte4vesy3f5peke@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qksaeq42uiclsox2"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qksaeq42uiclsox2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strsep.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strsep.3 b/man3/strsep.3
index 131963158..fb5f7fd1a 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -61,7 +61,7 @@ function returns NULL
 and does nothing else.
 Otherwise, this function finds the first token
 in the string
-.IR *stringp ,
+.I *stringp
 that is delimited by one of the bytes in the string
 .IR delim .
 This token is terminated by overwriting the delimiter
--=20
2.30.2

--qksaeq42uiclsox2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHsmNYACgkQvP0LAY0m
WPGlrA/+N2WjeAL0rSkZmPIeVlfC+GWM4VDcymMxKnkgqJ7fIfc39YpDuEbaWXwH
sjSr591HdWKgoB9e6ByFjOYaQ3VoA1TOwE3StEkoOb4Nu4edmoPDfSo06T0v7o8u
81maak8CGfr5SXp5Njw/UZSwXDZM5NdTiaz290MrhfDCbf2QKXQRXWTaaQHAyCsc
/llQaiVK5JgqwEiAwLCZZQOpKJoRixgKcisb1CKa6D69gxR603GLuJ6nZUDSMer0
ai7i6nifekTRCmmUpfkS8hgnY4Jrf7wdpZmgO6NHgMz5Q0uqHLrSiLGo89QJ75IE
fd+15/HvJzEnTm2NoSdJoUX4S9eS9v4bDfEtauPwRbaZp4qH47+cLMt9cAmeD69i
48taBarfqA+rJPeovS1Mf/KmkfE0hJZrYomKGfAFTCrDyCdi3hXi8IgRTkkeRfge
xkNiMSnRex8GBNfhe0To6WwJ3gYFKTXZYa1o1x5zmOSy3DxkXzhvhY2wZKSWOM9Q
GeK71BHI0x5KcZgTk+SingkE8rU+HvUnO/CF3doQZQIAVtmHDPSVUD2VmkboXY5X
oOprU7VbYKbC/BI9puk+hL4EjnjWNgtrJUwhp9USjbagw2fJtt/hfgERIlkcJe8U
FV3doW9vz69OZHai60t5DrlGQPfcWtzgWTqOD52VAtI4mR/BJZk=
=AfGs
-----END PGP SIGNATURE-----

--qksaeq42uiclsox2--
