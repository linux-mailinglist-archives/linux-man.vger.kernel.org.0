Return-Path: <linux-man+bounces-103-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D79EB7F04FB
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 10:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F7FA1C203C0
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 09:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21AE34400;
	Sun, 19 Nov 2023 09:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW6orfWt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D281E63C9
	for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 09:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6832AC433C7;
	Sun, 19 Nov 2023 09:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700386006;
	bh=DXYF5hp2dOL4REdGLoA6CMH1WzyfEOiZoDqanAN3VJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hW6orfWtRtICLLRtylIM2+ATpgfBCZfilo10VA4Q6jrnHi8We9iftgzZNHXu2myLc
	 XG4WeUC2wZiMLZWq74DwwBDDgNzBiaGJ6lBaynhg5J+39HojdDEeUObPmMQp87FXCi
	 Z8m9O4Y9EASd1h0GNVgOTOzliEqW2/j2jXJ/sDkbpLqBrV/YG1U3tsXCLcoumRdhGK
	 06SG/JG7a6VHvZ0zT7vIScsSvvJ9dIvIsq9+GpBc/CSA2mXIkoTLiK1+cN1Dp5Et5R
	 1qvOi1ac7PG51iLJRio37pF/i8urP9PC0wSX5HedFmPb6O3nSvDt0/kMCJ7ZFfO2yy
	 ZSKkUQWfVD7wQ==
Date: Sun, 19 Nov 2023 10:29:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)
Message-ID: <ZVnVhcBAK41bDg77@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
 <ZViF1JsZdhobXaWV@devuan>
 <4567510.7DdL66CAHx@pip>
 <ZVlitX4dWaC2m-2S@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bFynmvWdnJDiQVFC"
Content-Disposition: inline
In-Reply-To: <ZVlitX4dWaC2m-2S@devuan>


--bFynmvWdnJDiQVFC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Nov 2023 10:29:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)

On Sun, Nov 19, 2023 at 02:19:43AM +0100, Alejandro Colomar wrote:
> Hi Deri!
>=20
> On Sun, Nov 19, 2023 at 12:22:56AM +0000, Deri wrote:
> > Hi Alex,
> >=20
> > I assume you are thinking this will make production more efficient (qui=
cker).=20
>=20
> Not necessarily.  The main reason is that I want to be able to inspect
> and understand every little step of the groff pipeline.  See for example
> how I build a pdf from a single page:
>=20
> 	$ touch man2/membarrier.2
> 	$ make build-pdf  =20
> 	PRECONV	.tmp/man/man2/membarrier.2.tbl
> 	TBL	.tmp/man/man2/membarrier.2.eqn
> 	EQN	.tmp/man/man2/membarrier.2.pdf.troff
> 	TROFF	.tmp/man/man2/membarrier.2.pdf.set
> 	GROPDF	.tmp/man/man2/membarrier.2.pdf
>=20
> That helps debug the pipeline, and also learn about it.
>=20
> If that helps parallelize some tasks, then that'll be welcome.
>=20
> > The time saved would be absolutely minimal. It is obvious that to produ=
ce a=20
> > pdf containing all the man pages then all the man pages have to be cons=
umed by=20
> > groff, not just the page which has changed.
>=20
> But do you need to run the entire pipeline, or can you reuse most of it?
> I can process in parallel much faster, with `make -jN ...`.  I guess
> the .pdf.troff files can be reused; maybe even the .pdf.set ones?
>=20
> Could you change the script at least to produce intermediary files as in
> the pipeline shown above?  As many as possible would be excellent.

And if then you could split the Perl script so that it is composed of
several subcripts called by the main script, and each subscript produces
exactly one file, that's be great.  I could call each of those smaller
scripts in a Makefile rule.

>=20
> > On my system this takes about 18=20
> > seconds to produce the 2800+ pages of the book. Of this, a quarter of a=
 second=20
