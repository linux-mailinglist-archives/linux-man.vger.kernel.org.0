Return-Path: <linux-man+bounces-4689-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 893BFCF8B44
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46F633061B21
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130C61E5724;
	Tue,  6 Jan 2026 14:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egCuhZq+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F2F1DEFE0
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767708440; cv=none; b=lJMomh8CXt/hBXRhSWAwnDAEZ3pYV67+mgWJYa2v/Nr9SK+YUHwhs67BPyo5h0/TLzYwNh/eBcImq5plqbaMwkEuv6JlF1oapwImBqO9wofRm3z8VX/HmvBCJFMP1y7pCBJGieoO2o+2eHV1Rn0BkYKcKwoTWnKm0XEDKP+oQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767708440; c=relaxed/simple;
	bh=gXBw3qHymHzVVkHzfcbPsZHVhBerBY4EBlqc94nF0As=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XMZ5c29ZznWXj4t/U2TyX4qY0yM6aY/VaVwGlf0SCM5PgjAeM1w71HjLWVNiWo+nCKz70PPxzyqhgFvvW2K4bljfiwJzw65uCYqL3fRXzgkc2QUPXURD3UKYxbB1E8nZlwxWivCKmRUHsXKt/7HYsuEfK0QXtqIsUf0uXLIgB9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egCuhZq+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6DDDC116C6;
	Tue,  6 Jan 2026 14:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767708440;
	bh=gXBw3qHymHzVVkHzfcbPsZHVhBerBY4EBlqc94nF0As=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=egCuhZq+2xHsIY1Omw0cQ2tMXD82bkhqszu6msEqqjr91vOkIVKQqx2Ffg0xX7cyA
	 WCRuK44Xqy9EWsdo4EmVhkk9ZeLGj6RruFcBxZPg+89WNNU4Gt33XCXvKX3T1qHsoF
	 wwBa/NyUtt3/q23LpGfl72se23zp/jZ40ZaXcc5DcRvDLwDSAAU82ROnfRcQ7xUB2R
	 TA+h5jjUsP0X4OlhKclWEvi8CZIzzKJW0K5I68MPmWA87r2xgE7780dp2RAXLyKYkJ
	 DYEaa5mncZcWQ8WiFsWc0YoOsCXX5iMr3j0DqbFptqGK1OpZV4ftdS1AF/yw4KBGVJ
	 03HxugRsbgnnA==
Date: Tue, 6 Jan 2026 15:07:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 10/15] man/man3type/id_t.3type: HISTORY: Split
 id_t(3type) from [pug]id_t(3type)
Message-ID: <aV0XDYzQ2Aj7InVn@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <18896b1be985fc76d94ade5d22077c6a413fc97f.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p67kjs3lv44whmdg"
Content-Disposition: inline
In-Reply-To: <18896b1be985fc76d94ade5d22077c6a413fc97f.1767675322.git.sethmcmail@pm.me>


--p67kjs3lv44whmdg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 10/15] man/man3type/id_t.3type: HISTORY: Split
 id_t(3type) from [pug]id_t(3type)
Message-ID: <aV0XDYzQ2Aj7InVn@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <18896b1be985fc76d94ade5d22077c6a413fc97f.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <18896b1be985fc76d94ade5d22077c6a413fc97f.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:59PM +1000, Seth McDonald wrote:
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/id_t.3type | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
> index 6b17320d96d3..34ea0029b5de 100644
> --- a/man/man3type/id_t.3type
> +++ b/man/man3type/id_t.3type
> @@ -40,6 +40,15 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> +.TP
> +.I pid_t
> +.TQ
> +.I uid_t
> +.TQ
> +.I gid_t
> +POSIX.1-2001.
> +.TP
> +.I id_t
>  POSIX.1-2001.
>  .SH NOTES
>  The following headers also provide
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--p67kjs3lv44whmdg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFxUACgkQ64mZXMKQ
wqkUSQ//WTTPSLUiBzzc2SxRPCIu0dNHUS7D8HhgEGAsDlgTp/adCw3Mq3CNWbRS
bZBSb5y53xgEKPb+wZfR3cKT688SsZoH+W16bw+6W/eL34C4yjp96CbM/Vm2ovkm
OTRwndNKe9Fg4K2eFdXcW24fJ1XGsNHP4MzOFm5tNkYCl8eHBkhVi8JTS7GOgGqm
2RHveurBD2BIHSJ+1A0PwTr22hSJhJTbOMJLRZszNIVdFbkLK1fyBFyAdXzDXgDm
zIO3x6nSGEQj4djUzuvv7Q+8K4oomOi+mp2a7eYp+8SnMPRcQKqCQJpHtHjqlfN7
nv+7pc5AMboMax3ERJOpQ/aOWD/pPqStAv5iXb4fW5z0bgtZjFNfcAJCtIhJif/k
EpytHDROX12pgGreETOv3dQUuIeuYLMyi3fROO4GUoI5CQPxTGYWXAJpakcQOuLP
3JRUe+uiDXOFzYxy1C1E/4fDzGuyHNWq5CjMKc+PmBIIi2QN7rDWIWHJHakzMC8F
TvbqSwZM18e3VsDSMbxRT6+mhZbW9XYJhf4KNoQQqVhTOQaqIxdIlwUgp5BPm5BG
JAXlcgHxkqV1GtffwKZCb9XGvFSmrndjGiO9Wx4AQCLkohcAF9HZCbuUOn4SOBup
TZluS9EnZ2ecVffbjt0SIb83Fv9AYYPTya+o5T53U57IGEXgKZw=
=U4SY
-----END PGP SIGNATURE-----

--p67kjs3lv44whmdg--

