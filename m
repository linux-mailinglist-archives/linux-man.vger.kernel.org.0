Return-Path: <linux-man+bounces-4813-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D937D21266
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 21:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CC13301410D
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 20:17:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9748A32B991;
	Wed, 14 Jan 2026 20:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Juqqxiwh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24630F55A
	for <linux-man@vger.kernel.org>; Wed, 14 Jan 2026 20:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768421869; cv=none; b=BcpzY6aPwdWTn2GnQvx3UUKNCOtyrMzTbNvwz2wImiltxQR+dOxkAxQBgADqazyCtycXuFWTi0neiWFyBVig2QrC4Bfephq1HZWGBrxYqUGFu4XNUiT6ecJwt8QWRe8ALIk0WsNRvyS3NQeFYxRn1Ihr83lwS1uW0BA9eZtw7qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768421869; c=relaxed/simple;
	bh=I5FfmIT659mlLPVZQA4FBxKkG2iPrrbM0eWG1DtCBgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=szQeYgFJBifJtPD6Uv95LuLb564mJkufSQcYm7k5tsUPlfSnNY/s5jqhMw7nrfa654XNHVYR35gqhA7xh29gu8frEG1wdZmvG0q2YxVh94aUgkjjMIOcGULJeSc+t/g6RF+kNyiwcyDWU0Wi8T74BIU7Zu8TjTpGaehTEAVmHWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Juqqxiwh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 697BEC4CEF7;
	Wed, 14 Jan 2026 20:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768421869;
	bh=I5FfmIT659mlLPVZQA4FBxKkG2iPrrbM0eWG1DtCBgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JuqqxiwhwfMLurmOFY3qcC5FuMQdwgsBtTOtx5V2Jbgpc9mb1f0xRyFBZ1ZA6rMHh
	 jfwN66wmKUNhQs3yGtP78/YexV3PztuGfMG/f62y/KYzDOUlgYMoNW5V/NvHbR8xWo
	 khhe5jJ6VS3RHWAS5mIvQ1ctZUSNnlZHJiLXeM9fv4f+PueP0Qp6DV+7b8QlG1PN+u
	 rkA6GQKAI0VA7nUJZPWsGAjAQlhOKFrom0lx9qdnzdWgB6E4InAf2YHNAo7MaNl2NY
	 y1jvmOzrkNV4CBKTXEFCQAB1NrDiWTFApSPBzep6lHycD6hJ6h09FdvSFG8m2Kk2gf
	 0tbErpvXT0F8w==
Date: Wed, 14 Jan 2026 21:17:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aWf5pZfDocAyWwWa@devuan>
References: <20260104220438.265626-1-dg@treblig.org>
 <aVroLT4toQaQD2nn@devuan>
 <aVrvS17o3Pq7e-Tq@gallifrey>
 <aWengydRnAZx37KF@gallifrey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oxc4fkte44tg7lyz"
Content-Disposition: inline
In-Reply-To: <aWengydRnAZx37KF@gallifrey>


--oxc4fkte44tg7lyz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Dr. David Alan Gilbert" <dave@treblig.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aWf5pZfDocAyWwWa@devuan>
References: <20260104220438.265626-1-dg@treblig.org>
 <aVroLT4toQaQD2nn@devuan>
 <aVrvS17o3Pq7e-Tq@gallifrey>
 <aWengydRnAZx37KF@gallifrey>
MIME-Version: 1.0
In-Reply-To: <aWengydRnAZx37KF@gallifrey>

Hi Dave,

On Wed, Jan 14, 2026 at 02:26:11PM +0000, Dr. David Alan Gilbert wrote:
> * Dr. David Alan Gilbert (dave@treblig.org) wrote:
> > * Alejandro Colomar (alx@kernel.org) wrote:
> > > Hi David,
> >=20
> > Hi Alex,
>=20
> Hi Alex,
> > > On Sun, Jan 04, 2026 at 10:04:38PM +0000, dg@treblig.org wrote:
> > > > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > > >=20
> > > > The numeric value on a label entry is a label which is separate
> > > > from the precedences.  Labels are compared with other labels, not
> > > > precedences.
> > >=20
> > > Is there any source to verify this?
> >=20
> > The two I checked are:
> >   https://datatracker.ietf.org/doc/html/rfc3484#section-2.1
> >     is the RFC itself, and it talks about the Precedence and labels
> > as separate values.  Note how it's talking in terms of:
> >=20
> >    If Precedence(A) > Precedence(B), we say that...
> > and
> >    The algorithms prefer to use a source address S with a destination
> >    address D if Label(S) =3D Label(D).
> >=20
> > So it's label compared to label and precedence compared to precedence.
> >=20
> > The corresponding bits of glibc are:
> > https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dnss/getaddrinfo.=
c;h=3Dc0f496f96c752220e68bf0257d9ff1ffc624ebe6;hb=3DHEAD#l1525
> >=20
> > where the label values are compared in Rule 5, and the precedence values
> > are compared in Rule 6.
>=20
>   Does that explanation I sent make sense?

