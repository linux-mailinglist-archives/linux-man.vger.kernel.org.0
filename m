Return-Path: <linux-man+bounces-378-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB8A82F1C9
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 16:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE2EF1C23357
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 15:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531511C2B2;
	Tue, 16 Jan 2024 15:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlRifX6L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB7D1C2AF
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 15:49:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F296BC433F1;
	Tue, 16 Jan 2024 15:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705420154;
	bh=DWxzia8KEKpZHEHsIlDDWb2G1fr1liu+uLzvZOoObCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RlRifX6Lwb/OSCZ261UBeD1kPDrQ1P9V6GcWive/YwSLMoaFarxzJcUG/cqhFvSWf
	 PU2DV3CIbrBCbBxZBjHESoWj2VUvyMLP3aBBJ00qujm42lURBkpoeh651C6YneC79p
	 XOpxBnwfPSDmjxZCwYZl87dtGeb1PPdt2kxq9I778T+rkJeKuU7IKVPoU4dYQmagOm
	 qdOFrPphkA8hSx+GwE+lrhaZiOYe2p71fCcFqvBqjUWFYmDmOpqkYUxT3AdM8yAEdz
	 DnEa96hHCueNqri3LyCLnANDG2ln2nRlZMxRMcxnjlnS0m6DONJklMmtQDOBxOcgNf
	 e5cqFWh/aGzDA==
Date: Tue, 16 Jan 2024 16:49:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man2/open.2: ffix
Message-ID: <Zaald3N1JU7HzJDT@debian>
References: <20240116153355.g5rspmbm3dqty5f4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iuKULjz0XTTQaCL/"
Content-Disposition: inline
In-Reply-To: <20240116153355.g5rspmbm3dqty5f4@illithid>


--iuKULjz0XTTQaCL/
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jan 2024 16:49:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man2/open.2: ffix

On Tue, Jan 16, 2024 at 09:33:55AM -0600, G. Branden Robinson wrote:
> Migrate man page cross reference in non-filled context to font
> alternation macro.  This is to prepare it for `MR` migration.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
> v2: Fix thinko omitting "(2)".
>=20
>  man2/open.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/open.2 b/man2/open.2
> index f37ddbed0..8c791fa47 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -46,7 +46,9 @@ .SH SYNOPSIS
>  .BI "int openat(int " dirfd ", const char *" pathname ", int " flags ", =
=2E.."
>  .BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
>  .P
> -/* Documented separately, in \fBopenat2\fP(2): */
> +/* Documented separately, in \c
> +.BR openat2 (2):\c
> +\& */

Patch applied /:)

Cheers,
Alex

>  .BI "int openat2(int " dirfd ", const char *" pathname ,
>  .BI "           const struct open_how *" how ", size_t " size );
>  .fi
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--iuKULjz0XTTQaCL/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWmpXcACgkQnowa+77/
2zKnkw/6ApFoM4W0V2VrzfGsCww3yIA2OK3GiHLDJXzB9kowaRgczidqXh37JmeM
gwtIvGAvWt9cqh1KSSYLGplsOtnxmfKRGjycOeMLVBJZFhO2GinWMZy7ML2ryBA2
GqpNl+UM+HjkH/2oqgMUBeTJh2nP0ehSgWA5oOVgBcjhqzXgtcb/btBNR3xKzIrr
+/9el4USxeWeNBUoFDi42ATKuc2gGcc+LoRTkV8UJBPY44IxiPgNht0FglqadjrI
jEU8Es2vae6LPu1Sc0gi7LtkSe9Y/TIkMvI6WX3HQsxuPcSDpv7SyG/XXqyd8CGt
15TN7YbIYa+B3WOAuxf9WGR4XBzXEXcl2c9z48np7NhB1p/fNiIvs/rjZjHifwz4
XGc/xtP8Z64QHV6tjmLmCnCDLqSvNMlzuryJHaj8tBNOb1LoQM1v3uVlqggSArTU
peJLEJ56t7lVXBS3MwDKbttcF7J1ODhupwHlQos+tl7qB3HbNIaKkUwqFH71bs4U
S/d7UWTb/v02CFntNKFf99NPG1OrMDFaxsVys/ht0RMrpHPka7RrW/mO5WNzoq3Q
7eEQAQdw6J7YQrPDAqZ845yzYQsF1s9xuA6seGa1oCUpap6Dbpv6Y9il0CEcRltE
FyjzWp7xecuZGgBSTeeREiNAAmDesIwAjDM3z4NAjNdb/uVLrRs=
=yr79
-----END PGP SIGNATURE-----

--iuKULjz0XTTQaCL/--

