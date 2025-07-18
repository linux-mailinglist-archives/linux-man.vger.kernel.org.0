Return-Path: <linux-man+bounces-3281-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1515B0A449
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 14:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30AEC1C4324D
	for <lists+linux-man@lfdr.de>; Fri, 18 Jul 2025 12:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52DBE2D94B4;
	Fri, 18 Jul 2025 12:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQu9rXzG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124AA221297
	for <linux-man@vger.kernel.org>; Fri, 18 Jul 2025 12:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752842245; cv=none; b=psx1TePYzpvg2jrsZxZ6X4/V5OWDMM0eudzpJhZKZwkIBc1S+t0uPFMugTjfEJLXT+ZarfoIrWifILnm9bhDzH6lb4CtJPXU4FyFLIbCg2YJfwvdyHZ+3GNJNHOdmoaLQuxmS/TBxJxaq52SQ3FNb1Lae+ypQhHqjmoaM2gvXeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752842245; c=relaxed/simple;
	bh=HS/HAAxZIVmHlmfWtDZr/o4AxJzumSlPXPp3QQ9JkOY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qyEM2FvVUbunqFU7TQeRLZRZSe1orVEJuakzGW0+68mH1FqVasoptG7hfHfGdvq6vpNiWrzorI7gtj+k33AUQf6MXQUgSbP2T6j++TqqkvnsFT7HkgB0ueOnffJ+tFfvBQQIBBgXyw6SUE0JqUbtf5b4qbjCzJDXD1ExRuULch4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQu9rXzG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FA1FC4CEEB;
	Fri, 18 Jul 2025 12:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752842244;
	bh=HS/HAAxZIVmHlmfWtDZr/o4AxJzumSlPXPp3QQ9JkOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nQu9rXzGQhnKpWWBUC60RW8cNldigYYqpyUV7PLHS6G3bHR4gQsbcLpMqHJz7XzKs
	 x8zW7TuKbDdxFlI+ley54kBdQD4A24CTBWh9Mj01w7HyxR12CAVW19B1gvDtkNysQx
	 Ql+eeyH0HbEdfqV3binPL0jZW7SxsFavX/VAKxXjbyT6EcMCmT+qkpeJjyaQH5K88r
	 +/de159Cy3SDRFaWyAWi4D/3EWfsBTq9e5Mrwgf1vNVTpHrUIVgljY0A7bqiIQlaU0
	 Oa28nTNuXWVbGNdshV9+uD2S3vg9Lyf2KgxiO4us/NIX0T3aUQG4PfVkDMNcjUtuuC
	 VXuiijXNYXt3g==
Date: Fri, 18 Jul 2025 14:37:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: AW: drop ia64 from man pages?
Message-ID: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
 <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
 <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6vv3igxskxjtyw6m"
Content-Disposition: inline
In-Reply-To: <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>


--6vv3igxskxjtyw6m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: Carlos O'Donell <carlos@redhat.com>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: AW: drop ia64 from man pages?
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
 <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
 <CAJgzZoq91VceHKZWetjzr5gOQ=Sx=ReCFfY2erPo7_Dxra9=xA@mail.gmail.com>
 <d27ee305-708f-4733-b8ea-b9e5bac84087@redhat.com>
 <CACGkJdtNPkL3+nJmCNStv1mnDGERvzwfL0RH8xH6ocK_Jp90YQ@mail.gmail.com>
 <1d5c8ce8-9ba0-4e3b-9866-95047741d5d2@redhat.com>
 <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>
MIME-Version: 1.0
In-Reply-To: <8d01afa4fa094d0a9cd0d2d74e5c7325@bfs.de>

Hi all,

I've pushed this commit to my branch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc0e5ca37b2a562b9e7b9e39fc9091ea7f2693d62>

If you think any of the details there are historically unimportant, we
can discuss removing them, but at first glane, all of them seem
relevant.


Have a lovely day!
Alex

On Fri, Jul 18, 2025 at 12:18:28PM +0000, Walter Harms wrote:
> >What makes a valid variant though?
> >There is no upstream supported glibc older than 2.32.
> >There is no upstream supported Linux older than 5.4 (LTS).
>=20
> Maybe, i am using a LOT of embedded Systems and they are using sometimes
> really old stuff. So sometimes i am thankfull for information about older=
 variants.
