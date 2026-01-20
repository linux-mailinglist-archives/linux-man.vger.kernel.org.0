Return-Path: <linux-man+bounces-4854-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2643D3BCCF
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 02:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 266023004182
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 01:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7561EFF93;
	Tue, 20 Jan 2026 01:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sohtG8xt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03A71D5CD1
	for <linux-man@vger.kernel.org>; Tue, 20 Jan 2026 01:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872110; cv=none; b=b8yARmdu8SW8yXgjgHxXj2+nLHGHqo+j/j+YW05JlY2UCSqytGJBN5hPXQlTRjDqGS55DsboGy8lPe4rrgpWk43QP01nDcir43PZkIIZFt7KM71Ru7nvmTMadUhLU8PAvBAHsXi/H1aRCEozEUbzPjwkWCaaCQdyCj8dlkmQues=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872110; c=relaxed/simple;
	bh=ojNpv0yG0ZabmDmX71VcZ3CHWOz0Xs/tDJq8YSpJfoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KGAsPiti/cZNy8InBT+tuYwsytKYJjgBkYCBaZXp9JT3TPrT3lraqRELBqNWAiZrdna0IvSFSC/zObdxwfIBLBFV7V0FEPL4E6vDFYPS9hNohQ/EyZWPjE8zjz+vGhMmuIqiG3aW+p/blOs/0dJqrwpzzr7zEeiv5vTcGRyNAE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sohtG8xt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A883FC116C6;
	Tue, 20 Jan 2026 01:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768872110;
	bh=ojNpv0yG0ZabmDmX71VcZ3CHWOz0Xs/tDJq8YSpJfoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sohtG8xtRv0hl57hjMGPqBLq+IPheCYzS4+OLGPVUsV60D9BI6U5nBgiOiQHpRCeF
	 ydCxeAA4rsHZSbja6GbQ51r7l+bFF0A1TaXHKdKnWtiNvIh3EpmxbY99ws506IXvkN
	 KK1O01IbB6/JA+EfMVTrmPPLmSqpgMYgmsmWtQgUxZ0xu7ujhGJQY5FEoZfXN6VYzh
	 jKJ6mK5YchuvLkvET2LhLLefAPXjAANV0aGrIjf9fnclPM1dMQpBj+85lQQOkPIsaK
	 qB1Ghk+qhc+kKYcrTiYwI8tkY3qUYk0Oz9m0xk8dfu/wN7Ds78XhN6zkJwSrH7hbj4
	 gTrD1EvJ5sTdg==
Date: Tue, 20 Jan 2026 02:21:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man3type/time_t.3type: HISTORY: wfix
Message-ID: <aW7YlhnV7E9TmnuW@devuan>
References: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="czqsel2lfx5pqzl3"
Content-Disposition: inline
In-Reply-To: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>


--czqsel2lfx5pqzl3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man3type/time_t.3type: HISTORY: wfix
Message-ID: <aW7YlhnV7E9TmnuW@devuan>
References: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <0e6949ff808556cd8632520603fb2c030b7a5215.1768804942.git.sethmcmail@pm.me>

Hi Seth,

On Mon, Jan 19, 2026 at 06:57:08AM +0000, Seth McDonald wrote:
> There are two more lines which were part of the paragraph that the
> listed commit removed.  On their own, they do not form a complete
> sentence.  So remove the missed two lines.
>=20
> Fixes: b32b8934dd19 (2026-01-18; "man/man3type/time_t.3type: HISTORY: Rem=
ove superfluous theoretical history")
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Oops!  Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man3type/time_t.3type | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/man/man3type/time_t.3type b/man/man3type/time_t.3type
> index 18e8f7be0e4d..08eb4198501c 100644
> --- a/man/man3type/time_t.3type
> +++ b/man/man3type/time_t.3type
> @@ -71,8 +71,6 @@ .SS Header files
>  .I time_t
>  since POSIX.1-2008.
>  .SS time_t
> -In POSIX.1-2001,
> -.I time_t
>  POSIX.1-2024 requires that the width of
>  .I time_t
>  is at least 64 bits;
>=20
> Range-diff against v0:
> -:  ------------ > 1:  0e6949ff8085 man/man3type/time_t.3type: HISTORY: w=
fix
>=20
> base-commit: 91fa6d909b1171bc2361b5b2192c11c8be06a7d1
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--czqsel2lfx5pqzl3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlu2KsACgkQ64mZXMKQ
wqkHoRAAlJLERYGhnRyVA0AUjqVD56e+ywbFJm4kr0qytn1uu3yZGFZdQ2XEeqrU
DO9yhajVDj9UkuQ2ZrNNkpXTlkDW1P3KkNghO0nzpl1Ca6L/nf2aQznXNh5RRDCy
qPsk/u2qro9wLACPNfn7ygxKE4TgW64Q5a/dJXpNMf4TGRhcjC7RT979BfhFfuye
A21UAvXHHZ09aBW+BpR0+OCwTTIT3CO1DddnG9Y5ripczVxzIlf0hhQWuSA2/EOg
6KkVjDUzwN+Z4yMCVjYzUKllZ1H/TMuQvqpLD2tQwv3cc7VuiJQSBKLtPAQNvBQ3
DvnCuEDEvwKpDspeEwBiUFFrzfOp4FRhgtODn2v6ePOl2Bi3ev9Nr9xk8ExXmbtF
AJJAvB2Vw5PRpzwZn8Hnv/kOMa+QQescwrW1wxfIQV6y+yGC7pFaHDI1o3PNGI3t
yVm9YYuA8ljwPQveU3EvsrY3M52O2iQFoOebKWfCa5/z10KwcYeXUku1UPHEn0b5
sscpeqcNAclY+dJpwvxiLn7+TcR6dyntFN+ZYdlbEXHeHc4iWhTd1NHBrNBpE4Qs
5r2XtZbnVDuXqCWIYoJPqkdZiCPzlE5vatHe5R0mfmkwUiRxbcqp5pVK2NhqFdRy
eoKyX3JAHPAYMSv8AotkLqSa2FW5MhBqsSt60GB/1gR+iekaP7g=
=D4IX
-----END PGP SIGNATURE-----

--czqsel2lfx5pqzl3--

