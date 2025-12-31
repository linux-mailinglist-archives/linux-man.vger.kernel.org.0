Return-Path: <linux-man+bounces-4597-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C81CCEC09A
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 14:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C72A13009F8B
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 13:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37E773242DF;
	Wed, 31 Dec 2025 13:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6Gfh2M5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860FC3242B5
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 13:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767188815; cv=none; b=Sz4VhYohZW5hKbFAAGXAP0zEOK8TYa7fTH5NcfvQDZTbVvNy8/+q5AokJ2ulyotpXeTn4qQxMgb0VKSIcUSTa+9WUxSGLS8HgZ221A3YzybmSY/vnDmJWOrFlcgHzVyQ5AqyRcdUAsYyACfimzTtHWdpNPfRnYjRny2B/tv/KLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767188815; c=relaxed/simple;
	bh=+iTOhr1mCSdvJ7pAJWgIS/xTBcOD0emeqLu3Zq7cfu8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDtBPjpV5/PtrireMpr+WgacBwuygzgzXYeLqU3Q/rt2ZVLiMXsr7pyoCXOmdreo1o4/e5mN6J+elHldmaSvfDohT99cd/069G5KEuT3tzkkISMsO2zg+wUj2Epmz6AofTSam//cKqyT1EpFBdYpFmDDpIf0EpcWKlndlJ9JV9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6Gfh2M5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 468A9C113D0;
	Wed, 31 Dec 2025 13:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767188815;
	bh=+iTOhr1mCSdvJ7pAJWgIS/xTBcOD0emeqLu3Zq7cfu8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B6Gfh2M58pumqEcb51XlJ2uMFsAf3lpCRkpcFy/gErN+AYh4sqUj/5JyZlzlBU3E1
	 YPSO+7YelS1gcroV58kblFp4I8Gd6hRMl+1r1hwKidQyob6sr9mcjqTT8FM/qji/GF
	 ByfYwSDtd0xWpikWMWHWxk1UnvbPObf/70dFPqCBG/F0jlk6aTbUTVlhq5ZwzPfxXb
	 qs7bmYwX4yVBog5Am+ill6s3m3Twex7yDfuxMcavYZPb3+uIWvC8PrscsZUYTHVOiW
	 THNYvMCe6ge7c8RgihtNKI01ndfJJPxxLaLNO2elxJmsv30OnOQHAx+Mrf1YGbNCe6
	 jqYkeBlySse5w==
Date: Wed, 31 Dec 2025 14:46:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/4] man/man2/syscall.2: Add HISTORY section
Message-ID: <aVUpP9L6fk1-STyA@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <a2a2a51edeb0b23ebedf998cfac788dd96ee7ff3.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wffqorrynxypi246"
Content-Disposition: inline
In-Reply-To: <a2a2a51edeb0b23ebedf998cfac788dd96ee7ff3.1767072049.git.sethmcmail@pm.me>


--wffqorrynxypi246
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: seth.i.mcdonald@gmail.com
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/4] man/man2/syscall.2: Add HISTORY section
Message-ID: <aVUpP9L6fk1-STyA@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <a2a2a51edeb0b23ebedf998cfac788dd96ee7ff3.1767072049.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <a2a2a51edeb0b23ebedf998cfac788dd96ee7ff3.1767072049.git.sethmcmail@pm.me>

On Tue, Dec 30, 2025 at 04:42:00PM +1000, seth.i.mcdonald@gmail.com wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> Move the description of syscall(2)'s first appearance from NOTES to a
> new HISTORY section.
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Patch applied; Thanks!

Cheers,
Alex

> ---
>  man/man2/syscall.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
> index be645c0f4a..54385cdfba 100644
> --- a/man/man2/syscall.2
> +++ b/man/man2/syscall.2
> @@ -62,10 +62,11 @@ .SH ERRORS
>  The requested system call number is not implemented.
>  .P
>  Other errors are specific to the invoked system call.
> -.SH NOTES
> +.SH HISTORY
>  .BR syscall ()
>  first appeared in
>  4BSD.
> +.SH NOTES
>  .SS Architecture-specific requirements
>  Each architecture ABI has its own requirements on how
>  system call arguments are passed to the kernel.
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--wffqorrynxypi246
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVKUsACgkQ64mZXMKQ
wql1eg//avP4oBMSfaXwKntbgXB07/lHeRXhnbDCYDkhXaawUk11E8ZqPMEIwSFq
5y9Vra/9B5qbqw7x92F6vt8usP3QZZ5ZBz2H9g2G9RZIrNm+SzWQrk2DotE2lJU6
qk3L0Jv7J2KcPj+dy+avf6KyoltfWxwiFxlTFKr12fMUymoAs8Ew0dyZC8qVKQcD
H9eEkp3VAQdrqXk/T5FhdFDhrlJVwilbDZJR6jnGgMrl92A2k01IQCDumqe7GKoQ
0LTs6Rj2GOSoir24GyDGoUEkwnji9Bxm+NZOcZqorZq2wTc314c/TQ4TcAvifCy2
2yxFdBZl6lwDZul+KUkKdVXj6qcH6qlbxrAhSKd8XH1wSmf4tSNtee/nLqSGGNw+
z5UNDhDJXqBk+kZyI7mLZ+hARaT/KLpqCRUHXHtrERGeiKCHxsbNjsv32mAw+Ebz
EkHoaPNbvlRxzCAdAwTYb01z8ttCPi6n6eu5EgAGA/4hijCEonePhcvKlf6dvP0F
II/ZPeZOJp9sSL5UelAlZ0b/W2ZQhQGhntZ3i1tXXeEqIQoMFRMwYda5yCD48Kn7
/+HpJkVieaJsan8Q6qdwzu7q+qVP/E3WVgZ3fVwhIOHk2d+BDPoe3khyVuLJzXow
AwEF0mU6SaMdP1iu7Hl7LMiBge7ZOwenhzQJjhwEVgmfwT7wsXc=
=mP9M
-----END PGP SIGNATURE-----

--wffqorrynxypi246--

