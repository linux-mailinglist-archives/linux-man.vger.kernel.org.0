Return-Path: <linux-man+bounces-4352-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA726C980CB
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 16:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A8E3A3456
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 15:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BEAB32B994;
	Mon,  1 Dec 2025 15:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0nGsghS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C117C32D0D4
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 15:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764602905; cv=none; b=WYbdEebzsA3X+g4uVECuknr6VYeHwqBINUGuRo+MORymFGPeLUwiTZbrhg72mi5TBzbs6/h2VXHFesgmfXohxNPGKrKzLhQeKL6Bn0IKiyIh4OiX04s6OquwU0pc5CnO4BdRI+h8zPpEUbYAkDOKEvq9mK2LVstZQlDaPHs6fjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764602905; c=relaxed/simple;
	bh=I4W2x+7P2zGp92OUet6zBuqfiQpLdRsMQGwKSVgZI+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aqLcL0I8YbFInXbHpoFzEI+wSiX4qA95ZIblRi0DMBajeiL9iJmLpfVsPIlTftmjH1pDf8bo9+xRerkq3kXfRALPlr3dOQwmTIZCepDmO+R4uyXmHIOhzXjyG4bOclEg/+7rOBh0EtrQRM3/cAYljBdgldS7ZiiD7TktSzcK2kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0nGsghS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9514C4CEF1;
	Mon,  1 Dec 2025 15:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764602905;
	bh=I4W2x+7P2zGp92OUet6zBuqfiQpLdRsMQGwKSVgZI+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z0nGsghSOIE76ktAckRfYa1iwgMrfqRNwFs2YciBVzJiXb1FPpXlR5PwKPlYss5an
	 Bh+RtNk9EgQiEMUzZ8GjzYB8hIZmwkOcB6Tu82F7sNYaE06js6mW5ff5UQYCj1pNcM
	 xGEfiuFD6cDhxMme9K3rh8Wv22moZ2FDRomJZQGeMjpb+5A4+rXTLQXKEwPbrK7Spg
	 wSaPG5AM1KU46LGJZpuqOWF9qbWC8+Oh30u3sTO7bMvglpALWOynLLZfCv1vO3mpsB
	 rBrKnoMgWhEk76i3m4qiYZBh2UMoU1GQ5YTBeS6aQeVaYpbGApgchlHlVtpRP5n9Hi
	 IFD0+zwBKzMaQ==
Date: Mon, 1 Dec 2025 16:28:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <7brhnqq2pergq3b2fuyqoq2bisixvzrruazvm5rihemdttncw6@uvmuy6vo7zws>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2stqcvhpavkuellg"
Content-Disposition: inline
In-Reply-To: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>


--2stqcvhpavkuellg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <7brhnqq2pergq3b2fuyqoq2bisixvzrruazvm5rihemdttncw6@uvmuy6vo7zws>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Sun, Nov 30, 2025 at 05:52:16PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Because it's patently not true: a program like
> 	#include <netinet/in.h>
> 	#include <netinet/udp.h>
> 	#include <sys/socket.h>
> 	int main() {
> 		int sock =3D socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, IPPROTO_UDP);
> 		setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &(int){1}, sizeof(int));
> 		setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &(int){1}, sizeof(int));
> 		bind(sock, (struct sockaddr *)&(struct sockaddr_in){.sin_family =3D AF_=
INET, .sin_port =3D htons(123), .sin_addr =3D INADDR_ANY}, sizeof(struct so=
ckaddr_in));
>=20
> 		uint8_t buf[512];
> 		recv(sock, buf, sizeof(buf), 0);
> 	}
> will receive an NTP broadcast,
> but if you s/INADDR_ANY/INADDR_BROADCAST/ it won't.
>=20
> Quoth POSIX.1-2024:
> 	11252  The <netinet/in.h> header shall define the following symbolic con=
stant for use as a destination
> 	11253  address in the structures passed to connect( ), sendmsg( ), and s=
endto( ):
> 	11254  INADDR_BROADCAST   IPv4 broadcast address.
> (this is one of two mentions of the symbol,
>  the other is a RATIONALE for why no byte ordering is specified).
>=20
> Linux calls it
> 	/* Address to send to all hosts. */
> 	#define	INADDR_BROADCAST	((unsigned long int) 0xffffffff)
> and AFAICT never uses it in the receive path
> (except in RDS to reject bind(2)).
>=20
> Fixes: commit fea681dafb136 ("Import of man-pages 1.70")
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  I've applied the patch with some amendments in the commit
message.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Debd456b2d2883823d83a8c5f2bd6449a3ecad0cf>


Have a lovely day!
Alex

> ---
>  man/man7/ip.7 | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/man/man7/ip.7 b/man/man7/ip.7
> index 60081cbea..f2f526762 100644
> --- a/man/man7/ip.7
> +++ b/man/man7/ip.7
> @@ -199,11 +199,6 @@ .SS Special and reserved addresses
>  means any address for socket binding;
>  .TP
>  .BR INADDR_BROADCAST " (255.255.255.255)"
> -has the same effect on
> -.BR bind (2)
> -as
> -.B INADDR_ANY
> -for historical reasons.
>  A packet addressed to
>  .B INADDR_BROADCAST
>  through a socket which has
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>

--2stqcvhpavkuellg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkttBYACgkQ64mZXMKQ
wqmrKA/+Pg25C0vx6MPy3KhT24kd64oSk7sZ8spRZrDhanJXE/gr87b5Xnz4TUlL
vxKCbFE41f/L3vpdhOlSnkl4DsU6B7o07k6vmaZE3m0Hf6rHFl2UiewnTAjDY6S8
jAk25DJY9lIBprKj/4yLY3PeM2t+SlcOBIR9I9bt2H1UvhV9FwQJ56gBludA8rLz
b2ciMGyGWtQpsBCyv/imIxGMXRvS0SU/iv+/uFliw9r7yTXkwXcntk9f8gZvXLiC
vsnq1t+/iWOn/AXtT9GGepC7iY0XrBTFjQwWBtAExhOK/Em0O4eMA3lzp2rF0pFQ
gHjxGb1ulgEg75+ELYz1HtzjPvcj7JdBJtFfxcpevPvBp2cerZLG6ByqEfiiiSBL
7BbBNuNPoFXRHknEGb4bGTCz1X+8NEIdyyCsEaiwk5khCg6lcLJxcIP5aGC/LKCp
O2xkIKruOPLcZKYKi8saZUq3gcM0CHnMExgcwQY+FvyztsZ1TRorm+aUfP5b396Z
nillkqxeoeBtUMM2Da8yl8O2f/swSN1bxOzhPXOiI9CJ9wIbji1sYYFRo7+2InwB
bkgyplWVKtVGP7pJIDu1uHD2hCQqKy/IGMbcbHGGy3ElUdEcUnwEKFen5+9Qqp6L
ZYzWWu7lgZejVQtytMMZBmhE+2asIUqm4L0QnSOkchh71QVYLok=
=Remp
-----END PGP SIGNATURE-----

--2stqcvhpavkuellg--

