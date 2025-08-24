Return-Path: <linux-man+bounces-3690-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D79B33216
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:43:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8460016E366
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B601B1FDA89;
	Sun, 24 Aug 2025 18:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D93HKD5z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749DF747F
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 18:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756060934; cv=none; b=abPHqWl1pNiB7THDQs5MC9TNPJQ6bcDkAlZ5TTn/tVK4R384Bg4XTpgSqajrlgp2aMSpLccPZaLQXA92MHwrbT260Xn4U410i7s9Xw8DZ/NgP+nClM0q7prAmpku4ieDRLgzmH8/R7ATqnMN7YmsHpPsxv3ULn1TMaP9uZMwQpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756060934; c=relaxed/simple;
	bh=k3Rmg9xN+pFiTH6PIo0V2T4Pv/kgoQvzUWbt8lq/W3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jEB+DiX0I/QZ1QNwnQ6vW1YkXqmMcnQLvcaZ0cT24lJ9yrQUChd//u8cFIaM57uofTbSQOOutxC+WinKC3Mnb5oHS/kX0qVQFojwQ5722H1wkaCsJRc7Kxk8DQlc9zY1kC9EVg2TZM9wZYV6vGI/DAUyb4Lm1mHH/CwOdD7KgIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D93HKD5z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30D41C4CEEB;
	Sun, 24 Aug 2025 18:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756060933;
	bh=k3Rmg9xN+pFiTH6PIo0V2T4Pv/kgoQvzUWbt8lq/W3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D93HKD5zsPulGr2AffDuoawpUb0OFkXwrKy6k7N+cj+7J5QvvN3f5kp9ev5Xmwas6
	 kf2nwGvv6ubrWvxSDgM3n0QF8clDNctSaW2jaFFLf2JitFEjeCgF2irUkR4rCTaa0M
	 Z7XBWOvzn2+9HKj7mHmTUVVs/J6i089/6oTE8zwFbJifEp6Ubf3onYxqZ/Tc55due8
	 l9cOpcHtuodsyX2j3MgG92WmVjGSTxeUdv6aw/YSPOXafpC0Bw7L29gANKxXp2Psi6
	 xCoUq1mkhApFOejCT6KcFX//YVJ06qTJIthHUN3uAOHkKJP35klWLgmTcC3SMeMzrP
	 ycDa1JEo///Lw==
Date: Sun, 24 Aug 2025 20:42:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <qiswqsy2zq4yxmkblwuw3zxj2ev3utg525bfhst2sthvpecvyb@enfc6paekaj6>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmkpkvliw4wi63sj"
Content-Disposition: inline
In-Reply-To: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>


--wmkpkvliw4wi63sj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
 <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
 <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKs8ipbVrLo_fFC-@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 04:23:38PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Aug 24, 2025 at 06:05:31PM +0200 schrieb Alejandro Colomar:
> > On Sun, Aug 24, 2025 at 02:48:32PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    B<=E2=80=A6>int datalen, int buflen =E2=86=92 B<=E2=80=A6in=
t> I<datalen>, B<int> I<buflen>
> >=20
> > That is on purpose; it's a list of forward-declarations of parameters,
> > not the parameters themselves.  To distinguish them from actual
> > parameters, they're in Roman.  (Note the semicolon at the end of the
> > list of forward declarations.)
>=20
> That is quite confusing, at least to me as a translator (not a
> programmer).


> So they are neither the function themselv (which is in
> bold) nor variables (which are in italics)?

Correct.

They are used to be able to refer to them in array size expressions
before the actual parameter has been declared.

> And the type (here "int")
> is printed in Roman on purpose, while it would be bold otherwise (see
> below, for e.g. "op", the type is in bold).

Yes, both the type and the parameter are in Roman, to gray the entire
list of forward declarations out.

> And in some pages, only a few of these are actually "forward
> parameters", while some others are not?

The list of forward declarations of parameters is up to the ';'.

> (But I trust you - if you say
> this is correct, then I simply align).
>=20
> And: The name, in this example "datalen", comes from somewhere else
> ("forward")? I'm asking this because I would like to understand the
> implications of these "forward parameters" compared to normal
> parameters for translations.

Let's take strncpy(3), which is a simpler example:

       char *strncpy(size_t dsize;
                     char dst[restrict dsize], const char *restrict src,
                     size_t dsize);

everything between (.*; is the list of forward declarations.  It can
forward-declare parameters that must be declared again between ;.*) and
the declarations must be compatible.

