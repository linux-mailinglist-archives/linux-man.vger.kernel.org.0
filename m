Return-Path: <linux-man+bounces-3229-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F8AECACC
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 01:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8DA61895EE1
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 23:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55CA23771E;
	Sat, 28 Jun 2025 23:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+Y7ZVJ8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652FC43ABC
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 23:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751155131; cv=none; b=tW4rgLqNmjwzflZ45GE5pwS8DJUZurst90vTDDZaUGICciPcEIAUjcXad9gt5W7NbxNNkyIdyOLDys7lT0tlQ671YHLIEAkjWFhCLG2P5mS88aojOczvhEMwNnovlLTI0q7nts+BkJipowsylu7piiFyqewuG1H0Amwvi03B8QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751155131; c=relaxed/simple;
	bh=1WHcygU40hlxPiGYFh7NeGzzM/GQh/IiTHdHbg3Eh8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EEdcVWCmzZQ5R726P+1TEgE/njSX9fp1PUu/z9E5CmSVVpFd0SwNJPLLOUHRYKRB0O3R9raF4iBAdXIKlD8Dk0qaPLfH09gI9AF/20Dp8gLMCX3mtA4xbsI4r08Tojt0kdhuD7wvFX86t173Te0LedvWoaIM8STjVhlD7MNBdBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+Y7ZVJ8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2063CC4CEEA;
	Sat, 28 Jun 2025 23:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751155130;
	bh=1WHcygU40hlxPiGYFh7NeGzzM/GQh/IiTHdHbg3Eh8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d+Y7ZVJ8c2D9JzzMXD82UxqODUw2V7tdd5Ng+o/uIdk1YHjLZh6BvwuLZoaXVQH4B
	 CmmfWzwHMR+R2diMvKpxuU5SNxh7G/ZcX9587b6WNdhhqdhWncLYGES23y0JLN54Td
	 3hjBP0ENHmsAO1R95R9/Txn8uCum+SeTHou2qCm1iPWgaI3DNxR0eKHf4GaXqeDB86
	 Gc5IPni9T9gt59FoQfaZiIQd2KqSnPjumbl1t7Ja7iSODAgwkASO3pwF220CY0Z/hw
	 S/tgAR3L0fKMVgr4Z22+3OnyIuQ8L7flBcDcbIQ7qWOKetxdl3cFTYGt7lEHojEUah
	 1LMRhwgRZuX2A==
Date: Sun, 29 Jun 2025 01:58:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Beuning <bbeuning@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
Message-ID: <gujq6ijk5kmci3n6rykbzpamb3k3ckn7ac4xzy7i5svcsxfkyl@crbjc5zamglu>
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
 <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
 <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oitbszcnqcypahew"
Content-Disposition: inline
In-Reply-To: <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>


--oitbszcnqcypahew
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Beuning <bbeuning@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: add_key(2) missing error ENODEV
References: <CACbk2c9mr7-jHodA=0P73RCDXep6Bvpq8snh5zD-Gze+4NgGLg@mail.gmail.com>
 <blbpv2wtlyy6ofkbeyymgkgsza245ekipe37ggldcv6j7jaqa3@f4fsnkllnjpi>
 <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACbk2c-7AC5vWuFmsev+3XDOt6v_dH43WBW=ejpkJm=TYcNeOQ@mail.gmail.com>

Hi Brian,

On Sat, Jun 28, 2025 at 07:22:45PM -0400, Brian Beuning wrote:
> Here is a patch and a 30 line test program to demonstrate the problem.
> There are comments at the top of the program showing how to compile it
> and the expected output.

Thanks for the program; it was very useful!!

> Brian Beuning
>=20
> P.S.  This is my first time making a patch.

Thanks!  However, what you included as a patch is only a diff.  Would
you mind sending what git-format-patch(1) produces?  You can run this:

	$ git format-patch -1 HEAD -o . -v2;

in case you've never used that.  That will include a commit message,
which the patch should have for applying it.

> On Fri, Jun 27, 2025 at 11:51=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Brian,
> >
> > On Fri, Jun 27, 2025 at 11:24:01PM -0400, Brian Beuning wrote:
> > > The man page for add_key(2) does not list ENODEV as an error code.
> > > It happens when the "type" argument is invalid.
> > >
> > > I spent about 6 hours figuring this out.
> > > I looked at enabling TPM and UKI.
> > > Then got the kernel source code documentation which explained it.
> >
> > Would you mind sending a patch?  Please include links to those sources
> > in the commit message.  Please have a look at
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>
> > if you'll prepare a patch.
> >
> > >
> > > Brian Beuning
> > >
> > > P.S.  This is the second sending of this message.  The first had HTML.
> >
> > Thanks!
> >
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

