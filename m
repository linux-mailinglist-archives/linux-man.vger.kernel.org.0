Return-Path: <linux-man+bounces-1761-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE2E96758B
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 10:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 457AA1C20E9C
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 08:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16C25FEE6;
	Sun,  1 Sep 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2jj8gc4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E6326AF6
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725178703; cv=none; b=IdouSPFk/D01+cEzYmrgR6VrMxAj0DFWmomN/u9Aym8+INwoDQqhmU0g2hx0dXtfYupQnVsvau/sTtf8GCc1IInUteyabUY6nLAQ8FPi6teKCNhWCpTsw6wj+P5Vp+m7/4xHku54vXeEuSpghSr0gGbT2vQ0drGzk0XHXR8tqrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725178703; c=relaxed/simple;
	bh=wib0k3vu3umY5cHFjwGHigNriVUWWALs3wOpQohNXfI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QELv2A6usX5uyTvClqZk6Y+ksm8BPIQ8AKm4z2fN2NlhBMTDqDS3b9+dUp4K9jXsAqjjDz1mcw4fyX2ZhdoS73Gd+STRK5zrH4OD8q89fM/MdZPQv7UuVFm2SEov/KBZelx4+EuIGY9bbFAF7Io9c1aYwbuN04mnwZ9BQyzKeVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2jj8gc4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4C1C4CEC3;
	Sun,  1 Sep 2024 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725178703;
	bh=wib0k3vu3umY5cHFjwGHigNriVUWWALs3wOpQohNXfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C2jj8gc43eGKhDFXfwdXDFM73nTNYFASCIeKoBV4EOE32RoVgR+0NCaDXdNyFpqXi
	 Ebw9wfDtuF2+rVTcQcVjvblJm3GktLy7cZPgztpJjMPTLr7mL9/IHjYnfrn/5HSxn0
	 Rbi+rk7TjNIJLep+rdoRgQUJ3KmUOstNhxXYE3JTeDIEhouvXOBjYUHidvIT/HZ6uK
	 /647J1ijwurRTw+kJVmpqWQN/bVK+XnlhXB6/Q5DS/WXfaUTq8bEDBCxehr5JDxfkY
	 lVQ/P44cf7y0hGUtTcp5ignPy8TuWR+l5f7pBQ6GvJVxW6Ntf5VPF8ouc5Ac158Vcw
	 2vp5F5CYgJWRA==
Date: Sun, 1 Sep 2024 10:18:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 01/10] namespaces.7: ffix
Message-ID: <w5hozxv36mkgqsntyitcgfm7y2s7rzehkqbhmyko6c6yy6vsae@eaublrushpbx>
References: <20240901032453.3dmhjz7urk2saizq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ehcq6hpnmkfa3p6h"
Content-Disposition: inline
In-Reply-To: <20240901032453.3dmhjz7urk2saizq@illithid>


--ehcq6hpnmkfa3p6h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 01/10] namespaces.7: ffix
References: <20240901032453.3dmhjz7urk2saizq@illithid>
MIME-Version: 1.0
In-Reply-To: <20240901032453.3dmhjz7urk2saizq@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 10:24:53PM GMT, G. Branden Robinson wrote:
> Put a paragraph break above the table to ensure separation from the
> preceding paragraph with the man(7) macros from groff >=3D 1.23 and
> forthcoming mandoc(1) release.
>=20
> See <https://cvsweb.bsd.lv/mandoc/man_term.c?rev=3D1.241\
> &content-type=3Dtext/x-cvsweb-markup>.

I've reformatted the commit message, and applied the patch.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dad47f4823cb8e0ea0f4eefef26bac2424572834b>

Cheers,
Alex

>=20
> Draw a horizontal rule under the column headings.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man7/namespaces.7 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
> index cf3436f09..5d19d004c 100644
> --- a/man/man7/namespaces.7
> +++ b/man/man7/namespaces.7
> @@ -29,10 +29,12 @@ .SS Namespace types
>  on the namespace type.
>  The last column is a summary of the resources that are isolated by
>  the namespace type.
> +.P
>  .TS
>  lB lB lB      lB
>  l  lB lw(21n) lx.
>  Namespace	Flag	Page	Isolates
> +_
>  Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
>  Cgroup root directory
>  T}
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--ehcq6hpnmkfa3p6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbUI0wACgkQnowa+77/
2zJO3A/+PSkfQ7oC0xtYcu3qvTZLXa6KA4/wPgQHErZRimYaZjUwVZ0ScD/mbCj8
zkWs/ZV3o52eFdKTXjDnmO8NPJsho2WDEAcGNjqYlHawwcdjXeF67R9wHSYxVm0h
pGuVX04AUvq84BqfdW3ZdDz+oD2p142GeagrOCAg8V9K1/WfzKo9Zh31+tkNgJB+
r1x8eZWOidizYjakB1U8LYmnv1eNTFwX3DSY9ZrTohXoq7GlkDcaEzPMgOuWLW8/
r2b98dblzQcnO0PS/Uop95HY+15AGoORDR+N7DbLyZhW4CVcfWlXzwsF/UFwVVSb
6TaM7/I4OWq/NtFxZ5SSXOp3KCF1xc0YPt7S0Okgh8L3fg4lsm+nd8Cg4+cHeOHQ
SkkyJ2WHBmRKUOoRml13zk3CWc3tWR9cDDDlWR/bfgkucpdYyiMDAY4inpAINtvF
NtVFvkmr43Kl0HPUI/tkBLul8WgpofsB7T8npajnkhDRlnXiWUWtZoopqVQiX5yG
LcgG2oTkCwcPCRDvXh6L4a+UWKdxhZwViss9kuE2+hbFVGl333yhfIrwQmpMFYXK
pCLryH2t4dmDfdqqHU9FFU4QPtOHXXHsnTJhbEyMKouN2grq8b6HCEfn/l79tqP3
o5p8f8xbSo2IYFmrbNW8j9htc2Oijbuq3dmrrrLI02vpYf2xJG8=
=WgGD
-----END PGP SIGNATURE-----

--ehcq6hpnmkfa3p6h--

