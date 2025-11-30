Return-Path: <linux-man+bounces-4344-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 855B2C952A0
	for <lists+linux-man@lfdr.de>; Sun, 30 Nov 2025 17:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BCCF63431F1
	for <lists+linux-man@lfdr.de>; Sun, 30 Nov 2025 16:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D9D27EFE9;
	Sun, 30 Nov 2025 16:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Tnyjc3B+"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C066FBF
	for <linux-man@vger.kernel.org>; Sun, 30 Nov 2025 16:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764521670; cv=none; b=p6xKWPv3wnf1owpJ1cIkynNIcrl8GwZwB8nP05v96sxsOIRYqaQS/3p6OM1l48QcWQ+u8Lcdr98y8Hes4tsiY0nefZS6wVCirJcJ0sQsd94HQbz9g0zMbVeU1aJ0cINCi+3ALMzIUuNDq3Pu2i57HnCfCxxA+mkNdqEggDyJQa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764521670; c=relaxed/simple;
	bh=P52zPH+K3f3z4ju+X1gkKDKWVPVYucAmA/9TvEC53pI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uiEDFeOYK0vl/pkyTETkGn8pNjY4ZZ52KMFujG7t0LojdnziiQnQ3bWwgnnkzp8vU9TZ/76xAD9UacriPDjnGm3ZIF7cOBaUAElwRtCJqcYQKaQXycYoBE8+WmDS0+iXs5gYOlEp/MRMCFb59S9XB8RNxtipqPS63VuUir2OXIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Tnyjc3B+; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1764521536;
	bh=P52zPH+K3f3z4ju+X1gkKDKWVPVYucAmA/9TvEC53pI=;
	h=Date:From:To:Cc:Subject:From;
	b=Tnyjc3B+JdARHHk6MuEqZOrNF0b3c4jr9S8449JLS1J6rFmMXKvNO/sgbT1uegl73
	 BlDIAFl1XB70k753GfP/uqjOtiXXTTYRnV3oCSQVD2kVtXalzpVF1OIkk4OVv2XkQm
	 RANfTvTWKeSRazcm4I+2t1o8jJKrKJ//GrJd8w6leJgWi9qBQAv1xadW+oiPY/Cblt
	 HAuwcuLi+4Cwq8/9zO3hRj1O8tFxDqA/r3hxHDucgLbPZEo5mqU6MUwSibkebaj/v1
	 AQ0jVVNYqRFODwVz7WiQwh2kqeQ9yndKD41nUcHTx4qOuMLbj3WDyHTrvFXi4OUPUk
	 22CmOR0/bR+aQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 7480EE908;
	Sun, 30 Nov 2025 17:52:16 +0100 (CET)
Date: Sun, 30 Nov 2025 17:52:16 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is the
 same as bind(INADDR_ANY)
Message-ID: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pehvg5sktnri4txv"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--pehvg5sktnri4txv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Because it's patently not true: a program like
	#include <netinet/in.h>
	#include <netinet/udp.h>
	#include <sys/socket.h>
	int main() {
		int sock =3D socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, IPPROTO_UDP);
		setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &(int){1}, sizeof(int));
		setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &(int){1}, sizeof(int));
		bind(sock, (struct sockaddr *)&(struct sockaddr_in){.sin_family =3D AF_IN=
ET, .sin_port =3D htons(123), .sin_addr =3D INADDR_ANY}, sizeof(struct sock=
addr_in));

		uint8_t buf[512];
		recv(sock, buf, sizeof(buf), 0);
	}
will receive an NTP broadcast,
but if you s/INADDR_ANY/INADDR_BROADCAST/ it won't.

Quoth POSIX.1-2024:
	11252  The <netinet/in.h> header shall define the following symbolic const=
ant for use as a destination
	11253  address in the structures passed to connect( ), sendmsg( ), and sen=
dto( ):
	11254  INADDR_BROADCAST   IPv4 broadcast address.
(this is one of two mentions of the symbol,
 the other is a RATIONALE for why no byte ordering is specified).

Linux calls it
	/* Address to send to all hosts. */
	#define	INADDR_BROADCAST	((unsigned long int) 0xffffffff)
and AFAICT never uses it in the receive path
(except in RDS to reject bind(2)).

Fixes: commit fea681dafb136 ("Import of man-pages 1.70")
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man7/ip.7 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man/man7/ip.7 b/man/man7/ip.7
index 60081cbea..f2f526762 100644
--- a/man/man7/ip.7
+++ b/man/man7/ip.7
@@ -199,11 +199,6 @@ .SS Special and reserved addresses
 means any address for socket binding;
 .TP
 .BR INADDR_BROADCAST " (255.255.255.255)"
-has the same effect on
-.BR bind (2)
-as
-.B INADDR_ANY
-for historical reasons.
 A packet addressed to
 .B INADDR_BROADCAST
 through a socket which has
--=20
2.39.5

--pehvg5sktnri4txv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmksdj8ACgkQvP0LAY0m
WPGePA/9HJNJzDOK5bBGa6tLx4rDwSmbdWAAhDOs9r9F6yGVTg6PzXECEeZZSka5
eQO5WCEx/FILxkKxgqNsmz5/0qyVjnPpuGLg0bs4chgcGD7BCpw2D0QDJRlkJEdG
7cPkHitlsjIq5d+Xkh0LwElURGpBtHZrh4OJdHS2JPHNUr3te6nQCHfAgdhDYbt1
O/gRZogebmz3wzIm6bPxW1hE5gU/kKbkxXQ3F+qy++Av+UtiOPD4HP5TgEgANK9I
gvfJnIAIv6OK531pmnIPNrxF+HY4eN++MLBR+rYMoc/xamfLBZY61zzFLi0cb7qM
+PVvb+YrimLMShhesT18YXRRNueNFW7rCGSng3CMfR89D8eTyWYxmhfKWQHHjUQ6
qyRWRmZxdbi8NpSXV6J5LhzLkwDVnC3sqK/Y866adECDpHSXIT7Ek2PwMjcf3HmZ
ddNia5cJ5goG1qNAL759IK3RCjaTqk+q/Uf0+v3rtewlrz2x9uc/Sv4ePL26Ikrs
JHDyni9K1bQhxGrOTlD7Jo74EkTXpJ7k5Ceus5P2lMh8aDs5l/9GJj/Q3k/xcpzT
Z3YVuve7FPEMmUzHzAuv2e1czAg419earyywiF17h88R3qAmN9rSiFp6tUNk0G4S
oYWnnNnb1bTIWYFUTx4f0b44UgiHboaQo9v+EIcZw4MLJyD3YzY=
=UEQf
-----END PGP SIGNATURE-----

--pehvg5sktnri4txv--

