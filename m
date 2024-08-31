Return-Path: <linux-man+bounces-1747-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABF6967392
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 00:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2C951C20D3B
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83A18170A13;
	Sat, 31 Aug 2024 22:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ist5qtL+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4290C14C5A9
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 22:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725143429; cv=none; b=EHe+22TTDGvfR+UyMEzeadwVO3wqhiOmLaYASnOb7wZp1iM7LaAt5ifO3HvxvlC1+ageItYJFZQCY0GBieYgG5dj+1ZMTw5zsqdFmUFYp1sEZlQulWkY4C6ycr34KH2+9Q8J0FlgrzW33v/mEM2JOlLJORjqvTiu6NFo9F+7UUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725143429; c=relaxed/simple;
	bh=KSX4fEJ+v6ldl+3dTfwJ1bu0swpvDvihFZXX2j398w0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tfUh7ECq0LBfwokuqXy5/9xxSJpKLRrmIzRtzU+vGds3RAwK6jbi2MvFvBhLDQZYwj8vJyy1Bp+gU9P20PQhJZv1tKheRy0AKA+Xo9IkXbhzqO/Uf/0yBR1cHJz/2u55HYI8yuFR2mrLD9G+PlZ3En0yZiNsT8RctpgKU3hHMfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ist5qtL+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19719C4CEC0;
	Sat, 31 Aug 2024 22:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725143428;
	bh=KSX4fEJ+v6ldl+3dTfwJ1bu0swpvDvihFZXX2j398w0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ist5qtL+G1HG0Xfob02IeWmLRq6U3YYROcUKtZpstBuhZQRBcXLjaYy3Pv+Z3Onwr
	 71gc7bwNgOZy/qfuxM5dG49dS+0uHFrPnCpxzhfZE/OI9qKKLoBVs1vNReVUr/lfad
	 RJAiCq0uhSwY2DkyYdQBb09JAmZE+fC+kljoByByWcbSuykfByYZ48CXBFxBNwhnl8
	 fGhBrOSnzP85gpPBgkBuNjBlnHzmP5+nUcsPuYsbMJoOPeMB329ewQwp4yscJ+iZMc
	 530OJTRwXjAxiOVYM7/x/aImPLY4dVQOT7apbYDSyW5LQfcHr43uqYipugWxg3NUyV
	 EIXVOZcwBA4og==
Date: Sun, 1 Sep 2024 00:30:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
Message-ID: <cq6ykykosgn2ytewgmx6rwmvnqm37by5bfedvk7ywkzz3ihwhr@6kwfxjqly7cv>
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
 <20240831221626.b2t6knmfdqc54rm2@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ekzodjynsi7yl7q"
Content-Disposition: inline
In-Reply-To: <20240831221626.b2t6knmfdqc54rm2@illithid>


--3ekzodjynsi7yl7q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
 <20240831221626.b2t6knmfdqc54rm2@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831221626.b2t6knmfdqc54rm2@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 05:16:26PM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-08-31T22:57:57+0200, Alejandro Colomar wrote:
> > I'm uncomfortable merging this.  The commit message is hard to read.
>=20
> Maybe I attempted to explain and reveal too much.

Using indentation for the scripts (and cat(1) before a script starts)
would probably help.

>=20
> > Could you split this change into some simpler smaller patches?
>=20
> That's harder.  It's a scripted change.  I don't think breaking it up by
> individual sed commands is going to enlighten anyone.  But it would be
> easy to break it up by affected file...

Do the individual sed(1) commands produce good states?  Or are they
temporary steps that would not be good by themselves?

If any of those states is good, please break there.

Cheers,
Alex

>=20
> > >  man/man2/syscalls.2      | 1714 ++++++++++++++++++++++++++++--------=
--
> > >  man/man7/namespaces.7    |   32 +-
> > >  man/man7/signal-safety.7 |  532 +++++++-----
> > >  man/man7/signal.7        |   66 +-
> > >  man/man7/suffixes.7      |   64 +-
>=20
> ...so that these become 5 patches.  Would that be preferable?
>=20
> Also just as well that you're not merging, as a few stragglers remain
> _still_.  However, the size of the problem is getting down to near the
> human-remediable scale (fewer than 100).  Most look like they'll be
> automatically handleable by my "MR-migrate-stage-2-execute.sh" script.
>=20
> But I see some exceptions--so far I have spotted wctrans(3) and
> wctype(3).  I'll send patches along for those, coverting them to tables.
>=20
> Regards,
> Branden





--=20
<https://www.alejandro-colomar.es/>

--3ekzodjynsi7yl7q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTmYEACgkQnowa+77/
2zJoTw/+IbYRw9/pMvBMcsKEnrvHNcINmFNAqns4ywTQLEmn4D+638pamgmfLp4J
UQVV1ucCcmyl2IIaxoJ6FQTq8qOCRZuHYUvV/Wbnw7802qIc3Ja5z1dmfPMx5QK8
gFyXKcmV1BjOqkuH7XKIA3a8KsKIqEEzZ3YWOvE7HJIiTzhV4QDEbMHmV+VDSJnn
+Y7+qXXpDxzkjvFtJ64AiqTyqpCGOB/y1HDDqzAfFIVZiWwgq3tdV4t06pRxPVt1
EII5JKXBquumoHNHFk5nzVRrVg9grT200jFC/h3ta4kS3POLISHWc2aS+zFdtpcp
WZlS/lpCMVfGMy7bkiJgjkysKHeIA3Bz6X5poKAuIy+JZ0t0LlyiYRNr/KLl6Kik
47wAlIaWkHyFFWZPq/0IxtB00GWxrZDUNpghcOxtSlhcB064bgOsf8IMG8BK7qPV
2a/IM7TsPEyLMHkGv7xYUViYJiPdXeR43T65FieJRbp0EoykKOIhL5ibRdwQeTTg
oDraurCDpj4PDE7/JKgo69SpX2wOvMw7eJMXb8RVqKxcxxzEBz5l0aG26QQSIntB
KwkXHMVqhwdjZen8Y+NZZdwDlSA05QWzhborZ7CDZXrfJ9xz1/MaLRtR3si/ns7s
zui7SptVflBSx0NR61zvsms2n7lGjSpnkMzKaLlD/FRXq8w7N5g=
=sKJp
-----END PGP SIGNATURE-----

--3ekzodjynsi7yl7q--

