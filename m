Return-Path: <linux-man+bounces-4372-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A71ACAB650
	for <lists+linux-man@lfdr.de>; Sun, 07 Dec 2025 16:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A1393011A5B
	for <lists+linux-man@lfdr.de>; Sun,  7 Dec 2025 14:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C68B2F3C28;
	Sun,  7 Dec 2025 14:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYRanBpN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D1C2D948D
	for <linux-man@vger.kernel.org>; Sun,  7 Dec 2025 14:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765119592; cv=none; b=lYqAUXbwPQGwVisteCOaW/A9Qv7IB1bLP6vV0rPQfe/V+3VbDqxkZM90hsRJVDqgtXDx4vMgnJNGuz0rKPo2SFpP/5wYWtlJc5bujHpsgdoxVda+bpZ8X7g7c/jwWEV43RAJMinFFLlIPJb3IBAS+iFOM3rxqqCTlEvbC8liZn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765119592; c=relaxed/simple;
	bh=MIjZPfuIeccPzRCWd0gidB+/96iZYwLQWqMtwyW1YIU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TsheWByxB4Ocx4GhkV+QZbif0/IjlEPOzizjiJwKrOHoYM+BQApE2zs80PiMhaN2dLE40MzwGV4f/8qdZy/LiEe5s2btq/2NyYixMA0XjT1BolR2ibskmi8YBFAmsDQshiWCzx8xodehCasCFRGCtUKHiMMZlTBZCKy6YF6upKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYRanBpN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FCF7C4CEFB;
	Sun,  7 Dec 2025 14:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765119590;
	bh=MIjZPfuIeccPzRCWd0gidB+/96iZYwLQWqMtwyW1YIU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tYRanBpNdw2dFQ480sgt9Z/9hbO82EDDv4uEoO3/3Vxo+wJhoq6fHcE6y/dyX7oD5
	 jDGb9YofAxoUO6yrrcqBg/Gj46XqQOA4VhPkmzYbGi1bheZQOiPoawasUIw/sN/Puv
	 MZi0+kRkhdmBkSSNM/aMA2ewp0scwFEwMHAHn22gpflbdchesh304EiPoN5TcyU8dk
	 7rYHA3tW1rBGdZgeKI6aUc82DHMQVToZ+0TldKk06mZjUndQcLbeeD6wmLDVRFeMpf
	 f+kATXQCk8lRYtyqygGYKbpRAopjcjNb2OZ9vp7ELSdPGtjpmQfbmiN2K3yErN4hT8
	 q2H6M9GlgXrZQ==
Date: Sun, 7 Dec 2025 15:59:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Assist getopt_long() users
Message-ID: <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>
References: <20251207144603.o7yh2azgezbfzpjd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eu25oro4r5alkefp"
Content-Disposition: inline
In-Reply-To: <20251207144603.o7yh2azgezbfzpjd@illithid>


--eu25oro4r5alkefp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Assist getopt_long() users
Message-ID: <club67esr5i6tpohvauzkypakplgezuu473aifcdythtprkp5w@4ii762icgldt>
References: <20251207144603.o7yh2azgezbfzpjd@illithid>
MIME-Version: 1.0
In-Reply-To: <20251207144603.o7yh2azgezbfzpjd@illithid>

Hi Branden,

On Sun, Dec 07, 2025 at 08:46:03AM -0600, G. Branden Robinson wrote:
> Throw a bone to users of this function who need to report (in a
> diagnostic message, for instance) the identity of an invalid long option
> name.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man3/getopt.3 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index 8495719af..432ea1252 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -300,6 +300,12 @@ .SS getopt_long() and getopt_long_only()
>  points to a variable which is set to the index of the long option relati=
ve to
>  .IR longopts .
>  .P
> +Its analogue to
> +.BR getopt ()'s
> +.I optopt
> +is
> +.RI \[lq] "argv[(optind \- 1)]" \[rq].
> +.P

Ughhh, this page is too crowded already.  I'll split the _long* variants
into their own separate page.

I'll ping you once that's done, so that you can rebase this patch.


Have a lovely day!
Alex

>  .BR getopt_long_only ()
>  is like
>  .BR getopt_long (),
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es>

--eu25oro4r5alkefp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk1lmMACgkQ64mZXMKQ
wqlB0A/+Ohn3qieshYKKTg09ynlPVX8BQxZ62aFfidFaCPVxi12c1cr+URdPMGas
tQZx7/Q6i55IRvNPRi3StvYg4ActDL0uD8RWkYrGE0LA+M6Ml4SEU3aElpV9pwOP
5XQx0+vT+YX8uob1uriNf3Y+vJVWBnJ9j5N3eszceoQVQiMshYggbZCGDibOKA4v
kVHiOMZUawjy0rwT8vR/fLiqUEWFG9uTSA4x7Vp7M1alvnbnBnta/FOrYqnupvlz
PYQZzD0WfuMu4g29skPgljE1JoKcq9MzBLmaQdKZqSUq8JhEnQJxvpIMemUJw0Zk
Fdk8BrwlBWeB4g/61/xQSJgIuzuU3t0/PigAbrBCRgAHnv62HKnC4NSeBKY3R2ek
FP9HBcXx+drwHby/X33Pf3gew1Bla+sn+IKB2ggAdTttZ3ixJIUoYaXcYRu4QcXh
xAYdm5HLcpzj/s/XF/YdtFWzatNa3nj1+mRBFBy1b1wDWdjk/WRVPWmAJ3J98cXC
R9o3lCfIH4igizT/3KcS4gEGEis9VqvibsdNNMHaN77OsreqdxkDtcKbxgBrYq9J
b+rK+I+5bMshfLc/9D7Pg0IQcHOwiN8kxYiaGrG/qxpT2vUFIYVQ5CzJZ5ubs3qb
pvOaApMSkE1SzqaEmTFIYedVsSNSu6jf6AbFei7QQLJus1y9cmQ=
=h9WY
-----END PGP SIGNATURE-----

--eu25oro4r5alkefp--

