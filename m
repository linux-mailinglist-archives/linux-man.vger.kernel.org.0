Return-Path: <linux-man+bounces-1582-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E95B948DC5
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 13:36:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 606211C21347
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 11:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64311C2338;
	Tue,  6 Aug 2024 11:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J31ss9kl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8696613B2AC
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 11:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722944180; cv=none; b=qHuz1PtyW793OFrLC9KdbSzMZYMkAbP8FWpiXMK7O5x3AMlur4lfaUSLpo4fMbEonteT3PCFqUUQgvkqf9EaW+dHeI5BAUs7G79rpaH+a6TfnSdQnzXAAeUp56Jjsjqh/1xHGnUecTe3AlBCz6ud2vpQtOogHhedADrJiLvkgkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722944180; c=relaxed/simple;
	bh=Ek/1lpfWabDERoiaNax00oTKXgB2jjIejjq5zkX6e6Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HxT2D0ignzxswbrK17luAfWNtC+APsi3AOWR+dnzbPQ2V3XCnh81+C3ZTeGyS/KDrSKcblVvPQIDGIUdJzZk92wXhb6TVubE+2Ryq7RhHjskE1MagB+gWLaQs5juCoXGhnNFoaHRV1Mg8lFeWNQsKHbi/zNUtqoZMlGtjBMZGFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J31ss9kl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D79C32786;
	Tue,  6 Aug 2024 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722944180;
	bh=Ek/1lpfWabDERoiaNax00oTKXgB2jjIejjq5zkX6e6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J31ss9klmk7CYMyDducBI2F7IoD+yqSd8JhherxMKSvLEZt+xrMH3kvZBl1wsGcyx
	 T8rDBd4uCZkIv6C8CvLFc0bmMNbX95wOSl/prus3CNebgo56yNbziY3xSdPIXJGMwr
	 nupjmavvZ2jI+BSgbjSjYoEWpR2sti5pqqX+IfS9I0a9Q4jysqAguqVbqrFG3mukZo
	 3yNN/7MtkB6Gsqyy/jXEyt+TatgHSeLdUbwDryNsA5uel7aUhfv3//HrIHBP6PiqjE
	 PRy2Ixj7vO2M4ixDgC+NC28nS7KyRdYVXzb+cTGP+q4/C011WJnqY3Oofz0G+lntTd
	 ZrQnThD1eqeMg==
Date: Tue, 6 Aug 2024 13:36:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
Message-ID: <7rwm4vtwtpydwp6ucjb64trqa5ysgys4h5kxxu7usi5oelo3df@4uxixq6qysal>
References: <20240806091932.GL14471@fi.muni.cz>
 <fkp5fm23qsghofpdm2rjlghmhnvjetxsr7hwhjoa3wypg2epxj@pcbr3qhxiomd>
 <20240806105611.GO14471@fi.muni.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jc25tv3wuu55zar7"
Content-Disposition: inline
In-Reply-To: <20240806105611.GO14471@fi.muni.cz>


--jc25tv3wuu55zar7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
References: <20240806091932.GL14471@fi.muni.cz>
 <fkp5fm23qsghofpdm2rjlghmhnvjetxsr7hwhjoa3wypg2epxj@pcbr3qhxiomd>
 <20240806105611.GO14471@fi.muni.cz>
MIME-Version: 1.0
In-Reply-To: <20240806105611.GO14471@fi.muni.cz>

Hi Jan,

On Tue, Aug 06, 2024 at 12:56:11PM GMT, Jan "Yenya" Kasprzak wrote:
> 	Hello, Alejandro,
>=20
> I was unaware of "struct file" being called "open file description".
> Sorry for the noise then.

I didn't know it was called 'struct file' within linux.  Good to know!  :)

Thanks,
Alex

