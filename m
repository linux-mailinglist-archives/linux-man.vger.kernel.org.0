Return-Path: <linux-man+bounces-3999-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B9FBA7937
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 01:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B8923B6EB2
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EE351DEFE8;
	Sun, 28 Sep 2025 23:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv4oY2VG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBAD1AAE13
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 23:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759100484; cv=none; b=jqOi3FBRx6JO2sJhsGNV/ZW+y/o7vCOEOMUxfNM7XL/5IcbZ540BDVgPzITnMsO6bmmVXoD8MLEc8KktgoRyor7oo1SamYYN6+++BzAZFtXKhcd8TNZoxhoP+RK14MjRKyFfqTYSnMuavhMLX4/aMetpiEI49zRtDw7YSIjRjtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759100484; c=relaxed/simple;
	bh=uwjAfAibiu5vJ2JnvjedDu6SpXmrlBCoAM3ylVHbI1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=orlhDEZrDcYIUomQX6+vn0wE2JUX7sgWYrUU9LTNMf6gOmfrJtuuxbKigDM7PNAbdykDdneX/j9B2w396B1O52VbM/eht3ICshMSuZzs1gJN4KB8xRk05ZBDma4hAUjHyTBfCeAxGpL077Eo73CrbyPwyeR6z0X6VbwCIHyBdB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv4oY2VG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78123C4CEF0;
	Sun, 28 Sep 2025 23:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759100482;
	bh=uwjAfAibiu5vJ2JnvjedDu6SpXmrlBCoAM3ylVHbI1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kv4oY2VGXvDYDTf0TUJXUo3NpdGSwCRb5HQd4tSXjz9XW31WXUcFjpJkeBuVvIdpa
	 OVfjUGkFcWy5XLSrgOJyOpJEntdfxCSDCJiv1pmsX5UM38H4zlk1lDcd5CVZgcEZ7l
	 PvXTnkqrm7SuStxav/NYL5qds+DNhq+2wGhfVPhPRO6VmxWtB1y3noOriY7ACFc9kl
	 BNKJJ3c55n4xvZUZfHQX09uX3rN9ZbJV3E6JNMlIhcqSG+GBi9KfJLdByN0PEs59Bj
	 WNsmG0xpzmP/kK0Peau+ayQ77I151fap3KKGLPVNfYccC38JmrQ3gsdQvMeHJ42+DE
	 czfh/rBd814hA==
Date: Mon, 29 Sep 2025 01:01:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <lqasgprx4hqhb6zywi4yzi64wjmwg5evg4p6azklw64rxmnnml@j5zin3gvozzc>
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
	protocol="application/pgp-signature"; boundary="csmkeltjefkroydp"
Content-Disposition: inline
In-Reply-To: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>


--csmkeltjefkroydp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Mark Harris <mark.hsj@gmail.com>, libc-alpha@sourceware.org, 
	linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <lqasgprx4hqhb6zywi4yzi64wjmwg5evg4p6azklw64rxmnnml@j5zin3gvozzc>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
 <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
 <87y0pynqol.fsf@gmail.com>
 <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>
MIME-Version: 1.0
In-Reply-To: <hzkp5fsxvyuq6y7524ykvloi3jnnjtbqfs36ai7mt2cxw7miov@m4hrhkjj36xn>

