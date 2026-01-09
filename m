Return-Path: <linux-man+bounces-4773-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 446ECD08722
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 11:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D29F43075EA3
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 10:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A083358DB;
	Fri,  9 Jan 2026 10:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZLSe+Gl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAD6332EDD
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 10:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767953113; cv=none; b=mLqn7JlL7766sZWp0LdGYq+xIGIRjHjiEE6VY1FClPUYG07cZvqHLhda2KmSPrA1WcI3fKF6ZPa085aQYZKPGYgcm8Fw1RDIj55RyiYEswWSZ/otPAV3qNUpy4FVLwGh2U1zbnxZoyU/rbazMI7bwuohL64e1uCb+fEmCxe/VHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767953113; c=relaxed/simple;
	bh=iV0yDmKtIdt5mhdK4T5CxYIGkfz4lcgoTLbITDbs01M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rgzR2MBmR0CmJ3RWzFdX5aHQdh/IwkZgWrCap0QiHM5cZWiCO18Azg/Jk9cGEZLGUE8ErSKgMSUBR1N2r81VITfqncGsDKj6h22x8ew8tNycFiwqYJBrvsixxvViFV6xu6wO9nC72COmoU8XVqimrVrWymTBz1xKcsthHsK5jGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZLSe+Gl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3AAFC4CEF1;
	Fri,  9 Jan 2026 10:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767953113;
	bh=iV0yDmKtIdt5mhdK4T5CxYIGkfz4lcgoTLbITDbs01M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZLSe+Gl07nRYh2bVVKztn2OB9VCaT0BMqNDoN4oEhPjBUmwraX64xTSQ9zWmc00x
	 PjqAx0doENKCxZfTQFCrFQW4OiH959pQZ6dNm2YBsJ8hYBVjlExdLRmWaXZ9A6AcFL
	 7hus1HCrDfg5XvPkEuKJ1Ccrd/+Z0vNWm63kgFMOJRfWU+pfYlRDdJWJ6N3oIUr9GU
	 KPxU7tXnt00n7jrZKcKa9xYIteLAAob7LlzomwHKAfcd2KF5EdYnED3B4I38cJFpeX
	 XFjiynScH2oH8oS7Itsxj1MnMSpSVTPI6ggD33z9rBCNyxU+R17U14q1QoeeZjGKXC
	 qeojeCn9cFo0Q==
