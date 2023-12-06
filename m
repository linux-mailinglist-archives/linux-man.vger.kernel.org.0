Return-Path: <linux-man+bounces-233-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2F1807A2F
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 22:13:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58E381C21006
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 21:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 630066E58A;
	Wed,  6 Dec 2023 21:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsQGeh17"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858045975
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 21:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F443C433C8;
	Wed,  6 Dec 2023 21:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701897180;
	bh=58Iwnk06shi25xMtiW/Vpt5A3gEhEZJ4U+NCYnEpAxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SsQGeh17WPM0gIxZiPV0UxsA8RGu3h7+Nh9PZQ7Rxi5GwML0mYhJ64mdz0EY9SqDp
	 FICi1zH6TvSUa/mLqbPbdbtWDwf3GiV6H7pzRQR0yVtdsFIIBw4+FZh9qQG4H2Am/z
	 LNDoNCZY3CFUjoaVFAONFwmq8fRG/Y/p/lZf9byiik8R+FkhZzbF65AVXHEgejh1HY
	 i0//B+ckNJftDafkXu7riNbrnitH2KYcLv844ei7VHBJots3eeFldrFmAbYqhHEhZL
	 6ECeU0NGiyuGnRfCZpf4ad+X8aPpwZHJhbFL6pI+VByPhi5N0INQF4BNipZagVPd82
	 zjINUek7Xp7GQ==
Date: Wed, 6 Dec 2023 22:12:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Message-ID: <ZXDj2cFZeIeeXII4@debian>
References: <20231206145132.5538-2-alx@kernel.org>
 <ZXCjD5dP-jaUpeER@debian>
 <20231206183351.749567-1-mattlloydhouse@gmail.com>
 <ZXDXBngCYG11NsMZ@debian>
 <20231206204522.756572-1-mattlloydhouse@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="N2/YeQNY8/+xjoQ3"
Content-Disposition: inline
In-Reply-To: <20231206204522.756572-1-mattlloydhouse@gmail.com>


--N2/YeQNY8/+xjoQ3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Dec 2023 22:12:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS

Hi Matthew,

On Wed, Dec 06, 2023 at 03:45:19PM -0500, Matthew House wrote:
> On Wed, Dec 6, 2023 at 3:18 PM Alejandro Colomar <alx@kernel.org> wrote:
> > Hi Matthew,
> >
> > On Wed, Dec 06, 2023 at 01:33:50PM -0500, Matthew House wrote:
> > > I feel like this is rather overstating the difficulty. In practice, t=
he
> > > no-conversion condition is very commonly detected by checking whether
> > > *endptr =3D=3D nptr after the call. The usual idiom I see is somethin=
g like:
> > >
> > >     char *end;
> > >     errno =3D 0;
> > >     value =3D strtol(ptr, &end, 10);
> > >     if (end =3D=3D ptr || *end !=3D '\0' || errno =3D=3D ERANGE)
> >
> > That test could trigger UB, if you passed an unsupported base.  Of
> > course, in this case you pass 10, but what if the base was a
> > user-controlled variable?  In such a case, nothing says what happens to
> > 'end' (experimentally, I see it is not modified, so it would be left
> > uninitialized); so dereferencing it, or even comparing it, would be UB.
> >
> > >         goto err;
> >
> > Yeah, if you just don't care and want to handle all errors in the same
> > way, and you know the base is supported, this is correct.
>=20
> The practical answer is that the base is never ultimately a user-controll=
ed
> variable. Sometimes people define wrapper functions with a variable base,
> but that base is still ultimately fixed by all its callers. If you disagr=
ee
> with this, I challenge you to name a single example.

Agree.  But then the manual shouldn't suggest that it's fine to test for
EINVAL.  It would be fine to test beforehand, though:

	errno =3D 0;
	strtol("0", NULL, base);
	if (errno =3D=3D EINVAL)
		goto bad;

	// Now we can work with that base.
	...
=09
	errrno =3D 0;
	val =3D strtol(str, &end, base);
	if (end =3D=3D ptr)
		goto nan;
	if (errno =3D=3D ERANGE || val < min || val > max)
		goto bignum;
	if (*end !=3D '\0')
		goto garbage;

I think this example would be an improvement over the current page.
Still, strtoi() is simpler to use in the general case:

	errno =3D 0;
	val1 =3D strtoi(str, &end, base, min, max, &err);
	if (err !=3D 0 || err !=3D ENOTSUP)
		goto err;
	val2 =3D strtoi(str, &end, base, min, max, &err);
	if (err !=3D 0)
		goto err;

But yeah, this is something you can pull from libbsd, or write your own,
after taking into consideration the thing about EINVAL from above.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--N2/YeQNY8/+xjoQ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVw49IACgkQnowa+77/
2zLuhA/9GC98opOzaPwXqFMKlmIDSrJQ1eA0hTPHNBpUpzorVIq8Zz6ncoYpcg3p
WWJBXNDLDwfc+P0eaII246S+SrRV9njAT7iWEjwvdYNc+r8tGUHxLkUXehvtQ1SR
XNsV6Mt1bAxo2Um3+BXOY519joEnsns49bLPsq/c+jVablm8nZI/3K6/lirIOrow
3JsXpra8Pg+s5Q50/medSapMep0Ljqnd6ZJaxVKkkUITdOyId5VJfO+P7ljIxunG
BNA85P+loHxXTETp1jRLhkrZjqjK/hdPCLIGPQrTRMPV4o+TzGKmaOyTTKRiGjsb
84PBF0Dt6mU6hwgIQAFiDM9od+pWd1ATRTSc6263jlxYbWHAL1d8YUgiCtLVQHrf
JYZc1X4ccVdTkw+MoPdZNzx/+Zf7qSx+LWmeMl2gzTi4WoCb+vCIkfQis27BMOJP
uUanmOh6dNOV7Co+50ad+Vd9nGpzzkk6MVh9rbp3ApVN+26whqRJW92ErhOADX+M
GkI9oeahb9mk0nDBzRB4D+lUh2mgoZwoXh0jKT13p7UUjNfvC2VeFrpj4Y+XvIH0
dQMFEEDO5IF9YqiKsQTQvH5TTSvukCesRwL5Fthwe8EReVXfZZGZLcGrJXG43N4Q
K+pb1WCYO+NSNyQqX8kVvGA7+JzZGSVKWYgmzlFafIWcNZIE9kk=
=k8Zo
-----END PGP SIGNATURE-----

--N2/YeQNY8/+xjoQ3--

