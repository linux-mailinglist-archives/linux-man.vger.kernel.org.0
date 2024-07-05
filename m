Return-Path: <linux-man+bounces-1333-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F826928D0F
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE695B21E1E
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABF016CD1F;
	Fri,  5 Jul 2024 17:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7cIc9Cb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C200A955
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 17:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720200745; cv=none; b=qOmS+MLKrNd9+DzkTnLYg55gzNGaqbdosmcJix4VoDwtABNjRljtbbFmOOOLib1FxZ2eDCai4PFnvLN6n2S5w82OqPjpRCTZjLJk9MQIKDeLw01X91fJEzjquThME/yWVwxC8N9qIcCroGqIghuUT58bJN7EWGHwDCKWfiUTei4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720200745; c=relaxed/simple;
	bh=546sRsVSzjuYzR6G4kFfFGzIdcQBvWs1MtdhYnxU/2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=unFznfaOznuWaeWLxK1KV9oyXi+Z6U953+XiFHXZphDJyb0B9VXFIKcKObmZS7zucb5mMYqgU0SpK1IDw8r5oKfUt+rRLDU0+qIwcdwBZ8mPDzvNi2NLGI20nq3I01zqkp6AXzDKqWMDUV29EAKZRSt/L7eGFVU03usAEO5K/JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7cIc9Cb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F352C32786;
	Fri,  5 Jul 2024 17:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720200745;
	bh=546sRsVSzjuYzR6G4kFfFGzIdcQBvWs1MtdhYnxU/2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i7cIc9CbLQKlg88LgJ/hbyYRbUgKRNJCKtoiJSjgMXXUAUDjwMh0Ch/dhF3b39uHg
	 peini4n/GgQybU/DdsfV2k2dzR+KTZctWS4KbiKi5hNQ11S3pHswM2OYjEiR/X9W6i
	 3yWatmp9kr17o5bO8WYXrNEiGLA/ebCGmi4MVUTdeqTdEOm84UnEqTAUXEwblue0uH
	 qXDiR49Gfxc9FqOHhkJCSmAcedIURthSrlSxV8o5pq7CWbxOM2IPR2YGYPcVEEdmDw
	 C0lAk2Z32w/rGpvaUsnQi0re9fXWWeDDpPRBMGBg5F7Z3A4ZyZgglMXPA15d5k1LlK
	 9zi4sGVAOSNVQ==
Date: Fri, 5 Jul 2024 19:32:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <ajmcodhaxi33wxmyvomkd3osq42m3pd5c63uccfinissjputqw@scu47raz2oop>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>
 <b5rg3wo5cjvocred2uctavvdulvjtyahtmusdkzes2fssvxu3p@4x436xzzn2zf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jyuzhwfhvwyct65d"
Content-Disposition: inline
In-Reply-To: <b5rg3wo5cjvocred2uctavvdulvjtyahtmusdkzes2fssvxu3p@4x436xzzn2zf>


--jyuzhwfhvwyct65d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <3a93d77304ae0f6aa0453eff4813ecc000f2365a.camel@xry111.site>
 <b5rg3wo5cjvocred2uctavvdulvjtyahtmusdkzes2fssvxu3p@4x436xzzn2zf>
MIME-Version: 1.0
In-Reply-To: <b5rg3wo5cjvocred2uctavvdulvjtyahtmusdkzes2fssvxu3p@4x436xzzn2zf>

