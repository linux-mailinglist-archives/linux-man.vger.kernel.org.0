Return-Path: <linux-man+bounces-3283-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D03B0A4AF
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 15:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D66B61AA72C6
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 13:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C262D94B9;
	Fri, 18 Jul 2025 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yc3RPdvl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341F51F949
	for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 13:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752843730; cv=none; b=Ns5JL9+IIUP4bpfTqhg4H1Ayvz9cuZwvTmerZiCO+C09Jiq1K6znoPR4gnknqqQWbyY6ZiW7HWIvj6zrbUaXgOFStxRqOnlaZPvjgbc9z7ZxLNN3EiNAcPhFBvwkBVeDUglxXYaeG73Y57ok3fvgYORQHrkl6qEXSWChvgCfdj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752843730; c=relaxed/simple;
	bh=BfLdwf3Vn4otr5ZqfCc5fNgyTpkEiyQJArSmJo1CS0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TK6DIoFaw/8R56YFBDCNeUVmWo7tmxYfJdM/vBve/ampxAhvpZt74JJixA6AVFuSir6UooLGBt1+fhQR/mSAcD1iDCaRRtmgp6cwkgDAJQt9keJysEr/Fsu6q00dEb8HtXM02bjmR0fU2LDCmybLgOYwKQDEduoH/ZgdMCYjnrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yc3RPdvl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8665FC4CEEB;
	Fri, 18 Jul 2025 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752843729;
	bh=BfLdwf3Vn4otr5ZqfCc5fNgyTpkEiyQJArSmJo1CS0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yc3RPdvlV5PdNMeS8R4R1iPlDeovD64ATIETGtbHmktpfT8UuMT7QkwVCTeCMD5Jr
	 +ew5REhWl4mvDtt7l8Tsrjbi5kxheN1QXRx68ILvOGVva4xuQ8yHR2yBDuVemhxCOw
	 Rigswfa4ClAmwqqIZz/uKmzTdugDzzhzdU1ocH6G459xGKRUEfXDgEo8yC3BV2QRqD
	 9Xzfkl9L/8utmgjBPEpjke1HXs4f2jAE6OzyZ30HV3YEWJUwMiEEfkm0WmW2fDAzrK
	 h0o6iQdOZuhKimHzXVLHC9YokGBgweHWIQFMIxhw2SYCkEHCm1SZTM7a/iHd8x07zP
	 Zb3ocqbcewYNw==
Date: Fri, 18 Jul 2025 15:02:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Walter Harms <wharms@bfs.de>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: AW: drop ia64 from man pages?
Message-ID: <cfobstnjxnyyb3ehcpxxoemm7er3fqoxbaguh5jxp4pdgs2hha@w273zt6hcvjn>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
 <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
 <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
 <e12d5818-a741-4523-a9b4-a1a637f04f78@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dbpczfpxludieshn"
Content-Disposition: inline
In-Reply-To: <e12d5818-a741-4523-a9b4-a1a637f04f78@redhat.com>


--dbpczfpxludieshn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Walter Harms <wharms@bfs.de>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: AW: drop ia64 from man pages?
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
 <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
 <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
 <e12d5818-a741-4523-a9b4-a1a637f04f78@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e12d5818-a741-4523-a9b4-a1a637f04f78@redhat.com>

Hi Carlos,

On Fri, Jul 18, 2025 at 08:43:24AM -0400, Carlos O'Donell wrote:
> On 7/18/25 8:18 AM, Walter Harms wrote:
> > > What makes a valid variant though?
> > > There is no upstream supported glibc older than 2.32.
> > > There is no upstream supported Linux older than 5.4 (LTS).
> >=20
> > Maybe, i am using a LOT of embedded Systems and they are using sometimes
> > really old stuff. So sometimes i am thankfull for information about old=
er variants.
>=20
> There is always a matching version of the man-pages that is
> the same age as the sources you're working with... and so
> documents the conditions under which the software was
> developed?

