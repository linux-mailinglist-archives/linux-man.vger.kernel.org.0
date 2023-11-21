Return-Path: <linux-man+bounces-126-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0257F29BE
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 11:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 241AC281C59
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 10:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528413C6A2;
	Tue, 21 Nov 2023 10:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBgTMhP6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2483C6A0
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 10:05:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09EB8C433C7;
	Tue, 21 Nov 2023 10:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700561103;
	bh=y5ye91vCaEEJOuvt8BL1hGBVeZ7c2ctxaacVB0jQt9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OBgTMhP6Pu4pL70miCFkSk5bLa4u49CeZuZU2jltCrKDlkt2cTlHPRcsasWnRr49D
	 j2d0/2W+3yDr5Ku9PuGH/NKUO/9Fu4kRChuLDr9DrR80am75VLAScVt1K5OgJ3/TPz
	 bGN8dE2SF6Ucxf9lR+Zh/AmVdm5Qie/S7+QQMGGpgmYVSzXUKDYBwCxNvVE587UOpP
	 RBoKi23LtNE7elPVTfrDo3js4DVuprdK98+oAvF7uGBD58m20WcQM8azOdDhpSuloq
	 P3d9uni5BUyombi4z4eWE/3/ORrNsZLLZzLRNOMEQDh2oGCVXdpyUWyNvUmFc0E5T9
	 SiEtKy1aJ2/VQ==
Date: Tue, 21 Nov 2023 11:08:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVyBmFI_TvmJkaN1@devuan>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1GEG9olfRo3afz5C"
Content-Disposition: inline
In-Reply-To: <ZVxSrmdVkalf3FL9@archie.me>


--1GEG9olfRo3afz5C
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 11:08:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Seamus de Mora <seamusdemora@gmail.com>,
	Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount

Hi Seamus, Bagas,

[I'm reordering to better reply.]

On Tue, Nov 21, 2023 at 01:48:14PM +0700, Bagas Sanjaya wrote:
> Please don't top-post, reply inline with appropriate context instead.

And the mandatory example.  :)

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

> On Mon, Nov 20, 2023 at 05:44:40PM -0600, Seamus de Mora wrote:
> > Uh, OK... stupid question first: Where is ./CONTRIBUTING?
>=20
> It is in man-pages.git tree [1].
>=20
> Thanks.
>=20
> [1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CON=
TRIBUTING

Yes, it is in the root of the source code repository.  Since you sent
the mail to the correct addresses (alx@ and linux-man@), I assumed you
had read at least the head(1) of that file, since it's the only place I
know that documents that.  I'm now curious: how did you know the
addresses to write to?

Cheers,
Alex

P.S.: Thanks, Bagas, for suggesting documenting in the Linux repo too
      and CCing the relevant list.

--=20
<https://www.alejandro-colomar.es/>

--1GEG9olfRo3afz5C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVcgZEACgkQnowa+77/
2zLcYg/8DOhY0GHdbW0QPjCoxOAfrpzbjpa/+hdh2ZzDsQfOpfeg+ReKT3/q7np/
Lw2q7nNqRpaCq1DOV+89VSyaqS0RzMfkjJmA6lCT5aqykQQXi3SbtQz3IUsMdKQj
wY0msUUJAL6uFELPzhtqRCmuSSqUgmOZAInyPKWoFhK1u1rOeTWr5ZAb22CtCECp
kmEzEM9XOZfy8KLImt9vyutOi4+06HJzhedw7sAvG3BfTPxT5ft70Kkgp1hKllVX
sl3N+9j+5dkkh43wgL3QykxrH9L6+JwvH3dD5Wk3I+iPxmYbB3pILOxUTdCI3C/9
DuY3OsqAiz5iZ//AzihqZf/vdHJvPvbe2VyfqC4FykkcbPshOqDS4pKiouCVsYsD
Z+TJFnWbznjTyGM6FWjbok+j7HXcZB2U3Y6lnFTCfLAKEjCiYjvj5pT658gnK28K
0Kzj6Vaon0ttarcUoM+f8E6DK/NpYf9wqs2idAG+jlbUjDDR7bGz/cdFIUDqzSXL
ov0eQOKgMEZzGXHrx/R9av80ltOmaKQ/BGtJaABE/+X+xNHXAj0dWAKgEPZgj+OV
GfJiaKSQGQ1LxSat/kNYs8bXxTiiOQYw/O2HVr73kTYlqoStdUiF5sbpvFMLJSsg
QXeWsECAns6p3lMopCZoUAde43DjB9mhD38t6n7n1jIeT/F7BC4=
=ycRj
-----END PGP SIGNATURE-----

--1GEG9olfRo3afz5C--