> > is consumed by the "magic" part of the script, the rest of the 18 secon=
ds is=20
> > consumed by calls to groff and gropdf.
>=20
> But how much of that work needs to be on a single process?  I bought a
> new CPU with 24 cores.  Gotta use them all  :D
>=20
> > So any splitting of the perl script is=20
> > only going to have an effect on the quarter of a second!
> >=20
> > I don't understand why the perl script can't be included in your make f=
ile as=20
> > part of build-pdf target.
>=20
> It can.  I just prefer to be strict about the Makefile having "one rule
> per each file", while currently the script generates 4 files (T, two
> .Z's, and the .pdf).
>=20
> > Presumably it would be dependent on running after=20
> > the scripts which add the revision label and date to each man page.
>=20
> I only set the revision and date on dist tarballs.  For the git HEAD
> book, I'd keep the (unreleased) version and (date).  So, no worries
> there.
>=20
> >=20
> > > Since I don't understand Perl, and don't know much of gropdf(1) eithe=
r,
> > > I need help.
> > >=20
> > > Maybe Deri or Branden can help with that.  If anyone else understands=
 it
> > > and can also help, that's very welcome too!
> >=20
> > You are probably better placed to add the necessaries to your makefile.=
 You=20
> > would then just need to remember to make build-pdf any time you alter o=
ne of=20
> > the source man pages. Since you are manually running my script to produ=
ce the=20
> > pdf, it should not be difficult to automate it in a makefile.
> >=20
> > > Then I could install a hook in my server that runs
> > >=20
> > > 	$ make build-pdf docdir=3D/srv/www/...
> >=20
> > And wait 18s each time the hook is actioned!! Or, set the build to plac=
e the=20
> > generated pdf somewhere in /srv/www/... and include the build in your n=
ormal=20
> > workflow when a man page is changed.
>=20
> Hmm.  I still hope some of it can be parallelized, but 18s could be
> reasonable, if the server does that in the background after pushing.
> My old raspberry pi would burn, but the new computer should handle that
> just fine.
>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--bFynmvWdnJDiQVFC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVZ1YUACgkQnowa+77/
2zJFHw/8DBIsRPlJqUq6x1n1Hyv4UDdwdvGfXlKn0afRJHXE3WGiNqbb8LK7XOfL
SVLBoF8U10gvs7n71yE/ecEj+YHSsCX46/Lb8NyGOBeZBdD0zV2p3F2E2P7cot+y
x2n9gt22nmOZ9wBw5C9pr1clvuzpdXSz7drq52Raort2OPGHlMA4dFj5mNOf8Z/9
bJyJgSglUNz/OAiMUSmELX6Yv4ZI2B5DLiKEL02JNi+7a9L4t9wSUVW3IlQZP2RL
yG1nO8OGJJYRdP9uksZizRVEFn9KmLQe0i6ysC4SjIBDCLex9unZDjcxfd41i3iI
BlMFNZvGi3U8R4/7u7Ku4K73xkBkzL+y0s49+hlRU/MqqyURDrvHZnBzBDz5B+Ay
TazNGurV/Zq/2rPgSwbS0wxyuSuHKJcW9NWjHr+hYYwlZ+IagkKQgncpr1jRNREU
9esUr/EKnNuStlqpvgsOhZlEFxz6JKEbRXXyoQZ9ue/l4YMJSNrihoohjIIaGjX2
Vmvre0vK9B4kHaFKFNBjTiK/v/V2dTAPS3rc/J82i03bMS1YGQ2744ZrIKWY9j+G
e/zvP/Z6c2hVadr6qoP7jWq537kh0tWPv8G9UjSQOp6S2ksgHh+izjBEwC52zHoT
jI9eUvwLApoxYwH3s8pY73o9HBtyuw71tGyyeqwnspFRyFXzzME=
=ap5H
-----END PGP SIGNATURE-----

--bFynmvWdnJDiQVFC--

