Return-Path: <linux-man+bounces-4684-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C7FCF8B02
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95D23312AC10
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA5A313E27;
	Tue,  6 Jan 2026 13:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EC55bVlZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982A5313521
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707875; cv=none; b=OGiHJx+31ejSWmW9pLRoy044QsX8RJRYlYjqQqpHzsyqc0qb4ZeIGUlQtiKzewZHsne5FnLkig5fyQS3nluHB1IqXekWVSDUGeVg7j6Mhu4NbZMCLsZ/N682xim57oS/Q9wwZNuJA6C+YLH4bvMGdENVB9URdNJSETtVeYMw1HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707875; c=relaxed/simple;
	bh=vYEEz+CCCrxghpTwZFpw565SEgV6u0N1y61HFWKipH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S/LB/heWezBNT7naP4DaxelIYwwflPXZmyJQPJwD1gv9LLgm0gjXKLE3y9pvqkoW33TDnOAiGPZBQAVGgKFvD8YBamb2WcEV62iZKUa3nACs56kAJ6zuCSldjA6RglCqkbReHTAmZvxkNGRBGa1diFxky7t+jZHMxx8RzRPRjbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EC55bVlZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7741AC116C6;
	Tue,  6 Jan 2026 13:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707875;
	bh=vYEEz+CCCrxghpTwZFpw565SEgV6u0N1y61HFWKipH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EC55bVlZzECyuzWCuGvGu/dwx7sBgGS5B3wQK5n0m/ZT1qs9Jdtit2EvLuff6gp5l
	 MacY0juSO22h0snLWcXpIBUT1RdQtJEi+nnuiUNAUm5iNlJFNddoIVeDyLA2jB56ii
	 DL22eBXKjZIhmvejf3Yx7e0+j9262RGs01Hp2pl6Hf+DECgjRaDoYhx+cBeKex08UP
	 u9kbX9ZAMBla5SYQKdRsCQgR5N6Hu6sF7N78WxxTAEhvJN8wXtbCTsnGhgeA+qct8I
	 EEk1B0vLyIthcqEiChhWiFUeGVVmNZxSYuA3Rc+yGPOmgnUNpf5YazIgoK9iTudmMe
	 Wtuyiru/cmiEA==
Date: Tue, 6 Jan 2026 14:57:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 04/15] man/man3type/clockid_t.3type: HISTORY: Update
 first POSIX appearance of clockid_t(3type)
Message-ID: <aV0U2P7Vs_dR9jET@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <75786342c4cc274d71568aa7e5f47f9976ec8c41.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lkejxutikjz7cj5t"
Content-Disposition: inline
In-Reply-To: <75786342c4cc274d71568aa7e5f47f9976ec8c41.1767675322.git.sethmcmail@pm.me>


--lkejxutikjz7cj5t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 04/15] man/man3type/clockid_t.3type: HISTORY: Update
 first POSIX appearance of clockid_t(3type)
Message-ID: <aV0U2P7Vs_dR9jET@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <75786342c4cc274d71568aa7e5f47f9976ec8c41.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <75786342c4cc274d71568aa7e5f47f9976ec8c41.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:53PM +1000, Seth McDonald wrote:
> clockid_t(3type) first appeared in POSIX.1-1996.[1]
>=20
> [1] ISO/IEC 9945-1:1996, Section 14.1.3 "Type Definitions".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/clockid_t.3type | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/clockid_t.3type b/man/man3type/clockid_t.3type
> index fc44444508f2..62d20c65a5ad 100644
> --- a/man/man3type/clockid_t.3type
> +++ b/man/man3type/clockid_t.3type
> @@ -20,7 +20,7 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001.
> +POSIX.1-1996.
>  .SH NOTES
>  The following header also provides this type:
>  .IR <time.h> .
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--lkejxutikjz7cj5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFOAACgkQ64mZXMKQ
wqm58Q/+PSkTda93VNHnzQzUcAgEc6VmrITmAPZlBlpEElm5mnCsF2gFlbefbGX0
XvzIDA8ev4FosH15zqfbco//gaQdsTx9LpXYratDUo+NUXDpBRDWaFFHwdAxcEPz
Eeu4bwXoDonpsDj1ynKzpbfsj2gISqaMb1hKUGXQoGg52yUpwUb49oln0nWBp8t5
miYkDNphgF/3PD0NS6l3f+oOUIK4ULFtRvqt/FIKtTImWlaauEMnnK2//PHTz+a2
Qrl5IcXnILTU0+/44ikSH+VWxE5ha/GveeehmEx72rcC9WO6TutKwBhU/haL+XQf
U1CCm1y/nL6Xtaum/xWZisfHF7uz76E2hPKoF+cS0IA3nB3l5UaNdrUrjCJlV469
OK6w/laq/x/nbC99KjlEvmRx9xN/EVWtduwiODMMZhY1ojT+N37Dfz2HReubV78O
1uXvFQq5FXS3GzLN+g/yQf/OdQNVpUnQl6C8nmpyYx48Jg5SD7iJwekowKU8FNI9
IG3WfZlI9V53NM8MXTLXn6ZXFzbwO+WfDzVOkd3yxaES9qr3x1hEMxUJ+2EyfD6I
tEECZ45itOI+z3LqX1klVKkdzCWXA2fkxOkQjKXX5UmwzbgOTUbEQfyA+p7yydHx
ziVia0N1fKPfJoKNs9vIPhgqpuR0s3EbUFMoUWWMdvk8AWU0t40=
=hma7
-----END PGP SIGNATURE-----

--lkejxutikjz7cj5t--

