Return-Path: <linux-man+bounces-75-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 408897EACEC
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 10:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D00EF1F23EED
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 09:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5DFC16424;
	Tue, 14 Nov 2023 09:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5GMM5ob"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C8D168A4
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 09:21:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CEFFC433C8;
	Tue, 14 Nov 2023 09:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699953698;
	bh=jyqLX/AxFYKLw/SZLFpzcrYZDje3hZ7nbi8WCuzgOzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G5GMM5obWw4eKlpCU80Swv1B/Kerpa/7zT6ALA8EOLzXflJkjn8E4l/eoQJKNzbhU
	 rZNUpXH/VAC0cTmyPbGHY8NS7I2AxDh2d1llqx4UTNLSJwykD+UocsBoAQphnnzbzb
	 2xFcFynYA1AmIPo2knJbDac/83sNCKqefcExyM81ADdXGCJWs5aT3DlUK4/7DjalY4
	 aY81N8z31qk8LsmQvnizxAkLnWjT/kmmYsKoNK7MfOg1n3DzAperm513UAcKOMJcyb
	 fzOyZRbBrbftPG861FubYxvVUoDTMOhUCu9rz+/iM47D2RuMKFwLdXmB0g5q1i86UA
	 7zXNsEyNuuNKQ==
Date: Tue, 14 Nov 2023 10:21:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Andriy Utkin <andriy_utkin@fastmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsrtowcs.3: add a note for conversion completion
Message-ID: <ZVM8Hzfw9CCRHWwR@debian>
References: <20231113134857.1639387-1-andriy_utkin@fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g1aKN8k3AcG1O1ES"
Content-Disposition: inline
In-Reply-To: <20231113134857.1639387-1-andriy_utkin@fastmail.com>


--g1aKN8k3AcG1O1ES
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 10:21:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Andriy Utkin <andriy_utkin@fastmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsrtowcs.3: add a note for conversion completion

Hello Andriy,

On Mon, Nov 13, 2023 at 01:48:57PM +0000, Andriy Utkin wrote:
> This adds a note to resolve a confusion I had.
> Maintainers are most welcome to improve my wording.
>=20
> I aimed for this function to work in such a manner so that
> it would convert the entire string. So I allocated a destination buffer
> to accommodate the string length in wide charaters and the terminating
> null. The function was called with len equal to the length of the string
> in wide characters, as returned by mbsrtowcs(NULL, ...).
>=20
> This resulted in *src being updated to point at the trailing null
> character, rather than NULL which I expected.
>=20
> Here is an example which illustrates the point:
>=20
> Code:
>=20
>     #include <wchar.h>
>     #include <stdio.h>
>     int main(void) {
>         const char *src =3D "Hello", *s1 =3D src, *s2 =3D src;
>         wchar_t dest[6];
>         int ret;
>         printf("src is %p\n", src);
>         ret =3D mbsrtowcs(NULL, &src, 0, NULL);
>         printf("mbsrtowcs(src=3DNULL) returned %d\n", ret);
>         ret =3D mbsrtowcs(dest, &s1, 5, NULL);
>         printf("mbsrtowcs(len=3D5) returned %d, updated src is %p\n", ret=
, s1);
>         ret =3D mbsrtowcs(dest, &s2, 6, NULL);
>         printf("mbsrtowcs(len=3D6) returned %d, updated src is %p\n", ret=
, s2);
>         return 0;
>     }
>=20
> Output:
>=20
>     src is 0x402010
>     mbsrtowcs(src=3DNULL) returned 5
>     mbsrtowcs(len=3D5) returned 5, updated src is 0x402015
>     mbsrtowcs(len=3D6) returned 5, updated src is (nil)

mbstowcs(3) has the following:

     In  order  to  avoid the case 2 above, the programmer should make
     sure n is greater than or equal to mbstowcs(NULL,src,0)+1.

We could add that.  BTW, maybe you want to use mbstowcs(3), which is
simpler.  I think we could add something saying that mbsrtowcs(3) is a
restartable version of mbstowcs(3).

Thanks,
Alex

> ---
>  man3/mbsrtowcs.3 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man3/mbsrtowcs.3 b/man3/mbsrtowcs.3
> index 11741d187..4718b335d 100644
> --- a/man3/mbsrtowcs.3
> +++ b/man3/mbsrtowcs.3
> @@ -155,6 +155,15 @@ current locale.
>  Passing NULL as
>  .I ps
>  is not multithread safe.
> +.P
> +Calling this function with
> +.I len
> +set to the value returned from
> +.I mbsrtowcs(NULL, ...)
> +behaves according to scenario #2 described above:
> +.I *src
> +is set to the address of the terminating null wide character, rather tha=
n to NULL.
> +Add 1 to that value for it to work according to scenario #3 (complete co=
nversion).
>  .SH SEE ALSO
>  .BR iconv (3),
>  .BR mbrtowc (3),
> --=20
> 2.41.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--g1aKN8k3AcG1O1ES
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVTPBcACgkQnowa+77/
2zK3GxAAp+qbNlod1G7obMy5G6JDrkWYSaR9I+iUkT9tmgsTdGpn31KFBpxh+w3c
BhW/kpHWe4YotBDvC2w+ukGI6mBVsHSntLidBus8Ur8PIk7PforrFYljm4nx0KRM
c6X5GTybxvCV+Ha9/Bh7pRvboLzEbxvt6WZvvkHOv6W7u0Os/7k1mtoM2hfg8MZX
ycU2XYsZSb2DSo2mN3MLYehhY9uWjFJC3U8zrNqzIZBBnVCwGu+vRQtmGszTJYKR
x/H8rJCFquGM9Q5l7XawsJtPWN2kQ7avSQMvaIEUJjPxubvOJmms0WGwbgdwJFHv
D2rMLiLstisCcKof3FE3pv0KhLVGnMRzqhWKZYkCTLRmJbvG2BKx9SaAJUBwBjeK
PsnwCc6vpBV06dRTqZAHSlzKTbOrwiTINc7R/O8+szqjEmTb8NtpNQrIpr8w34Ty
55L82FjX2qd+lyhgIJyeIjhk30zhf52coKgkFVtB/pgLmIMc8cs1iu2J3gyF3jTN
8oiu6r6o3EN9PhjfEcuT2Dkl8hZ3GCxebiseURWwDkw5JZgREzJcuz2Anzgh2uTV
NTptLQtziwq44Vwm717sU5zCFR+hngvCzP98o0qKqV+Zf1dUxIxWLQ9M/jFH2zbD
RRGA2soVy1MUVVyDW69xOXTqQlpBgX8oMysubZr2UxgzRlFjEHM=
=ST5d
-----END PGP SIGNATURE-----

--g1aKN8k3AcG1O1ES--