I use a newline after the ';' to make the separation between forward
declarations of parameters and actual declarations of parameters more
readable.

Here, 'dsize' is forward-declared to be able to use it in the
declaration of 'dst[dsize]'.  Otherwise, 'dsize' would be undeclared.

Here's an example with GCC:

	alx@debian:~/tmp$ cat strncpy.c | nl -ba
	     1	#include <stddef.h>
	     2=09
	     3	// Bad: dsize not declared before use
	     4	char *bad1(char dst[dsize], const char *restrict src, size_t dsize);
	     5=09
	     6	// Bad: type mismatch
	     7	char *bad2(int dsize;
	     8	    char dst[dsize], const char *restrict src, size_t dsize);
	     9=09
	    10	// Bad: foo is not a parameter
	    11	char *bad3(int foo;
	    12	    char dst[dsize], const char *restrict src, size_t dsize);
	    13=09
	    14	char *good(size_t dsize;
	    15	    char dst[dsize], const char *restrict src, size_t dsize);
	alx@debian:~/tmp$ gcc -Wall -Wextra strncpy.c=20
	strncpy.c:4:21: error: =E2=80=98dsize=E2=80=99 undeclared here (not in a f=
unction)
	    4 | char *bad1(char dst[dsize], const char *restrict src, size_t dsize=
);
	      |                     ^~~~~
	strncpy.c:8:55: error: conflicting types for =E2=80=98dsize=E2=80=99; have=
 =E2=80=98size_t=E2=80=99 {aka =E2=80=98long unsigned int=E2=80=99}
	    8 |     char dst[dsize], const char *restrict src, size_t dsize);
	      |                                                ~~~~~~~^~~~~
	strncpy.c:7:16: note: previous definition of =E2=80=98dsize=E2=80=99 with =
type =E2=80=98int=E2=80=99
	    7 | char *bad2(int dsize;
	      |            ~~~~^~~~~
	strncpy.c:7:16: error: parameter =E2=80=98dsize=E2=80=99 has just a forwar=
d declaration
	strncpy.c:12:14: error: =E2=80=98dsize=E2=80=99 undeclared here (not in a =
function)
	   12 |     char dst[dsize], const char *restrict src, size_t dsize);
	      |              ^~~~~
	strncpy.c:11:16: error: parameter =E2=80=98foo=E2=80=99 has just a forward=
 declaration
	   11 | char *bad3(int foo;
	      |            ~~~~^~~

> (Or do you have a reference, which explains this, than I will gladly
> have a look at it).

They are a GNU C extension.  They are documented here:

<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>

And they have been proposed for standardization into ISO C2y here:

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf>

> > Have a lovely day!
>=20
> You too.

:-)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--wmkpkvliw4wi63sj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirXPoACgkQ64mZXMKQ
wqlAcRAAoR/BelGjBdq070kMDJshGLZ7Z4bww//txpLORDkRPg7pVYFn5GigYZPW
X25Ph/lJN1YxVKf8WRpcDg+IJkKIwssRnJxINTpxVQAUxP2jNLNRWzG1HTkdf5dY
OGj4nZoasYL+230LH0uajmsGEZLm/UmDaK5EwSIvJgelUmDQ+43lbxlrhy1L4dQw
IdBNpEE+uCJZS+yONWArnCn3asoyUEt82WJqJu7tK1MjrOGIisSLEtEcYmNjpeWa
oautpWKdS/CN1YEUJdUl8PnFcbIcGvK77DKGO+fWPteoPhbIdKHIXtxr/pw382WM
C5F7c/Hv4sHcT2srUNTZJQZX/zgGnpIWSULDKwQfJTZgE5GMVda3MvOc9aVEiBkx
7t5/KPj/4Oap2c7UzddV9ZcvumOcjUrEwUClA4gN4x6a5xfIFgcI4725B3Aee4c0
CNCFvdzbiskRez9PACD2b4q2Og8iHVdV8unIoaz/Wy4gGUbszrJbxO3Gc+J9mz96
SL72F0SfbjaAYXBom7DCYx/rlq2rokLaB1dIOUQJF22XjHjfJDd9t4pXJBW4yJpf
bbughPMpFuY25J7plJHc4tqTv+grgIrtgh6asTCYraCVsjKISLIDHLZEqStVTnXb
0W4rCBNi1to7GUSfA/PQ7xJVfC3yfZlfIJEuZXHYuUEL9CdgPXM=
=soKs
-----END PGP SIGNATURE-----

--wmkpkvliw4wi63sj--

