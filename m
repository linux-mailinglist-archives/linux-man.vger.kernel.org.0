Return-Path: <linux-man+bounces-2474-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182AFA38E69
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 22:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E50B3B465F
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 21:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852EA1AA1E8;
	Mon, 17 Feb 2025 21:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv3EK6IP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0C1A4F2F
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 21:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739829447; cv=none; b=PpAqaUSCrOC0TRtIdgA2mc3E52iNOSVTaxCW39CgauOhtB1HMYNviSCE3ZnEjHLG7gVUyEZc+rWmZLCBgz5frfCNVsoHbmzaC8/sB9SPMFQhnB+TniTgj8OMLLZK2e02pw8Zn3k16rvuKdImcsUN5aPInKHtBYC9ydLWtmYuufc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739829447; c=relaxed/simple;
	bh=j3npxDEEGqCqo9x6QwQfWGyCUDVoLgUwB0vLg4/3b98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OHVFjK9oOwZq1bkpLjCFCohzIfHsZY9VPze6J6/451WmKy7cIW3Dx1RYIHem40HSK1x70AZAIRJ09fruEAw5zlS8GCqSgt5/C5nvvOJDdJn1ovKqZqLrVagomgm08C9VwYQcKoRNWzMKHfyQ3wl8lsE2S/G3KaI+LxnIivONJ5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv3EK6IP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FB49C4CED1;
	Mon, 17 Feb 2025 21:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739829446;
	bh=j3npxDEEGqCqo9x6QwQfWGyCUDVoLgUwB0vLg4/3b98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nv3EK6IPtk8XeIZXcb5X+oQ+SBi6LQSLiYFdVoS8V93OwroqWpYEB/XMHLoBSDNls
	 an+w8vQ2bXZH9ZH1CI1DR568KVFSTrkTJw7mWlxfNFJMd0Z8SFla7nrd8WW81jKwUy
	 7Hry1WPpalYWDw+VfB8nbRIzGunbtOlmbxc8QAGEfbtPiuezzznS+HHNWXOmL+yUQH
	 PlrpDUhXct8JaFIgFmgtDZA6HKtwB+vK+/nJFQqhOoCnZIN123G4f5LVi1bMnG/XH7
	 /n19Vh1IDa88+nQyW60vGqWtBihGW+97Io9iPfyknviV0G4F35VMk7uJS4CN7hl4jt
	 Bd1PPRDAmx/Zg==
Date: Mon, 17 Feb 2025 22:58:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Problem in prepare.pl (PDF book script) when handling Unix V10
 manual pages
Message-ID: <nd77jkxtgzh4harov35j6au7tgch4qbkxraa2x5fdwxgfeu5t2@7ttpi3qhggts>
References: <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
 <144994063.NCV6AghAH5@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="apxd6nn3nmshoulc"
Content-Disposition: inline
In-Reply-To: <144994063.NCV6AghAH5@pip>


--apxd6nn3nmshoulc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: Problem in prepare.pl (PDF book script) when handling Unix V10
 manual pages
References: <ydrwk436ykp6qbl7mc4huswr4sp2rolev6mzxo4j3ccwweesbd@sdogm3kxgxew>
 <144994063.NCV6AghAH5@pip>
MIME-Version: 1.0
In-Reply-To: <144994063.NCV6AghAH5@pip>

Hi Deri!

On Mon, Feb 17, 2025 at 06:52:46PM +0000, Deri wrote:
> On Thursday, 13 February 2025 16:08:39 GMT Alejandro Colomar wrote:
> > Hi Deri,
> >=20
> > I tried generating a PDF book from the Unix v10 manual pages, and found
> > some issues with the Perl script.  I don't understand Perl, as you know,
> > so I don't know what to do.
> >=20
> > I've attached a tarball with the manual pages that I'm trying to handle.
> > They're slightly modified V10 files, in order to make them slightly more
> > conventional (e.g., the =3D.1 page is now called eq.1, and the manx/ dir
> > and other dirs than didn't have a digit in their names are now divided
> > into dirs that have one digit after the name (e.g., man1x/, ...)).
> >=20
> > The command I'm trying to run is:
> >=20
> > 	$ make -R build-pdf-book MANDIR=3D~/Downloads/unix/man/
> >=20
> > (Of course, replace that path with wherever you untar the tarball.)
> >=20
> > The error I see is a forever loop (or so it seems) with the following
> > error line:
> >=20
> > 	Use of uninitialized value $v in exists at
> > /srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/pdf/book/=
prep
> > are.pl line 67.
> >=20
> > Would you mind having a look at it?
> > In case it matters:
> >=20
> > 	alx@devuan:~$ groff --version
> > 	GNU groff version 1.23.0.2695-49927
> > 	Copyright (C) 1989-2023 Free Software Foundation, Inc.
> > 	This is free software, distributed under the terms of the GNU General
> > Public License, version 3, or any later version, at your option.  There=
 is
> > NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
> > PURPOSE.
> >=20
> > 	programs in constructed pipeline:
> >=20
> > 	GNU grops (groff) version 1.23.0.2695-49927
> > 	GNU troff (groff) version 1.23.0.2695-49927
> >=20
> >=20
> > Have a lovely day!
> > Alex
>=20
> Hi Alex,
>=20
> This was caused by nonsense "aliases", see man1w/splitrules.1, and man1b/=
pins.
> 1g, which looks like an alias, but is not. This has now been fixed by bei=
ng=20
> more tolerant of weird entries which look like aliases.
>=20
> There are a lot of pages which should have aliases added.
>=20
> I found some other issues which I have fixed:-
>=20
> When an alias points to another alias the code was meant to keep looking =
until=20
> the real page is found. This affects the recent 6.11 (an example is=20
> fchown32(2) which has no associated page number in the overview panel, it=
 now=20
> works properly.
>=20
> Since the v10 pages are intended to run on a version of troff with a two=
=20
> character name limit (I think). Code such as ".ne4" cause a problem for g=
roff,=20
> which needs ".ne 4" to work (otherwise groff looks for a macro called "ne=
4"=20
> and fails. Many of these issues are now corrected.
>=20
> A strange issue is that if a page contained a "$" character it sent eqn i=
nto=20
> the stratosphere (thinking was dealing with an inline equation), I killed=
 it=20
> when eqn chewed up over 24gb of memory. I have no idea why, and it is not=
=20
> triggered by a single page containing a "$", so it must be triggered by=
=20
> something in an earlier man page which triggers it, but changing some "$"=
 to=20
> "\[Do]" fixed the problem.
>=20
> One page redefined the ".P" man macro, which then affects all following m=
an=20
> pages.
>=20
> One page introduced a string register called "mc" which then masks the gr=
off=20
> command ".mc" with very strange results .
>=20
> Font L is used in many entries, no clue what font this is, but I convert =
to=20
> font CB. Please change to taste (see lines 130 onwards).
>=20
> Several pages use lower case macro names, i.e. ".th" rather than ".TH".
>=20
> I have "fixed" a lot of the problems but there are still many warnings wh=
en=20
> running groff. I have attached two parthes, one for the V10 man pages, an=
d one=20
> for prepare.pl. You should be able to produce a "useful" book after apply=
ing=20
> these.

Thanks for all of that work!!

>=20
> If you wish to see the fruits of my labour as a pdf, it is here:-
>=20
> http://chuzzlewit.co.uk/UnixV10.pdf

It looks quite good!  I need to update the front page, and it's done, I
guess.  :-)


Have a lovely night!
Alex

> Cheers=20
>=20
> Deri

--=20
<https://www.alejandro-colomar.es/>

--apxd6nn3nmshoulc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmezsOgACgkQ64mZXMKQ
wqlythAAlsm4SradKn7IymN/WtGohY/W2IZERTExffO5RXAGEaD56FckK2c6a3Dn
HuMOfbZzEkr7XzX262yXbRd6TPbAW3igQVZXlHAT4DKeXHcS7b826wRBxVNzDzl8
i2kYDU8EwdwoDVCUVDR/XZVumpKPg21TjD25/yGMUWv/hl8p+S4Ihc3S9qCMqQoq
UABuJG8icnOWeW9gcO34GvBo8NNZd6Vm0eFNSNobKw2daF/5WvKXTHmfkVja1IIf
7IcXJF/q7CBdMCs76DpbcdhheMumERp5y40ETIb9Nk6W9xKGp2AK5zhuVRrdG7m4
w6/NmvjUyqZXZsz4KwYUxDIpcRT7jWMuuLNrLHpc+k5yg4SBUu7FXwXccgjMYk5v
wYaDEypM7eFu3MqC6wWkrrhEl/yJKhCpdyqsbkCEHmQq+dwkMr/x0B9wbgrNXZWK
zFnq0jtAyHC7cJ4Oir2hH2/n9uSFp7kmJdNJMpmiCpYSH7/If+TsR27CBEjAkCO0
FO3YJ8zh4DaenXt0S6d5QTI6CAyRpUfDI1I/M/YxoBzN6nDUNxOBEIi1mpS45eyq
YMozEmSp98LpPraJo97RxNPtRkEvIVuVUFgwu3BvGZ86m/9A+lvwphyHm1x1WgPT
Vd4XXcEE/CBEl4pT/N98EORkoBaLxXo3+p6WCO5eJ/Fg3Yne5Hw=
=/3eS
-----END PGP SIGNATURE-----

--apxd6nn3nmshoulc--

