Return-Path: <linux-man+bounces-393-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A53831632
	for <lists+linux-man@lfdr.de>; Thu, 18 Jan 2024 10:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E32BCB22054
	for <lists+linux-man@lfdr.de>; Thu, 18 Jan 2024 09:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9DC1B978;
	Thu, 18 Jan 2024 09:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxg2NQvP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E352E208B1
	for <linux-man@vger.kernel.org>; Thu, 18 Jan 2024 09:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705571508; cv=none; b=SwWD1MspoE28OkrieCmhP4L70dBsF5goLCf4LJaVYjayjD9owxOuLaN3dkP/4BLoO9DqK2/UD06r6O8VJKH/iwDo3qlcW5tmIbTgUIWPPZXTg5t9lAu/lVOgqp/IvLNAJ3r5+Nf120Z/11CNJiP//0r5ESNAL+9E1cMZXQKKzms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705571508; c=relaxed/simple;
	bh=N04tI2TFVv3n54WrtgRCZzDgF+/eXUV7GS31iFWcPVo=;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:
	 In-Reply-To; b=A3yiB6GT4IJ46QH96WHAiZlFbkYba0UqkjE5MFH0Uc3MazN42aS0Wh4meToso/WDuQdIbqLLhqODckdQ7+arXSw322JrKEYBNY8rLKMKGCTTA8NG2kSnCPBxETKw7/LC76ntiloVDAqDRBTA7PtIOVUwI6AVxAJEqG83k8L7h5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dxg2NQvP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85C20C433F1;
	Thu, 18 Jan 2024 09:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705571507;
	bh=N04tI2TFVv3n54WrtgRCZzDgF+/eXUV7GS31iFWcPVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dxg2NQvPh988VPI0cSEafDBseVQgbbibhA0rSlHPr4zgm29PHddt4dEK5aQ+sf8hy
	 LY/kNj78GVPqZnvJhPTyNaOxbQAztCDLVjS2UdrsXBqkcbGPqRLhXjMu721BgTX6vg
	 t/LT7AmijS2TMMwVXQiQRu2ZEO6Gv0ONKClHQjf6bG11Cri3UzeKX9rcG8xa+FgGcs
	 ob/JaZo3vPlRiFGmRF3ux/WdDt+mv2ETTSAJwW9XRA8MMNRarlLVEWGYAJW9WZayc1
	 rjpKfcnFQq3HHrAXfqaeSFIVh8mHsIL2f+Ruhlx9MXBMwzU+HEi3O1mnJ5BRU9ThNe
	 DHNomfV92JuCQ==
Date: Thu, 18 Jan 2024 10:51:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] man2/syscalls.2: ffix
Message-ID: <Zaj0sFlEedVXR42G@debian>
References: <20240116134020.wvyiel53ydi4gey6@illithid>
 <CACKs7VCLtDTYYyF6xNXNqvjz0ZGhTsOPsc3xS7JTRG=dvTSP-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IgLFQLAHZcrpwoeY"
Content-Disposition: inline
In-Reply-To: <CACKs7VCLtDTYYyF6xNXNqvjz0ZGhTsOPsc3xS7JTRG=dvTSP-g@mail.gmail.com>


--IgLFQLAHZcrpwoeY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jan 2024 10:51:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] man2/syscalls.2: ffix

Hi Stefan,

On Thu, Jan 18, 2024 at 10:24:08AM +0200, Stefan Puiu wrote:
> Hi Branden,
>=20
> On Tue, Jan 16, 2024 at 3:40=E2=80=AFPM G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
> >
> > Refactor table format specification: use column modifiers to set heading
> > rows in bold instead of populating every entry in them with font
> > selection escape sequences.  Use a single '_' to indicate a horizontal
> > rule spanning the table.  Put vertical space before the table
> > (making it resemble a typographical "display") rather than after the
> > after the column heading.
>=20
> Duplicate 'after the'?

Indeed.  Too late, though.  Thanks, anyway!  :D

Cheers,
Alex

commit 24347d22a3b8a06c28816e7d2a2de2669485c2d9
Author:     G. Branden Robinson <g.branden.robinson@gmail.com>
AuthorDate: Tue Jan 16 07:40:20 2024 -0600
Commit:     Alejandro Colomar <alx@kernel.org>
CommitDate: Tue Jan 16 16:19:06 2024 +0100

    syscalls.2: ffix
   =20
    Refactor table format specification: use column modifiers to set heading
    rows in bold instead of populating every entry in them with font
    selection escape sequences.  Use a single '_' to indicate a horizontal
    rule spanning the table.  Put vertical space before the table
    (making it resemble a typographical "display") rather than after the
    after the column heading.
   =20
    Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--IgLFQLAHZcrpwoeY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWo9LAACgkQnowa+77/
2zIJGQ/5AbI3riln55LyNQBBOrzT3wwlAKpxrjgMtmYwv+2ObgVV4ks7JucEU7yZ
0Yxiyi1+ZA8kkbjQdZtYRDSXkgI/6rrrvR7nxSCjkVUDsOimu9LxrxxNs1BEIE7s
MWma7BB5mqRWBqxB15qJuoNtTQ9Bl6YeXMn2B0q6ddW+6Lq7BDAxO5wK3dg4JEiA
4wJnmjgd7CadubF//UM/eLTmkCVoGPfAcpTvVfv3h/AgBunieEBKbrWSocLkHgJK
ImTvOTer5yNoM7iszLUE346G3aGsdJ04UVXCldvrBzOYZzOotv81d8fou0Fd1Wvt
qwoHm7i+a6ueXK1+ahGavDxrSE5P9Dom83chl7Rav2wUStJPGViuFj4jEJ/Q2bqY
VKu6JVhdK7bYGDa9317AO4odxhoDTY5HhYiws4O2g+m5sa2rYjeuwt00si9Quk2j
VVnzE+XRXXiVnYvmORXRwy9cEZ7wDrSmhT7/nnrGB/EvCbBkuhcEZdVDs7lZDiln
7EVPJ/At8Ms49tkAsdebYi2HDq7p6HvS501rwBT4x0xkF0CbPkGH2ls3RGd3b2L/
XiLUBNYB16mY/2y+B+Io9mVQr+fwpAq4URM1SEvsnRjF0UFGqzQL5JCgdkYmDYLA
GyCcLDgkLVd0YrC53IjnUPOZsb/iDBNgiDmtyFwCNVEKfWL9YvY=
=nBFS
-----END PGP SIGNATURE-----

--IgLFQLAHZcrpwoeY--