> // System: Ubuntu 24.04
> // Linux kernel: 6.8.0-62
> // Compiler version: 13.3.0
>=20
> // Compile: gcc test_add_key_ENODEV.c -lkeyutils
>=20
> // Output:
> //    type KMS key_serial -1 errno 19 ENODEV 19
> //    type user key_serial 109894492 errno 0 ENODEV 19
> //
>=20
> #include <errno.h>
> #include <keyutils.h>
> #include <stdio.h>
>=20
> void
> main()

main() must return int.  See the standard:
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#paragraph.5.1.2=
=2E3.2>

Also, the () syntax is rather problematic, and I'd recommend to always
use (void).

> {
> 	const char * type =3D "KMS";
> 	const char * description =3D "0";
> 	char payload[] =3D "abc";
> 	size_t size =3D sizeof(payload)-1;
> 	key_serial_t keyring =3D KEY_SPEC_PROCESS_KEYRING;
>=20
> 	for( int i =3D 0; i < 2; i++ ) {
> 		errno =3D 0;
> 		key_serial_t ks =3D add_key( type, description, payload, size, keyring =
);
> 		printf( "type %s key_serial %d errno %d ENODEV %d\n", type, ks, errno, =
ENODEV );
> 		type =3D "user";
> 	}
> }

Okay, I've refactored this to be slightly more readable, and also to
make sure it doesn't depend on which order the calls are made.  I can
fully reproduce what you said:

	alx@debian:~/tmp$ cat ak.c=20
	#include <errno.h>
	#include <keyutils.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>

	static void try(const char *type);

	int
	main(void)
	{
		try("KMS");
		try("user");
		try("user");
		try("KMS");
		try("KMS");
		try("user");

		exit(0);
	}

	static void
	try(const char *type)
	{
		key_serial_t  k;

		errno =3D 0;
		k =3D add_key(type, "0", "abc", strlen("abc"), KEY_SPEC_PROCESS_KEYRING);

		printf("type: %s\n", type);
		printf("	key_serial: %d\n", k);
		printf("	errno: %d\n", errno);
		printf("	ENODEV: %d\n", ENODEV);
		putchar('\n');
	}
	alx@debian:~/tmp$ gcc -Wall -Wextra ak.c -lkeyutils
	alx@debian:~/tmp$ ./a.out=20
	type: KMS
		key_serial: -1
		errno: 19
		ENODEV: 19

	type: user
		key_serial: 360708444
		errno: 0
		ENODEV: 19

	type: user
		key_serial: 360708444
		errno: 0
		ENODEV: 19

	type: KMS
		key_serial: -1
		errno: 19
		ENODEV: 19

	type: KMS
		key_serial: -1
		errno: 19
		ENODEV: 19

	type: user
		key_serial: 360708444
		errno: 0
		ENODEV: 19


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--oitbszcnqcypahew
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhggbEACgkQ64mZXMKQ
wqmbPA/9FMtb/l3SW2zF98sR8uZGSFV1ky8zvqjcgxHPQ+d7fHcIERla3zwShayz
4nwOeY9Pz1HSLpMiyQBc1lGERkLk1DODzN6NP6zqe2tnn3ORJzAg2d7AIb3bJ7W9
IzPJ1G2eqOBCAKpjWMOMWMG5z/REqKsepZa6ch08i6iWilKf9LXP1hAm7rv9/fA3
+I9S8ivxATf6wd2uhKNvn4OPZ3iy9lYOU6bYTngW7gjaGo+5yUQVbycjMHkWv+qJ
UiYgaAFbyfs+svnCogUD66mQDXN67GYzc+dqgq7M+s/KGPmlBH5FQY0wZRuzcKBf
TSMRT0qvAwy0xzFvRQQtH1gm73mv3GQdMPO2CJZZVfPKnGNYP7wK6e0Obk9i3uQ5
QDoOXlz6nekgaiQBpd80ENExInieWBREaA+pp4hvg3u2ws6puWC/TFW6jPi8xnoD
WzcUIeuCcHdrBJ97Jw6362SdE6t2jCbbcgcWCRJ1oB6tqZq/tYT7kGDtgXjmxm4R
CE0mIdy7G18sWZ/gRAkLZ+i44AthAJxUayIGa2Q6HGChRsFNe+iBYxksX7dduLcz
p5TUZPZBmbwZu9cDHn9xODpp2aPw/3QsR4FTkfn61bfeXQjgV8UMtrS3L/I+hZlS
Pqul2Q67pLp4ftomrC4UuaJHr4hhLGP9At/cYa2jE4nhmEXYOLs=
=HW7/
-----END PGP SIGNATURE-----

--oitbszcnqcypahew--