Thanks for the ping, and sorry for being slow!

I've verified now, and have applied the patch.  Thanks for the patch and
for the follow-up links and details!


Have a lovely night!
Alex

>=20
> Dave
>=20
> > Dave
> >=20
> > >=20
> > > Cheers,
> > > Alex
> > >=20
> > > >=20
> > > > Rename the field.
> > > >=20
> > > > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > > > ---
> > > >  man/man5/gai.conf.5 | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> > > > index 4aff0b0b9..ef330995d 100644
> > > > --- a/man/man5/gai.conf.5
> > > > +++ b/man/man5/gai.conf.5
> > > > @@ -26,7 +26,7 @@ .SH DESCRIPTION
> > > >  .P
> > > >  The keywords currently recognized are:
> > > >  .TP
> > > > -.BI label\~ netmask\~precedence
> > > > +.BI label\~ netmask\~label
> > > >  The value is added to the label table used in the RFC\ 3484 sortin=
g.
> > > >  If any
> > > >  .B label
> > > > @@ -35,7 +35,7 @@ .SH DESCRIPTION
> > > >  All the label definitions
> > > >  of the default table which are to be maintained have to be duplica=
ted.
> > > >  Following the keyword,
> > > > -the line has to contain a network mask and a precedence value.
> > > > +the line has to contain a network mask and a label value.
> > > >  .TP
> > > >  .BI precedence\~ netmask\~precedence
> > > >  This keyword is similar to
> > > > --=20
> > > > 2.52.0
> > > >=20
> > >=20
> > > --=20
> > > <https://www.alejandro-colomar.es>
> >=20
> >=20
> > --=20
> >  -----Open up your eyes, open up your mind, open up your code -------  =
=20
> > / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \=
=20
> > \        dave @ treblig.org |                               | In Hex /
> >  \ _________________________|_____ http://www.treblig.org   |_______/
> --=20
>  -----Open up your eyes, open up your mind, open up your code -------  =
=20
> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \=20
> \        dave @ treblig.org |                               | In Hex /
>  \ _________________________|_____ http://www.treblig.org   |_______/

--=20
<https://www.alejandro-colomar.es>

--oxc4fkte44tg7lyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmln+ekACgkQ64mZXMKQ
wqkj1A//drY2OrpIWvZ3hKCCZHHtK+PHg04Dy/wASQXXOUQv7rOYZd4QaQU/mCep
FuFN0zhLHpJuMPQEDCZkkSdymc0q3sxNIXUnp+34+icVYDr4cULXyfa9bNPMNVhi
j0NWiKa9aQOPIGKhLgATkJ+XT64y9V23AdTGg2AYWwJCmkrrqewyv8LAs6Grdn85
ZOKfSmfz3yFSirck89s/Pl5EKdlrbHrNbTkioIxCc9XmpNBC6SZX6LRUkY+UiifO
F0DD9I13sohz9o/WTiw8yMPHrd6UuVezjIWC6p80i8dC4xphvoLxTaucU1Qvt7qK
hJy3+zkT1rGJlvMwHTneWOZFSfSLubh//E/QpgT187CpKh4r+sUhEe541dlgWTlH
ETw0+wpw+tKU936ahKjYl48kyRUOgaKAex3v7ME10f83Boz9zO0Eu+6F7gqmKYx4
3aXayMufshq5jlz5x7wLCEiiuMrhaVCdvenIqsL76zqqQfQjHicbaWkiEMFSOOgk
ag5N9e1FAOLeoDR5Dbi8+kBa8P7pq3uKO4oOvc5ki8OX7U4PQaGeV9FewUEBGyc9
P4IAFDCy3Ia79XIK6SwMs7pcsaG2yheKNwrNvF5eXufRGvtjQy4hunSkyF3hO64S
1BJyz5uItNjSuVZoI00hqauRFiy/ftLbg04/a94tc/C41GhFTJU=
=LsFZ
-----END PGP SIGNATURE-----

--oxc4fkte44tg7lyz--

