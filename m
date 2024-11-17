Return-Path: <linux-man+bounces-2024-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1D9D047C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A41D41F2155C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096441CCEED;
	Sun, 17 Nov 2024 15:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2ZDPwFP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF20CC2ED
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856838; cv=none; b=mP8n4yiaPeo6ovuMAyffIiuO5U0OMug9NwsVqKl0IzL8/CHfPHcnpSXQLSwPId03ASgxSLPQhzUNtHYSZdeWYe+O/7cbtWbPXGKKtFhcE50VTPTTVQfMkjJt/FX796dKw9h4rRuPuP+CMqy97uS225JBBGRpHG7DqyMD5SKgrpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856838; c=relaxed/simple;
	bh=EKoju20N9Up3zG2cZaP0rYFbTqGmckb+uRYt3rJJbZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gds9Be3oSMZvEAkyJRtwRMerdQDnpolavMauExamZEmK1MgT547Jc4/bBoklqujdnuHJuAu15dsA0M64H2XsReeBuA61pIBlHmQUVYrQRm28FIR7MNzcc0YQ9Ujv+2AFfGgQxubghaJSLJu4w0YrmER6wC3h5qJoLiLsJ2g+dlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2ZDPwFP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DE7AC4CECD;
	Sun, 17 Nov 2024 15:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731856838;
	bh=EKoju20N9Up3zG2cZaP0rYFbTqGmckb+uRYt3rJJbZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N2ZDPwFPhsAEz9cxzApS4wEtHvhXAcqYTSM28eJklU4wGFmt9ptFv5+rHXJUAS6ra
	 aGUrpGgKQh8/6RT3sNah+viuVTwbK3Ma1Vr9fSZSMezHgyse6Rhf4C1geLaIOrbEr2
	 qUNnWXnxLPAu9IzgqIAEi7YVAciRnmSPr79p/VpR6zIspyLopNUubWwhxi0VEDgBzM
	 gI+QqqAEzE/qmNBRFkrSKymOpnsrBIN4hZX4dR3umux5DtPZ/WH6cFfWsZO2bxAZVf
	 7iOjmpKq4v4r6Brpsbr3HyGA+F+NbbXVUv0OcqYUaGQEvAyLtIuHKEy4Lc3x9utgHQ
	 7ad++GPfVLF0w==
Date: Sun, 17 Nov 2024 16:20:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcwidth.3.po
Message-ID: <t4mcaqlrh3fiqxiecrcpwsujcbk7ja3qmedlknykv2ubctpjpc@uctz4aty3qgv>
References: <ZznJgXYxEuH_n3lI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i42pcpef6u2k7nc2"
Content-Disposition: inline
In-Reply-To: <ZznJgXYxEuH_n3lI@meinfjell.helgefjelltest.de>


--i42pcpef6u2k7nc2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcwidth.3.po
References: <ZznJgXYxEuH_n3lI@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgXYxEuH_n3lI@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Variable c =E2=86=92 wc (in the entire man page)
>=20
> "B<int wcwidth(wchar_t >I<c>B<);>\n"

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--i42pcpef6u2k7nc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6CcMACgkQnowa+77/
2zJFZA//dOwy+vDf8DQWSlSEv21NJhrfg5DFFdhYlR3xkjaipRB2StsnvCx5ntZ3
dIbMJFtah2hv9uTkFFUX4RRo+u9DezpP4xk4EdWG0xhhmhjuO6hsLjdmyzBV9Ra4
ZPMNlwsrV/ZLKdSRR9neg3P+lmcQRK5U8QFyZsU9J1CgM+El1RUqlFUW5DO2Rrw7
+ZvHq4qHjMWneSRRkyTGmgYECkzotb5Xki4Wv8jlKkAQkALyrx+RBKgN48/uzHsq
ecHCTcBqwHEf7+dtM84mBHDX6/RcFBA/zxsm1xvb6+Nt/p1f6Irkq1NHeWv0OShE
+pZYG9lX2blEnDoYi+HKNvyCr/7LPTKO7ygBDycLCTh5M8Zlu0gl4RlSxI8r+ClJ
1BZJAzW/myPxX6I6sGxU1ZxD/sbZ8toNWcsSmxzLbXKawo0VeX1hJW9TGXauitHg
bu1nFLZAmv3/xMQ+mRX8XgUI4bzdiTttB364Kp8uVIcXYlZ/k7+PMITdRlU5oor4
oj25pLzFDW7YnvSnj1TMIikDepsIe6qWtAqhsCtrdffmJfmUDZR91iepsrrK/Tm8
OOfSqZYPLwYPorDc8pCjVD0rVB2l2XQZ36V9JL2gDAyremQEhSsGz9jEEL77QCAO
+n8MVdDDv8hMrHfWSMa3NDginFCYXfOVcMIaBwHXCmFGshis7JY=
=ObeC
-----END PGP SIGNATURE-----

--i42pcpef6u2k7nc2--

