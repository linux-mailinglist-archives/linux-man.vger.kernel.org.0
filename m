Return-Path: <linux-man+bounces-1609-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ABD950CDD
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 21:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 213371C239B3
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 19:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E8751A3BD2;
	Tue, 13 Aug 2024 19:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="IeICwaG+"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F681A4F25
	for <linux-man@vger.kernel.org>; Tue, 13 Aug 2024 19:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723576089; cv=none; b=orujzYSOrfzwn9bZ1PLwbnpzKbkjJ+wNxXdMpZtuMbFw9JfX4+dpyrPnEiYeUZO9r9NkeUem4LE0TXDmvOl+RuaAzeKm3MxmKOKIa+lUPX3TP7KPxCQSw9RJA/KzYXZ+mwi0iLsG6eQRZc/rGZrZUqOEWtHYxzcRJwkIzZkYKJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723576089; c=relaxed/simple;
	bh=LyurPJf2UE/OQMNfxqPtZB9sUv4xkfBUH3n3mW6mEEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YoMCXk4QmsxhBNvkkgckWpkOq5c2F7hrwXkjMyWHpCpq0GkNxtt9nUREmRQ0dSvLi8j7kAely97Al7OfnIOxnPw3RGZSSLotaUHvJP5dyUrtmWr6hHs9H7x7+bOSqC57QRPbqANnJQe8WVaOAFfQaU7wz1fnxboYO5db5Nxh6m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=IeICwaG+; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1723576075;
	bh=LyurPJf2UE/OQMNfxqPtZB9sUv4xkfBUH3n3mW6mEEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IeICwaG+ye6uVwZ04gxTe1UBmowbUN5vfL6c44DHvoO2UPliZXTmo2F4EkqudxTpo
	 ecDpnRS5foTceDVa68Qt0fnsYHLqUjNcGnQ2GraO09vJ8QVzTlBuowHD3YLW+vGnGf
	 JyC7uB0YWacJ5+8NTCg86IGgz3Iic4FHS85Ia0yYKoWB7QdTEjsO9mTlgAFTWxIcgo
	 A837Rj+ddbIJLtj+gN0GBhitcYgEbG/S5+Wqyen68zLjKvmEAeRvFVl0b5ifR7s2sY
	 2vS5r1urrlXOF1TPIVXqKEKBcMRr67BionGqYlV/83NTc2KBH19xtR/J97ISWcqw7Y
	 DkKhn2SXRcCDg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9A0C4B8D4;
	Tue, 13 Aug 2024 21:07:55 +0200 (CEST)
Date: Tue, 13 Aug 2024 21:07:55 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Dirk Gouders <dirk@gouders.net>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
Message-ID: <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>
References: <20240813185011.3806-1-dirk@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r5vrp3lpdtfydn2l"
Content-Disposition: inline
In-Reply-To: <20240813185011.3806-1-dirk@gouders.net>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--r5vrp3lpdtfydn2l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2024 at 08:49:51PM +0200, Dirk Gouders wrote:
> Fixes: 1838a55edd6c47cb ("regex.3: Desoupify regexec() description")
> Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Dirk Gouders <dirk@gouders.net>

yep, my b

--r5vrp3lpdtfydn2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAma7rwgACgkQvP0LAY0m
WPGhGxAAiENonHwMgWWYJJMQocAwAm/cnktaRdJFEsV5Vlt2d5pYyY6aB/foIglu
7n9Ld/Sp2LwUP86agEx+A1G/7IUyZXZ9yLRi5VYqP00iPgcZVKa2Bc8Lid6I7VO7
uHwB0BK67Mg93uoMfNQIdI0REvukXWBwTc4sIdotMoIvh+p6at/a9Hv79v/49TGS
RFxKmkoLsRW0foHpyEqNde9H6OUanN+SDQf0VvKszCmPoXrIwDNLGiV57ryqx+xz
8kjnFXZKaxTxYC8pvpKLPlQi2pnaq88tttlAp+AfFnSfUquahS7uz21sxYQZp1tG
20xJvbAx1tOLhFrzsQ1FCeIoyj98tdJ/PXwTeuBtR+olZo8jrUUC/ZbwOPbTN6Sc
NigsuFY/b9BbTNVeuD0CUA9AUt4SNbp6Z89AP2CtVUblYDdQtCkPjWNdAAoJpFVd
gjlVZ1vJowzxF/3xaXbKx9kCAyWz9Cv6+mA9HubnlApL755SGRF5OyRoOigos6gb
osJZ6FbqRcBGsQyEPLxCLZ0jn27s0Gcg0cm5ryweeU1ghQlOCkHRen/YVakQ54G0
ea/NgzPM9Q/eQVlY82lso/BMegicXFkTPE8Rpur39+39mv6CVnupo0nxw2kxqA3v
6Vo3eqYoiHFQSCjVA1KMPDgUjXHlS2JQFoDtlpBEcJQCK+F1cnY=
=ReYi
-----END PGP SIGNATURE-----

--r5vrp3lpdtfydn2l--