>=20
> Regards,
>=20
> -Yenya
>=20
> Alejandro Colomar wrote:
> > Hello Jan,
> >=20
> > On Tue, Aug 06, 2024 at 11:19:32AM GMT, Jan "Yenya" Kasprzak wrote:
> > > The description of SOCK_NONBLOCK is a bit confusing:
> > > "description" versus "descriptor", "open file" instead of "new file".
> >=20
> > The "open file description" is a very specific thing.  See
> > <https://biriukov.dev/docs/fd-pipe-session-terminal/1-file-descriptor-a=
nd-open-file-description/>
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > >=20
> > > Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>
> > > ---
> > >  man/man2/accept.2 | 13 +++++++------
> > >  1 file changed, 7 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/man/man2/accept.2 b/man/man2/accept.2
> > > index afc04603c..65a56e37f 100644
> > > --- a/man/man2/accept.2
> > > +++ b/man/man2/accept.2
> > > @@ -124,12 +124,13 @@ The following values can be bitwise ORed in
> > >  to obtain different behavior:
> > >  .TP 16
> > >  .B SOCK_NONBLOCK
> > > -Set the
> > > -.B O_NONBLOCK
> > > -file status flag on the open file description (see
> > > -.BR open (2))
> > > -referred to by the new file descriptor.
> > > -Using this flag saves extra calls to
> > > +Set the non-blocking
> > > +.B ( O_NONBLOCK )
> > > +file status flag on the new file descriptor.
> > > +See the description of this flag in
> > > +.BR open (2)
> > > +for details.
> > > +Using this flag saves an extra call to
> > >  .BR fcntl (2)
> > >  to achieve the same result.
> > >  .TP
> > > --=20
> > > 2.45.2
> > >=20
> > > --=20
> > > | Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - priva=
te}> |
> > > | https://www.fi.muni.cz/~kas/                        GPG: 4096R/A454=
77D5 |
> > >     We all agree on the necessity of compromise. We just can't agree =
on
> > >     when it's necessary to compromise.                     --Larry Wa=
ll
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20
>=20
> --=20
> | Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}>=
 |
> | https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5=
 |
>     We all agree on the necessity of compromise. We just can't agree on
>     when it's necessary to compromise.                     --Larry Wall

--=20
<https://www.alejandro-colomar.es/>

--jc25tv3wuu55zar7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmayCrEACgkQnowa+77/
2zL91RAAjvV+wt+jJeohq7m9Mr+fqlFubFmCWx4w5w8acivZqcsCv1tT5iQVBaQ1
8NurzFWgXpwKvSGOHu8cwJqF9islJam/Gzea5kyGeyHVPBJghBFVwCtj8PhrDe1y
gsvw2OA1gEZ9bfWYhjf8P8uACo9LcJIKGiNY+SsqckQjBvdvF447jfym1SOK22h7
sV7mJoDhqC+ioXKq0HUji9iOC5GQRTVry7OD5w+YAeqUCN+LgniDGd/bQ4EhNgFH
b0tfim65vozqDF4/vatz/bQsr0bnF3wEzy4pCzdJbTKai30ApJ6PKHFAlnrpyHrt
HY2vO1VuoTtPnfWUmogp0K6ntdQvgZCzplDxM3h944/NH+wnq1Pv0taiKUneXhDs
xx2kC29vOKR7c33eFAv4sAiMkbKYhzKliD8kB+MLJA1zcGtHMO5vGXTgWYD6dgyB
QDKlRLyYRbIzO/10QyN6BlqDzlfDc/hCpOl/mXfReym2Et79rs4UTqLUXiHgHQYf
/YiB0Dv0C8TpOnKwjYsS2tmg/1ZQQF2qEG3LyLPjW8nyiCLTadJUOza8mHrj7zWT
GrC92UbVzM4Pyl5V4WrjiU2yVxu+Q8Z9rOXUjOTXxCNcH3sM0G/FSfBxu0t1hCHF
9jztm3C2emxBJTxK2L+knaI1yDsWG/MwpxdxnHiG0UE1a3TOmnU=
=gczr
-----END PGP SIGNATURE-----

--jc25tv3wuu55zar7--

