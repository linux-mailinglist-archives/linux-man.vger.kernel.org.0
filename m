Return-Path: <linux-man+bounces-102-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF61F7F03DD
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 02:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 698B3280E48
	for <lists+linux-man@lfdr.de>; Sun, 19 Nov 2023 01:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F66C7F3;
	Sun, 19 Nov 2023 01:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECWitmw4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E291B7F1
	for <linux-man@vger.kernel.org>; Sun, 19 Nov 2023 01:17:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5D9EC433C8;
	Sun, 19 Nov 2023 01:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700356638;
	bh=0CRY7QteYmW17JyAGeYiZhyHgnbANRxkxkRXl9PVhWQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ECWitmw4qVT0TIqFd7rDbSeTSwKSEYT707ZEHqBDWjXBJbIhyDe0/Irwyn1uaQnm/
	 P/ITRBCouVF6UPXxCjaqS7Vyc9aEHS82yc4hZHn7QRwANkdQBnus9H12ZXrlC3I/fR
	 iFUTsQpMyvDRdPgqOA7dD6WrFYA9A8zaOc2LVS5XAsf5++YkMg2EVI2bTlw/DhsNzq
	 wAuRllpEejovQkQK2IFCc3pC6FkfDWe9k2JUec1TpGRMjfXgpxXo2RwAZt/i6GOcR6
	 f8p5tYiy3QyxY2/PopbeTpLgGg1mA7WsIb3o+7BtLXmFt+WkDu7uoK4xNTRcivWmAB
	 gkAAl6YeFb68w==
Date: Sun, 19 Nov 2023 02:19:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)
Message-ID: <ZVlitX4dWaC2m-2S@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
 <ZViF1JsZdhobXaWV@devuan>
 <4567510.7DdL66CAHx@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2N3utZTG4ag/b6k8"
Content-Disposition: inline
In-Reply-To: <4567510.7DdL66CAHx@pip>


--2N3utZTG4ag/b6k8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Nov 2023 02:19:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: PDF book of unreleased pages (was: strncpy clarify result may
 not be null terminated)

Hi Deri!

On Sun, Nov 19, 2023 at 12:22:56AM +0000, Deri wrote:
> Hi Alex,
>=20
> I assume you are thinking this will make production more efficient (quick=
er).=20

Not necessarily.  The main reason is that I want to be able to inspect
and understand every little step of the groff pipeline.  See for example
how I build a pdf from a single page:

	$ touch man2/membarrier.2
	$ make build-pdf  =20
	PRECONV	.tmp/man/man2/membarrier.2.tbl
	TBL	.tmp/man/man2/membarrier.2.eqn
	EQN	.tmp/man/man2/membarrier.2.pdf.troff
	TROFF	.tmp/man/man2/membarrier.2.pdf.set
	GROPDF	.tmp/man/man2/membarrier.2.pdf

That helps debug the pipeline, and also learn about it.

If that helps parallelize some tasks, then that'll be welcome.

> The time saved would be absolutely minimal. It is obvious that to produce=
 a=20
> pdf containing all the man pages then all the man pages have to be consum=
ed by=20
> groff, not just the page which has changed.

But do you need to run the entire pipeline, or can you reuse most of it?
I can process in parallel much faster, with `make -jN ...`.  I guess
the .pdf.troff files can be reused; maybe even the .pdf.set ones?

Could you change the script at least to produce intermediary files as in
the pipeline shown above?  As many as possible would be excellent.

> On my system this takes about 18=20
> seconds to produce the 2800+ pages of the book. Of this, a quarter of a s=
econd=20
> is consumed by the "magic" part of the script, the rest of the 18 seconds=
 is=20
> consumed by calls to groff and gropdf.

But how much of that work needs to be on a single process?  I bought a
new CPU with 24 cores.  Gotta use them all  :D

> So any splitting of the perl script is=20
> only going to have an effect on the quarter of a second!
>=20
> I don't understand why the perl script can't be included in your make fil=
e as=20
> part of build-pdf target.

It can.  I just prefer to be strict about the Makefile having "one rule
per each file", while currently the script generates 4 files (T, two
=2EZ's, and the .pdf).

> Presumably it would be dependent on running after=20
> the scripts which add the revision label and date to each man page.

I only set the revision and date on dist tarballs.  For the git HEAD
book, I'd keep the (unreleased) version and (date).  So, no worries
there.

>=20
> > Since I don't understand Perl, and don't know much of gropdf(1) either,
> > I need help.
> >=20
> > Maybe Deri or Branden can help with that.  If anyone else understands it
> > and can also help, that's very welcome too!
>=20
> You are probably better placed to add the necessaries to your makefile. Y=
ou=20
> would then just need to remember to make build-pdf any time you alter one=
 of=20
> the source man pages. Since you are manually running my script to produce=
 the=20
> pdf, it should not be difficult to automate it in a makefile.
>=20
> > Then I could install a hook in my server that runs
> >=20
> > 	$ make build-pdf docdir=3D/srv/www/...
>=20
> And wait 18s each time the hook is actioned!! Or, set the build to place =
the=20
> generated pdf somewhere in /srv/www/... and include the build in your nor=
mal=20
> workflow when a man page is changed.

Hmm.  I still hope some of it can be parallelized, but 18s could be
reasonable, if the server does that in the background after pushing.
My old raspberry pi would burn, but the new computer should handle that
just fine.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--2N3utZTG4ag/b6k8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVZYq8ACgkQnowa+77/
2zJo4RAAilfJmwQE53D2OurRt2xc5D1ptz5HAiKGdAJv4IzaSpL6eMXrnkE+ilnv
LksJiU6k3Y/p2GwoOGj1rmwwo6ecpAqlh75aeW0PV3sexpor2nguHfyuXuuJgudl
9aDTbmAsAyEImBJCAvG1bZKD7MSuY8PhrSNO/Qhk8fSU4+LcTSlIaWJahL58hrD/
COrNKA1LRELGD+JQju1Q9OOMhlYaT7vruXMCuQwcgGpa2X70V5vua4rF3pJoDjSs
E4iMd2yFX03+U0tVzkagXnOEGrbEFEH+iPPeWQf3AE/RYAHabLfcfRx0m9pR11F5
ujLZuVlCKD3zvPNz06Ad3NAwq0qiGJch18hLZF5pCC4NfjRQ0X5/MRsnrsRrgB12
QKKVMTP8mh6NVpNTjdvehFkHuDZunEKZle3K20p3xecGT+2S9u8F01E1/XMd5//Q
ZV5MKcGEl2PhWuDfxetRG+MGcExT2fWFrRPlVbPDuREldtTJWyiNAKUzmh1VJeMj
AO1tsvXv/5IT4eIDD/T9h65ipjOQrkIPTGmQ4DbzhMutqZ3gJ+T1RumX8Acy7n6n
xigxATSVCCxp6MftERQqGCWFC5dyHBwkBt0Cj+EcTsz9t4J/nK3KOiyuUXrMZrN8
J0LrhOfF5BXl9S0SSvjVkymxaGxgInFAnaMqTUBO3joNBBeIrcA=
=5maI
-----END PGP SIGNATURE-----

--2N3utZTG4ag/b6k8--

