Return-Path: <linux-man+bounces-2412-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADF8A330D1
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957693A4C5E
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46F520103D;
	Wed, 12 Feb 2025 20:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc61SQAd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F24200B99
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 20:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392094; cv=none; b=TPxN7upCobqu3qKO5a45NTvZRoQNMJimuLXoU2YQ5QRBbapmucyyzPh8gu7pR3245Wu6AOC1FNzPLh/V4uygnVQ+eqfvBxairmy9D9hKxWgpjHnQ91kkXp4kBin+MNYTdTArypjK+VrYN0EAMtOX/4P6zWqSayay8Xc15680M5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392094; c=relaxed/simple;
	bh=TVAdrlFM1+FeCSpdWih3zK7+9IIzc4D0MKR42lVVmhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hsOAJxqnsSZ+s8yqdb/TQM2ph9RDoCqYklmlsxjlCT7Q0ZPiH4b3oXsIu5L0KgIwKJabw+7w2HTyDbEYmHHak4Hi/74ZlcoX92LMfPaiJn4bnDCNt6DF/phXkvOKcR18hsuemFghj7ASGoJjw7ivwI6gapDy+ppys5AQk3gyL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc61SQAd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B79EC4CEDF;
	Wed, 12 Feb 2025 20:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739392094;
	bh=TVAdrlFM1+FeCSpdWih3zK7+9IIzc4D0MKR42lVVmhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kc61SQAd1k1GWH8ealfzgMQXHxnR8G9M0M6WasXmo/WBT6aOFQsnOzLI8Uq8vJu9e
	 u6DnzaUm72QfyM/HYGzItevST98+D/OPa+oNe1I7ImPRMb+qaqRJhoYi2Mmqd9hYyp
	 Z60ysgUJltavRf4g00OwuX3fa6f8XYLUeg1gqb546K5oGedIEwi0mNW+F2Xk3/6GsA
	 E+DUzlOS0UtAKbf5PA6QKxVaYe77On79jl0U5XVucAPUpcosbZ8kvUPwKAN+NmwEd8
	 j3vTxK5n1dWGm5nybzKcy6QUjW1fk3/jMm53tHtaAICidfot7INQF2WX9I3DIyMB/E
	 hu+0Nb1gsBMHQ==
Date: Wed, 12 Feb 2025 21:28:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Wording issue in kill(2) with sig=0
Message-ID: <vt44xxdtw4alqgz4wbiv3ajfczmmxt7hcirdxpvmrt5scs26aw@lgqdzyjloxoa>
References: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>
 <cgagaczm73j6i2ergudwdigwxdiurrfxesz2b5dmsagata4tgs@7by2urnkzqp7>
 <CAFOwVBJ2nNSjU1CYhcE-YZso9c_NM4oF7GgaUsB+5tFO+KwBVg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yzou5ubucfepqqj5"
Content-Disposition: inline
In-Reply-To: <CAFOwVBJ2nNSjU1CYhcE-YZso9c_NM4oF7GgaUsB+5tFO+KwBVg@mail.gmail.com>


--yzou5ubucfepqqj5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Wording issue in kill(2) with sig=0
References: <CAFOwVBLo+FQDzHagO1OqFoukHTMYHbGzfrvc3gDLRBtbOd8ggg@mail.gmail.com>
 <cgagaczm73j6i2ergudwdigwxdiurrfxesz2b5dmsagata4tgs@7by2urnkzqp7>
 <CAFOwVBJ2nNSjU1CYhcE-YZso9c_NM4oF7GgaUsB+5tFO+KwBVg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFOwVBJ2nNSjU1CYhcE-YZso9c_NM4oF7GgaUsB+5tFO+KwBVg@mail.gmail.com>

On Wed, Feb 12, 2025 at 09:46:47PM +0200, Amit Pinhas wrote:
> Hello! :)
> I sent the patch the way that I read in the docs that you sent me, hope I
> did everything right (or at least some of it :)).
> I would like to make sure that everything was properly sent :)
> Thanks!

Hello!  :)

Yep, it looks quite good.  I have some minor comments about the source
code itself, but the process looks good.  Thanks!


Cheers,
Alex

