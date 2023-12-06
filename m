Return-Path: <linux-man+bounces-225-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3F5807526
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 17:36:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C4511C20E22
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 16:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F5C3DBB7;
	Wed,  6 Dec 2023 16:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IihRU8sY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B4B46442
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 16:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC9DEC433C8;
	Wed,  6 Dec 2023 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701880594;
	bh=YAJl+c4YwiQxG4cww2tItR/wj0VyyOfU6I2FNbgLeI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IihRU8sYtJlhu8hPR06X9LQPg8VP/QFZBharkpgM0btKVbxPaewvHBz5zQIb2dUJu
	 US1iq3hEvlLBociYcYZl+zkIhgePowAAlPQrKbWiygOKj/JQ3GG3041vi17nD7Lu4o
	 tzGrP5FhtrY4E3azIP7LO3C3axcZ58e5kEe3gviKrXurptB9MGWN4md6hAKMLMr0Kk
	 Vf4HJWcCn/Z3K0zfwISFs/U3E4JrBZtprtFXVdjFplqKqP75yg6/7bXMdKkjyzkPnv
	 2ZSe9UvJOhepRVs2NeT/oAUuK9ORHVV5pOTnNTYBd/P2X119VTQFw2UrRCKQ0lChg2
	 QRr+ARN1Bn/fw==
Date: Wed, 6 Dec 2023 17:36:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Zack Weinberg <zack@owlfolio.org>
Cc: Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Message-ID: <ZXCjD5dP-jaUpeER@debian>
References: <20231206145132.5538-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TiuZfb+SlsZ6MPL9"
Content-Disposition: inline
In-Reply-To: <20231206145132.5538-2-alx@kernel.org>


--TiuZfb+SlsZ6MPL9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Dec 2023 17:36:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Zack Weinberg <zack@owlfolio.org>
Cc: Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS

Hi Zack,

On Wed, Dec 06, 2023 at 03:52:34PM +0100, Alejandro Colomar wrote:
> Several programmers have been confused about this use of 'deprecated'.
>=20
> Also, maximum field width can be used with these fields to mitigate the
> problem.  Still, it's only a mitigation, since it limits the number of
> characters read, but that means an input of LONG_MAX+1 --which takes up
> the same number of characters than LONG_MAX-- would still cause UB; or
> one can limit that to well below the limit of UB, but then you
> artificially invalidate valid input.  No good way to avoid UB with
> sscanf(3), but it's not necessarily bad with trusted input (and
> strtol(3) isn't the panacea either; strtoi(3) is good, though, but not
> standard).
>=20
> Try to be more convincing in BUGS instead.
>=20
> Link: <https://stackoverflow.com/questions/77601832/man-sscanf-d-is-depre=
cated-in-c-or-glibc/>
> Cc: Lee Griffiths <poddster@gmail.com>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> Hi Lee!
>=20
> Thanks for the report.  After seeing how much frustration it has caused,
> I propose this change.  Does it look good to you?
>=20
> Thanks,
> Alex

Formatted page:

BUGS
   Numeric conversion specifiers
     Use of the numeric conversion specifiers produces  Undefined  Be=E2=80=
=90
     havior for invalid input.  See C11 7.21.6.2/10.  This is a bug in
     the  ISO  C  standard,  and not an inherent design issue with the
     API.  However, current implementations are  not  safe  from  that
     bug,  so  it  is  not recommended to use them.  Instead, programs
     should use functions such as strtol(3) to  parse  numeric  input.
     This  manual page deprecates use of the numeric conversion speci=E2=80=
=90
     fiers until they are fixed by ISO C.

I think it would be good if glibc would make promises about sscanf(3)
on untrusted input.  How about guaranteeing a value of -1 and ERANGE if
the integer would overflow?

The current implementation, AFAIK, uses strtol(3), so it has the
following behavior:

-  For %d, if the value is >INT_MAX but <=3DLONG_MAX, the wrap-around
   value is stored, and errno is not set.

