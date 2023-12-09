Return-Path: <linux-man+bounces-237-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D43D80B40F
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 12:55:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39916280CA6
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 11:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6478A1426E;
	Sat,  9 Dec 2023 11:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROctNWSq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19791748C
	for <linux-man@vger.kernel.org>; Sat,  9 Dec 2023 11:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 023A4C433C7;
	Sat,  9 Dec 2023 11:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702122935;
	bh=xG63hqDk/X0MLPWZn9Ih9MxAQzGRZBkekWDyisL5Awo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ROctNWSq6ykxzU5glNNqroVFlN72y2vhk9wWAdvZz1fytqP4nJjvkSKUIKbHzDyIZ
	 ify95vnFOJdMoSzm3/lREh27fOwp4P1xZQYKWviJT8fW2zJWvEW6iYsFF1aZjkS8y4
	 PuAcUhobUZSHTgMPzYColRwHagmPve2y/4vpeAdN8dfsNd2YF2m52l4iQaL1Xkq+pM
	 3ylOmqoTISJSBkt5zOhayr+QOn6LSxcuYiE2I9q4EnIjZ2k90jEqiGV7bEYTh3SMRE
	 nSg1eAndnOVEvJGOTP9LO7yo7lTgATE2GOWvmnRRuBBITOXwMX0UnMFWaFBuAhGI11
	 FuVAoreeZ9dqQ==
Date: Sat, 9 Dec 2023 12:55:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lee Griffiths <poddster@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Fwd: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Message-ID: <ZXRVtFY9lffPFnyI@debian>
References: <20231206145132.5538-2-alx@kernel.org>
 <CAKXok1GQvKi2HiBU89CSd+KF_dd9+mOMVhHrMKAVLLwcyJDN2g@mail.gmail.com>
 <CAKXok1Fdm0aYskE25+DPkiOc194gMLYdJyvVMybZLAUf+uwn1A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6E7NdUHgTB18Qe4s"
Content-Disposition: inline
In-Reply-To: <CAKXok1Fdm0aYskE25+DPkiOc194gMLYdJyvVMybZLAUf+uwn1A@mail.gmail.com>


--6E7NdUHgTB18Qe4s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 9 Dec 2023 12:55:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lee Griffiths <poddster@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Fwd: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS

On Thu, Dec 07, 2023 at 09:50:35PM +0000, Lee Griffiths wrote:
> (repost to mailing list, as my previous message attempt looked like
> plain-text but was actually html)
>=20
>=20
>=20
> > Hi Lee!
>=20
> > Thanks for the report.  After seeing how much frustration it has caused,
> > I propose this change.  Does it look good to you?
>=20
> I don't wish to bike-shed this (as the current man-page is fine by me)
> and I have no idea on the style guide used by the man-pages, but if I
> was making the change I would replace the 'deprecated' on every
> integer specifier with "CAVEAT: SEE BUGS". That way the inexperienced
> reader is still frightened into using the function carefully. But if
> that kind of thing isn't allowed then the proposed patch looks good to
> me.

We could do that kind of thing.  There are pages where the first line in
the DESCRIPTION is something like 'Never use this function.' (that
exact text appears in gets(3)).

>=20
> As a general point: A _lot_ of inexperienced users use this function
> to parse user input. At the start of every semester you see an influx
> of "why is my use of scanf broken?" posts on the various C and
> learn-programming based subreddits, as well as Stackoverflow.

Not exactly.  This page is only about sscanf(3), which is not as bad as
scanf(3).

For scanf(3), I've re-read the page after these discussions, and have
added some more text, documenting some of the problems:

-  <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/=
commit/?h=3Dcontrib&id=3D4ea602c6ab2716c00d189d28199a9236180d2145>

-  <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/=
commit/?h=3Dcontrib&id=3D8c3bd620bca7de41c9d3e28d73f09ec88fd52a86>

> I have
> no idea why but it seems there's a large body of professors out there
> teaching people to use scanf() instead of getc() or fgets() etc, so
> I'm of the opinion that the scanf() page needs to be as scary as
> possible :)

My guess is that the old manual page wasn't scary enough (if at all).

I've done a few steps to try to prevent that.

Split [f]scanf(3) from sscanf(3).  The latter is not so bad, since it
doesn't need to differentiate newlines from other white space, and it
doesn't leave the unrecognized text in the input stream.

So, the new page for sscanf(3) is what documents the conversions and
all that, and the new page for scanf(3) (and fscanf(3)) is shorter
and just recommending avoiding these functions at all (but still
referring to sscanf(3) for documentation of the conversions).

>=20
> Again, I know nothing about how man pages are written, but if it was
> documentation for legacy code I'd inherited I'm make sure to stress
> the following somewhere on the page:

We have man-pages(7) with a small style guide.

> 1. scanf() is intended to parse FORMATTED input, i.e. it consumes the
> kind of strings produced by printf(), and NOT user input. (I'm not
> 100% sure if K&R had that as their rationale, but that's the way it's
> designed now. Though this might confuse people into thinking they can
> use their similar, but not identical, format strings between printf
> and scanf!). Currently the word "format" or "formatted" barely
> appears. But it's this feature that distinguishes it from the other
> parsing functions.

Agree.  I've added this commit:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dbb4dbdb82f141f6394984aced67d65810ec7f747>

> 2. Things like fgets() are much better for consuming user input, which
> you can then parse with all the other functions.

That's already specified in scanf(3), in the first paragraph:

DESCRIPTION
     The scanf() family of functions scans input like  sscanf(3),  but
     read  from  a  FILE.  It is very difficult to use these functions
     correctly, and  it  is  preferable  to  read  entire  lines  with
     fgets(3)  or  getline(3)  and  parse them later with sscanf(3) or
     more specialized functions such as strtol(3).

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--6E7NdUHgTB18Qe4s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV0VbQACgkQnowa+77/
2zL1SRAAmEw0Q1oT0aMcFXxDtXEDnmHbuzWwxax7gmJA1mJTsko9uTz4aMDgz0rC
+L0iHcucBFNJHCe2sYMEpvEv0GBzgB67JottIjgnSz1zxo5k5GPW4iYeN1cFiiCu
5U7FBcsXSPgIV7YGiWgH4tEX3t5H41qveJfLsYNx+Zd3kHD7Mxa3wonxJ1A0hgSe
yFT+9BP28bQA1aRotz4u8IOlx8XCa3JsCyX8jUa0Fnmjgz/nwv/xIkvnb2MFByAO
Ikjf4FiHKqbYRqcI0ind4GuRLyY9cjvs2H/UoXxAMIJAhyXB1UWgHdzvYs1cXaEx
Uf/9baf9Q7NCuDub4M9HxwdY0WudCxqrwqRVliUSfi4fU7pkFKy48YLdSUeEr/kG
+3mLpZq4RqNIbx2GhRzAzmG47kKRjXS05sgm4mE4YQ9g664SMtd+Sn+NAQ4y95Al
sOP/DFu6xhhJfm7HH54AjEz/3FmwynvAuzwo67Prkp0jii2sLcq2tfeNtLwNk6RB
lRbnSVR0dMv7fsJpf3SAnKX7jfhzv8WgCqkEz7BiVIzpkbHMASBYEaa5uBcUHl6M
WwNAnI1C/iaJUFn6/djGooIdgFJNPFXP7MSn8tQPCbcAKfwNiRECbxIqkh2tSRPr
B6KUicyp7HbvYdt1vhC+0vW2uG28qf98rTjph51gcuVKXtOMfU8=
=8P9x
-----END PGP SIGNATURE-----

--6E7NdUHgTB18Qe4s--

