Return-Path: <linux-man+bounces-3998-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF47BA7934
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 01:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 982813B5F09
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D611E22E9;
	Sun, 28 Sep 2025 23:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1xw59eK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142D61AAE13
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 23:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759100410; cv=none; b=SK3haYI5qgTRMXdPNtzX3yUq/H/LFqtTY5dQiJQJJY0qTm0Jh0V85FBRHgtumBgURKVwrnehOPi2DaaDt4Os8kF7n7Gj1HSeIpwlRxHLRkk4MuElpdHx3osgHJ7Bhmw6048EJnWFvgMBIwlgohR33aWKtzj/ffKyCjkVeGKfQMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759100410; c=relaxed/simple;
	bh=Ss4CspalXbBtQWD26DxdRUExdx/xeLByb+Y1uo947tc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cQYE28j2h/RxYi+JMqG6DxaR66p1/SvmkhG7RR1DquE7dNG6jwVxmDj1FhXq/L4T/A0ZbX5D91/VtJeFH9Ty1eprpUygbOwogAR9aI65kGRLVqAzLchpkVxO86gKR/bG57Fb9fo0+X6fB7kxkc9C8Z21TThsd/swv6OOA1FHpwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1xw59eK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A20D1C4CEF0;
	Sun, 28 Sep 2025 23:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759100409;
	bh=Ss4CspalXbBtQWD26DxdRUExdx/xeLByb+Y1uo947tc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j1xw59eK5+ob3bH6NlK/xCQV0OF1CFmAlEDcCAbxXPpfMtBm8kIIsA1ysB16ilT+2
	 8zUVmiFBLW+f/pstTmPoG78cSdiQQcSOTDjARwCg8UDbOFRwObP0fVyP4pcyq4YTy0
	 YnqBiaXe9/3MbjXMrcVTY6hBcWRRJBa2Py0xIGTx+91l2BUKOzapHdiXqEeCegfcFU
	 0xg7/Rl7wVDO8MxThqSbSaNYFVNZWF2fiPHfkEjy1/y8AhBGcLlRieZAtO0uMlBHlW
	 67Hr6Ii4k8Of749G4tN3qT8nR0qtzLRb0mVgeq5z/sOersocRcOhhngR+7MytRytfN
	 jvMIfgtXA4lPQ==
Date: Mon, 29 Sep 2025 01:00:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
 <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
 <87y0pynqol.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cw2i5tzz5lwvdy54"
Content-Disposition: inline
In-Reply-To: <87y0pynqol.fsf@gmail.com>


--cw2i5tzz5lwvdy54
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
 <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
 <87y0pynqol.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87y0pynqol.fsf@gmail.com>

Hi Collin,

On Sun, Sep 28, 2025 at 03:43:54PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hmmm, that's good.  Thanks!  At least, the user doesn't need to free(3)
> > anything weird.
> >
> > So, a good estimate of the size to be allocated prior to the
> > sgetgrent_r() call should be:
> >
> > 	size =3D strlen(s) + 1 + strchrcnt(s, ',') + 2;

Oops, actually:

	size =3D strlen(s) + 1;
	size +=3D (strchrcnt(s, ',') + 2) * sizeof(char *);

> > That would be wasting a little bit if there are any commas outside of
> > the fourth ':'-delimited field, but it should work.
>=20
> You can guess a value and then grow the buffer as long as errno =3D=3D ER=
ANGE.

TBH, I dislike that approach.  I prefer a good guess, and if that
doesn't work, I'll report an error.  It may be imperfect, but it's
simple, which means less bugs.  If I can have an upper bound, and the
wasted memory is reasonable (in this case, I'd say it's even
negligible), then we're fine.

