Return-Path: <linux-man+bounces-248-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE1C80C882
	for <lists+linux-man@lfdr.de>; Mon, 11 Dec 2023 12:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FBF9B20EB9
	for <lists+linux-man@lfdr.de>; Mon, 11 Dec 2023 11:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 917BC38DDC;
	Mon, 11 Dec 2023 11:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icjsGLqF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A3B2577A
	for <linux-man@vger.kernel.org>; Mon, 11 Dec 2023 11:51:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65576C433C9;
	Mon, 11 Dec 2023 11:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702295508;
	bh=VuD7J3JcgqpMRJhfRPAsP/8Q0dqG52pVu/Bg74LB7mg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=icjsGLqFjKNEcRQQINAGBijIVWzuqjPXk08T2Tl87voAD7lWlli1DREEjql2ntOG7
	 RZDH1x5WQFbdqjKEcQWO2x/EYVaWNXd+jwmKZ/mH5CYOtarQ+GZklwCqjrDM+ADD8n
	 VQHinTfeK/0bIIz+A9eBwpsKE4NvskPHjuIv5nDs+Fo+bfx0CqYMbi2F7ZTDyIHxqQ
	 6ige45sLYXgaiIUZIA9+7IvczFaNA8eW1c9VBiAFTbqhnjwWKUi7JrFt1DWX1q+oik
	 gDceD69sne+/dOTO18e9dxbyIm1FhBos2xL1Uq1LUhfdV0rSUUlhDnH8tT7WqDV/Dq
	 C8ydLhe71r3zA==
Date: Mon, 11 Dec 2023 12:51:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Habets <thomas@habets.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined
Message-ID: <ZXb30b00FsKMtYlp@debian>
References: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
 <ZXYhCo6s-usIn-9d@debian>
 <CA+kHd+eOibN0vynr5WdBHQKfMSMBBC_tS+24_771475yYt_SqQ@mail.gmail.com>
 <ZXZOB0STGjxX3aH0@debian>
 <CA+kHd+e1SQK1pVb5Uekc7y52QCH6c_qOM89D_8_dUcctsDD5rQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a92oomJOVOsCSlBp"
Content-Disposition: inline
In-Reply-To: <CA+kHd+e1SQK1pVb5Uekc7y52QCH6c_qOM89D_8_dUcctsDD5rQ@mail.gmail.com>


--a92oomJOVOsCSlBp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 Dec 2023 12:51:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thomas Habets <thomas@habets.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] atoi.3: Document return value on under/overflow as
 undefined

Hi Thomas,

On Mon, Dec 11, 2023 at 02:53:31AM -0800, Thomas Habets wrote:
> On Sun, 10 Dec 2023 23:47:19 +0000, Alejandro Colomar <alx@kernel.org> sa=
id:
> > Yeah, I'm thinking in 50 years from now, assuming all implementations
> > have good intentions and don't want to break programs just because the
> > standard says they can.  Hopefully atoi(3) could be usable in half a
> > century; if the planet is still there.
>=20
> Sure, one can lead by example. I wouldn't hold my breath that everyone
> follows, though. I definitely predict maintainers (cough, some BSDs,
> cough) saying "nobody should use ato*() anyway".

To that (very likely) response, I'd reply with:

	Then remove it from your libc.

I'm sure they'll then reply with something like

	"but the standard says the function should exist"

To which I have another reply:

	POSIX also specifies gets(3) as of the latest version
	(POSIX.1-2017), and everyone (rightly) removed it from libc.
	While atoi(3) doesn't produce such an obvious buffer overflow,
	it similarly invokes Undefined Behavior on conditions which the
	program can't control or prevent, which makes the function
	equally broken.

To which they may say:

	But it's not so broken to remove it.  It's just that the
	standard doesn't mandate to implement it in the sane way, so
	nobody did it.

Then I'd reply:

	Then go fix it.

At which point, they may get in an infinite loop, or just redirect to
/dev/null.

> > BTW, regarding your blog post about strtoul(3), I don't think it's so
> > hard to parse unsigned integers.  I couldn't reply to your blong without
> > logging in, but replied to the linked SO post:
> > <https://softwareengineering.stackexchange.com/a/449060/332848>
>=20
> Ah, parse it twice to check. Yeah I'd not thought of that. Thanks. I'll a=
dd an
> update.

Great.  :)

Have a nice day,
Alex

--=20
<https://www.alejandro-colomar.es/>

--a92oomJOVOsCSlBp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV299AACgkQnowa+77/
2zJG7w//Wg2SCzP0dzCG9eKB67Z+MgGAuKhS/SB7YKYfIIUqF1UV4UDyCvhqdXvB
HrJicdFVUny09/CDLDXB7g0jSMvhSB760kIoe/6HzAWnZ9YYvNFhu+Mb5HezENb6
fuPMOXpmHEM65oSgpIgVuyZeeDvL6IMjJp4Zr2MnPL5dqjl2C/OuS1Itw3cpx4v+
ZVBzbdEnYj7QVJ68AwoSGficV5uFMjj+5NPMUTiw7m70W5Lll+ypPd6OgiQmuxK4
dRzDF3r4G4u6MHC2XQN31LfWjItOHJKR3VotDvelUci+lXJ95y8ZradSwB6duT7Q
ltRczleHD+ptrIrUAnBdX6oyBc4BqzJ1idYj2yd0tdUCpLc6vHPei2e+xgMdvbkr
NqESloguIp6JQ0knxlEWK3fRrh9C1RZQQCDdO3r7zFeL0QzZcEhcEHCOmSDPPIfh
BTj7hu9BYzsXnXoBsmRE7s1keHR/8KLdfh0VOPyQ9FpTFXptesDKjsKze5PIaKSk
1NhfVWgMwM6DGEMXvDKHLGFXv6jFMQ1rDdRGuTQtP8XLctVEO7w7SU3a9IaYCsgX
/7c2GvpPUW930hPWVQGvthhfZ3Qs9ESQnLvvANSGJDeOjVPdjhBjqjjejmC7VlLs
NJerVQyjCK8a1AUbH5myLD5+IhtynlMUKh7nXuSHh6DslSyeTKY=
=urg7
-----END PGP SIGNATURE-----

--a92oomJOVOsCSlBp--

