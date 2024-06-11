Return-Path: <linux-man+bounces-1121-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198F904183
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 510871C23A26
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D28C1CFA9;
	Tue, 11 Jun 2024 16:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDoh6LhE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1B03F9FB
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718124176; cv=none; b=F9NhINgqdxVHBqkR0cQ5jcTvmdunC8C0iTK5MjHMBgaHHOm/UevGqS/ETM5SWXZ+hCTDBdeBNWHJpjgxusn0e54ZEENRE0E057xOI45zKQDJjcEbbcarK/hAvEGP5pRAOAuwbJ5ONoZyFSyMnOCrvdkljY1nsxPjyMOSevp/E8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718124176; c=relaxed/simple;
	bh=tgImsK3Wc6NHbZjBcDXQPqIkHxVZ8fLJuzYN7E6RGs4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YpThNid+rMnfloZe3bAxmRO7NQOqZirjnptDFSe28sPwAJdLoHOwNbpW8Y/y2TssMQaTMz/UD6SwxPOmgZeylFLxhEGowqJONCEc3zyj0nsedDfwam6eCCokDpQVfzdVEcYs1iJYKjUP4mzpIl7l7Momx3/Qrvh1DBQEs8Naglg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDoh6LhE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6952C2BD10;
	Tue, 11 Jun 2024 16:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718124175;
	bh=tgImsK3Wc6NHbZjBcDXQPqIkHxVZ8fLJuzYN7E6RGs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VDoh6LhEX+MmJIvq6/PG3JwSC85+24hHgbguclCmDICaoS90WCu326Q35WzvSo7Ri
	 Yx7J4iyKJaMtWlfVqxYHVWQKAbRUgqcPct9zdcQAlsfId6ph2UYdG9tJu8aaG+EnWS
	 jNqrONsWymVq2PQQW98T2IarjDESvq/DEkKbUoUu3UfKwbyylsF66yQ8TgC4+w/b0x
	 S5VZdc94WPHaUMUZZio8dFeIHGsizlW1QgznQwwz0YeZH4IyKq42Xmyvpc5rgwf8G7
	 HWjXBIvTZpzaxhJFAf9AlTiqFQ6hmqhNlUC58Ssykc7Tvz1eO5eEjrXUBcuFfAaKEK
	 ZcUr2k93BIrEA==
Date: Tue, 11 Jun 2024 18:42:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <v4ap5wj4zxlwau4lir3uxpjrh3ngobb3rcncvbith32v4cdm6f@q5ul2pikfapd>
References: <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
 <20240611123950.qmc6m2rlrlst5cfg@illithid>
 <6ghtfloubcjb3x43e2kxdmeqgbajgllfzmk2vhwy7bfzs5cbge@vq54kljkn6sp>
 <20240611160632.q5c7pdo55kvgmt7d@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xtvqn3fur4645ff"
Content-Disposition: inline
In-Reply-To: <20240611160632.q5c7pdo55kvgmt7d@illithid>


--3xtvqn3fur4645ff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
References: <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
 <20240611123950.qmc6m2rlrlst5cfg@illithid>
 <6ghtfloubcjb3x43e2kxdmeqgbajgllfzmk2vhwy7bfzs5cbge@vq54kljkn6sp>
 <20240611160632.q5c7pdo55kvgmt7d@illithid>
MIME-Version: 1.0
In-Reply-To: <20240611160632.q5c7pdo55kvgmt7d@illithid>

On Tue, Jun 11, 2024 at 11:06:32AM GMT, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden,

