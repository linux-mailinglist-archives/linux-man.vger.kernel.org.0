Return-Path: <linux-man+bounces-331-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DB28213A7
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 13:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACFAD1C20BFA
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03492112;
	Mon,  1 Jan 2024 12:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYrRBg7h"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3695220FD
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 12:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC3AEC433C8;
	Mon,  1 Jan 2024 12:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704110441;
	bh=ebCrze3fGPk+PF/TA8EL6f/yLwX+Ck+I90i4guK2NUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TYrRBg7hdTYuR4tJ+xrho+FQwgoJ20tJ13xsosfGOw8SElZoyHd4k1xgvHBaGvDfB
	 +bZiE9OLxQr2nE1P0fAzxlmYcDzTgrM1TEqyuy417ZulWeGUZW8ij0QfzQBgrSNaah
	 d1ODyCf4+thtgda8XPqYpD30Pg/Tfc2urL0wU0E/+spQs2fhWqnM96WL3Oe8eboHG7
	 S3W5GKi/jYE7LuFBJRUmRswYPKvSjnrJ/+ZLgXZxUq9wihZnMsytkR2AVy5y8GpjOS
	 SRHTk3NKBLpDe2aGtYOHgCKd1YqA6OVVUwyh8CI916nalVZ0SlP0/6gVjwkmUoGwvm
	 zio+K+Sk027DQ==
Date: Mon, 1 Jan 2024 13:00:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_218018
Message-ID: <ZZKpZs1hI_jFHQTg@debian>
References: <20231228155601.16558-1-r.pandian@gmail.com>
 <ZY35_ukf-q9--X-7@posteo.de>
 <CAKkEDkUEBLbjY-281DWw_0krt_AbGiHvwpHZVu_gxzQKGunL5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dmn0IKOLgKehnWmq"
Content-Disposition: inline
In-Reply-To: <CAKkEDkUEBLbjY-281DWw_0krt_AbGiHvwpHZVu_gxzQKGunL5w@mail.gmail.com>


--Dmn0IKOLgKehnWmq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 13:00:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_218018

Hi Rajesh,

On Fri, Dec 29, 2023 at 08:49:07AM +0530, rajesh wrote:
> Thanks for the feedback.  Have sent it with the subject  [PATCH]
> bugzilla_218018_v1

In general, I prefer if versions of patches are sent as replies to the
same mail thread, so I have it more organized in the mailbox.  It's not
a big deal, though.

Regarding the subject, the first patch you send is assumed to be v1, so
it's usual to call following ones v2 (v3, ...).  Not a big deal here
either, but take it into account for next time.  Also,
git-format-patch(1) will do the right thing for you if you pass '-v1' or
'-v2' (or '-vFOO', FWIW) to it.

Cheers,
Alex

>=20
> On Fri, 29 Dec 2023 at 04:13, Tom Schwindl <schwindl@posteo.de> wrote:
> >
> > Hi,
> >
> > On Thu, Dec 28, 2023 at 09:26:01PM +0530, Rajesh Pandian wrote:
> > > ---
> > >  man3/dl_iterate_phdr.3 | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> > > index 0a8beb3ae..f47fdd502 100644
> > > --- a/man3/dl_iterate_phdr.3
> > > +++ b/man3/dl_iterate_phdr.3
> > > @@ -129,7 +129,9 @@ The
> > >  .I dlpi_phnum
> > >  field indicates the size of this array.
> > >  .P
> > > -These program headers are structures of the following form:
> > > +The ELF program header is described by the type Elf32_Phdr
> > > +or Elf64_Phdr depending on the architecture.
> > > +Following is an example of 32 bit architecture:
> >
> > I'd slightly change the last sentence to
> >
> >   The following is an example of the 32-bit architecture
> >
> > since that sounds a bit nicer IMO.
> >
> > >  .P
> > >  .in +4n
> > >  .EX
> > > --
> > > 2.39.2
> > >
> > >
> >
> > --
> > Kind Regards,
> > Tom Schwindl

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Dmn0IKOLgKehnWmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSqWYACgkQnowa+77/
2zJG4g/+Jkc8IFT8llERJC0Y1zPKqziVp5PeokxwK6Ej6PZ3ER+CcMdznu3Ayxna
nMMRPDyxDyC0CQDSCxblTKAhB1Dgu+F+EbW29pRgSROOobvUGeaPH6DVp8YAdwFT
qZ+XidF0jOVNp2mi8d7Ad1jkK5G4Qme7giiKvfqVinf9qrnOTBQESV6144xNbvdR
B3zt9BKJ7+6TIBw4w0HBjwQUSEYA6gNRuTLkVrrsZ4skHzjDFgAFtRSL4NiJBLYl
gzKbKzEQJPhB9Dxzt9J7hW/uQ5DJawGpg6qBGjzEh+JL32YKJjVWNI1Ui4qIiTbY
SKzdHs+cEbZTRuR+ZOtpYz2lxxvZ6rQZEME0G135V3prNFMvR5K2tGvFM8TlRjEL
dF6Vl959wA07iD3fVq1Zq4BpUGFxfUGjchFy6d3k/hiI/P5oDX6w8U9BUDE2sp6G
x/A10h1elAh336Ez9Fp0XKqI8tSdLvn2xRE5TsXrLKgmuXOpAwFVouIxSYc6VhHe
Uyeih+LVQCDEi3wxO1I7Lo5srDXQ7yV5Xq2lWGZetdqI0o+quy6MRD0IBACc9rAS
9TKlg5UNB7w8vsU0snX9N5vymw3ffRatQtH8NLZ3dJMq4ogpBSjNq8bL8ThCKC/E
oPFPMsCwezHawdUjIc1SZB3VxqrVHu/7HQCdsrRSqz3rjyR+fZs=
=XN9l
-----END PGP SIGNATURE-----

--Dmn0IKOLgKehnWmq--