Michael Kerrisk had a strong opinion about the latest version of the
Linux man-pages project being always the best choice of documentation.
He didn't want to remove any information, unless it was truly irrelevant
even for historic systems.

I don't have good reasons to change that.  If something is really
superfluous, I'm open to removing it, but if not, I prefer keeping it.

> > reminder: man pages are not for server stuff only.
>=20
> Absolutely agreed. Wherever you can cram a Linux kernel and
> userspace :-)
>=20
> > Same goes for older programms, you can only understand when you have th=
e old documentation.
>=20
> This supports Elliot's comment that you can use the older versions
> of the man-pages releases for these?

I think Walter meant having documentation for the old system, possibly
in new versions of the documentation.

> > So as long as IA64 is in use, there is a chance some need that info.
>=20
> That information is not being removed from the git history or the
> available releases.
>=20
> e.g. git checkout man-pages-1.70
>=20
> There are tags going back to 2004.

Actually, we have git history going back to man-pages-1.0, from 1993.
The history prior to man-pages-1.70 is less granular, at only one
commit per release, but it's still useful for some purposes.

	$ git log -3 --pretty=3Dfuller a18a162dee92
	commit a18a162dee92d541eae37a5c51b59ba288d4cf82
	Author:     Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
	AuthorDate: Mon Nov 29 00:00:00 1993 +0100
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Mon Dec 19 21:01:32 2022 +0100

	    man-pages 1.2
	   =20
	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archiv=
e/>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	commit 84c15c9af67a6cfe821d2a6c8db6418af3c60bd0
	Author:     Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
	AuthorDate: Mon Oct 11 00:00:00 1993 +0100
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Mon Dec 19 21:01:32 2022 +0100

	    man-pages 1.0
	   =20
	    man-pages-1.1 seems to be missing.  :/
	   =20
	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archiv=
e/>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	commit c8eee6c3c1ec97ddc7b8572e30da3d193dcf0f9f
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Mon Dec 19 20:15:55 2022 +0100
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Mon Dec 19 20:15:55 2022 +0100

	    void
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

You can find those in the 'prehistory' branch in the repo.

> And very old archives:
>=20
> https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/Archive/

And also the pre-2.00 archives at Andries E. Brouwer's site, linked in
the commit messages above.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dbpczfpxludieshn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh6RcgACgkQ64mZXMKQ
wqkzvhAAgX1mJOJwY6KpAxzHGQqmXNBd+AzWBWfj6TOwHMSSEvYipBrO9NRVwexv
AlUrHZcLPePef0swzliu02IDCmZlTwvf07T+CgJEo4jYZPFJdt0FV1kwQGExx9Am
AyYjPe5e+bIWYwAH1oTvO5yOcelD/JNDzkZB8vashTSxOSQuJotgNPJyER0zF6L6
Jd/T9xC+eRFd2M7IOoEqP2CfOxPvU2gUMEVBdg4RyD1XcMqB3XcVq4SWU/bNTlV3
QQF5eWFM3BeIcezCI1CQ8VJei06JAnDqCMoJjhcjNWNT+cyP0F+KcdcYwjYGdzN5
gzWV0OIxA/LelYJ23OXqjoGBSgCkikOgwGDB+o/FaBQBytuApKx6o/oxTM2yWw7c
YnGRPlZbSuNIuYCr1vcZLJE7ytqFgxtw6752AQjqTIiuiEsB/+kjaG+eGoE9rs7a
9IXnhzLRnRwVZejcxfLeay5bORYMNat6bNZZ3Tb9bepSLP0AhG7a7si/xjRZ2T14
J6KMEgxHgLXcg6ctVX8HyiHwWNyka7tHkbMDXa/QXRYkK6/C0PcDrPrpm9gOyFhF
GoDz3h229J1H6HfitRZFyEq8Pb2lLD/fCrrTZSfvUJNWi8rx6lBKg3FyuwXxoj9+
QDq01BhVORUNTELSfGeKbzlZSPUnVGrx+TsbUD5UVqXU8//1zCA=
=DedG
-----END PGP SIGNATURE-----

--dbpczfpxludieshn--

