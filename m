Return-Path: <linux-man+bounces-3799-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F913B3DC01
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D17D18870AF
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F86C2ED84C;
	Mon,  1 Sep 2025 08:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxeXJObU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9E51FFC46
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714201; cv=none; b=s2i4VaMHQI6Pkgor2AYj1HXwai4yOl9ofAuogCS0WsU8hMRr5myNgN6y0Bx3xh1PVldp1p7xExOiVHCZ/Fcf0E82pH3pPj/7SH4Bdaluoorax4dcaMTEFxRkyRHL1uCt2Hg+MqTxJK7LNcgCPDa9ecZJbVcphzbEcSKyXuEMie0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714201; c=relaxed/simple;
	bh=aCtT8+jmQTKi2hd29Lk+0TLaGXo6fWZbOrJ5yekvyCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tmGRPWk5pH1Fkh5A61KnY388nuM6U0/TnLo812E7cyITeKV+Q+pPDIIHxX331QLAcLfBc5FXLWVs0vnBi9UeTwm2V4vTfriPu11SBp4iVAp7S0uCsxmSsgDa9k4JIgUKBHfUFrniFIGy5dpHKFPVYhupiowSR7ebEi11buhzgiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxeXJObU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E287C4CEF4;
	Mon,  1 Sep 2025 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714200;
	bh=aCtT8+jmQTKi2hd29Lk+0TLaGXo6fWZbOrJ5yekvyCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gxeXJObU+GKNKs57UXrvqAFmCBf/Iyi4Kw749+nZiMkek2m0FMlcqWwYVBoMo0r9Q
	 0Xv+nryUG/OghqlCE8nvLLnBbyopSCDWzr+vfNJOaCVJ+KbA6lU1A8GVoLZsZZ91dR
	 PKtt9TwFrcWHyJdC11YOh5vk/2tOrjsDW1Rgb0qoGpON5EUqSO4ePYnBr0tVXBZBlA
	 Xf+i3x4uUUZfRARhapgik26F7tKfZzU4VAxyUFOs+Lt6cJmyazUD7ZpbqnNqEgkqGZ
	 E13wCK3HXItx5CjNqZZjwPvGujWUFcSwTo9AKuZNhcuT64lsnrguE3F3gduJgCdKB7
	 4G9BV9Ruvc5oA==
Date: Mon, 1 Sep 2025 10:09:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
Message-ID: <x27lceotwwdlsjgelb4qxxrrpn7zfsi7ebydsi2frxit6yus4z@3er7nyg7fcpu>
References: <aKsmQ14u93nwpoaV@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lleo5vdrgwvpweqe"
Content-Disposition: inline
In-Reply-To: <aKsmQ14u93nwpoaV@meinfjell.helgefjelltest.de>


--lleo5vdrgwvpweqe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
References: <aKsmQ14u93nwpoaV@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQ14u93nwpoaV@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:35PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    GID -> UID?

Fixed; thanks!

Cheers,
Alex

>=20
> "returns a pair of GID and effective GID via registers B<r0> and B<r20>; =
it "
> "is provided instead of B<getuid>(2)  and B<geteuid>(2)."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lleo5vdrgwvpweqe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1VNMACgkQ64mZXMKQ
wqkYlw//Wg5waozJ5UU/PdPHCi6S2vdtsR2YJhKAcsHxj7A56ieUvuAGHseLG4Ne
5+JbFV38+r9CWC/xZsIb+GwOcMUp3OK2UB8Vj0Hi6Kc3xufWTh1Todg+nLq2CTou
4U2uZYAb5zr5i/WI1EVbtHaG397kddw6ExeckKXWC4YpUE0o/Rb198bZB3Mk+YXs
nFwrVKTdSmBV08TQYp9vflP/a+OUzOa6vq6FYltxJTjNL2hJREEqkigW3hEy8hM0
CuAsxU3JwfAWR09mT+xqtocOgkd8tMkHSlZYw3XWj0QVdQ5mN9h8xn4hoaUGIfaN
fUlMvNiV40ePcsCy9+KafTvQwonH6t9Wx8yA9o+rHM9v6OTJpo7jpMgqw3ltCGRi
HHWNLbbuk31prM5jffr8LYJWFBMyIg8LdxcARYi/JCslcORFqW9txZdrpzOI1wS3
0co5vJ5/t1q+izA0QYdGrcN9fo9GK+oCuFFDRbiwTxHED56dDVzSkBkRWLmTBsLG
sn0MLU3+M3QPTXBuyo81FZ1XOJ/ns2R0zMXxqCUNoQhFRzx0OO52UmGwrhnCTsPO
JvMfVVEfQhB0jaNtPf6niv7xj3ZDbJePY+TzbTZScmS+YXs9TbjcH9wP1FzK18zX
46yhlIc2WwTQm4hsVm86iCbSfvcdzhvYSkyNgNiKkrNyWhkCI6Q=
=fUTv
-----END PGP SIGNATURE-----

--lleo5vdrgwvpweqe--

