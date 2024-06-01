Return-Path: <linux-man+bounces-1025-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C10C98D716D
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 19:55:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68F1A1F21B4B
	for <lists+linux-man@lfdr.de>; Sat,  1 Jun 2024 17:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 853FD152DE4;
	Sat,  1 Jun 2024 17:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNAQYVty"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468EB1D6AA
	for <linux-man@vger.kernel.org>; Sat,  1 Jun 2024 17:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717264496; cv=none; b=jpOPV0P9eeHU6oy50W4M4r2xfHTqTFzELowggIehF8KheTtjyWvASeeW20Sq/IkGvYFb7bnMjt0K3OXPHkSsY1QndVJiT8XZxw0TZo8Xk5kljJ51gcT+WOPWX+Zq2QuJmijeWz2KTQuVawIoavFLaOhHGsLWsAVKTPBKHkBOaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717264496; c=relaxed/simple;
	bh=/+ksAsts9IEvb0DeE4OpGglV03Fa6rhl4ZC5/Mo8kH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onOP9BQguUxKgr1enLzUMaCULz9N1t1Je0I5y9LDtXkSEutgrPNPnST/kjRxYCubo7ADGeZRvWxCsw+OzZVYSe4QZ6ZVO23hOuMI4vu+5Y3W7XYJFoYJiJPNWMoYC20M4rlxSI0/+ibeqOO2iYZ4hBMHKzvDf5CHCDBtd2Kc4yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNAQYVty; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 846EAC116B1;
	Sat,  1 Jun 2024 17:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717264495;
	bh=/+ksAsts9IEvb0DeE4OpGglV03Fa6rhl4ZC5/Mo8kH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jNAQYVtyqtc5Tj/kYjlWawAs4peXAN+47pIHwggPr2A8u70adJTYc8ZL6kpHmnBJJ
	 X1K5lr+FU2Kx5wyRwFUHNZlf2wDXXiD43A7etGkQ+NTVD++XFTc2L6gPD3xYM7kMBN
	 Mih9fn3o9YPZtmSwXIBRgC28sDqGk7TNIBMPo5gc+hKZHhbG5iMNCZpyBfzVejKMQh
	 N/PjM1TFZsmda9PAg3jP0I1RRK40zruUz2h8Zu/f3FF/fx91WxyRwpVXopBK/IwwvH
	 3SE063lcfzLfxOjOzZcr2EXD2DieRD36UQmYQfGcepzs/xEwKoTdxlz2XJjchXtrkf
	 ZSk/ySrmC207g==
Date: Sat, 1 Jun 2024 19:54:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>, linux-man <linux-man@vger.kernel.org>, 
	Eric Blake <eblake@redhat.com>, Brian Inglis <Brian.Inglis@shaw.ca>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: POSIX manual pages
Message-ID: <3ct4esw4xculwxyyohfuboecqfleateyz4qib6fn6ehhxyphes@3aimq4vlwxyf>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fbgu6cfa5f3jkvr6"
Content-Disposition: inline
In-Reply-To: <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>


--fbgu6cfa5f3jkvr6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>, linux-man <linux-man@vger.kernel.org>, 
	Eric Blake <eblake@redhat.com>, Brian Inglis <Brian.Inglis@shaw.ca>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: POSIX manual pages
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
MIME-Version: 1.0
In-Reply-To: <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>

Hi Andrew,

Do you have any updates about this?

On Wed, Sep 13, 2023 at 06:15:09PM GMT, Alejandro Colomar wrote:
> Hi Andrew,
>=20
> [I reordered your answer for my response.]
>=20
> On 2023-09-05 14:34, Andrew Josey wrote:
> >=20
> > hi Alejandro
> >=20
> > Apologies for the delay.
>=20
> NP
>=20
> >=20
> > Are you in touch with Michael Kerrisk?
>=20
> Nope.
>=20
> > It also appeared in discussions with Michael in 2020, that he had a way=
 to convert the source format to man page format.
>=20
> Yep, this is probably "the way":
>=20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/p=
osix.py>
>=20
> > In the past we have worked with him and made a permissions grant - whic=
h outlines the terms we are able to grant =E2=80=94 these are limited
> > by the copyright holders.=20
>=20
> I understand.  Would it be possible to suggest the copyright holders open=
ing a
> little bit more?  The C++ standard seems to be more open (it has a public=
 git
> repository with the source of the drafts) [1].  Maybe POSIX could do some=
thing
> similar?    It would make contributions to the man-pages-posix project ea=
sier,
> as contributors would be able to test the script with the original source=
s;
> instead of just blindly trying something, and asking the maintainer to tr=
y it
> with the secret sources.

Just to remind of what I'm asking:

-  A publicly accessible git repository containing (at least) the drafts
   of the POSIX standard roff(7) sources, similar to
   <https://github.com/cplusplus/draft> (which is not roff(7); I just
   mean similar in that it's publicly available, and it contains ISO
   standard draft sources).

I would include that repository as a git submodule of
man-pages-posix.git, where I would maintain the translation script for
building the manual pages.

Have a lovely day!
Alex

>=20
> [1]:  <https://github.com/cplusplus/draft>
>=20
>=20
> Cheers,
>=20
> Alex
>=20
> --=20
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>=20




--=20
<https://www.alejandro-colomar.es/>

--fbgu6cfa5f3jkvr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZbYGwACgkQnowa+77/
2zJ+2A/9GdLEIKv1Itb31LU0wqdH+CBnCqRbk2M4i9W6bU8Z9vBN3TsxxKahLHjP
MwWlmCGMkGUoFQh7pOn2JrAZycgg9riQcJRMJtItg74Es/dynnRPtxbwYY0VUWUr
ryMoPm3v4igbrJOjT+2ABjNQbZrur2g5TjaMjqKxzoIc86byBumPAgh2qDkbgiP+
r4aW5VsN5dVJH4blX32p3KzGsq6ltZ6Li9mOtiiOjnrlh3ZnTO0gPmBW6uHlnNYI
IcUtXdNtFNT+nX3jRUWgGjHMEy9fP4xfzvMgot4DUp96Z6UhpxddlFY4fMSUfvSM
sm6GCOsRctN0VJnG1kVdNoVbH7vLo3JvMioJ9ID9RL+FHomxiyXzWdfFZyDCPOup
ZQCoJ3TB+NpEyWR0VbvnkY5g9P4Hd/cRDDgAkM4GaPSgV8O584mnVJs5E9lZqOaQ
0VG4l1jbzZCO1GDHy2S50tpiu9PbDxhRi/zgj/b8n8dpv9zOQMOZ//g47C+ZmBdK
EpavjQ8gys2/fLqBpT8zelMnfKLOe6fthTUOkn25MtB25pOy7S9nBRjvCbuCKXJ2
ps+XSGIHlF5FfuHht1X/Sjku1jlL6NWgWGc+wL7z0/3H5d9l3gMxemWqaqlWADzn
b0jf+Wv52rRsgdaXMXkx+pVkeJjpOfnX+e2LaJq6OdPSBW74GZM=
=YUIC
-----END PGP SIGNATURE-----

--fbgu6cfa5f3jkvr6--

