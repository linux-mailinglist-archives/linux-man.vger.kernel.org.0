Return-Path: <linux-man+bounces-4000-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A495FBA7C0E
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 03:22:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 288B44E0205
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 01:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5622E1E00A0;
	Mon, 29 Sep 2025 01:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV5iLegK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144371DF271
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 01:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759108946; cv=none; b=BSnGgka6rW2ZoCFJiQ2nwh73G7bSRDkSte+qWu0C1y1D9zIRZAE8tYX61CusfaMliCnxwJlIAQauWZwI1oyWm4TDefGkB5mEACqY5UbHLNJ6Hig+pR4UpSXkKE0avQgCog9ny6cDhuCjx8xU5F4F5EmF4gRFVic2UHujWu9sqaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759108946; c=relaxed/simple;
	bh=B8hEuW87GjlAnQ2Jsp6ipXMooIXJGPLEtyWTjdtMWRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PlK9xZAIng0K26YjZR1+NPnFWOX28y3idC2aPMf6y4sWP1r+EDJNYQwvZdtS7egxmTIBM//nvGsasQJ01HKMYdJwSq7+5yzJ3ttFBl9T3mHHLIQBKfL9xxXLMVR/0rMiNTzeIMwAfwd6w79x1fjv74cyMkCqNAvUu/zzqv5ef6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV5iLegK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73882C4CEF0;
	Mon, 29 Sep 2025 01:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759108945;
	bh=B8hEuW87GjlAnQ2Jsp6ipXMooIXJGPLEtyWTjdtMWRI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MV5iLegKhPCeps1FzFuJBtW/StbDs8msW9oYFSsbHzmI/TM0Laq2I6mI8bzTKZHK8
	 bn9Oi52Stsn4y4ZNurl+fddvyJbSH1bVbzg0isWtWbfAJqs9LCQ8NFQKAVk2vm0K12
	 gOQNxNnJOc2bxgzeEUeee7IYGza+X+IT3BQDvxkC7NNCp5auRdgw7MqTRhAXrWw/bR
	 jg5hOdUZdWRih9rI8e/AYPfd0qRG0d6eyKa9DEaqB+6XSd8krvsbuW5M9rDfyGfCSK
	 fUecQL3sjhgaOxPwdh4kjac0uO1BJ1Wq5M8efloMHkxAPSgdf4PbvbRaiwxEdBn2zI
	 IUk5zo4lVgCew==
Date: Mon, 29 Sep 2025 03:22:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <sajupzg7dniwzkonea5nstusmnul634etc2cag3k3abqfpa7wx@p3c7heylz45n>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
 <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
 <87y0pynqol.fsf@gmail.com>
 <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gbzvfs7uc52tjzde"
Content-Disposition: inline
In-Reply-To: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>


--gbzvfs7uc52tjzde
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <sajupzg7dniwzkonea5nstusmnul634etc2cag3k3abqfpa7wx@p3c7heylz45n>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
 <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
 <87y0pynqol.fsf@gmail.com>
 <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>
MIME-Version: 1.0
In-Reply-To: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>

On Mon, Sep 29, 2025 at 01:00:06AM +0200, Alejandro Colomar wrote:
> So far, I've written this:

[...]

I've applied some fixes to make sure that alignment is valid.  Now,
gr_mem comes first in the buffer (which also allows freeing it more
easily), and I added an explicit check about the alignment.


	// from-string get group entry
	struct group *
	sgetgrent(const char *s)
	{
		int                  e;
		size_t               n, lssize, size;
		static char          *buf =3D NULL;
		static struct group  grent =3D {};

		n =3D strchrcnt(s, ',') + 2;
		lssize =3D n * sizeof(char *);  // For 'grent.gr_mem'.
		size =3D lssize + strlen(s) + 1;

		free(buf);
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
		char    *p, *end;
		char    *fields[4];
		size_t  n, lssize;

		if (!is_aligned(buf, char *))
			return EINVAL;
		grent->gr_mem =3D (char **) buf;

		// The first 'lssize' bytes of 'buf' are used for 'grent->gr_mem'.
		n =3D strchrcnt(s, ',') + 2;
		lssize =3D n * sizeof(char *);
		if (lssize >=3D size)
			return E2BIG;

		// The remaining bytes of 'buf' are used for a copy of 's'.
		end =3D buf + size;
		p =3D buf + lssize;
		if (stpecpy(p, end, s) =3D=3D NULL)
			return errno;

		stpsep(p, "\n");

		if (STRSEP2ARR(p, ":", fields) =3D=3D -1)
			return EINVAL;

		grent->gr_name =3D fields[0];
		grent->gr_passwd =3D fields[1];
		if (get_gid(fields[2], &grent->gr_gid) =3D=3D -1)
			return errno;
		if (csv2ls(fields[3], n, grent->gr_mem) =3D=3D -1)
			return errno;

		return 0;
	}


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--gbzvfs7uc52tjzde
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZ30YACgkQ64mZXMKQ
wqnIMxAAkFfxG1GpEIdkUkx77cy0UYS4PFmcth8V2OPRW2sWMsBIwhPNsxwBY7Fc
SXSxgLi1s/7BG4sdtDtWv8FaHQNA4P+uaXseubOPxqt2woiDgY5HP50XqyRlZ96o
es3i7hT0MjQh6CR6/yv7AphJTRvtGIxMzgXBuRxWHZdsvtJ0+LfZgwTG/LKTbzfz
VmGAo/VJEYrRzNWVKBu1ggRuNwjuoiPiuMOTxXl/oX4f6I1QwBaGvZy29zJZT37p
+VR/s3XpTAHJe1ONptvpBhpMHjCtYXTBd2fQngUo8+bE3UjcnkkpMb4ZiyxGcMKw
qiwTx6kA9fmt+MEfaInHjt2nfbzt6eDrnYZ9RXkAIhwgpvAqoy7f6fEuQ7kxtF3X
xnvBFR815Z6WJpd1cMpvzxtMnlOj9R4ioMibRVPYvQovA0+N8jYmMIHHiJwOYsNr
JMGbdS6oonTFrC2b24MCafQ/HAmpjjJZjg+BCdEOSHohmwm+pWvJfqhkxdes79C9
/+tWcUZUDYZpEjhKEkx+AMpTikauoGgEwIVrSAgLRo4XRYFNBns8IPlFwUvD9meR
vHbKs/0kHR+qphgBmOl1dl98zxsxr+8FpKKP2ErW9K0KZd089ATarUjSa48VFpMJ
EfMXXMZHV3qpLMgq+Pq7E8tp6Js1scTJxSBL3GT32+9MuuQQojE=
=VXCp
-----END PGP SIGNATURE-----

--gbzvfs7uc52tjzde--