>=20
> On Wed, 12 Feb 2025 at 02:09, Alejandro Colomar <alx@kernel.org> wrote:
>=20
> > Hello Amit,
> >
> > Please CC the mailing list.  (I've added it now.)
> >
> > On Tue, Feb 11, 2025 at 09:43:43PM +0200, Amit Pinhas wrote:
> > > Hello!
> > > My name is Amit, and I started getting deep into both linux kernel and
> > user
> > > space programming in the last few years.
> > > During my journey, I stumbled upon a small mistake, or rather a
> > misphrasing
> > > in `man 2 kill`.
> > >
> > > At my scenario, I was looking to check an existence of a certain proc=
ess,
> > > and so i have seen that kill will check it for me, as mentioned:
> > > ```
> > >
> > > If *sig* is 0, then no signal is sent, but existence and permission
> > > checks are still performed; this can be used to check for the
> > > existence of a process ID...
> > >
> > > ```
> > > Which is great! I was trying it and it worked just as I expected.
> > > When the process did exist, I would get 0 as a success, and if not, t=
hen
> > > the call failed, as I expected.
> > >
> > > On the other hand, when I read the `RETURN VALUE` section, I saw a sm=
all
> > > misphrasing:
> > > ```
> > >
> > > On success (at least one signal was sent), zero is returned.  On
> > > error, -1 is returned...
> > >
> > > ```
> > > Which seemed rational.
> > >
> > > But wait! How can I get 0 when providing sig=3D0, if no signal was ac=
tually
> > > sent, which is the criteria for success of this call???
> > >
> > > If i understand correctly, there should be a disclaimer, something li=
ke:
> > > ```
> > >
> > > On success (at least one signal was sent *or if sig=3D0 and the checks
> > > done were successful*), zero is returned.  On
> > > error, -1 is returned...
> >
> > You're correct.  I'd maybe rephrase it differently:
> >
> >         On success, zero is returned.  If signals were sent to a process
> >         group, success means that at least one signal was delivered.
> >
> >         On error, -1 is returned...
> >
> > This helps clarify what the sentence really meant.
> >
> > >
> > > ```
> > >
> > > If you read my thoughts this far, thank you for your time! I love your
> > work
> > > and keep it going!
> >
> > Thanks!  :)
> >
> > > I would like to know how and if I could fix the man page if needed :)
> >
> > Sure, you can send a patch!  Here are the contributing guidelines:
> >
> > <
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRI=
BUTING
> > >
> > <
> > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRI=
BUTING.d/
> > >
> >
> > You'll first need to clone the repository with git(1), and edit the file
> > <man/man2/kill.2>.  Then do a commit.  Then format a patch, and then
> > send it.  Sending it is the most difficult part, if you're not used to
> > it, but we can help with that.  Feel free to ask if you have any doubts!
> > It may be difficult to write the first patch, so ask as much as you
> > need.
> >
> > > Have a nice day guys!
> > > Much love from Israel :)
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>
> >

--=20
<https://www.alejandro-colomar.es/>

--yzou5ubucfepqqj5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetBIMACgkQnowa+77/
2zKavA/9ERmao7A0EYgN1Kc/BZF8qeNnWtq7au7mNjJN+JQsCOmISBAZ0fsJ6xda
eSahL9DJrG+qVIfqQIUCJjQc7smFEQjBBhJvEAiAscBfwDmC4u5ZI73Y5EJqsxPg
8RxEPstb4av243Y16/C4GzcvN6wroF6Qza+JKmgfdhILy9UJ+R913xxp+sIj9oZ/
9nREUCyUkOBp4M87L7Q6XK7RDoGoZO2jGqULfEnBUiuToVzSbX/ZyzhcXQTkGXLA
4bfJA7QFoEDXPhQxn9I+ZijqAM6sHUt7TykIlrLLBhvtSHPcnOuVpu9CfkpGuL34
T9aY6szjIKDYm0aQXTg2L5zU05eQVpIuI0wGYrrogGhuDsRLdI7Nb/o9GB8VC9AH
2SdZlZndU0Uz9X/TxagjIm9NsEhyHRhZ0QeLEZtTCLbjnjbJUxGSeyqe93KaoU1h
cXxXX6x3gO03hdde4ttI2Wxli+k6g61flixzMU1o178lg4Wd9scN5OCVVmsOfvyb
TfAhu0SNxQh8LOiF/k3+3X+SiegWtNJXNOq8pQz+6RRgvyp8vkSXpDVKF7czO+m2
Sez/Koi3W7Lq2adPr+ZeKLCbzw4DjdmHq6Oe4pjjSRMWyYRhA/XwNyYj2MpQbaSr
/S4lX4hocVaWpeNpl36BE/L/EYt5yrkhZpGhNGjswznTtF9geiw=
=OmB9
-----END PGP SIGNATURE-----

--yzou5ubucfepqqj5--

