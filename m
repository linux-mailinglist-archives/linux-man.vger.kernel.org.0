Return-Path: <linux-man+bounces-7-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F377E7EF3
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E72E1C20D9B
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97FC83B297;
	Fri, 10 Nov 2023 17:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYBvVnp6"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42053B2AC
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED08371E4
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 05:15:25 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 890D2C433C7;
	Fri, 10 Nov 2023 13:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699622124;
	bh=AA2012iI/0lE0yCIWCnMOAnN2/WqIEsofzaCc5QGLCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hYBvVnp6eWu6ECm+BS2vgSsFlt8DSSfEUjymQ54e1jJ+5d3K7wBeFL4a1EwjL9bLe
	 riLO9jRCmQYwf64HF13Dv4oypSLFhWY4Z9M0/ITT9WhizwUD0U+aVT3GatpmtOMmea
	 NfVVW7Zw0autQkI1tkENauw4+wd7O++u5LXs84RAwpzfZBk1oc3U1h5DzuMWBw+mm8
	 8sAlaKMXF1D/z2pNvXrfW7+UxE1q5ju7m/XNihdB7qAfIZYj3iSsJ7oMyz0pNQKAtZ
	 zLzMhGyqHKvHdyRAeaVANYi8WxFt3YvlP75nuH1c1yZibPFL1p7DGKKDLgPvNnrKWU
	 MC5FPxNbDJ5dg==
Date: Fri, 10 Nov 2023 14:15:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU4s6Vm-jBjFCcJ2@debian>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uGjoq4E5xIQDLuZu"
Content-Disposition: inline
In-Reply-To: <ebccf5c0-f125-4eb9-8820-e71e77f4f7ed@jguk.org>


--uGjoq4E5xIQDLuZu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 14:15:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Fri, Nov 10, 2023 at 11:36:20AM +0000, Jonny Grant wrote:
>=20
>=20
> On 10/11/2023 05:36, Paul Eggert wrote:
> > On 2023-11-09 15:48, Alejandro Colomar wrote:
> >> I'd then just use strlen(3)+strcpy(3), avoiding
> >> strncpy(3).
> >=20
> > But that is vulnerable to the same denial-of-service attack that strlcp=
y is vulnerable to. You'd need strnlen+strcpy instead.
> >=20
> > The strncpy approach I suggested is simpler, and (though this doesn't m=
atter much in practice) is typically significantly faster than strnlen+strc=
py in the typical case where the destination is a small fixed-size buffer.
> >=20
> > Although strncpy is not a good design, it's often simpler or faster or =
safer than later "improvements".
>=20
> As you say, it is a known API. I recall looking for a standardized bounde=
d string copy a few years ago that avoids pitfalls:
>=20
> 1) cost of any initial strnlen() reading memory to determine input src si=
ze
> 2) accepts a src_max_size to actually try to copy from src
> 3) does not truncate by writing anything to the buffer if there isn't eno=
ugh space in the dest_max_size to fit src_max_size
> 4) check for NULL pointers
> 5) probably other thing I've overlooked
>=20
> Something like this API:
> int my_str_copy(char *dest, const char *src, size_t dest_max_size, size_t=
 src_max_size, size_t * dest_written);
> These sizes are including any NUL terminating byte.
>=20
> 0 on success, or an an error code like EINVAL, or ERANGE if would truncate

-  Linux kernel's strscpy() returns -E2BIG if it would truncate.  You
   may want to follow suit if you want such an errno(3) code.

   However, I think it's simpler to return the "standard" user-space
   error return value: -1

   If you'd need to distinguish error reasons, you could distinguish
   error codes, but for a string-copying function I think it's not so
   useful.

-  Why specify the src buffer size?  If you're copying strings, then you
   know it'll be null-terminated, so strnlen(3) will not overrun.  If
   you're not copying strings, then you'll need a different function
   that reads from a non-string.  The only standard such function is
   strncat(3), which reads from a fixed-width null-padded buffer, and
   writes to a string.  You may want to write a function similar to
   strncat(3) that doesn't catenate, if you want to just copy; I call
   that function zustr2stp(), and you can find an implementation in
   string_copying(7).

-  You can reuse the return value for the dest_written value with
   ssize_t.  Just return -1 on error and the string length on success.
   That's how most libc functions behave.

-  Regarding NULL checks, it depends on how you program.  I wouldn't add
   them, but if you want to avoid crashes at all costs, it may be
   necessary for you.  You could do a wrapper over strxcpy():


	inline ssize_t
	strxcpy0(char *restrict dst, const char *restrict src, size_t dsize)
	{
		if (dst =3D=3D NULL || src =3D=3D NULL)
			return -1;

		return strxcpy(dst, src, dsize);
	}

   I used 0 in the name to mark that this function checks for null
   pointers.

Cheers,
Alex

>=20
> All comments welcome.
>=20
> Kind regards, Jonny

--=20
<https://www.alejandro-colomar.es/>

--uGjoq4E5xIQDLuZu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOLOIACgkQnowa+77/
2zI47g/+LU5fYdUKbQPGhdQCVEEQCxE5LvhykU9bvSOcQPFj6OhPP/V68XwhQ8FB
oatJPzNo+jka4XFbmb57XxsL5ylJqZlk8+br5Nm6zrcEsutIqRmG2oB03ghMr3gY
HLcMHCnSTZ8CnqyoHeUKlIdiKMt3Z6mE95JNoqS7rIDMyxO4WauZi2i/WWKPlMWV
r+9a7Ku4+G6Ql747nAflmPmZewPLKCozMPZXHGOi8zVwky01UAux1xLMyqoUfbfN
NlU5cDO7Oigyfz8jv3uAbEJA6QpNOuoFkNNrDRsADnkNFe4PSE3kjnazob8Wl5c8
rgmC44OSxc92rk/VnI1sHOsrJdE/KfkzDMcyQT60aramQaEYHEVa5vgnqRiJYXna
Euk1xHiT2zzfbkZCbSucvaMmpsgPlx3HBtUJdkbl1X/CFHd38iHW+je8aa/6CUBA
0Hj/piCweET4reqw5yqCwtzpyZYVTd3OkU82irhv8IGlZ6uBqoikJd5JvAdtNqrG
I98ylmZjMEGw9HEOM0jx72YCm8f/j8Cej7ZLCK3dmUS037nXTOYdkj/lNwh23GKq
JbO1bfslwe78ff0VjETuZWBBRSIjv4PNA/rw19MIiZEGK9GRrI8wccFrur8PMnhf
TUqbItq8442Ko8saLTtuM8at/flbiYtM0vavX6Wl6e3rhyWiGkY=
=y7zR
-----END PGP SIGNATURE-----

--uGjoq4E5xIQDLuZu--

