Return-Path: <linux-man+bounces-77-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D89877EAD8C
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 11:04:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 920752810E7
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 10:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8CF182C0;
	Tue, 14 Nov 2023 10:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwWn0y5V"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674E51803E
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 10:04:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27ACAC433C9;
	Tue, 14 Nov 2023 10:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699956289;
	bh=qs5ff4lnmFgZiLSZfUW59+ZMhxDNKd1IjLAN9yRFHl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lwWn0y5Vg8MkAmCzLM5fhLT2DN0D17FmbnD9azRngMfqS195iMOaQxAWq5mRiK4CQ
	 LW7XZam+LyVT+x1J2ANNvW3hlhl/7X0JHBxcf+wzG510DIDQrRqZDIGE4iGgew0vdW
	 jhv6LX5wr1GDKPOATdVM8q6MpVH9vlnsd/MnRz5m8Sape+lf41t+jdLz0NtiPwHzfU
	 LrZA9AZ86IGz12Xga9omsIAreyzPkO0hHiA+QHyc5tzJwGEuXhGQ0saxHAYYUa+576
	 v991y6Gj8yZX9PHVQIAHZsbPbpEqLOf+dBxRTttj9lWavBh9LfpEnvdyRpCOiaQIjy
	 KAhBrki1tHjWg==
Date: Tue, 14 Nov 2023 11:04:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Andriy Utkin <andriy_utkin@fastmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsrtowcs.3: add a note for conversion completion
Message-ID: <ZVNGPmVfB5EOgXdA@debian>
References: <20231113134857.1639387-1-andriy_utkin@fastmail.com>
 <ZVM8Hzfw9CCRHWwR@debian>
 <ZVNCOHFFdSGn593o@dell>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HjRiiJR0cTXib4Od"
Content-Disposition: inline
In-Reply-To: <ZVNCOHFFdSGn593o@dell>


--HjRiiJR0cTXib4Od
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 11:04:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Andriy Utkin <andriy_utkin@fastmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] mbsrtowcs.3: add a note for conversion completion

Hi Andriy,

On Tue, Nov 14, 2023 at 09:47:36AM +0000, Andriy Utkin wrote:
> On Tue, Nov 14, 2023 at 10:21:27AM +0100, Alejandro Colomar wrote:
> > mbstowcs(3) has the following:
> >=20
> >      In  order  to  avoid the case 2 above, the programmer should make
> >      sure n is greater than or equal to mbstowcs(NULL,src,0)+1.
> >=20
> > We could add that.
>=20
> That might have enlightened me! I like the wording, and indeed, having
> it phrased the same way for these similar functions would be helpful.

I've applied a few patches to these pages:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D06783b90b57459437eb4a91b127523cc61fb1173>

>=20
> > BTW, maybe you want to use mbstowcs(3), which is simpler.
>=20
> Indeed I should have chosen that.
>=20
> > I think we could add something saying that mbsrtowcs(3) is a
> > restartable version of mbstowcs(3).
>=20
> It might have helped me, and probably will help others.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db94a9c18d89c5c3a7a649c83e16de8034509c04e>

And a few more to be able to diff the pages with

	$ diff -u <(man mbstowcs) <(man mbsrtowcs)

Which I had to use to understand the differences.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D6f9e8feeb8d0c391b0e5eb3a2b4dc2d7eab4d098>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df77ff4a87d2ca676b81f6919676634ab126a18b2>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfcfa4c254f0454d34a9370e2051c84069183a46b>

Cheers,
Alex

>=20
> Thanks Alejandro!

--=20
<https://www.alejandro-colomar.es/>

--HjRiiJR0cTXib4Od
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVTRj4ACgkQnowa+77/
2zLXxA/+IQO7VStDAv/vIWtMD9DHpHvF9mfhFt18IMYd3VPecVfL5mGYKunLoqEx
Un7TmpKMZCLxM2vdCfr3Jpoj2nin85e2ial4zfBO48zNGg1bkXx6KCDUgEW8N0GY
VChE8JOKec2M65OklnD9CoBI+r2FUH2WGxma8WuYcC1GQPbc6aL3S2EKyYSYKjOq
11X6HDAx0f23OiPvONKj1PNgtpn1FB6cgx3Yl8l3tARrho7xAcjC0hUJ0enFx2GW
Srca2HiBjW8XGbevzke1deb+z1liIf0BkdDvEOM5lywh4t9/ZyaorBQj4JRuH0Dw
MPakaShvOHZmrBFuwDv8EmGo/7HmN+M/xS1/2X+ixZYUtRuoggd4vxTUoTrOE3qC
DyKlcFKwudH7mxhX4BRJT5zqH7gmGwvE5Gcv2jc9nijQJNNqi5SiVDnM2OIkPtrT
0lnWy0/u3P3Pj9TSVlYnqF9f6cIZotHk//LqVVOOHTBUYmAPVWHBGPn6M/RSKZZl
wEQhClVKhb8MSmqOtsMOk49VeTlx2/ogtyvlP1ttTHUV3u1JqbKWOwX+QnA7MquE
5l5oTa3AIp1BLrhJ6Z5oKAt//agFBHrHrNkBLfBhahvMgtBkGGNQwZH8njrwJbd3
YHe8DwpohIyrl2ZC6osFNPcuqy9Aa2Hy0H1qz3OeJgkMXIpe34E=
=g9GU
-----END PGP SIGNATURE-----

--HjRiiJR0cTXib4Od--

