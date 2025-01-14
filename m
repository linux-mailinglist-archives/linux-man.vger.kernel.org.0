Return-Path: <linux-man+bounces-2227-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4C4A10AF5
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 16:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EE5E1886C13
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 15:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EBB13BAEE;
	Tue, 14 Jan 2025 15:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6R4DAtl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD88570831
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 15:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736868809; cv=none; b=mCtIDVu2Sz2qW6Kudy/OD2UmVn9RGL3mtfm+4ejdyEFSEYtR0+pTSI6WP8FqukqZvTqjPT1Mke9hwzcJDDmgUarlFKPAKb2taurIAoFI+319DhblsV2/+1JCFJCvsh1KoAxajrwrHRf+4yro/R1LCpBHqcXyEFtxwhaRTyfqAPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736868809; c=relaxed/simple;
	bh=50FYBynkrbOif1nu3kf7PeEmEAi64qDEWeWpfSmHbmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cTGKeyVx0pJe1iyrTnx7De4KT4T3rIG2/g6y7B8IRccjZhWXLzJDOfbjLHPJq7sWkD2DVAVytPdPscl/wN0qxq4oyuYO6FgveGTgomO0yK6HYb45vIpHfJiz6R8FsxnYiVtETiDPKh0rxuAmgF+tDnuCqIhaGQVERdae3n3QQ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6R4DAtl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CE26C4CEDF;
	Tue, 14 Jan 2025 15:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736868809;
	bh=50FYBynkrbOif1nu3kf7PeEmEAi64qDEWeWpfSmHbmU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D6R4DAtlBCy+oBEtPVXZiW42SQl32PDUljYyXTqJ9QsWAGmeK5UAPNahk/50Dy2Rh
	 yS2KSOK3z4ohUzdqSye1O6p9QJQ3jNKdBga5/OsvlwFxD0/5Yiu3MqVt6QhSeX95ky
	 4gy1rEbcG1SIq2NUwY33BRMnF2iajgn8Ipjdk+Nq55F478k5n9S7R1RYc54h990yOa
	 gzad6ZrEoxeQVGyg3uisMmcum9DKDF7nb5xwHheu9/6CqdOXmvYHJKK57s9XNx7gjD
	 hrlYptsxjcyTfOzT0QcPUS1MFH6N3pVLYHqTdhWTPAyawP/iYFI8hcDHA6utLJIvXg
	 X3pL2SSFjr/IA==
Date: Tue, 14 Jan 2025 16:33:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
Message-ID: <ndy2h5rm2azltvcozordn66sl5fn6lipmen32qhgtjgyuxgt4p@fnlasx4tg7ax>
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
 <20250114151504.3wipct4hpkuzn57t@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ahklsreszvlsc2pv"
Content-Disposition: inline
In-Reply-To: <20250114151504.3wipct4hpkuzn57t@illithid>


--ahklsreszvlsc2pv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
 <20250114151504.3wipct4hpkuzn57t@illithid>
MIME-Version: 1.0
In-Reply-To: <20250114151504.3wipct4hpkuzn57t@illithid>

Hi Branden,

On Tue, Jan 14, 2025 at 09:15:04AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-01-14T14:19:49+0100, Alejandro Colomar wrote:
> > > @@ -95,8 +95,8 @@ .SS Title line
> > >  The arguments of the command are as follows:
> > >  .TP
> > >  .I title
> > > -The title of the man page, written in all caps (e.g.,
> > > -.IR MAN-PAGES ).
> > > +The title of the man page, written in lowercase (e.g.,
> > > +.IR man-pages ).
> >=20
> > Actually,
>=20
> To try to bring order to the chaos and confusion surrounding this
> subject, I use the term "identifier".

For consistency with "TH" (title heading?), I think I prefer "title".

> groff_man_style(7):
>      =E2=80=A2 What=E2=80=99s the difference between a man page topic and=
 identifier?
>=20
>        A single man page may document several related but distinct
>        topics.  For example, printf(3) and fprintf(3) are often
>        presented together.  Moreover, multiple programming languages
>        have functions named =E2=80=9Cprintf=E2=80=9D, and may document th=
ese in a man
>        page.  The identifier is intended to (with the section) uniquely
>        identify a page on the system; it may furthermore correspond
>        closely to the file name of the document.
>=20
>        The man(1) librarian makes access to man pages convenient by
>        resolving topics to man page identifiers.  Thus, you can type
>        =E2=80=9Cman fprintf=E2=80=9D, and other pages can refer to it, wi=
thout knowing
>        whether the installed document uses =E2=80=9Cprintf=E2=80=9D, =E2=
=80=9Cfprintf=E2=80=9D, or even
>        =E2=80=9Cc_printf=E2=80=9D as an identifier.
>=20
> > the title should follow the name of the page.
>=20
> I don't understand how the "name" is distinct from the "title" in your
> usage.

Name is "SH Name"; title is TH's $1; filename is the file name.

> > it should be sentence case,
>=20
> I wouldn't apply that term here.  A man page identifier (the first
> argument to `TH`) will not be a sentence. Nor will comprise multiple
> words separated by spaces.  Not because it strictly could not, but
> because it would be impractical to do so, and might expose bugs in man
> page indexers like makewhatis(8) and mandb(8).

Agree.

> > or upper case,
>=20
> I advise this only when the identifier would be shouted in other
> contexts, like X(7).
>=20
> > if the name is something like UTF-8,
>=20
> (by which you mean "uses code points outside the Basic Latin range")

Nope.  I meant UTF-8(7):

	$ find man/ | grep -i utf-8 | xargs grep -A1 -e ^.SH.N -e ^.TH
	.TH UTF-8 7 (date) "Linux man-pages (unreleased)"
	.SH NAME
	UTF-8 \- an ASCII compatible multibyte Unicode encoding


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ahklsreszvlsc2pv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeGg8sACgkQnowa+77/
2zKvghAAoy7KiJRonDaOUVdWAuidzRbaPEED1n0xPbVHcFZ5Hkwu5yFbPCh/zhu0
laijogVKwuLQVPRAsfJHqv6BZj0LL7tJ4UaKQHnlKDo0QBJkm7EJI87xnQJT6xI7
yg9VOPN4JdW9HPuYyCzAiNGvTseG6560BvBHX1q1FO+DIxV0tG+mIyqJBjSv7yJe
M4jfvDvDu3yjQH2uZxxcuznWG5RAist6VISm8EdJCV0fDf8rlOUNCrw22rBBHAYZ
q5V/TMDn5XX73kemnbZ7bBZokYsogZqj8RzI/KljBb6ZWWkb0Fs0mPNRM6MpxpmJ
4WNs1eS7mnux6cnWTxJwT5qu1fRons0dy0ila67S651KLxv51GmkyAZTj/DvQ0cs
EyRde3tBpOzj/uYasPVf3+ifnQih+yMGqvzEQ2GNJ9IrE5u9ek/kSVPE7suKqxn+
w80EjFTFxX+M76+r0xpizrZn2zLifmVbM05J2BCOWau9pKVm5xVP5HrzfrW7S9l5
dOz1M0QMAIDh2SCf92X50wgL0MaXoRHK8wAjm7ZOVjCdHHANkxcR9WgMW5kZckaQ
dTPKwOsu8e5mQPvuHtI3sXb2cBxa6Ycf8ESaeWNvniC5hUSH2q52SzBYYS9o8XS1
X6FI5KcsQF9mnwkAvKvD9kgLvU7SF4K1Helxx9nYT3kXR3M6vU4=
=U2bc
-----END PGP SIGNATURE-----

--ahklsreszvlsc2pv--

