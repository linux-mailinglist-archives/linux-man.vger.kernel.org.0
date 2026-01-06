Return-Path: <linux-man+bounces-4693-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B931CF8BA5
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81EAA3039846
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071082FCBE3;
	Tue,  6 Jan 2026 14:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Py91rYOW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F7A25DB0D
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767709083; cv=none; b=fCr4e5HAnYbcpCwTx1zAEcIhWMiiB4nL633Pty9o3p0pLbYt/yjLcNNAXniH3cRVlbrkOIaDBWkvrdasevrOC4LGtqRMeZrotWdf2Pa7tws15Zy8XGQiMuPbu/bhT6kFlIPgDbrtOTk2uCpfKYo0pwVVCLe4UIZ8hK3C5NY7+cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767709083; c=relaxed/simple;
	bh=DYkdJKJtUNM9YCDn0qWJC0bQdgNqAWfSgMTnoinO7WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i2I9Add3zctDpe7O8nxOh8SVLBidGZ1w8mX6ZoFR9gb8IWVRRgEY08yNUarKNwbq6Jg0Vjh1bO1ZDLLn/tAdQw3wAGsLSXB9SsYLRnBkYUE/G7vbaeu4V3pY3b1DhGg0qrGl3HpILqEtZUedUbDmdBtGO7KkoUjbcwA14hQYiyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Py91rYOW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6FF5C16AAE;
	Tue,  6 Jan 2026 14:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767709083;
	bh=DYkdJKJtUNM9YCDn0qWJC0bQdgNqAWfSgMTnoinO7WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Py91rYOW96n9fQGxchnfqwFmD9OOafQAw+MPAL9q5PaxealtWJPRdtzvJmpJUr5qZ
	 u57rjfCFPIT4s9+2Uwgw+bQ62jN5ac+rXIRqT8yCou7vZ98RjgK+MQtN9CL7O16SY2
	 0kdaPKEtyi1LdUzcQSNshXVxhLUFtBvF7A4xWFCD0n2qh0YhVdIVqKe2QLfQgCbJvJ
	 X0zKcf7nxh7fJewM5FzivhEplqHCnN2pIh/bVeYuITa5BMCmElvvcNbHEcqrMEzI/U
	 IHcVi9g3cwvMtL3V7+lN4BSiq7wPRr+re0NAFmQkwtzFlgyP34VPS4Zn++yeYWdGJb
	 Tn0LuLJKNEtzQ==
Date: Tue, 6 Jan 2026 15:17:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 15/15] man/man3type/intN_t.3type: HISTORY: Update
 first SUS appearance of [u]intN_t(3type)
Message-ID: <aV0ZjwsyR9oSGq34@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <43f013547fbef4530f3338e0f7cb2806fe6507cf.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wjwwljhdttk3bf3j"
Content-Disposition: inline
In-Reply-To: <43f013547fbef4530f3338e0f7cb2806fe6507cf.1767675322.git.sethmcmail@pm.me>


--wjwwljhdttk3bf3j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 15/15] man/man3type/intN_t.3type: HISTORY: Update
 first SUS appearance of [u]intN_t(3type)
Message-ID: <aV0ZjwsyR9oSGq34@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <43f013547fbef4530f3338e0f7cb2806fe6507cf.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <43f013547fbef4530f3338e0f7cb2806fe6507cf.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:08:04PM +1000, Seth McDonald wrote:
> The [u]intN_t(3type) types, for N =E2=88=88 {8,16,32,64}, first appeared =
in
> SUSv2 under the <inttypes.h> header.[1]
>=20
> [1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
> "Headers", p. 1089.
> <https://pubs.opengroup.org/onlinepubs/7908799/xsh/inttypes.h.html>
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Thanks; applied.

> ---
>  man/man3type/intN_t.3type | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man/man3type/intN_t.3type b/man/man3type/intN_t.3type
> index 5078d0040cfd..8f13bef4f905 100644
> --- a/man/man3type/intN_t.3type
> +++ b/man/man3type/intN_t.3type
> @@ -159,6 +159,7 @@ .SH HISTORY
>  .TP
>  .RI [ u ] int N _t
>  C99,
> +SUSv2,
>  POSIX.1-2001.
>  .TP
>  .RB [ U ] INT \f[I]N\f[] _MAX
> @@ -171,6 +172,15 @@ .SH HISTORY
>  The
>  .RB [ U ] INT \f[I]N\f[] _WIDTH
>  macros were added in C23.
> +.P
> +Initially, SUSv2 did not include
> +.I <stdint.h>
> +as a standard header.
> +The
> +.RI [ u ] int N _t
> +types were instead defined in
> +.IR <inttypes.h> .
> +This was remedied in POSIX.1-2001.
>  .SH NOTES
>  The following header also provides these types:
>  .IR <inttypes.h> .
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--wjwwljhdttk3bf3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldGZcACgkQ64mZXMKQ
wqlmdA/+OsL1+s4moXocqZqtglXOIROQ0Vm1ILzFv55rBtCi9PBv1mndD3v8P+u7
7+FRN+rFAGhkJ2LXZi7Mp+Rb4zbJFUeTqwKpWMq9a8wC4HN/dRcLuj8NAfo+MK3u
mGnMgPnTzjtO2YSY+WEv2eQL8nPP1UqOxpMbz8y7J5bhD7inJYXL1VH2PL/MjkbF
zWQERrcF88L/eNGDjusLxJeeuIEBKdWX8sp11vomMtP/TLZF55uVQAbDz5yZol9K
pv4yNw76NHnpENqMSCd0QI/LyyGHPT+iVDRt2bDJY4APRyDk+RKu7eeMW6BfMMfo
3NNHotTNWuUbRBd6xQYAwjIxsTrarK7FK1SxyNxNP4IyWZPb6U+EI54v5Ext9sP/
USMFUMKeb5i5/Y28wt5Y/OKi6oFarIa4xzJ+ThbmrK+na4LahcAswdYYRpriIDCD
j+5XANXQRSP8bsyZTD5hhncE88yMm+mpjGFtf5JOhF2M5S+M3AEefdaAd3qDArth
IvBPZD/o2/BFcy8avLO1w/9FJlkwO/zHVeeg3cIF4QByY4NIwM9f05SFTFp3kPOX
DU3m4QMhPfVXSr1ArZd/7PZLbMzZjL+K07qMv2WbUUduNfZkhe9vf3TplYUmnt5x
7zelYwbc7GzrxYzLep0WF8p8P6BbbjBBYGf6fLTEO/h1YkBv0TM=
=/oH5
-----END PGP SIGNATURE-----

--wjwwljhdttk3bf3j--

