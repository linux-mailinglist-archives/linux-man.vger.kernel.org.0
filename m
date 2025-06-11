Return-Path: <linux-man+bounces-3130-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE61AD4F47
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 11:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81A3D1BC1533
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 09:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC07225B69A;
	Wed, 11 Jun 2025 09:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh06NEpw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CAB525B692
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 09:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632645; cv=none; b=b7MjHziSuIOz2cX+pEahqG004JLxxvOeDKxJ8oux85KvtK2PzNIx1l2aN+2FVd3cL5p/RPPpcfF3+/o9Q2m4qvEvOSSsqAULUFCwIlyENOB48Mt0QnMV4ZIluK25vfPQ6wwA9lAzEpYfj3r5Kts5EeO2zpB8RgToQi+/7CQZnnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632645; c=relaxed/simple;
	bh=Syw3cnqAnTdSbiE+jF/AVzo2g0tZ4zgh+a/3XCoz/L8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=URawlmJHJA8ZrTQJHGadyJCMHdJDWxC5dsokEhfrdkl5A8Ai++5aOpAyjGDryJj5+QG754iciN7BiaOgIYUJtf4ydE6YeoJYqrJNt9EjtxD3fwQV6AuBe9PNnmZGuX1bUz3SyvXJ8HKjY8IrFIqN3zwxwf24Zn+O/emyxxsEKEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh06NEpw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74400C4CEEE;
	Wed, 11 Jun 2025 09:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632645;
	bh=Syw3cnqAnTdSbiE+jF/AVzo2g0tZ4zgh+a/3XCoz/L8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nh06NEpwa6TgAA2dgwS2yOGkAqEu6DMLEUwS2y8FpYNgGfcFCaQ509yHLpsUOmqzS
	 BIhuAvpkPOq4r4W0+Bs+ulbNDkGfNLeLms8IaMCk6TKqUsmzJ32xkI6w+tw4WbAsc+
	 8ycmBwaG/LnlWQa9zKsDMXc6f66+hO04MMkSIJ34EIz+lQnfhIE6DFOL0i4ruCvEGP
	 KrIrNhuMhCsP8PEDhL8suu5arQXmLgHMp2+nHIZ2yFcGCCOsPjL4cAAnzuYSE0BXuA
	 4kjze74/nxKwj3z00FUJaGqDeCV3y3J070OisySv8w9m4c7UVWKg69tMABDgKchzdt
	 4ftqmLOYwELQA==
Date: Wed, 11 Jun 2025 11:04:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dacian Pascu <pascu.dacian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man5/elf.5: clarify string table reference for
 SHT_SYMTAB sections
Message-ID: <4fhblzc7qtnzk376ejrt2kdd6isa2n344ferjo5edju2hh7st2@lwn5hkn5tfli>
References: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.dacian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u72hxq5uy5smlz5w"
Content-Disposition: inline
In-Reply-To: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.dacian@gmail.com>


--u72hxq5uy5smlz5w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dacian Pascu <pascu.dacian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man5/elf.5: clarify string table reference for
 SHT_SYMTAB sections
References: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.dacian@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.dacian@gmail.com>

Hi Dacian,

On Fri, May 30, 2025 at 05:53:47PM +0300, Dacian Pascu wrote:
> Add clarification that for SHT_SYMTAB sections, the associated string
> table section index can be found in the sh_link member, following the
> same pattern documented for section header string tables.
>=20
> This was discovered while writing an ELF parser, where the sh_link
> field is needed to locate the string table for symbol name lookups
> in SHT_SYMTAB sections.
>=20
> Signed-off-by: Dacian Pascu <pascu.dacian@gmail.com>
> ---
> Range-diff against v0:
> -:  --------- > 1:  7cab0feb0 man5/elf.5: clarify string table reference =
for SHT_SYMTAB sections
>=20
>  man/man5/elf.5 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man5/elf.5 b/man/man5/elf.5
> index aacbb558f..76bd62a12 100644
> --- a/man/man5/elf.5
> +++ b/man/man5/elf.5
> @@ -941,7 +941,10 @@ .SS Section header (Shdr)
>  An object file can
>  also contain a
>  .B SHT_DYNSYM
> -section.
> +section. The index of the associated string table section

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'   Us=
e semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely day!
Alex

> +can be found in the
> +.I sh_link
> +member.
>  .TP
>  .B SHT_STRTAB
>  This section holds a string table.
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--u72hxq5uy5smlz5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJRoIACgkQ64mZXMKQ
wqm0YRAAk7SHyvWV89p3WNGik/iKx5GzKk2LD6NamFJdhH/pVMyQaxpqwV/IY7/b
Jtxw/FRtJrYaLSQ207J5yWI5BoGn3gsJsnG1bbAYguVtWdvlrO/i15+jG+tJQdRa
X5YEgy6Pn3hQWgWWcMTd3X6SE6Tx8MCOTB4V+QZLMdhTeuVQZS3JP/xsSMYJ4QHK
AZXH8+nmtsVXSrw0hQQx2nIVlSCIDoTthVya5nccY9nETjaBrmzmS72hhFKU0JwD
0173xAV7IUWXkFDSvcKr5EKq1ENMpugvTTh/CAyHn8SIY/BAY744p3KVSvTN6hQ8
EsNM4EfADp6sdvofULKSsY05rME/mE9DsVjnPCFx5fP95/A7AkAGXQtJqqeSkO8b
o8b/ayILtW14n9X8YibM/9irphAZIDhxe05S/DuRcGkMvohSRbXV3G+yqIqKzeNZ
+wDU0d0eUQGnf1PfnW0O8bIB5jrNDeMOCCy7oy4EtRpVSVXsQokkEoc54p6VHire
UCNxi0zWjeeuJjFMEWYU+weuVifQqbcRvcwAOts+SME/WjwHAx6wx7UOjS6/B9Qt
x8rd+i9a3Af2LYwdPNVYEUQU80bqvDd7t68qGqNYyNPSVJXWxSqPfro1zIRrAO6c
bDAztVOqSTH506+KMuzup+mkByzUiHibn6KtTLIPT8bwnPDvSE0=
=LrO0
-----END PGP SIGNATURE-----

--u72hxq5uy5smlz5w--