> At 2024-06-11T16:34:54+0200, Alejandro Colomar wrote:
> > I see:
> >=20
> > NOTES
> >      For details of the STHYI instruction, see the documentation page.
> >=20
> > In xfce4-terminal(1), that's an underdotted hyperlink.  In xterm(1), I
> > see the same, but it's not underdotted, and seems not clickable.
>=20
> Ahhh, I reckon you have OSC 8 hyperlinks turned on.  This defaulted off
> in stock groff 1.23.0, but some distributors may have turned it on.
> (Which is fine--that's what man.local is there for.)
>=20
> groff_man(7) (from my working copy):
>      -rU0     Disable generation of URI hyperlinks in output drivers
>               capable of them, making the arguments to MT and UR calls
>               visible as formatted text.  grohtml(1), gropdf(1), and
>               grotty(1) enable hyperlinks by default (the last only if
>               not in legacy output mode).

Hmmm; thanks!  I suspected some of this was probably the fault, but
didn't know what exactly.  I'll add -rU0 to the build system, since that
will trigger more warnings.

Have a lovely day!
Alex

> So, for you, GNU troff is not complaining about being unable to adjust
> MC 900 Foot URL for formatting...because it's _not trying to format it_.
>=20
> > Why am I unable to see the explicit URI?  That seems the reason why
> > I can't reproduce the warning.
>=20
> With register `U` set to a true value, GNU troff assumes your output
> device is capable of making a hyperlink clickable.  It can't otherwise
> know.  (Well, it knows that some devices have no such capability.[1])
>=20
> > I don't like breaking URIs.  I'll accept the warning and add it as an
> > XFAIL.  However, I'd like to be able to reproduce it.  :|
>=20
> Try running groff with `-rU0` (or `-r U=3D0`).  That should turn it up.
>=20
> Regards,
> Branden
>=20
> [1] Two things I'd like to see:
>=20
>     A.  ...an extended ("user") capability enabling terminfo
>     applications to query a terminal (emulator) whether it supports OSC
>     8 sequences so that it can then do the right thing.  See
>     user_caps(5).
>=20
>     B.  ...xterm(1) support for OSC 8 hyperlinks only as far as marking
>     them and giving you a menu option to copy the link to the clipboard
>     (or the primary selection buffer).[2]  Thomas Dickey has been pretty
>     skeptical of OSC 8, and I don't blame him for not wanting to get
>     into the URL management business--it presses people's security
>     buttons.  I am hoping my suggestion is a Solomonic one.
>=20
> [2] So you'd probably have to middle-click while hovering over the link
>     text.  Even if implemented, I'm sure that this would be yet another
>     feature gated behind an X resource and command-line option.  ;-)



--=20
<https://www.alejandro-colomar.es/>

--3xtvqn3fur4645ff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZofowACgkQnowa+77/
2zJg7xAAhbGTrVdUaNoOb37fIjNYahyQQFlSFl9pmzuJtlheDA6g92lgufQYOpTj
i2laCZ5Yn84ByDmPd/gHkZujlVSILjnWoGkS2bKBEhntgFeht/x/fOc990cR0SQN
XJGBtzunEPAd4TdTnK4dNXWnhJA+VgrRKcYqw+5kyF2UrMRo7W+EdhSmWiqkMolk
HCZhvmMzasE64B+8LaZSymW0MTnpB+4lUCL+ApxS/Fg3nx3zOxdSCsyPiHQU0M1o
PKYMGPpvQpMtFveMM8Zzi2vW4h6170mY3D+qURWOVzkk3HnFYMrK6hY0ar5tZpe1
YVDHma3Xmgx5pkb8wNBQiSbhpG5wwnRn95s4jXhhsgEM0pL/26Iz+1K+AHyErIm6
7R7H79LPy5+KKuAAw54k8cW8Hsd07gP2G246FMpNSSHYLmazjAffqAqsnmkD6zEt
vi1b6uT2b67U9dhphm2R4XGozP6oiU5N7vdn0sd26DjKNusa7/bUKqSAu0SAmMqG
0Jdc4tZoIOVKfQYwDVvKVpqFS/IYfifficTK8XEUCdCeYDDZg6uxIhXnqRdjQQGK
LkwngdCpXe7MIvAeDWyRX+cX4bqcSj0z3sXDkgXf8BxbxFlOpXYWMMf4013m5Ph1
NA+AfnFkeaGnfGKFpnoj03aLhpl4/VKAVdRp5WJ4mvJNA5SmUio=
=tvrK
-----END PGP SIGNATURE-----

--3xtvqn3fur4645ff--

