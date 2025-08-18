Return-Path: <linux-man+bounces-3465-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BABC8B298A6
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 704533BC674
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 04:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2481D2673AA;
	Mon, 18 Aug 2025 04:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJi/3NKR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55801DD0EF
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 04:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755492869; cv=none; b=EPbKMaEfhDXiowqZumTJumv4MdU6tfVNkkorici2xgHCc4eQ43jPTCs+isAH9h5CFYZiOeCrCH9QZW9H/8jcvxFZZDsxtiZ6qP23lCX52zzhUsAqnXAeHMcNqiQXji3drBq8Ts1dQXDIfNGjEHpHZWJUOP2PV/QWFiP8fRF277Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755492869; c=relaxed/simple;
	bh=kA0eFhMRNN2wk7TtOxXdlGyV/OEpLUCrJUVYeIU7fXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L9niRLkkAYzp6aURVmxvlHTXO6uR08rekbVUj4pHCUuY5gemhLoJaqKHtmO30e6ZqOhwEUuPqu9/HHVV1jn3R8XzdR0bG6ioStdlSJmxOWT3a+O4ys7BqspWFfbLoY7aAoYTzdlq9J/4b6qLoKc76tqDnlQHKfvjQOZcDTrtjDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJi/3NKR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5061EC4CEEB;
	Mon, 18 Aug 2025 04:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755492869;
	bh=kA0eFhMRNN2wk7TtOxXdlGyV/OEpLUCrJUVYeIU7fXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pJi/3NKRmc8f7mf/aC+/1BiY5a9J5KFnYu0Z6bpuT1lpYpInW3sWIjWQNMoQ2AQcl
	 V7heBcBiViFFr6DyljxpWn1sf6XEk19gmeGsGWnHt5rrScZ7/kEk3LJD7FldixwFrl
	 tKsyHoFTt7t6kAn7nquSLc7qcJ5heas/gSLZ73spf8R42m4rl6G8Me0npvhUGNZQAH
	 AJkUEVVcwSVKflEMD/Mi0ZvR/EochLPdE0l2HF4eJ6h0fiQjx7FTYyAJ9TP9U+x9kQ
	 oGjea5wj2MzPed97mRHO3MOUQ0qrzWI5Sthq0+80HFRi9uCZmfBWDRTSnSS4TUrnzr
	 RAu7UMgYniNkw==
Date: Mon, 18 Aug 2025 06:54:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Tran <alex.t.tran@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man3/sem_post.3: clarify EOVERFLOW error
Message-ID: <lmbnk4ujq3bye4cwkka2t5ljueyafxcwntqhdbzlmea4dcdwl7@nugozp77ehqw>
References: <20250818042558.95341-1-alex.t.tran@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="urnp7doxghdatzlp"
Content-Disposition: inline
In-Reply-To: <20250818042558.95341-1-alex.t.tran@gmail.com>


--urnp7doxghdatzlp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Tran <alex.t.tran@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man3/sem_post.3: clarify EOVERFLOW error
References: <20250818042558.95341-1-alex.t.tran@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250818042558.95341-1-alex.t.tran@gmail.com>

Hi Alex,

On Sun, Aug 17, 2025 at 09:25:58PM -0700, Alex Tran wrote:
> Changelog:
> Clarified SEM_VALUE_MAX in EOVERFLOW description, per reviewer comments
>=20
> See: <https://bugzilla.kernel.org/show_bug.cgi?id=3D219335>
>=20
> Signed-off-by: Alex Tran <alex.t.tran@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Defd23b5344233a0d25bd38fb125955e4a18a0719>


Cheers,
Alex

> ---
>  man/man3/sem_post.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/sem_post.3 b/man/man3/sem_post.3
> index 1df132c89..ce2356f1d 100644
> --- a/man/man3/sem_post.3
> +++ b/man/man3/sem_post.3
> @@ -38,7 +38,7 @@ is not a valid semaphore.
>  .TP
>  .B EOVERFLOW
>  .\" Added in POSIX.1-2008 TC1 (Austin Interpretation 213)
> -The maximum allowable value for a semaphore would be exceeded.
> +The value would exceed SEM_VALUE_MAX.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--urnp7doxghdatzlp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiisgEACgkQ64mZXMKQ
wqlZvA//ajHA3TPWD0uyfEJInJZKDTQrAafoyx0j8jiOfLJLZht9fD88x1Yvb6do
Pv8DtqP8x90kzDmw4NpQfxD62oe3Kqx8Pzt0FGXl6QlWBH4iowHrfhnmHqwEOd8i
U1PamHsexA7MdA2MnA3JtxnJKUqhTD3n6rNUCXOOQQtZIzcnMzKhMUgafYJp+Q/S
8FodiR4QVNIkon/sWzaZ7ULt8sy6qT7rK4smTgikYE2NLKELwCsHmGQuX8dDmcEt
VcTk2v9D3fI45Pbe4nrbvI0xGBhlOJuzsieq2R0VlrlGWNx8RMhufsVrhqv/XUGd
fD3jcGoGXzVcPBShxlgpbwXNXR3j90XjMufm22QRNfZXdTr88bMSaXTSYr2GwdBe
FKll5PI4jNmWUua/gdJImeHSvdwNiJci78+h36G189y04F5mICnYFCym4PNRhuPM
fvIHKFwcA5Ilu0sp405CM85mqS6yW3IcEW6d310WghizZe7YeQJPOPz88CJBsfwo
oB23vv3UiEKa1yzghuzTpn31Zv3hujTe6TaxUfjunWgQjyKNzAPc1kt6LUnGRkWz
u7XbetayeOrVXa/1Fzuq/diu3RnUiicck3lleFNNO/ZSJTxHU8pfrx01t42FcSUM
7IZ8LEWSd6EhttYVR6ZkO63daBrmmKd8qUP7DsZDx2XKqjt4v5c=
=FF48
-----END PGP SIGNATURE-----

--urnp7doxghdatzlp--

