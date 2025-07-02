Return-Path: <linux-man+bounces-3240-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AADAF64DC
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 00:12:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6093C17689F
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 22:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF85D242D84;
	Wed,  2 Jul 2025 22:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoMoLQit"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CB41F76A5
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 22:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751494369; cv=none; b=fUgWizeXMniyKFqVlxdQLeqIU7imxMLgHkoc5SUNzzhN/LdnhGaoOuFMzLyYLfGFTCvOTEi6JqwRbN1+6qcsQYhM/0DyaxZJuGo6Y2uW4L1oO56QHcKIyl4KwIeSaepKwtVQcdxiKyXMtdBxmweBU45pqvKneVeyoQVsKcycXqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751494369; c=relaxed/simple;
	bh=RyPfS9vd+k6cAaj0bW4uMrSCmlNvqbqw8MO6lJJ9tlo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XrV+DPp0CuOmehMFRULaceJPu3Z+GIREMTm/vzpp1YWTv6j2yU6rL6iT0cjnXTA9elIObjR/MBiMaOW/UZcWKFADlZaNknbW+mrpKuXHqXhjE61dXdRg97nKrw5VkQB+cy1LKvbmiLEnobLKSBIUg/29kbynEAjOuI6OYE6mcq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoMoLQit; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC361C4CEE7;
	Wed,  2 Jul 2025 22:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751494369;
	bh=RyPfS9vd+k6cAaj0bW4uMrSCmlNvqbqw8MO6lJJ9tlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NoMoLQitiB1tf0KS5hdBAhZmNUeR2/2pj1ZKsROtLw1GjnDeBYYuuqGncStF21yTt
	 YH2vwOYcZsc2SZUQGESYzV5C6r98CUEGIBeuabI1caQ0AenFQQvgJTWzr95lPXnVm1
	 QVvnlfcz7cn6lp1LfQV3XLgQTwqA7CqSgOiCIzeDBkRa+XG1gfqbjB3d+RICcsWV6h
	 YT1SuhuwK11THQ7HaGJKAWnFB0kcSNIVsiQWt1FFPiIweYmOYDyBjYZBT8H2vdbC0i
	 pbyoUygY9UBGxMsUxkAnffJiuUuQuaM19rEPZ/sPjcYQcc57dX+vZ+Xw965oPfCkno
	 ewXzgHs301Bow==
Date: Thu, 3 Jul 2025 00:12:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
Message-ID: <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mtuekooo7orpox5x"
Content-Disposition: inline
In-Reply-To: <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>


--mtuekooo7orpox5x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>

Hi Elliott,

On Wed, Jul 02, 2025 at 04:40:31PM -0400, enh wrote:
> > Hmmm, yup, that's quite incorrect.
> > We should add this to the commit message:
> >
> >         Fixes: d91506f8faa4 (1999-08-24, 2022-12-19; "man-pages 1.26")
> >
> > > +returns a pointer to the end of the wide-character string
> > > +.IR dest ,
> >
> > I don't like this wording.  It gives the impression that this function
> > is appropriate to create wide strings, while it's not.
>=20
> i actually didn't come up with that: i looked to see what wcsncpy()
> said and copied that :-)

Hmmm, I should rewrite wcsncpy(3) then.  (And st[rp]ncpy(3) maybe too.)  :-)

>=20
> or is that the distinction you're trying to make: "it's only a
> _string_ if it's terminated"?

No, both functions do the same thing; none of them produce a string
(none of them guarantee termination).

> that's a bit subtle to be helpful, i
> fear, and not really actionable --- this is a problem with all of the
> 'n' functions. whether they're wcsn or wcpn just tells you which end
> you'll be left with a pointer to.
>=20
> > How about this:
> >
> >         returns a pointer to
> >         one past the last non-null wide character written,
> >         that is,
> >         .IR dest\~+\~wcsnlen(src,\~n).
>=20
> yeah, that's a good way to avoid having to describe both cases
> separately

Thanks!  I'll use that.

> (even if the "that is" part is likely to just have folks
> reading the wcsnlen() page next --- POSIX's `&dst[n]` is more
> grokkable).

I find the POSIX definition worse, because it kind of feels like if this
function had two distinct uses, but it only has one.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mtuekooo7orpox5x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhlrtkACgkQ64mZXMKQ
wqkVbRAAq7M02SXTD3OlqNIUB1KZ4cbs/skcIpxl+YTTjDQhWetd8OVVc5DoVARi
d4I8beIfJVGelaTBr6Z/4jPERgclouJ8N1mlSFOiQxZUw7+AaYYBvG7En5wjHNA3
nVeGhkz+iU21cZQjOQ6qeUjo3L7UYX3aL43kG6GBIp1zTtT8zz2CPp0CZC4CqBID
xk3gSW/z4ifz93pFHs2I6I202HdT/zVh6XR40Xf57o5dWp/or+W5NIh1GzJc7Dc5
B9JThd4+R9xFlZBCi6tNrFdsrOkBXn1G3yWkV2yHWA/9L8YPXM5+lfyowtAtNk3Y
FJlwZ94FMNl3LUiEVTmiJxRrEwA2i83+BYrjWlI49+AYlcWuJuXeh3AWt8jxG50j
qcPDToALB9SmQddX2Z+LIX8dOJtcUlhRDFWNkJ5FI5W5qVw0nmnrdD6Npq8oEMfo
wosU3wwQNVkvf6KHNrIqREl11cV34WcM3D5hwNJMiBQjaFJLAck2NmVnDyxUgVKd
ly4lEykdsduyQtePDkdtgTi4YrdfUSARkMR/YTi1OxF2NE72LfsVh99fCcseFqUj
0UflB1f8LtXJG7X+jzBmwcX9CmEvp/2v81iTsoDhBMnrWHSoZHHMYRMIJMB7gfG9
vCPfhrwGHdiHm+R3Ul98/DjbBa9zpoa7dE4gJPFMI4xjPDhEIg0=
=3LTK
-----END PGP SIGNATURE-----

--mtuekooo7orpox5x--