Date: Fri, 9 Jan 2026 11:05:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/12] man/man3type/*: Update simple history of types
Message-ID: <aWDSo41SpN_s4Em8@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <cover.1767931376.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g37shdnn6qzo3fwx"
Content-Disposition: inline
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>


--g37shdnn6qzo3fwx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/12] man/man3type/*: Update simple history of types
Message-ID: <aWDSo41SpN_s4Em8@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
 <cover.1767931376.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>

Hi Seth,

On Fri, Jan 09, 2026 at 02:18:54PM +1000, Seth McDonald wrote:
> Hello,
>=20
> v2 applies Alex's feedback and reformats the stat(3type) page's history
> section by listing the structure's members' different origins in a way
> consistent with other man pages.  I also added a separate patch for
> splitting stat(3type) and its members' listed standards for nicer
> logical ordering.

This patch set doesn't apply.  Maybe you need to git-fetch(1) and
git-rebase(1)?


Cheers,
Alex

>=20
> Seth McDonald (12):
>   man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance
>     of itimerspec(3type)
>   man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of
>     mode_t(3type)
>   man/man3type/off_t.3type: Change VERSIONS to HISTORY
>   man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of
>     off_t(3type)
>   man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of
>     sig{event,val}(3type)
>   man/man3type/stat.3type: SYNOPSIS: wfix
>   man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
>     stat(3type)
>   man/man3type/stat.3type: HISTORY: Split stat(3type) from
>     st_{rdev,blksize,blocks}
>   man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
>     st_{rdev,blksize,blocks}
>   man/man3type/stat.3type: HISTORY: Specify initial datatypes of
>     st_{blksize,blocks}
>   man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of
>     timer_t(3type)
>   man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of
>     timespec(3type)
>=20
>  man/man3type/itimerspec.3type |  2 +-
>  man/man3type/mode_t.3type     |  2 +-
>  man/man3type/off_t.3type      |  4 ++--
>  man/man3type/sigevent.3type   |  2 +-
>  man/man3type/stat.3type       | 22 ++++++++++++++++++++--
>  man/man3type/timer_t.3type    |  2 +-
>  man/man3type/timespec.3type   |  2 +-
>  7 files changed, 27 insertions(+), 9 deletions(-)
>=20
> Range-diff against v1:
>  1:  48b823b1a965 =3D  1:  48b823b1a965 man/man3type/itimerspec.3type: HI=
STORY: Update first POSIX appearance of itimerspec(3type)
>  2:  90f54d80c479 =3D  2:  90f54d80c479 man/man3type/mode_t.3type: HISTOR=
Y: Update first POSIX appearance of mode_t(3type)
>  3:  c1498253ab68 =3D  3:  c1498253ab68 man/man3type/off_t.3type: Change =
VERSIONS to HISTORY
>  4:  6b062b0d6afa =3D  4:  6b062b0d6afa man/man3type/off_t.3type: HISTORY=
: Update first POSIX appearance of off_t(3type)
>  5:  6919cafeb4e3 =3D  5:  6919cafeb4e3 man/man3type/sigevent.3type: HIST=
ORY: Update first POSIX appearance of sig{event,val}(3type)
>  6:  84a9e467d506 =3D  6:  84a9e467d506 man/man3type/stat.3type: SYNOPSIS=
: wfix
>  7:  0611f62eeedb =3D  7:  0611f62eeedb man/man3type/stat.3type: HISTORY:=
 Update first POSIX appearance of stat(3type)
>  8:  9d3a705508aa !  8:  623290de35e6 man/man3type/stat.3type: HISTORY: S=
pecify first POSIX appearance of st_{rdev,blksize,blocks}
>     @@ Metadata
>      Author: Seth McDonald <sethmcmail@pm.me>
>     =20
>       ## Commit message ##
>     -    man/man3type/stat.3type: HISTORY: Specify first POSIX appearance=
 of
>     +    man/man3type/stat.3type: HISTORY: Split stat(3type) from
>          st_{rdev,blksize,blocks}
>     =20
>     -    The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
>     -    structure first appeared in SUSv1.[1]  They were added to POSIX.=
1-2001
>     -    when POSIX and SUS merged, but as an XSI extension (still SUS-on=
ly).[2]
>     -
>     -    [1] X/Open CAE Specification, System Interfaces and Headers Issu=
e 4,
>     -    Version 2, Chapter 4 "Headers", p. 830.
>     -    [2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
>     -    <https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/st=
at.h.html>
>     -
>       ## man/man3type/stat.3type ##
>     -@@ man/man3type/stat.3type: .SH STANDARDS
>     +@@ man/man3type/stat.3type: .SH DESCRIPTION
>     + .SH STANDARDS
>     + POSIX.1-2024.
>       .SH HISTORY
>     ++.TP
>     ++.I stat
>     ++POSIX.1-1988.
>     ++.TP
>     ++.I .st_rdev
>     ++.TQ
>     ++.I .st_blksize
>     ++.TQ
>     ++.I .st_blocks
>       POSIX.1-1988.
>       .P
>     -+The
>     -+.IR .st_rdev ,
>     -+.IR .st_blksize ,
>     -+and
>     -+.I .st_blocks
>     -+fields first appeared in SUSv1
>     -+before being added to POSIX.1-2001 XSI.
>     -+.P
>       Old kernels and old standards did not support nanosecond timestamp =
fields.
>     - Instead, there were three timestamp fields
>     - .RI \[em] .st_atime ,
>  -:  ------------ >  9:  a33e91f7c1b7 man/man3type/stat.3type: HISTORY: S=
pecify first POSIX appearance of st_{rdev,blksize,blocks}
>  9:  e13690db2fb6 ! 10:  3ffb01f7c196 man/man3type/stat.3type: HISTORY: S=
pecify initial datatypes of st_{blksize,blocks}
>     @@ Commit message
>     =20
>       ## man/man3type/stat.3type ##
>      @@ man/man3type/stat.3type: .SH HISTORY
>     - .I .st_blocks
>     - fields first appeared in SUSv1
>     - before being added to POSIX.1-2001 XSI.
>     + SUSv1,
>     + POSIX.1-2001 XSI.
>     + .P
>      +Initially, SUSv1 specified
>      +.I .st_blksize
>      +and
>      +.I .st_blocks
>      +with type
>      +.IR long .
>      +This was remedied in SUSv2.
>     - .P
>     ++.P
>       Old kernels and old standards did not support nanosecond timestamp =
fields.
>       Instead, there were three timestamp fields
>     + .RI \[em] .st_atime ,
> 10:  eb28bf22aed9 =3D 11:  d6fc0ff67155 man/man3type/timer_t.3type: HISTO=
RY: Update first POSIX appearance of timer_t(3type)
> 11:  d25e140aaabe =3D 12:  9b6fedfdc71e man/man3type/timespec.3type: HIST=
ORY: Update first POSIX appearance of timespec(3type)
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--g37shdnn6qzo3fwx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlg0tUACgkQ64mZXMKQ
wqmohw/+OIwVjtJ2UyqxkXKMzHjKNNeDEE1c+LXUmzms3ZNoDRDRFvtLem1WOJZ6
H6vc+1v07IeBdEvTn+Ur4NrrtG5s7QOy5kmvukR89hcuQ04soWKCD62eg7o3YwyF
yksgMPEle4mNrDERURE2NaOCY17Y/aB61aPp1yp+6gqMrrDGi0f9DQ39tvseWKCQ
oiLcMHxPMpKnRLEm0lpJE1JH9wIDlUTmX6kVs360wEc/mLoyavm30IJumgoiqIKD
tXb4U17ynCBENVjFiVO5W6/ilQaPNwbIkA8b93IjrXqdwavL29UW05udzZXD9FTt
mtP7SXShdL58sCMU7wIk48K/J1fEekCESXMDsLtJNK5vMWGjv5+5aNCK2Duk6yRW
N8X9k78yzl+64Cy72qq4bLa4YbUW05Qfb1/m86A50nxkIzxp5bdPrYqOg0EiyAKh
gG3/oEKQegV04nrWBK5mrO1Rx1/aTZaZytmlY1a1hyfEBscjRliFke4jhHwkx/eH
ecYo8XUwX7IbiARknX2/qK2LEvaamLzurAAo2E9CQNc/Dcz2JyIYNJfB8VV3BR6W
qQPaGmbFX9nAMrr9VmLwrm044hGGznrit3vQXWPhUMJXj/UsFuLnUPIn/aYL/hvr
PLVuInTs+96ANUhVLEYJ/WlyzPuKlHwShmsOmr5tB0K5aj+uO1E=
=7wr2
-----END PGP SIGNATURE-----

--g37shdnn6qzo3fwx--

