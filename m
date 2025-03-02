Return-Path: <linux-man+bounces-2557-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A615A4B044
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 08:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E36C17479B
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 07:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 776BE198A2F;
	Sun,  2 Mar 2025 07:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDo+e4IS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353BE2940F
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 07:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740899190; cv=none; b=i5H4NO0IPT8CBMw8vWV3Ex1L49TaY7MaK5jQ9S8kxvYdlnh14spUQsoQ+QQ3+D30z3hCukOU2Y5FgYUbCIZ6G51dT9a+MPeHyZeUdKODdf+9kovN3K10cVSxkAlka9et+B/BiPOjb7qFUWpLJzlHcovPSgHHIc/idKFrF/yhQUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740899190; c=relaxed/simple;
	bh=3q5+igUP7KTOI0w1b+vlsgiNEFQYNgwMtFLhhUnMJew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G2Onhsik0Zok807w++Zqzr1sdnd6xY9cTQOXh8c/XtQ/DLEoc1OU9mtzAGoeGWhGyb5mDU2Qswekei2W1paIGMY/FPiHICRl65wft7aMPvY9vAToi8MGerBrnik3zr2e6xY7SeMiFux8eklt7Buzt2pCIvDsXR+UzYP9aL+OLs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDo+e4IS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1ACBC4CEE4;
	Sun,  2 Mar 2025 07:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740899189;
	bh=3q5+igUP7KTOI0w1b+vlsgiNEFQYNgwMtFLhhUnMJew=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oDo+e4ISzD3Br3jQ8kHYp2rbQmbQm4uJKjg7gggeNmeaYFcfuba5lwQJGKRCSPzup
	 KsTvFm8qvC4SPFM6NEu4HXyKV5kZow80qTYrm/HNqdT3oOPF0yWLj+JWWe18n6GLse
	 7UPq62DeVLYuANfMrSus8HtlStsT4GGdPdg9EDPL2c7gA4VEi1EPTeVQR8gonl18Jc
	 h4itx3ZXlo+qlH4gbbNa9wMj0UiBTmG1spBDBexK0eVoR9Z1l7cjkzVyEdZbLDTswy
	 27MfROM221iKwdiTA3M1ecYTbRMFXHTKmLHNS7utZgjDw3jgogtbmmB6VbdmDR7OOs
	 Gy0F0R1mA4+5Q==
Date: Sun, 2 Mar 2025 08:06:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
Message-ID: <db5oeclvwmoegfzcrz2w7nfdk552cuyuvu6tkn67h3bojyvhqr@xcrwp3ayfgag>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-2-gnoack3000@gmail.com>
 <1094ef00ff08bbede90c01f7a36df293@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hfe666gcjg4x7spb"
Content-Disposition: inline
In-Reply-To: <1094ef00ff08bbede90c01f7a36df293@finder.org>


--hfe666gcjg4x7spb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man v2 1/2] TIOCLINUX.2const: Restructure documentation
 for TIOCL_SETSEL selection modes
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-2-gnoack3000@gmail.com>
 <1094ef00ff08bbede90c01f7a36df293@finder.org>
MIME-Version: 1.0
In-Reply-To: <1094ef00ff08bbede90c01f7a36df293@finder.org>

Hi G=C3=BCnther, Jared,

On Sun, Feb 23, 2025 at 03:13:35PM -0800, Jared Finder wrote:
> I'm not a regular kernel developer, so feel free to ignore my
> recommendations if they are not aligned with the level of documentation
> usually provided.
>=20
> On 2025-02-23 13:36, G=C3=BCnther Noack wrote:
> > * Indent the documented selection modes into tagged paragraphs.
> > * Document constants from the header file (tiocl.h) instead of numbers.
> >=20
> > Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

I have no comments of my own.  What do you want to do about the ones
=66rom Jared?


Have a lovely day!
Alex

> > ---
> >  man/man2const/TIOCLINUX.2const | 23 ++++++++++++++++++-----
> >  1 file changed, 18 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/man/man2const/TIOCLINUX.2const
> > b/man/man2const/TIOCLINUX.2const
> > index c0acdd0ea..5db3f6ea6 100644
> > --- a/man/man2const/TIOCLINUX.2const
> > +++ b/man/man2const/TIOCLINUX.2const
> > @@ -65,11 +65,24 @@ are the ending
> >  column and row.
> >  (Upper left corner is row=3Dcolumn=3D1.)
> >  .I sel_mode
> > -is 0 for character-by-character selection,
> > -1 for word-by-word selection,
> > -or 2 for line-by-line selection.
> > -The indicated screen characters are highlighted and saved
> > -in a kernel buffer.
> > +may be one of the following operations:
> > +.RS
> > +.TP
> > +.B TIOCL_SELCHAR
> > +Select character-by-character.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
>=20
> I would recommend also saying
>=20
> > +.TP
> > +.B TIOCL_SELWORD
> > +Select word-by-word.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
>=20
> I would recommend also saying something like "The start is expanded backw=
ard
> and the end is expanded forwards to select entire words."
>=20
> > +.TP
> > +.B TIOCL_SELLINE
> > +Select line-by-line.
> > +The indicated screen characters are highlighted
> > +and saved in a kernel buffer.
> > +.RE
>=20
> Similarly, mention how the start / end is expanded here too.
>=20
> >  .IP
> >  Since Linux 6.7, using this subcode requires the
> >  .B CAP_SYS_ADMIN
>=20
>   -- MJF

--=20
<https://www.alejandro-colomar.es/>

--hfe666gcjg4x7spb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfEA2sACgkQ64mZXMKQ
wqlcHw//W9XBCmv3mfRC/wHUwaxNWWOUaRVVhMAPZGepcyZI1UCvHHB3T5aqfXS5
OuCxk07O9jTdMAXJm3WBF2DDC2brI8PUYIyBwFvmNO3Splfarximc7tW0SthfocH
D4PP1d27U2fZrfXkOTkKQ/dWyiA3ziHxF2i98aWZOe63vfcvdmQgmSzhTcgL8XAv
k4VykVyxbIsJVuNhtep02NwkfTFOLmmMJtEBMZdZVyemJ0z8iFUADaMVGZATWxQA
sWcxqh2erGjIvrGk8nVf734DN0sM96+3ZMViSD/KUKzvTb4WNY2tzwcHABxa7yEn
PmXowkE86a7JhttqB/FXyX4nOR3MM+hQJ/bPF0sVfbqc4tIneYxKaeE8GYyhpdk0
IxTnHJyQ0g+vRq19z1UsDsx5Ta72A19RpMik34UpKas7bM8oOkoN4lLbWvsZifgn
bdiZw4yrrBNFSHYyzK8ls6IZgIT8LYu+VH9dwwbqDx3wZCKIhVfjSsofL3hdLjy8
QldabAorXyubUot4e1iO8k8ZAi6cIG2JgQs4FN5kAXx1thdSoJn3ntdbSMk13zQX
+erjVAQ03Qj+wLtjQMwOpfYaKYOl0Qsjo00oPNLpB7XHtVFFGo1q88cx0yCeJLUQ
ETadM1rOXjST4easphq2veLK9OOZV/dOUWaG4wtNG/5MlepEopE=
=R2P7
-----END PGP SIGNATURE-----

--hfe666gcjg4x7spb--

