Return-Path: <linux-man+bounces-4640-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47975CF511E
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 202103023D0C
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AB833F391;
	Mon,  5 Jan 2026 17:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtXpgkrQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080F332F77B
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635349; cv=none; b=uvQrolv8Ac36iZ4Z2ytO8igCy3jYJMckmAp70wuu/ojH7uFK7scCJvqPHTHo+f6FOLNwq4FSz5E1tm+XUSZ7EvKv4jqpNaqML+oCx0ffKCUplcDp0O5TwRSlGkxx/NNytEuKYF23fPLvLPSjbtwvCY9fKAkFT2o9Ez1GmvhC5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635349; c=relaxed/simple;
	bh=X45ThILFl3AFeFsZdwUpiaWYxYuUdv0+jDTN95/hhNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FIG5XZ6MS1mnoYYuddyA/SPBEJcU2FZEu99CTerQ//Q533ayHcWqsF/uy1BdtTob9dWXeXfOmi467KcerUDH31sC/DaZfEhlhXoyLIAElEbdjdkh/1HMwSAK5x8pu1HQU5PSAy/JY34kQ69pOx/QJCd7PBmDpkybFCJGfnmW5g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtXpgkrQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 989AFC116D0;
	Mon,  5 Jan 2026 17:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767635345;
	bh=X45ThILFl3AFeFsZdwUpiaWYxYuUdv0+jDTN95/hhNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gtXpgkrQ8wTxhxV6P984yg8AoN59INLl6tYvGUuLyndGJsUMW54bLM9ey2R/d61Ji
	 EmibKPp3fZu3uLzSlDwX4x3/eM60FXO1QZ0V2tspI4TiJyChMli1L+U3Cpc2v7k+4E
	 ncY6MXsSw4w2jY1yKGVft5QD6HZ38+AGj7n4CF7cCmHOCoKTW+WvGTZ7K61ptexL5a
	 0qQwTxxr36wIQnwEYt29pyLK/uKoWXY1Cd1k1dRJ4J1tNaqseDkpO0cOTmNUBzs09U
	 +5mrijGBJ9I5GpUqhV6vY6Yohs6nCS6U3kzan4l4VvXlD2Mnijgaacza7d1lm59N+c
	 q7iVCyql0SIkA==
Date: Mon, 5 Jan 2026 18:49:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH v4] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVv5VmmK83UfBZcm@devuan>
References: <20260105174401.222443-1-dg@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxhmffvq2bd4ogxd"
Content-Disposition: inline
In-Reply-To: <20260105174401.222443-1-dg@treblig.org>


--wxhmffvq2bd4ogxd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH v4] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVv5VmmK83UfBZcm@devuan>
References: <20260105174401.222443-1-dg@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20260105174401.222443-1-dg@treblig.org>

Hi Dave,

On Mon, Jan 05, 2026 at 05:44:01PM +0000, dg@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> Glibc includes some extra entries in its default label table
> as listed in the gai.conf it distributes:
>    https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dposix/gai.conf
>=20
> Update the EXAMPLES to include the spec default and the version glibc
> actually uses.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>

Thanks!  I've applied the patch.

> ---
> v4
>   Close the .in
>  man/man5/gai.conf.5 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> index ef330995d..b602acc7c 100644
> --- a/man/man5/gai.conf.5
> +++ b/man/man5/gai.conf.5
> @@ -88,6 +88,23 @@ .SH EXAMPLES
>  precedence ::ffff:0:0/96  10
>  .EE
>  .in
> +.P
> +Glibc includes some extra rules in the label table for site-local addres=
ses,
> +ULA,
> +and Teredo tunnels.

I changed the line breaks as

	+Glibc includes some extra rules in the label table
	+for site-local addresses, ULA, and Teredo tunnels.


Have a lovely night!
Alex

> +Its default label table is:
> +.in +4n
> +.EX
> +label ::1/128        0
> +label ::/0           1
> +label 2002::/16      2
> +label ::/96          3
> +label ::ffff:0:0/96  4
> +label fec0::/10      5
> +label fc00::/7       6
> +label 2001:0::/32    7
> +.EE
> +.in
>  .\" .SH AUTHOR
>  .\" Ulrich Drepper <drepper@redhat.com>
>  .\"
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--wxhmffvq2bd4ogxd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlb+Y4ACgkQ64mZXMKQ
wqk03hAAgkLJ1JOjIkEkKPvYfF2wLKVNBMVhs/xjvuEExKKEBuoc60C5MfbQKnwI
Z/v6EjrhLOD5NJ9GAuJAjs0BGbZW1ELSX1lIaTAYiIcgR3l3HJil6OgDMutdJicg
BazWwOwgWOouWPbj6f2hXwr8iowLWDOUiNtzwS1rEqLBEFA3Cg5GuEsbIjFvrKGt
wR5nYm57fyqw44sCyTmy1Xv2eTE43ou8YVEdRRzoT2Q6ucWLpBJwpgyMd8dcNCok
7DqymlR2TSaVqmTzOBpiiWOGThkgHEb3YrWcw/ouJEOwxWtOUvppW+o/J1bgEU3u
CmNYoB9EEVcJMdGNJLlGBMjgQn0q64Ojd61Hez4glPpYZO05YrfOOp8fqxlVdqra
Su+xNsMxKYG1bQW2tGW4X/ekkDOYBnlItvZpIMWgRsH1NXwTBpVYklvLABRCyybc
yMwQftK3AzC3Wx60PUVO19O5bF7o2sErQzPtAWLe5E+mMPRyPbLsWZl5JxZpDE+d
KLBg3H7XxiB6VFR5zIxemwpYfNBtHta4VnynVhsrordMdJymyKJ61B4iFiPsImnn
TxOA76mIuo5kjAguRImqLwBUTJ1mQanILQ5aAjP6K2IYxcbtNC+2CxXkkQ+8qN4q
4lSaB5ALrvUibryUh4xBaO2Vkxqp0apSvVG6NxIRSelQ/OZDku0=
=/IAE
-----END PGP SIGNATURE-----

--wxhmffvq2bd4ogxd--

