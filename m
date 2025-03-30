Return-Path: <linux-man+bounces-2672-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 433A9A759B4
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 13:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F7B03A6066
	for <lists+linux-man@lfdr.de>; Sun, 30 Mar 2025 11:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E4A1C3BEE;
	Sun, 30 Mar 2025 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZ75gCyO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4997149C55
	for <linux-man@vger.kernel.org>; Sun, 30 Mar 2025 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743332854; cv=none; b=RmU2R3JzrjoMaK9mqAODoit1AbKnDcPAOrDQ+RrGQgXXGeCVhY3E5nyYmPQ+smqs+eKwRUUm8pPZbggxFuau5fRHcL/vfMkr8AXr2uPlWA1ZYw+N5Ml4MspniLdh3NLNwuIWnF0iyxf9HgY1fbjxxTAbY89YyvnspuDPIAhi/Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743332854; c=relaxed/simple;
	bh=ChUWq8xVp7DGMAd30F5Ueca+DSOkNkzaohZK+rA7Nkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VhM7H1lm8jOlGgiAD+UO2Z1pKg2N+UZuItNKm2mRTjwdCEKReu7/zWBXJPbWUELSbUeVOtZOrbzqpX6jRsaeCdEoBRNxxXxfmt7w39zgEy1xZFds6apOLqYBn/WGQ9grBJ/br/lcite2h6JFpC/cu36akWDjuAW8g7/0olTZ5cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZ75gCyO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E66C0C4CEE8;
	Sun, 30 Mar 2025 11:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743332854;
	bh=ChUWq8xVp7DGMAd30F5Ueca+DSOkNkzaohZK+rA7Nkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JZ75gCyO4+QRasTjrDFJ2YlIS64GZSdXqv1KATp27u5EeCakkhTwgNHhzg+wNbowD
	 6reufC3y6Dji0css8EI1DWpV41QCGtUkehv9YCQYZM6wqH0D/KTt8o0V6/f+peyGQl
	 7ZPQviR0x6iHQg3zmWCZM/xo9XMepiM64193+mNKekWySw1EbkwBQKqxttkOEhOtRr
	 VThBL+lfAPfV7ouX9DktQH8wpjbbtIIQIlbRyFcqP/mRfxOEBxLI+dx++2LF5DMAa3
	 kyUr00h24+PPsXR2UDCpMqrtzuhk/IY02xR9EI7QkpSuEBFqOzk3MdgS5L6gMx+oPK
	 E/YEu6Q9vbO4g==
Date: Sun, 30 Mar 2025 13:07:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Jared Finder <jared@finder.org>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <kdrwwtdyb55w7j4gvoj5p2cljdrflzc3dzax4szhilcwix2tuf@zo7yhvlkwj5d>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
 <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
 <srbsuwx4ou3wrlr7shxz5gz6qp42af3azyx6c4vfkpupboifgy@7m7dtlshxraz>
 <20250330.8aeb7bdcfced@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vzccdyfbldrwsur3"
Content-Disposition: inline
In-Reply-To: <20250330.8aeb7bdcfced@gnoack.org>


--vzccdyfbldrwsur3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Jared Finder <jared@finder.org>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
 <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
 <srbsuwx4ou3wrlr7shxz5gz6qp42af3azyx6c4vfkpupboifgy@7m7dtlshxraz>
 <20250330.8aeb7bdcfced@gnoack.org>
MIME-Version: 1.0
In-Reply-To: <20250330.8aeb7bdcfced@gnoack.org>

Hi G=C3=BCnther!

On Sun, Mar 30, 2025 at 12:58:07PM +0200, G=C3=BCnther Noack wrote:
> Thanks for your input!  You are correct that saying "bigger" is
> unclear.  The alternatives are entertaining in a nerdy way ;-) but I'm
> not sure that being mathematically exact here helps the purpose of
> this man page. ;-)
>=20
> The elephant in the room is that in the big scheme of things, this API
> is pretty absurd: The API draws the mouse pointer at *one* position,
> but there are *two* places where users can specify the coordinates.
>=20
> Noone in their right mind would actually pass two coordinates and
> would try to rely on the exact ordering semantics here.  The only
> reasonable thing to do is to pass the coordinate in one of the two
> places and leave the other place blank (0, 0).  The only ordering that
> *actually* matters to callers is that their passed coordinate is
> "bigger" than (0, 0).
>=20
> These API semantics look like they happened by accident rather than by
> intentional planning.  If the goal is to describe how an API *should*
> get used, then spending too many words on ordering semantics here
> would IMHO be distracting from the real thing that callers should do,
> which I think should be *to fill one of the two coordinates and leave
> the other blank*. :)
>=20
> So if we describe this, I would like to make it as succinct as
> possible and not draw unnecessary attention to it.
>=20
> To make a constructive proposal, how about this phrasing:
>=20
>   Show the pointer at position (xs, ys) or (xe, ye),
>   whichever is later in text flow order.
>=20
> ?  Does that sound reasonable?

Yep, that sounds much better.  Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vzccdyfbldrwsur3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfpJesACgkQ64mZXMKQ
wqlV1BAAgczyLY3S6Izg3z2Ikd8SmOQPfVk28Nn2NJ5fQtQlkHMOhjdLeK4pKpet
lmX5GMUeKzeFllH5ZGrVCq6b6lt+JH96Dnb7rNCV6cffToBavYjGvnQWo8IAz0hG
9W5pYnabRDXsNVAnVuuMKWF2Ec5ftXXDPnm4fqxqjh09Cr5ty7FHJGghVjN4nwQt
PQRCdHELLZba2x35zp9lF2RtHXlMeaYJX4OV+0UdzDeothIxlz9ZZ6HcuWwIsxcv
a5n+OlPxd7x4Kl8lR4HdQqKoIvd5qsMHH3VxkgirYo4enim2jjsK5Q6wCOa2KAax
Lb6i3vtPOUOj3QhCBkH9XB8i3wkOV8d79eaYyQ2+iVCUsrcv6pONY5n2pvc1xWly
eZ8t1pV6OGyKDU1EG/7q3j6QPEZMFEdVUxEmuIsBtB1dEDYgFP9HuNOCv+HpYBZQ
t/cJcujfdqmDTrsY6XX+knrP87QQakOG3ouG8goH0n5l6oW+LHVs9WvGkGVkB70a
mrpI1aIawTW2QtcMAxAOubSMK8jPutTH4qCc/85SbbWKrV+KiiqgnX76esNhdpDW
Rd2af5ktCMJoPC8EgVbVFpNsNVrVmiLeHzA+PyoQa1UdkllLW3mv70uWDHJsAqLg
FSQUY1tHVeqxr/uFMilr8MsCHTC0VU/qmcll+R49BGk7yW71WOo=
=z/ox
-----END PGP SIGNATURE-----

--vzccdyfbldrwsur3--

