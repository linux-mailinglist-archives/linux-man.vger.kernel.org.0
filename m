Return-Path: <linux-man+bounces-3197-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41077AE3328
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 02:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FF233AADED
	for <lists+linux-man@lfdr.de>; Mon, 23 Jun 2025 00:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A83958836;
	Mon, 23 Jun 2025 00:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeDz3x45"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4745680
	for <linux-man@vger.kernel.org>; Mon, 23 Jun 2025 00:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639029; cv=none; b=qZG2Ook/LTsKz206kIkXHQM4P+j+NLmTufUTOv2Am0Lf10RP1BtpPgIwcsRzIrnqd1wF0E1rKy1HbwZ5FEs7gj5Um5eFlyhZPzvNs2xhHwM1YFKZKJOvB6Bv5ynVJhIoio8/u7UyMcdbo2drvk44G0cI8f+zlgqMSz+KanBCMPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639029; c=relaxed/simple;
	bh=CzmyNbxjYYTxINYuvdzgNh3myhPLeggf0GslEOg1gBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJldMK/1X5RCE5C9aOv5RSujJgs1KQJNW7QKNOgr213WgPudrF7SG7bKRKzK/FQu17GAynRukVuU0/JDKj63mRQd3EgwGMKQnBxljkXoyq0yNe1+/P5PpjeBqQWSmpa5Y1khUDxiqjY1vvzawWepbUQuChW1r5ZAYXTgBjOPSD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeDz3x45; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3557C4CEE3;
	Mon, 23 Jun 2025 00:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639028;
	bh=CzmyNbxjYYTxINYuvdzgNh3myhPLeggf0GslEOg1gBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BeDz3x45JKfBTZjGQ2qkBL0JZK0sXNQFOFyZfZL7WXak3HYBYtFqbhnUNVCkkns1y
	 1dTztfszQfxzBQ9FEQw2kyRP6krqzkRykNfF5uLDKi9+dTI2dEmapGMlkFwiG/zvWp
	 zNWHKor9ARTkeUIRTOJCzvM97bH9xT5sbojUIYHb7nG3gsN4KjWINfWl6pG357+FQC
	 OXiPndzPfxAXIoYdTNO7Ik0yiVUbjkIygsE5GB4YmhbTMUPODwQl9BHo+aMdUDVWM7
	 jbtksCV2vQ0eV/Wo/gGtvw0S8gxqDMjP+CIL3RruiuG1ppQq7pp3JVNgLXpx9t6nBu
	 axJFpYhd7HiHA==
Date: Mon, 23 Jun 2025 02:37:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dacian Pascu <pascu.dacian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man5/elf.5: clarify string table reference for
 SHT_SYMTAB sections
Message-ID: <zzgr2z6jt57bcfwmxmzndsrvcuzpsu4nolwj46dezesj3hdrkd@fhdjby7ikwjy>
References: <78e41dade449bafddfb730b39226f8d9cb3fefdb.1750427945.git.pascu.dacian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i2qtifjezlr4ygvk"
Content-Disposition: inline
In-Reply-To: <78e41dade449bafddfb730b39226f8d9cb3fefdb.1750427945.git.pascu.dacian@gmail.com>


--i2qtifjezlr4ygvk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dacian Pascu <pascu.dacian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man5/elf.5: clarify string table reference for
 SHT_SYMTAB sections
References: <78e41dade449bafddfb730b39226f8d9cb3fefdb.1750427945.git.pascu.dacian@gmail.com>
MIME-Version: 1.0
In-Reply-To: <78e41dade449bafddfb730b39226f8d9cb3fefdb.1750427945.git.pascu.dacian@gmail.com>

Hi Damian,

On Fri, Jun 20, 2025 at 05:00:11PM +0300, Dacian Pascu wrote:
> Add clarification that for SHT_SYMTAB sections, the associated string
> table section index can be found in the sh_link member, following the
> same pattern documented for section header string tables.
>=20
> This was discovered while writing an ELF parser, where the sh_link
> field is needed to locate the string table for symbol name lookups
> in SHT_SYMTAB sections.
>=20
> Signed-off-by: Dacian Pascu <pascu.dacian@gmail.com>
> Message-Id: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pasc=
u.dacian@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D710bb339b3ac7c9fea84f702c0dfb507cb0a5c69>


Have a lovely day!
Alex

> ---
>  man/man5/elf.5 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man5/elf.5 b/man/man5/elf.5
> index aacbb558f..c7b9a7cf8 100644
> --- a/man/man5/elf.5
> +++ b/man/man5/elf.5
> @@ -942,6 +942,10 @@ .SS Section header (Shdr)
>  also contain a
>  .B SHT_DYNSYM
>  section.
> +The index of the associated string table section
> +can be found in the
> +.I sh_link
> +member.
>  .TP
>  .B SHT_STRTAB
>  This section holds a string table.
> --=20
> 2.34.1
>=20



--=20
<https://www.alejandro-colomar.es/>

--i2qtifjezlr4ygvk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhYoawACgkQ64mZXMKQ
wqndtg//cnuGwkvXvAM2O9wItEYD7N27y6qH3xNH42tu6Ki/fTO7toeNStSgL/rG
TRwW+4kelq/WCMR6fX9w7nH+8wsl4kuXT9JhPXi1of6YxCGcJhLydnz/GgG8Nl5c
MXO0NZCkrShgsRsaML+sYzNgg6A2FBUHHuPctc0h1evegvoap1t/megndVqVhTDz
LzdqSYsktXvsyeIGPyz/yi/kETRYAdCwj29ii5tItfm0PmFZmiS7XMiv1YZhtrEj
hSdj5KlsDqnUTZ5InkrV5enI30WwfqSSRp4xSu1OkZD3btCgpOd/q/qgxhK5pdf5
g4wSoFPvggmJitge62UtaL5AUmuB0HdvXS7+m5CUbG6NiUW7EMBSM7TWz01dAMAz
k3KiQslLWSiLJbU6idH18FKz4qKeZrE9KirDe/dPR/iwibzbcBigP5iD0QiFAulI
I/o9VzyawedzbUBnXK8oDukflfXS2YU1Laiee9RhqICsNreAkJs4pbNAtFGkUO/F
Pezvxy3BHmf2lGl2cQjXHTpCNqTKClaSPXNYHWCkW6zxky7GpAjsthhj72xCuVz3
XMkxBinxKbuFKq4R8/1mFBz8FeZdThFfbr5QuzRGMlXNe3NsWq9JvY0yIO9H3Bnh
LP7YN/JR5rrTsu6IZUyNA3R5AM0+S+C8kQPDbfZyBVsCloGvePU=
=ECbw
-----END PGP SIGNATURE-----

--i2qtifjezlr4ygvk--