>=20
> reminder: man pages are not for server stuff only.
> Same goes for older programms, you can only understand when you have the =
old documentation.
>=20
> So as long as IA64 is in use, there is a chance some need that info.
>=20
> ________________________________________
> Von: Carlos O'Donell <carlos@redhat.com>
> Gesendet: Donnerstag, 17. Juli 2025 14:13:54
> An: Eugene Syromyatnikov
> Cc: enh; Alejandro Colomar; linux-man
> Betreff: Re: drop ia64 from man pages?
>=20
> On 7/17/25 6:30 AM, Eugene Syromyatnikov wrote:
> > On Wed, Jul 16, 2025 at 7:43=E2=80=AFPM Carlos O'Donell <carlos@redhat.=
com> wrote:
> >>
> >> On 7/16/25 12:30 PM, enh wrote:
> >>> i didn't look at the other pages, but quite a lot on the clone(2) page
> >>> is actually about what glibc does ... but glibc already removed all
> >>> this stuff. so it should probably not be more than what we have for,
> >>> say, m68k which is just "read your kernel/libc source for more"?
> >>>
> >>> a corollary to "museum hardware should run museum software" might be
> >>> "...and use museum documentation" :-)
> >>
> >> Agreed.
> >>
> >> There is a balance here between documentation that covers a reasonable
> >> number of use cases, documentation that is easy to maintain, and
> >> documentation that is easy to read (without superfluous information,
> >> either too new or too old).
> >>
> >> It has been about 1.5 years since IA64 started being dropped, and I
> >> don't see any reason to keep very specific documentation about it
> >> around except as smaller interesting historical notes.
> >
> > Depends on whether man pages limit themselves to reflecting only the
> > "current" version (whatever this is, as man-pages is not part of
> > either linux or glibc source tree), or strive to provide actual useful
> > reference for users of systems that may have different variants and
> > versions of the kernel and libc.  If it is the latter, outright
> > removal (instead of keeping all the pertinent information in the
> > history section) is pretty short-sighted.
>=20
> (1) Co-evolution.
>=20
> The Linux man-pages project, and most projects, co-evolve with the
> ecosystem.
>=20
> At any point in time you can take the most pertinent release of a
> project and use that. VCS history is available to everyone.
>=20
> This is how downstream distributions have been evolving and serving
> users.
>=20
> (2) A loose matrix of "supported" (not "current")
>=20
> The project, as I see it, has been providing useful information for a
> loose matrix of supported kernels, supported C libraries (glibc, musl,
> bionic), and supported international standards e.g. ISO C, POSIX etc.
> along with other APIs from BSD etc.
>=20
> (3) What is a valid variant?
>=20
> Once something is deprecated my opinion is that we have a duty to
> our users to attempt to cleanup the material and make it easier to
> consume with less relevant information moved away from main sections
> or pages.
>=20
> At this point in time I'd say IA64 is deprecated in the current
> releases of glibc and linux and so moving the related information,
> or cleaning it up seems appropriate. How much of that to do I leave
> up to Alejandro as editor (or contributors to work out).
>=20
> What makes a valid variant though?
>=20
> There is no upstream supported glibc older than 2.32.
>=20
> There is no upstream supported Linux older than 5.4 (LTS).
>=20
> So between the two, there is still IA64 support present.
>=20
> Supported (all upstream projects support it)
>   -> Deprecated (current project releases have removed support)
>      -> End of life (no actively maintained project support it)
>=20
> I think we should cleanup and move content at the "deprecated"
> phase, which is where we find IA64 today, and when we get to
> EOL, we should be removing all the content related to it except
> for historical references that serve an educational or
> elucidating purpose.
>=20
> --
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--6vv3igxskxjtyw6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh6QAAACgkQ64mZXMKQ
wqnVtA/5AcCoZTW2y76nC8xT0ISDAFGK6Jnv2nEWyJav13rnDVFIDiqoi/oOLDBv
uoM26B49uvIGBrLOhxt65rj464pqdRAm4KYMovjS8XZUlDj9hVVYmo1am4SrrbDu
/3cElGBPy8CaNNdPjHLxrNZ7KkkhcJH5aXM2Ztlq6Jy9xfU51Gl6JZhB/vyVCmI/
q76QlZBoTHlbX4LycGJJtQcAdOGDi67OOtmA4HdXkfAG4ws8N6yvBJVfG8Hxv28k
7wL7yctvf90tASGPOrLjFfy+q1mcsDbEDcc5ZR7/a3bx4J2U4W3jfrlRivACwAgE
Jth6LFWPwc1V+sdi7l5engz5jVbZskBCfS53HLLCrkpqAbTbBQhKjmYniPk6/7WS
9olWRu12gTEnpaYB6wF76+3MX5LSrBo6DKZDG5vbnd4CQK5rKrC+lRTIRnUauqW2
lkuwjpuOtuEeV0WVFF+atdwX5e7BBOKPIaltjy2kx2S90kg8GHR5x4UKSWfmNyQJ
7Twon82J8hTvuu7GIRgTCjIhEHiuTCFbEoXGV/eZlMSzFZEP1GROXr/xQR/OwwpK
McyDrT9QWv4p2NwxJ6+ICcYETSArVrqclTu3AW7ar/qci5rIGNy9/qbgq3IOxuq8
IQt+K1ti/OHDyouwyAgmJUf3n2g/L97rjhVTJjfdDyu0Z65ajwE=
=N/f/
-----END PGP SIGNATURE-----

--6vv3igxskxjtyw6m--

