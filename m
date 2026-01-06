Return-Path: <linux-man+bounces-4691-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C91CF8BFB
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 794A0301AE05
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA902E040E;
	Tue,  6 Jan 2026 14:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYFww9QQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF26729C321
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708781; cv=none; b=isBrO7QpQvhfNaboLpyRJonmFzNPQkn+9z5m8dllh3nytl1aJpSMj4HJBIBaIMOLAdUiIhxYKjvuXYCMG0UPjY7b1sH4oYyQeRC5SYSGAmBGOZEBIiyC/8Ym+tnFRuCk+ceVs48VGvw+X2fBKnD/c17Y5YjvjwwcPZYMOaYOQWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708781; c=relaxed/simple;
	bh=vBtnsa4KKXDELKaZjcrYYxmXhZrzlH4BmbcdaIYuNlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cSFyI6KR2fpBGKniIN46LeGdtcoXSljhqdiJ81xReiJEtu7mbMgYhLXvAl9u0cA4wQFKjO06Zs0j/B4CzWlEEqpuMIMbUx5K5yPYnRVG3lDsxKb22vLI1rPHMGqzsFnVMMSxbKcSPXxWt1PrKoKEHlSf54wCocpEvDlmmPMvjVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYFww9QQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE69CC116C6;
	Tue,  6 Jan 2026 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708781;
	bh=vBtnsa4KKXDELKaZjcrYYxmXhZrzlH4BmbcdaIYuNlA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aYFww9QQPuPjkmwMMYxjJppd6hYIFCD8n4ejxpjI94jzHyMppO6LEw23q7ZHj4Vrw
	 8qjmB4gjfsEakgDdPB8+SNYvllr5VkvI9Km2xABjvPDSLqMifMos3fe03U4HlL6TQW
	 0V1sId+aEyROOgsLYUSLoimCKZY9XnW5UPLl8qHzfCyHP8QatM2i6Exa6E3eTt4ap2
	 dwzeMRd+0Pg6dKf5M/rsxvSpQ+446pL8MKRISpu9w747XKAvhCLQx9ed/MkICWBGfb
	 9cGofZWOu5Gcl8IYKyGiRbLSWvkmUdsO5l6t+WszXGVGcJ4H408yy3DWCVAk257lJB
	 oRsxjTNZUA8EA==
Date: Tue, 6 Jan 2026 15:12:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention
 change in datatypes of [pug]id_t(3type)
Message-ID: <aV0XZSgwGCE5G65j@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwhmp6clk6q2665h"
Content-Disposition: inline
In-Reply-To: <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>


--qwhmp6clk6q2665h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention
 change in datatypes of [pug]id_t(3type)
Message-ID: <aV0XZSgwGCE5G65j@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>

Hi Seth,

On Tue, Jan 06, 2026 at 05:08:01PM +1000, Seth McDonald wrote:
> pid_t(3type), uid_t(3type), and gid_t(3type) were initially not
> specified as integer types, but as arithmetic types:
>=20
> "All of the types listed in Table 2-1 shall be arithmetic types; pid_t
> shall be a signed arithmetic type."[1]
>=20
> This technically means the types could be floating-point arithmetic
> types in systems conforming to early versions of POSIX.1.

But did any implementations do this?  As far as I know, there were none,
which turns this into something that was only true in paper, and can be
entirely ignored.


Cheers,
Alex

> [1] IEEE Std 1003.1-1988, Section 2.6 "Primitive System Data Types".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man3type/id_t.3type | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
> index c4b87642c755..ad79394b1b72 100644
> --- a/man/man3type/id_t.3type
> +++ b/man/man3type/id_t.3type
> @@ -50,6 +50,15 @@ .SH HISTORY
>  .TP
>  .I id_t
>  POSIX.1-2001.
> +.P
> +Initially, POSIX.1-1988 only specified
> +.IR pid_t ,
> +.IR uid_t ,
> +and
> +.IR gid_t
> +as arithmetic types.
> +It was from POSIX.1-2001
> +that they were restricted to integer types.
>  .SH NOTES
>  The following headers also provide
>  .IR pid_t :
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--qwhmp6clk6q2665h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldGGoACgkQ64mZXMKQ
wqk/UhAArdHp2L90FOH3t4/SUhKdJV9Pimga0yH+/8dr95qmZ1q9rcmS/IFfle94
yO/ejp3+BoGOuI/7jbzewVhWL19ScaI6oXlsKXzwI65IRc9xX233iqTmnhEitRMS
BCPFvqnpzJhWKQtiKaIw87tJ1qfXdJX7hAfX07EJ6AhnUhhrgK8yHAM7+exC/lL5
ERjmxgcEamhYJd9ypLZWpn57oZlEBvbmYi5U5Y6o0rNF3TeGUVmMDoEtEpR5aChw
rJ8Z03ihoaRd8tTQpJeL2B/4zlqcdVKMxpg/O7hQYUGDTYf7GBNxBkkILwjxdMgl
sgmg1VeWwJFB7dkj+WGu97PbLu8kQouxgnOrsjeHint9LW9Rqqnguh2Lq4HSoOZU
qWDVpT3VlBDboJx5K6djmUy1YvAXkZjF+bEgBCEifktkrZIPLvArYYOdHRKyDBzu
kk9eeqLwBK2KdnObi8uhHN2ciV1BO9mBV+adEF6rNe72lESrbMvKbS/8vV6CbLAq
XbbLRNcDqfMwG3RWELTVSrbZPs5XKAfMSyDjK+E5//MLEcqy/UfMI74IEZd+t+lV
08iYDHJsCsu8FYUrpVb2iSz9i5Dux0FURvfQL7AT1VN0CpXwjQaUGprj5qM6VJ6w
PxHNB34U02Fb3qw5MDpjYyAyJJWug1iDx70jLYLjVJrirqblYb4=
=/IRd
-----END PGP SIGNATURE-----

--qwhmp6clk6q2665h--