On Fri, Jul 05, 2024 at 06:32:26PM GMT, Alejandro Colomar wrote:
> Hi Xi,
>=20
> On Fri, Jul 05, 2024 at 11:55:05PM GMT, Xi Ruoyao wrote:
> > On Fri, 2024-07-05 at 17:23 +0200, Alejandro Colomar wrote:
> > > > strtol does have=C2=A0 a "char * restrict * restrict" though, so the
> > > > situation is different.=C2=A0=C2=A0 A "char **" and a "const char *"
> > > > shouldn't alias anyway.=20
> > >=20
> > > Pedantically, it is actually declared as 'char **restrict' (the inner
> > > one is not declared as restrict, even though it will be restricted,
> > > since there are no other unrestricted pointers).
> >=20
> > So how's the following implementation of strtol (10-based, no negative
> > number handling, no overflow handling, ASCII-only) wrong?
> >=20
> > long int my_strtol(const char *restrict nptr, char **restrict endptr)
> > {
> >   long ret =3D 0;
> >=20
> >   while (isdigit(*nptr))
> >     ret =3D ret * 10 + (*nptr++ - '0');
> >=20
> >   *endptr =3D (char *)nptr;
> >   return ret;
> > }
> >=20
> > There's no dumb thing, there's no restrict violation (unless it's called
> > in a stupid way, see below), and there **shouldn't** be a -Wrestrict
> > warning.
> >=20
> > If you do
> >=20
> > char *x =3D NULL;
> > strtol((char *)&x, &x, 10);
>=20
> The restrict in `char **restrict endptr` already protects you from this.
> You don't need to make the first parameter also restricted.  See:
>=20
> 	$ cat r.c=20
> 	long alx_strtol(const char *nptr, char **restrict endp);
>=20
> 	int main(void)
> 	{
> 		char x =3D 3;
> 		char *xp =3D &x;
>=20
> 		alx_strtol(xp, &xp);  // Fine.
> 		alx_strtol(xp, (char **) xp);  // Bug.
> 		alx_strtol((char *) &xp, &xp);  // Bug.
> 	}
> 	$ cc -Wall -Wextra -S r.c=20
> 	r.c: In function =E2=80=98main=E2=80=99:
> 	r.c:9:24: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qual=
ified parameter aliases with argument 1 [-Wrestrict]
> 	    9 |         alx_strtol(xp, (char **) xp);  // Bug.
> 	      |                        ^~~~~~~~~~~~
> 	r.c:10:34: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qua=
lified parameter aliases with argument 1 [-Wrestrict]
> 	   10 |         alx_strtol((char *) &xp, &xp);  // Bug.
> 	      |                    ~~~~~~~~~~~~  ^~~
>=20
> Using my proposed prototype wouldn't case any warnings with a powerful
> -fanalyzer that would be able to emit diagnostics with the current
> prototype.
>=20
> In strtol(3), there are 3 pointers:
>=20
> -  nptr
> -  *endptr
> -  endptr
>=20
> The first two should be allowed to alias each other (and at the end of
> the call, they definitely alias each other).  It is only the third one
> which must not alias any of the other, which is why my patch (v2) keeps

(Whoops; forget about that v2; that was about a similar patch to
strsep(3).  In this case we're in patch v1; which already had that into
consideration.  Please read it as s/v2/v1/.)

> that restrict, but removes the other one.
>=20
> Does that make sense?
>=20
> Cheers,
> Alex
>=20
> >=20
> > it'll violate restrict.  Nobody sane should write this, and it's warned
> > anyway:
> >=20
> > t.c: In function 'main':
> > t.c:6:28: warning: passing argument 2 to 'restrict'-qualified parameter
> > aliases with argument 1 [-Wrestrict]
> >     6 |         strtol((char *)&x, &x, 10);
> >       |                ~~~~~~~~~~  ^~
> >=20
> > --=20
> > Xi Ruoyao <xry111@xry111.site>
> > School of Aerospace Science and Technology, Xidian University
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--jyuzhwfhvwyct65d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaILiUACgkQnowa+77/
2zK50hAApskQhdGSShQhOMzUG54PB1V5ma7uvdfhds6N9oIdbX9vjQ0BRhHXqnEn
oU0IAOsWpPvyd5YL2huCcoq2gJhjnytg/hxFk72e/iL4EqmWQJ+zZ0J8te5gyB3n
Z2CZhYNLKa3OKwTAY4jW6wQl3QX0YMkxLG+TYssVzWVnKTHZ1OUcDsuVYFNm7IhA
5e6UCRD1FV/N9CkbzX5/GYFCEjydKiRyUGL1sY8aZ3PH0Lbe8Pd4xQi6rnnaYSNN
ZnE/2WshBM394kY5sIYsJh/lZd9qF3RkYpuUGDOshWb3oCL77/ovLg0Gee94wvHJ
CMUAUx2msB5zht2iwMA73Go1opc4WOlVEP1nB4CNj0BwocNV0wlsmHjluH5F9w7d
SGtkge+kESidmqaLINuE5sN8lIk2adEovZdBBTQ+PSF6P0dAb8hcNyHPmFZLzZYy
+JEwjiiKMvAUEeE74eBhVgMtm9xejXbj7VNMZWjoci0o5vt/VJvzwkYhkSjYjW/t
G5ug18QlXP03reHfqF5Pe3RBqwsDANS0Ax69FEAP4/ZD6mGG0DqmZW++ZTn4qYSI
C1yBnDOJrhVlP6gXryEy6kTTEu6d5PtBSvuSNbF9+S/FsEyTOGIMRVVfGJcD5een
/kF1KDIQqZY+Kzq4nikwGmgCBiq60S0DcOrNAk05q5o16WddKec=
=/m7N
-----END PGP SIGNATURE-----

--jyuzhwfhvwyct65d--

