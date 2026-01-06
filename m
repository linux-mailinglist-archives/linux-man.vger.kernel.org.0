Return-Path: <linux-man+bounces-4686-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23560CF8A51
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 14:59:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 716603026A7A
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AEE1DE2AD;
	Tue,  6 Jan 2026 13:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBWHg3tV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D4A3A1E72
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707923; cv=none; b=Cd0hotOvsrBoE6SbDwMYxFSnjzFZGq9IOH7Ny9BPJ0/4wPPmIopAJ7WSxx+mlsrnzA27B+mj5ZaJNsXW0TqeC5TFYkfv2CACU5/PRH3n8Lnd2tZp1fQM8bXjMm60a8HkehX0hI9kAODc6r7zzsazppXPJc7uFhB2cTXJJOCz7XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707923; c=relaxed/simple;
	bh=TNQJ8GaqkgTDWVK0btTdPCAS1etTpnV7orHQ8Z9rE94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K2K0A8cnmoMWglH+F8irfJqz2VTjMlOidNYey+4dq+aYGyiAtAPXesBQKhJ01qcsmOxwujOsF4ztx62xqfgoJ3IhCvYdEqzsfsBOvTiIYB1qczeRdd85UNtZJauUIWSqz6wkfHbCBApW22yuQIAKw7DUpu3+AaSXqYycxn278LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBWHg3tV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D2C3C19421;
	Tue,  6 Jan 2026 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707923;
	bh=TNQJ8GaqkgTDWVK0btTdPCAS1etTpnV7orHQ8Z9rE94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SBWHg3tVcFDVNcR/JVfyb7y+JanrqHVaeAs2Mqo9Rgzbn6qYm9YgymljId+swuD73
	 bMyWdzvrd6D2vHaCk1mSAKrQviIE4ENnWEUXKOz3YUpyREWJ31IAYPyYPSSXzrsWap
	 whCBG2CjIFEe3bgzvNzQ4AqVEBY1E03KpOp5GJeeoM7gN7ZEeIWabeZnWg83XKi/5E
	 QetRpd7IfmB108SyI0LBZeWQgnRw+IV/VFuMEaaImySvW41BU58WxnrgDiDAz9qkVe
	 +TvMnhLHFkK6xd2otR/dgjcbzsDLdNKP9xxmSlQoHYwT0aPCxEAwVAP8szKrWM5luI
	 C07bV8s6dkUCw==
Date: Tue, 6 Jan 2026 14:58:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 06/15] man/man3type/dev_t.3type: HISTORY: Update first
 POSIX appearance of dev_t(3type)
Message-ID: <aV0VBwXMvoaZ4cD7@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <2bb3f33e65b7e287ea61dc201e249beb692b6001.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sshd6l7tka2c3jvj"
Content-Disposition: inline
In-Reply-To: <2bb3f33e65b7e287ea61dc201e249beb692b6001.1767675322.git.sethmcmail@pm.me>


--sshd6l7tka2c3jvj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 06/15] man/man3type/dev_t.3type: HISTORY: Update first
 POSIX appearance of dev_t(3type)
Message-ID: <aV0VBwXMvoaZ4cD7@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <2bb3f33e65b7e287ea61dc201e249beb692b6001.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <2bb3f33e65b7e287ea61dc201e249beb692b6001.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:55PM +1000, Seth McDonald wrote:
> dev_t(3type) first appeared in POSIX.1-1988.[1]
>=20
> [1] IEEE Std 1003.1-1988, Table 2-1 "Primitive System Data Types".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/dev_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/dev_t.3type b/man/man3type/dev_t.3type
> index 398e6f953015..3bcebcd16191 100644
> --- a/man/man3type/dev_t.3type
> +++ b/man/man3type/dev_t.3type
> @@ -22,7 +22,7 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001.
> +POSIX.1-1988.
>  .SH NOTES
>  The following header also provides this type:
>  .IR <sys/stat.h> .
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--sshd6l7tka2c3jvj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFRAACgkQ64mZXMKQ
wqmTpA/6AlXghu6P8+RmLYT6nz7n8bDDorOvwknBBXepo+B1m4psZBG6oBhCr9DI
vdal9IjH+qbAap0JO5l/NYRk+cWbnEBeLCcaa/4hq25lKlhUlg6wmmWxShlctV8/
dfcsB0fa0O66TkBPZpCxVcJJka8pVylGwoM38c+eOtt4YD53muEO2D5Pdd/UFkLU
LUSAn7ysgUxsjZEQQsXRMvE8rK/cCBH8eGi5sHIy6piVyAp2qA0cuJEhmSe/K5Lv
HirKWZfNXNClrZ4RZM1io43Iqv/opRWK+O3gOL1bUYAFE+ebnqan45r1COWm9dlx
UEjlL5lhxWSXRSelm8iYIEj8VagJlXB+ScCNSghyfho7nYys7rQrMrLMw0FDKoHc
NKCEIlKpXBj4GIWfRkchGigv5QvueyzqEfkWSjzwahvIrVu8T9WiNp2Wd3W0ozui
RoYAtQDqnfoQtB3CI8MGFgt4AHcMsLDY1PzFppQ5Zr100ZjQ8F0w8ppL6nGWffWf
IuEd1yqx2fKt0Z9Xcyuke1dYo7ddRCl0TTROKrDmMjEvPh6PoYF0rLtVcAb+d2/B
VS2241VUk1+RmCh3VaSf3qcvPUfkwGoX/u4qnQFKsXG0NcpXZRVcUXrdg8tugb++
FXM5hT8StB0tctjHelJqTS0gRc92Q4/4AS7qSI0IFlTgS2uGcLc=
=9Skm
-----END PGP SIGNATURE-----

--sshd6l7tka2c3jvj--