On Mon, Sep 29, 2025 at 01:00:09AM +0200, Alejandro Colomar wrote:
> Hi Collin,
>=20
> On Sun, Sep 28, 2025 at 03:43:54PM -0700, Collin Funk wrote:
> > Alejandro Colomar <alx@kernel.org> writes:
> >=20
> > > Hmmm, that's good.  Thanks!  At least, the user doesn't need to free(=
3)
> > > anything weird.
> > >
> > > So, a good estimate of the size to be allocated prior to the
> > > sgetgrent_r() call should be:
> > >
> > > 	size =3D strlen(s) + 1 + strchrcnt(s, ',') + 2;
>=20
> Oops, actually:
>=20
> 	size =3D strlen(s) + 1;
> 	size +=3D (strchrcnt(s, ',') + 2) * sizeof(char *);
>=20
> > > That would be wasting a little bit if there are any commas outside of
> > > the fourth ':'-delimited field, but it should work.
> >=20
> > You can guess a value and then grow the buffer as long as errno =3D=3D =
ERANGE.
>=20
> TBH, I dislike that approach.  I prefer a good guess, and if that
> doesn't work, I'll report an error.  It may be imperfect, but it's
> simple, which means less bugs.  If I can have an upper bound, and the
> wasted memory is reasonable (in this case, I'd say it's even
> negligible), then we're fine.
>=20
> So far, I've written this:
>=20
> 	// from-string get group entry
> 	struct group *
> 	sgetgrent(const char *s)
> 	{
> 		int                 e;
> 		size_t              size;
> 		static char         *buf =3D NULL;
> 		static struct group grent =3D {};
>=20
> 		free(buf);
>=20
> 		size =3D strlen(s) + 1;
> 		size +=3D sizeof(char *) * (strchrcnt(s, ',') + 2);  // For 'grent.gr_m=
em'
>=20
> 		buf =3D MALLOC(size, char);
> 		if (buf =3D=3D NULL)
> 			return NULL;
>=20
> 		e =3D sgetgrent_r(s, &grent, buf, size);
> 		if (e !=3D 0) {
> 			errno =3D e;
> 			return NULL;
> 		}
>=20
> 		return &grent;
> 	}
>=20
>=20
> 	// from-string get group entry re-entrant
> 	int
> 	sgetgrent_r(size_t size;
> 	    const char *restrict s, struct group *restrict grent,
> 	    char buf[restrict size], size_t size)
> 	{
> 		char  *p, *end;
> 		char  *fields[4];
>=20
> 		end =3D buf + size;
> 		p =3D stpecpy(buf, end, s);
> 		if (p =3D=3D NULL)
> 			return errno;

I forgot a p++ here.

>=20
> 		stpsep(buf, "\n");
>=20
> 		if (STRSEP2ARR(buf, ":", fields) =3D=3D -1)
> 			return EINVAL;
>=20
> 		grent->gr_name =3D fields[0];
> 		grent->gr_passwd =3D fields[1];
> 		if (get_gid(fields[2], &grent->gr_gid) =3D=3D -1)
> 			return errno;
>=20
> 		grent->gr_mem =3D csv2ls(fields[3], end - p, p);
> 		if (NULL =3D=3D grent->gr_mem)
> 			return errno;
>=20
> 		return 0;
> 	}
>=20
> Which I'm quite happy with.  It's simple, it's loop-less (well, it has
> some necessary loops, but it doesn't retry anything), and it should work
> just fine.
>=20
> > > BTW, where's this exactly in the glibc source code?  It's a bit hard =
to
> > > follow.
> >=20
> > In nss you can find <FUNCTION-NAME>.c and then follow the includes and
> > macros. I agree it is a bit hard to follow. :)
>=20
> Especially, if we start here (omitting the copyright notice, for
> brevity):
>=20
> 	$ cat ./getgrent_r.c
> 	/* Copyright [...]  */
>=20
> 	#include <grp.h>
>=20
>=20
> 	#define LOOKUP_TYPE	struct group
> 	#define SETFUNC_NAME	setgrent
> 	#define	GETFUNC_NAME	getgrent
> 	#define	ENDFUNC_NAME	endgrent
> 	#define DATABASE_NAME	group
> 	#define BUFLEN		NSS_BUFLEN_GROUP
>=20
> 	#include "../nss/getXXent_r.c"
>=20
> And it doesn't get much better once I start following that.  I think
> I'll just trust Mark.  :-)
>=20
>=20
> > Collin
>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--csmkeltjefkroydp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZvj8ACgkQ64mZXMKQ
wql/YA//cGoS4Cw45ua7vR0BhQTc3+GCTP31hOkhls3DH6YFa5M31GSxDBLuB3Mq
jhp/diXt4184kQ+7p+qRdo9TTUL9dT3hxmXpn+H33HOj/ONKudoYmwTyNi+IHYls
swQRuHarQN0r16BuzTqFxVwMiLUNhAKuuaJDRzG9TrtZloWOUYKQbNMvRe/pWPzk
5fIsprHt6FvQ2zl1EwAeGq5w9lzjmk+htFDDY3RoClTbaXQuEm7utsnuPbVhh2kc
j5cjsjHQqnGS83Z0QIeU+2VfA1ujiSF6U0nloLcqmn9C2mtq3xlWNScpL1RbaPXW
hh/Mj8WVsjho3sNTGdPhNN++REfSW02JWjeQzCF2qP5jBLsDu+aumZC4aKaX7oay
Y7V+00HXYxLgmnz/0tzB7uwcRs56+x84E1hLyRqAxPI8idSDaAYrJX1En+IUJWb9
Qp2MKtbd3ELNZft925dVVds3p61J4d0Rkn8z81kfkncwFlHqD569mgVNbj1Jzfl7
5qLes9U8+EZTV01Gme3KWUn1rW0G+kJ6IdKDmP7cCUCWXVwqP8gToehFQHJEM2I/
EyAOWlBJgIrPsLpxB1chQXg54CYF0ajvgjfx+7oPcsaV7B+HVVPx9sB2MUlR4CLQ
yW3yqCsCPXRLhYIK0DqOd6kuU97SBnmLVDWcC0LUXWbccnaeQ+Q=
=3Xss
-----END PGP SIGNATURE-----

--csmkeltjefkroydp--