-  For %d, if the value is >LONG_MAX, -1 is stored, and errno is set.

	$ cat sscanf.c=20
	#define _GNU_SOURCE
	#include <errno.h>
	#include <stdio.h>
	#include <string.h>

	#define wrap(s)  do                                                       =
    \
	{                                                                         =
    \
		int  i, ret;                                                          \
										      \
		errno =3D 0;                                                            \
		ret =3D sscanf(s, "%d", &i);                                            \
		printf("%s: ret=3D %d, val=3D %d, errno=3D %s\n", #s , ret, i, strerrorna=
me_np(errno)); \
	} while (0)

	int
	main(void)
	{
		char  str_a[] =3D "9223372036854775828";   // 2^63 + 20
		char  str_s[] =3D "8589934599";  // 2^33 + 7
		char  str_d[] =3D "4294967290";  // 2^32 - 6
		char  str_f[] =3D "2147483678";  // 2^31 + 30
		char  str_g[] =3D "2147483638";  // 2^31 - 10

		wrap(str_a);
		wrap(str_s);
		wrap(str_d);
		wrap(str_f);
		wrap(str_g);
	}
	$ cc -Wall -Wextra sscanf.c=20
	$ ./a.out=20
	str_a: ret=3D 1, val=3D -1, errno=3D ERANGE
	str_s: ret=3D 1, val=3D 7, errno=3D 0
	str_d: ret=3D 1, val=3D -6, errno=3D 0
	str_f: ret=3D 1, val=3D -2147483618, errno=3D 0
	str_g: ret=3D 1, val=3D 2147483638, errno=3D 0

The suggested change would be to act as if

	strtoi(str, NULL, 0, INT_MIN, INT_MAX, &err);

would have been called.  Does that make sense to you?

Also, I was going to ask for strtoi(3bsd) in glibc, since strtol(3)
isn't easy to use portably (since POSIX allows EINVAL on no conversion,
how to differentiate strtoi(3bsd)'s ECANCELED from EINVAL in strtol(3)?).

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--TiuZfb+SlsZ6MPL9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVwowgACgkQnowa+77/
2zKIJg//T/pZqHBdUYFMXIJo8K2zLAsIdgEjBb8Mhk+qSLA0DTEXY7vDNi6i1vLD
rw9r107UJyiEip5yTUNBCUdwKHlyFstkQsuzuVj8qN6Tl0fjwGYf2QrmOHFg90uM
sE5Lx0gA8hOHXgn+zJ2tcS14P92R27k9+mzU7eoOAE6Cd88S2szB2klS4yldwATR
W7xkywDCntqfORyUFSCbJYND/9asgdmQYa1OwqUxtwVD9ybFP6yGSMMs5SmTsPfx
QGM3e4GZ+y8oBQDf19jyPjB5tdJwHtuGHp07LL29aeVX9y0BSyHQho/UweOzhJcx
KxHdzQpa1qCPRZHCKedACHZuTY7YDogCayFYgoZcARunwDWwQiVUpSv4i2IjNoRw
ZCMHMH7lPl24msGzltDWR8oMWj7jVP/2Lk7+cGXPZmwSvHUZ93+ZB5ap4SxrAh4Y
/W/ELMvmy/3P71TYmj9t3hBGwEQvObeP0hphttKzGHoIX3EbOCVjWuYX5Ywg9avC
Q8MZTEOICidFIw951HyjkOowoDoJxzTT9XjSl13S2zRO8nT3FydgjBRoVwdstsk0
ept9UFKXIKtM8bddp8fa4fxut2PxbJae0zu8D9MNpFP6vzJ3OQ117Zjy77JQmmvu
qLJ+3B6XLlV8rqKPI7N5maf9tj29ZiJAr0vXulfsU1V9+KUXEek=
=zYHi
-----END PGP SIGNATURE-----

--TiuZfb+SlsZ6MPL9--

