Return-Path: <linux-man+bounces-1995-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE269D037F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42CC12844CD
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BEC17A5BE;
	Sun, 17 Nov 2024 12:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nitz0tj8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14959A937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845629; cv=none; b=oKBEQaIMeM1fZGyR839A3ZP9gI0mX/xWmJtRzUTw6gzAcHtJR0OB5QbYaNLApiZFhaE92XoZ5d3wYihSNMlDBMM6y2GaM7iYBaakbnxOPh/E186qNgpVtWcvc+FdxQGS0A5LtKgK14ME+MJxpuBP9dzwPVFigCT+r7ApWXRYA/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845629; c=relaxed/simple;
	bh=F6t0lmxjje5rFi450H7aOzqFMVizoj+Mz1F1qNoNB00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aee3qFUjdOTJaDxmkaZ9Mr10l6BhZqbuz7wXMYFdYJG7MFBeRbG61+xxMIgDQJjyIQOyuo7rr0iGlEdce4J6rczosKhPFA/Zvh2yAeIqJREpU5eRctYkL4Q19GtqrHAHoC6sr91YYN7lL7WyDEbl/VyL0m0vAy0zCcve8RsYAi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nitz0tj8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C258FC4CECD;
	Sun, 17 Nov 2024 12:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845628;
	bh=F6t0lmxjje5rFi450H7aOzqFMVizoj+Mz1F1qNoNB00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nitz0tj85RUSzzyLEfsJbGYCbVkiSoBHC362OFUoNSJpKTnCA/8BP5BWsXmHCd80J
	 BFaLBExjTXnYVeycbmVuTHJmbLgVE5T6QLtjQS1WDNebkDYADw6BN9uAZTGYgaTWHJ
	 EuBk2ztrAVtfJQj8nNWa5Zd/vEgSvaQGXgHHx04fn6MvGfb6qZBrDQgtaGmZfwflsN
	 /3qa696pk2pZ+Li8Nit32CexRz44tttgp2sg+y7+EQi82wrmU//mcwF8Iu8TFValH2
	 kbrRUyR8dhIYXUgFcMh/cqzRns1E68f8TfxBMoM0aVGjwwm3jcQscl9QYB1WhUAxzm
	 0LVUTOmHiG3Ww==
Date: Sun, 17 Nov 2024 13:13:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <4i3vln6fjke2o4nfu6nljlzavfhlonjakqq2e5cwy66ukrvcyi@ovzpl2yz6p7q>
References: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l5xrjhfs6w3akxog"
Content-Disposition: inline
In-Reply-To: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>


--l5xrjhfs6w3akxog
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgGCgquI-itJ8@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Should be two paragraphs and the first without "no-wrap"
>=20
> "Use the following format string, for conformance with POSIX standard 100=
3.2:\n"
> "          real %e\n"
> "          user %U\n"
> "          sys %S\n"

I don't find that text.  Please check.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--l5xrjhfs6w3akxog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53fkACgkQnowa+77/
2zIw9xAAl7Ao24c0KPQRiPSN2hGY1pfHoMWzMRfulgo24wMizOHO589+kEdghXVo
LtWmUnWet0F1W1uXB4IyzARtHtqbMlo4EVyTTwZzFrB8YtGe9KUeQfBBnFhiFP0P
qTyVbxe8RLn30iqv97yCQzp0w3AR+tB0Hf+C4r3rqmfZoehtuM8c4xRzrmNYZJwG
y3ucDvZjzHR9QZ1yxzPS+sGvX7vdaeuzgX8U4LlwRWcGQsdWP8KbLsaosnHlgPlD
/T321NTO9H+TP1zNn9sfJuD5cwvijkwXi0aNLyRe7WeVCcefscSBlIBqCUhEuwKY
xaLgGCkzwcbAeKaMrpmRuEl0BXIqVObyDHmPoDbZoc4fJd8QFPYi6uwtLKfFASBB
z2BOWR6Yf6EJuIhejU3PwpIEzN8P3qoiLSVuCyQMYfi93fwvAynt7pMX97fOyRdw
o6jaBO+CmtgqwDQtP7GfqwYa2C1aCDQCKYyE3I4YNmSq9ChjVSPvjDOoGLA2omHJ
n2zTsB2aA1+0mP0S5WDBu/2ftyQrzMG1axlE0e648Nj8gB/1M0BHUPzU9JTwxw09
fHoUtVKmWEAc1AJK7FvZfAeGQVuWU9SCVIm98jNMtXhtg/TKaqGbu2M0JkH1TnjS
H47q+LdjAzozWbl441+iEZ6THBxEOwrIBEmH4M01QaAqjLNXfvI=
=7F6X
-----END PGP SIGNATURE-----

--l5xrjhfs6w3akxog--

