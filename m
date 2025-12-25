Return-Path: <linux-man+bounces-4565-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC7CDE1D1
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 22:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11BCC3009AAB
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3040C2BD586;
	Thu, 25 Dec 2025 21:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/lCp0Pr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD1E285C8D
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 21:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696609; cv=none; b=q4gwUq/L2+0VBwzbNCzR0FNMAre006kKq4TC27X34oJeXLrByo9zwl+BvhFkjZ+4M5H9w2N86IINfe2JEs4XiHIDeW5VouZwX9QTfNJSUz2fQwow1y+auPZpFx+g6zM0d1cKXWHnoGRIxqIQZfKMuvQFiPK6pcwyAETf4AWSnIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696609; c=relaxed/simple;
	bh=pZ9KmYNj3QCkkbUTzoZ6ysIPSwklb/hKbeNhvC5ixNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q3Hdg/8QinGDHDm6IWD0KthgME+bxJ7cRKsusSyoFjNRAU9r9vOuHJuZWXW3z9I2iWVQMoTMEItjCFQcSL3tZj0ClUKfB4hN8mSBW4TohOmYGwEKUCsLtugaGK4421x+BL6dWPntMriG9f8RG9bl7EdqexayvoRoIb+odfH0DwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/lCp0Pr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87229C2BC87;
	Thu, 25 Dec 2025 21:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696609;
	bh=pZ9KmYNj3QCkkbUTzoZ6ysIPSwklb/hKbeNhvC5ixNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t/lCp0Pr75SocZRoxPiJYS7TxNrupQduy/juq+3zC4xscVYHyWQwCApW54lM7eNmq
	 Y9+PD6fjsf55NueDAKHndsXbq+60diqZ2Rn0387hqwLYj1uUATa8mZKDtO6W8Woknp
	 pgk2P1sFrcfka982mP9wF1b3cF6hFm0AsqMuVIvQJAvXN9Xjsdrcsyoi2M71f/uDzX
	 qa1GE7QLIk7uIzOvp2BXFj7y0+ifwAdUuQaxJOF4c1eteRx4w2jbWul+4Gq+esoNFf
	 sogHEeG49x2zmaiRjeoD18FRoaSD7p1PaT+S+AAWQQxLP57QuwcmtrUEnHfVsQw5hy
	 LSqH/KZ0oeEzw==
Date: Thu, 25 Dec 2025 22:03:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU2lzU_5FB94Yqf6@devuan>
References: <aUv63mfzFe9WIr4z@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tllitkend45sp7eq"
Content-Disposition: inline
In-Reply-To: <aUv63mfzFe9WIr4z@meinfjell.helgefjelltest.de>


--tllitkend45sp7eq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU2lzU_5FB94Yqf6@devuan>
References: <aUv63mfzFe9WIr4z@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63mfzFe9WIr4z@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:22PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:   modify_instruction() =E2=86=92 B<modify_instruction()>
> Issue 2:   get_value() =E2=86=92 B<get_value()>
>=20
> "The following files are meant to be compiled and linked with each other.=
  "
> "The modify_instruction() function replaces an add with zero with an add =
with "
> "one, causing the instruction sequence in get_value() to change from "
> "returning a zero to returning a one."

Since these functions are just part of this example, and not something
standard nor provided by any library nor documented anywhere, I think we
shouldn't mark them up.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--tllitkend45sp7eq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNpp0ACgkQ64mZXMKQ
wqnvuA/8D4zSnnAKJkTTJV3KhUOY9ZueqTMVnxEDxc8GSOnGhqHeSvd2WVA/WS47
8qo0HsOsJ6IpSRBtZuL6x2hR7LyaCi7fD+Ui8vbvo+SK+hkcvFRBJtRBNvhtQ2Ck
iwMcxnTJPmGqbmfc6WNxGf1hxSaPDrrYHNXJMm3A+wbSQskoiqeZmsrnSVDzwGOi
e+GW+Bsr9opSmmX3JJ7D0/8PTDtFeZD77JEf0s+adi+hzSVj9y+AGq7nM6/p+RUv
4wnnPpATYiChyl45ZqPlWgiTM23sjDNn8hsFUf+fNnXpNWjX/5MAGilit5xFWFw1
hjurbMlPDlrZrWyhxEbPx0tlV2MAGXf08SZKuEVTKFQNEKuUxeN3JHnF2aWTmq3q
sl/lLzUMf7otF30d4TzoCClR61uh46xWMqBrK/i1hW7dvESnxLC1Xeh8RMO87Nqc
tp6Me8lKRXNV3egShq/fghUGvq39I2MQgo8U6p6KdX4seRqHrDqjMEnyEz0K+iy0
ooHd8F8PnQaTCZrxfBLjlH/G92U4d9hq1GprRQrrQa5z9MdOaE0Emhk5mm3ndvCN
HUIJJkCektvNL0wCoxOrWHX1nNoHcbwQbaVISGmXrTVz4K/9D8bM/KS0LuyVsvHT
cGMiS9BjGKBg6iXPZG8v/BeTgxlfoywkwlrOz/Xj0icScLAAWSo=
=evW6
-----END PGP SIGNATURE-----

--tllitkend45sp7eq--

