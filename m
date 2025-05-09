Return-Path: <linux-man+bounces-2873-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE291AB1354
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE89C7B1E56
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED87D28FFE8;
	Fri,  9 May 2025 12:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuUyZia9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B20272E48;
	Fri,  9 May 2025 12:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746793707; cv=none; b=YHO9B/0PqseZRCDRYTeCd1yN0q8oRv4mM7TnwxkHVhXuSf/dpZh1nVl9Cwj18ooiFVo6zG+/GaN6TbSfqrj5QAB98OTjhr6cA/CHQ1c/F6F3TYWHTFNZ7jQ8hqi8LzDdaQbcyVqFzyqDrW4pXCT9ddCyP0NFjWqZRractMv9nRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746793707; c=relaxed/simple;
	bh=fuZTMWGwPhBVNjqBj4ll7rIHhloRvxlNNhkQQ0qbH7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2HrpcWZp6+h2uCn87VFAh6DVpBBLPDhtE1JL1hmI9CuFrToOlIbLQKEwJPMAOKDhAJFBwdM7YNTBHLBqPOzGvet9Dls/uLr9tT2vYmHJttB5refvmtD9xN0nFO1rHw0KillkZtQoD6nbNZj8FErkPLXzf2ABliqFl27ubV3j2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuUyZia9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99C03C4CEE4;
	Fri,  9 May 2025 12:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746793707;
	bh=fuZTMWGwPhBVNjqBj4ll7rIHhloRvxlNNhkQQ0qbH7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QuUyZia9CNFi3ElWbAkEraEOzQi8qa0iquT72A7vmYtpPQEvqCEDiqfJPSRUrfhHC
	 pULEwgg8MfWqbZSpbYOO6tj9I989g9dPL/OWnbMoRx77F+gyjLNi40Xi4Pmwloi98m
	 zGyHimwl4dxoxyscHw63HmP9d7vHo4Sb1jtF3bvpo8qcxGkEJi6gM4UwK2VpqDQFbE
	 VLrS/AdQtRNLZsmJRHKvPme+WKoeOrDmD8/ajm2p3FYyc11ihVthOcp/df9SIgjq5J
	 8zZQl3yUQrk8ogTYLkTLUZcCkN1IMGSptDj+uCgNIkhv74hrlzTioymIE9rcwbyR+d
	 WYD/zeJz7qWdA==
Date: Fri, 9 May 2025 14:28:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org, "G. Branden Robinson" <branden@debian.org>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
Message-ID: <qghsrpxzxccbcuuctx56oq5xe7mtpkgljis7ovopr6ojmiz3js@vw5p5w7om4f4>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmkobnhtviw6detq"
Content-Disposition: inline
In-Reply-To: <20250509121454.GA952723@if>


--wmkobnhtviw6detq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org, "G. Branden Robinson" <branden@debian.org>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
MIME-Version: 1.0
In-Reply-To: <20250509121454.GA952723@if>

[CC +=3D Branden, Carlos, Eugene]

Hi Andries,

On Fri, May 09, 2025 at 02:14:54PM +0200, Andries E. Brouwer wrote:
> Hi Alejandro,
>=20
> > > I wonder about the legal status of such a change.
> > > There is ownership of the pages, and a license that allows
> > > others to do certain things.
> >=20
> > I also wonder about it.  We discussed it for several (~3) months, and I
> > documented links to the discussion in the commit message:
> >=20
> > commit 9f2986c34166085225bb5606ebfd4952054e1657
> > Author: Alejandro Colomar <alx@kernel.org>
> > Date:   Fri Apr 11 02:19:48 2025 +0200
> >=20
> >     *, CREDITS: Unify copyright notices
> >    =20
> >     Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamz=
q3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> >     Link: <https://www.linuxfoundation.org/blog/blog/copyright-notices-=
in-open-source-software-projects>
>=20
> So I read this last link, and see
>=20
> "Don=E2=80=99t change someone else=E2=80=99s copyright notice without the=
ir permission
> You should not change or remove someone else=E2=80=99s copyright notice u=
nless
> they have expressly (in writing) permitted you to do so. This includes
> third parties=E2=80=99 notices in pre-existing code."

I understood that paragraph as not changing copyright notices from
people unrelated to the project.  For example, pages copied (or based
on) other pages from UCB should retain their copyright (and I kept it):

	$ grep -rn Copyright.*University -C1 man | head
	man/man3/fopen.3-1-'\" t
	man/man3/fopen.3:2:.\" Copyright 1990-1991, The Regents of the University =
of California.
	man/man3/fopen.3-3-.\" Copyright, The contributors to the Linux man-pages =
project
	--
	man/man3/fts.3-1-'\" t
	man/man3/fts.3:2:.\" Copyright 1989-1994, The Regents of the University of=
 California.
	man/man3/fts.3-3-.\" Copyright, The contributors to the Linux man-pages pr=
oject
	--
	man/man3/alloca.3-1-'\" t
	man/man3/alloca.3:2:.\" Copyright 1980-1991, Regents of the University of =
California.

>=20
> The main topic of that link is how one should document new contributions,
> and writing "by the contributors of the foo project" is OK for new stuff,
> of course provided the new contributor agrees.
> In my opinion it is illegal to change existing copyright notices,
> unless you get permission from all people involved, which seems unlikely.

Hmmmm, I'll ask the full list of everyone who's copyright notice was
changed.  Let's see how that goes.

BTW, while we're here, do you give explicit permission to change _your_
copyright notices in this sense?


Cheers,
Alex

> Andries

--=20
<https://www.alejandro-colomar.es/>

--wmkobnhtviw6detq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgd9OEACgkQ64mZXMKQ
wqkIPw/+NC65s/jPNjMaR+UXY7+X0cNmafz+eoMh0j7NPk0Z19NZXHKoKyRD9ZPb
DBwTBaTbmNkQRHWus5bXO7B4uqBLaq4gkzj7nlTmymtSmSnOC+/5XDcGqvfFD2a3
LTYYMx2iSDEyNegXY/5mwgE6oX+yjASzD5FJsdZBXhAeofZ/hgPp/qb+CNcK3gyQ
0Pao6JOdNqec08jyBiVrU/sBygdOfaFPxk/h+Sarijn1ZxARf1wOQJtZpdb9HMVb
iHYcnjJFy77Od/02aPiaB9SP2yQAIl47UNhIIgEEdciQCs3Rw6KUrrm4zPo9mmng
32avtFrTPDKE847yAUCPDnCr/e2fCNri1LuStvzB+s/X3nOKu994g1HE4hX53r5V
u7M9KBGhB+C9jyLGF5PQC6GATGjo6PYCKXbXkJelk837YzyVe+zxeqM+BogFC2bS
2LwhL8QCbYSK5Gaf5wOABOgIOk97uyta1QNXjs0pq7NdVLYxztPPLehyIqolSU7J
LpgcZ5lOuTrFxpF050+7yqmTj+I96ku5Yr//Iu9QSYCqy3U+rTKn+t93EhO5o/2x
29oPtJNixP3SOMlSvh+gO1FuajvyOAOBsYg9FT9EBdnOZLCWzJUP0Py/vk/TWNq6
fmv1Wqu6W9ux86k/pFqnnoCf1jtwkYf744Wb+2CJy8pgANqolTw=
=dlOZ
-----END PGP SIGNATURE-----

--wmkobnhtviw6detq--