So far, I've written this:

	// from-string get group entry
	struct group *
	sgetgrent(const char *s)
	{
		int                 e;
		size_t              size;
		static char         *buf =3D NULL;
		static struct group grent =3D {};

		free(buf);

		size =3D strlen(s) + 1;
		size +=3D sizeof(char *) * (strchrcnt(s, ',') + 2);  // For 'grent.gr_mem'

		buf =3D MALLOC(size, char);
		if (buf =3D=3D NULL)
			return NULL;

		e =3D sgetgrent_r(s, &grent, buf, size);
		if (e !=3D 0) {
			errno =3D e;
			return NULL;
		}

		return &grent;
	}


	// from-string get group entry re-entrant
	int
	sgetgrent_r(size_t size;
	    const char *restrict s, struct group *restrict grent,
	    char buf[restrict size], size_t size)
	{
		char  *p, *end;
		char  *fields[4];

		end =3D buf + size;
		p =3D stpecpy(buf, end, s);
		if (p =3D=3D NULL)
			return errno;

		stpsep(buf, "\n");

		if (STRSEP2ARR(buf, ":", fields) =3D=3D -1)
			return EINVAL;

		grent->gr_name =3D fields[0];
		grent->gr_passwd =3D fields[1];
		if (get_gid(fields[2], &grent->gr_gid) =3D=3D -1)
			return errno;

		grent->gr_mem =3D csv2ls(fields[3], end - p, p);
		if (NULL =3D=3D grent->gr_mem)
			return errno;

		return 0;
	}

Which I'm quite happy with.  It's simple, it's loop-less (well, it has
some necessary loops, but it doesn't retry anything), and it should work
just fine.

> > BTW, where's this exactly in the glibc source code?  It's a bit hard to
> > follow.
>=20
> In nss you can find <FUNCTION-NAME>.c and then follow the includes and
> macros. I agree it is a bit hard to follow. :)

Especially, if we start here (omitting the copyright notice, for
brevity):

	$ cat ./getgrent_r.c
	/* Copyright [...]  */

	#include <grp.h>


	#define LOOKUP_TYPE	struct group
	#define SETFUNC_NAME	setgrent
	#define	GETFUNC_NAME	getgrent
	#define	ENDFUNC_NAME	endgrent
	#define DATABASE_NAME	group
	#define BUFLEN		NSS_BUFLEN_GROUP

	#include "../nss/getXXent_r.c"

And it doesn't get much better once I start following that.  I think
I'll just trust Mark.  :-)


> Collin

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cw2i5tzz5lwvdy54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZve8ACgkQ64mZXMKQ
wqlrDA//a3OnsVoBylISZ7sNkQmuyW6PPdSy/RW+QUjZJ0j/21hXGvmyVRmOFiyI
1RIQSeiI7ONlTV5apD6pW3aegYgWvZlIt5sBRwn799c02g7k5HXVmfPfBvtIu61s
Qjm4eg/cb8jiXfDjd0EvcoTNWs6F5/Pp0Q4P41r12h1mxTIuT+z2JzI2Bntmm/6v
kozn2Dia52u4tNrwq1582Qy65exn06Xc2hD49At2amJfKo9xNyxWByeXlJbPBaAF
eUN09+MbZhMEQXsuQUQu6LfzDvrys8QhWmT4P80g/kXjDjDz+aSCYceihYzxffrj
f5CUhZMaiG8fx9qSTfE7KEHtr8bHCVXUWUNgeHbSoezk8EG2vhx8+vF3CsV8ZqmH
D8SZHBY2p82d7bWgAnuXKvTNQbsdH7VlDzP3ldkbtouL6Q/LiDhiwzH2ADaFWH9Z
/spytjhfQhweRpopX3tJag+KwQllcsZ5BeDXtInJkGx39xk7BQRkRUJ1CRqGHo71
DKB3gI53yba7yzjfxxrtDuvjP0WiMRHYhO+LXfF34ZciIIk1zxk1QpsClG3Y8oOY
nkWiIKwqc7jORP0sT+ECofOcqe9aWnAkeHpNWAzy0aEIfX8umZ8PUi61iJqxMgRX
/9LHYRyWthIxlM2E036Cbgd5ymNF+AbMMXj8KFvYYbNg/8C7mjY=
=RfaL
-----END PGP SIGNATURE-----

--cw2i5tzz5lwvdy54--

