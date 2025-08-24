Return-Path: <linux-man+bounces-3697-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF1CB3325B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5E3C3B9EBF
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 018892248BE;
	Sun, 24 Aug 2025 19:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8IKtkgr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B314C1F584C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063660; cv=none; b=HYLh7TJt+l1nIRBbE6VSKXKAi1CbrXOH1p2FPPmca4XDmiHeiQqcU6N1PzRK0J9+e9NH+w8loCZ6ZdcCN9qMliwirdRVSQwV8EF7GFaYtWcuM6Iwm/d5N/kZXNNcR+/i6wA1eXorSzWP5x5lwoOs75WPGYeqwraMPl9JCesMhNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063660; c=relaxed/simple;
	bh=t8bJUZGNWxjx5timq25b5X+QOEGwGpu4nS70EfDhSpA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LMn0xLm0yZtFgImS8XkWC3wmQOXGITVRjGpwwECH0vpzSB14LDBAbmZQtGsyEtsRpEpEVwfFVOtyyLzKlBj3fNELGTudrCdcxgb4UdpqgKeN5rz+ZqYuzoyOnJtRmNjPePcJ8k6MstaV65gWHfWPxUmdFKxBG4RtJCX0o+FQsCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8IKtkgr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64938C4CEEB;
	Sun, 24 Aug 2025 19:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063660;
	bh=t8bJUZGNWxjx5timq25b5X+QOEGwGpu4nS70EfDhSpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W8IKtkgrkuVn/7nnngOUBhGy6wOsXdStxbW2RtLM+vsQ4KWdLjTNZW0pH/MZYQ7zl
	 beHTSjWmeYB1CJjFXAoA72ZohTPmyt4X0uxS/BRJXogQBsJI2Or3hAY+vtzNgsO6no
	 aIwHnb9yK72/dkzYF5LF2xhMvMJ1XGqM0j3oCbmRjCfrmQB3J1XZuISIMs92RJ2ma+
	 IcNhgPZ14V30gQR8ygWhFSfuGWzKjqPoBEt4guJceooFKs0qKT/nJH81mdhqDbf57z
	 HY3lMXyscMMtlRJ9FupwTRjeLlt8DMUYujrN+GNTN1jNrVQYD5eLzRnnIPJw7MlqNo
	 uWecpnSqxzHGA==
Date: Sun, 24 Aug 2025 21:27:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Issue in man page putpwent.3
Message-ID: <exqsvedty4q44h7nvrvmhyqzt6kbro6d2t63hfu2nwixt3dm43@cv7a4llrtwdi>
References: <aKsmUHH7oH4Pj88u@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2zu3mmxbrzbviurf"
Content-Disposition: inline
In-Reply-To: <aKsmUHH7oH4Pj88u@meinfjell.helgefjelltest.de>


--2zu3mmxbrzbviurf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Issue in man page putpwent.3
References: <aKsmUHH7oH4Pj88u@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUHH7oH4Pj88u@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e=
=2E _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

This is what the text says.  Although it's probably a wording mistake
=66rom the author of the page.  Since I don't know the glibc history, I've
CC'd Carlos, who will know the exact versions, and can tell us what's
the correct fix.


Cheers,
Alex

> "    Since glibc 2.19:\n"
> "        _DEFAULT_SOURCE\n"
> "    glibc 2.19 and earlier:\n"
> "        _SVID_SOURCE\n"

--=20
<https://www.alejandro-colomar.es/>

--2zu3mmxbrzbviurf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZ6cACgkQ64mZXMKQ
wqlJtA//aA7oonj/xCecSEnx6UJ6IMbXBi09fKeIhpeDl4y0c3e1V/Ouv9Qv/fHn
QVXZL3UIWZhnB8zlpR9BIpYDxjdlvdegSoSPUYa/W7ICnv2oHKvg3bgzYzNiWueQ
FExWw2bFxwuPHVE9eOI7rZa/l+b14c8YNnRTxrhmng88lTxuhFBLVpyQD+ppCsj+
iBNRcWhpMw4G5svBzefoHcqndfUyluW9o9qaq5gIe79vmFrd/wZ+EYU6qV9/rtAM
wxai09crh4RDGLlqNCSPJFVJqpduNpkr3uiJ51Ac4Jx6PQkXghA1sHf6rIJTVAqM
5Ke80lEe3VvEneP7igPxyKIQ2TSWl5ETCWOj2M/vSxEhNGbrYOSa/+/50bB632Xh
dkYPhbdOwLdxLMS9Q8/EG2x9oKwlQmaoAVy5DnJ0gxJl/J4HfnCr57m80U1xWs4e
mp2yPBPNx4rIMC1UOmo+EwxRgC4rVKtsWG0yEF1dXTPtMGP6TwYYfD/SS61cEfyC
UjAYt0Fhmz/N9OaIGvE/U5C4FSqjpDfbx6zoYRb7S44hfi4FNtCafE17aeSS9Dcd
gRedgZREJX2O91KjCu0t3Gc3jL27U0bpc5yarz1S5elFCafqorp4/Hq2WqyVOCLT
L8rPvVEBdngkGSRs+l4mfFatN5K7GIoDfVDBmdXsXH5Vqj5GeMA=
=f7b7
-----END PGP SIGNATURE-----

--2zu3mmxbrzbviurf--

