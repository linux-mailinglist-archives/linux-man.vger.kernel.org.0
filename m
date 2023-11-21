Return-Path: <linux-man+bounces-133-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DBB7F35EA
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 19:29:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 956A7B214FB
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 18:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8CB2487BC;
	Tue, 21 Nov 2023 18:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsS8SdlS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9487422090
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 18:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7515C433C7;
	Tue, 21 Nov 2023 18:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700591389;
	bh=hngZnlzCZf+ucMkiwlCdYntp0usOFaAzzZCkuFf1pQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VsS8SdlSDg8yEv39CLzWLSuEnc61ex3ufkIj7ANmAfCwdBNcZfEsuVR5FykWyzScu
	 40T/BlglxuA2ZZ2yGRT11z+UsMwXX3cCrD4Zbzx1S15YM1nGKHQi6FbxlbwpkSfTDG
	 sV+1MsoWWf+N7udkPQxRG/ve0gXHQdmKXDOTvUa0R6Ghr1Fi/+cc0i6FIVKVN73TXP
	 fVfvoOigOg8Bp8YH7UoJ7woYTPrJz8ycpKGMLcYQHZrnXjSO+7X5UwCwvZqz3m5E8e
	 WbLKompcNA2V/rbkTmjztcLrzVvnenqOd7Ah9vyZb0g7o8/ERS0mT9w2ZEyi4WifGA
	 uqfPW0WxraVLA==
Date: Tue, 21 Nov 2023 19:33:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] stpncpy(3) fixes
Message-ID: <ZVz37_06mbiMBMVc@devuan>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-5-eggert@cs.ucla.edu>
 <ZVF8B-guyK2Zby4P@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pzXmrZV7H0eC5sNK"
Content-Disposition: inline
In-Reply-To: <ZVF8B-guyK2Zby4P@debian>


--pzXmrZV7H0eC5sNK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Nov 2023 19:33:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] stpncpy(3) fixes

On Mon, Nov 13, 2023 at 02:29:38AM +0100, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On Sun, Nov 12, 2023 at 03:52:08PM -0800, Paul Eggert wrote:
> > Don't say "width" when "size" was meant.
> Ok
>=20
> > Prefer "byte" to the confusing word "character".
> Ok
>=20
> > Don't say that the source is a string; it need not be a string.
> As said in string.3, I'm not convinced by the new wording either.
>=20
> > Don't imply the result always has some null padding.
> Ok
>=20
> > Prefer standalone terminology.
> Ok
>=20
> > Fix indenting of prototype.
> Ok
>=20
> > Improve sample implementation by using memset rather than
> > the less-standard bzero,
>=20
> While bzero(3) is non-standard, it is simpler, so I prefer it.
>=20
> > and by not overwriting part of
> > the destination more than once which is confusing.
> Ok
>=20
> > Simplify example without losing its lessons.
> See some comments inline.
>=20
> > Use fwrite instead of printf to avoid assuming buffer length fits in in=
t;
> Thanks!  And even without the int issue, it's more consistent with
> handling non-terminated bytes.
>=20
> > although obviously this buffer length does fit, it's better if the samp=
le
> > code is general.
> Yep.
>=20

I've applied some of the changes in separate commits:

6b050ad54 (HEAD -> contrib, alx/contrib) stpncpy.3: Reword, saying 'byte' i=
nstead of 'character'
be301345f stpncpy.3: EXAMPLES: errx(3) instead of warnx(3) if truncation oc=
curs
d6499e777 stpncpy.3: EXAMPLES: Use fwrite(3) instead of printf(3)
2560770b2 stpncpy.3: NAME: Clarify that these functions only padd if necess=
ary
7f19af378 stpncpy.3: Optimize possible implementation of stpncpy()
2f5a64243 stpncpy.3: SYNOPSIS: ffix
a845da18f stpncpy.3: Don't say 'width' when 'size' is meant

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--pzXmrZV7H0eC5sNK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVc9+4ACgkQnowa+77/
2zJStQ/+MCH924CxcEf5jR3dAJVK3RUDgvJMrWZw7srYxqaOTBQjNcaXmFY4muO8
4vlvgojrjhuu0Oon1rYX5Z0MX1NPh+q4iwdkCRkrb6L5FZ6Zj7O5ov89mQIGqRlF
xnWuX6OmNDSyU3eAlP/HVdAveUkBqy1rPbwiz3Hh29yKaYWVSnf0fuSWz0hbwvI8
XhvGPYQ6KR+bZ9EhNDKzdkGCS+5wDlTp5PxycScb77EVkC8+1FmBAiuxa41Amq/z
sB4ZZ2Lk80ZF9z71oth0JLfpRu97gpJMDvI39h0o6W/wbsc7gpXuP1LSQrJZnQ5Z
vfUeslU+ptRVm7rxjO0NWC+jjynkP5XUdK15B8nJS6ST1w/5q8g8o8C2mQ6a+sxw
KcXYenltCBQKZXbRZwvSsiXlfJ5hgm3MA39ndiFZZoqvkCB663C0ZZRg0aM/UYTh
W+LqeCnIdIVara5TMYDXGk4S9iey377BJHzu6GrxHU3MqKLgGJHSbbMeNWC3vrFL
q8VPHlq77IOdIcR2toWSFRlbd1/rpRsrLzGeGuoJUFBrZ9vhHtbQ/JRMcxwAoNVL
3nAVySVPQm09jae4fhtF6WMoci+LSADT//ulFD4N6H6dO2WLrWJkSBrWhaeJla0x
XgjY55OwLod0s3KoDjLpbB8pndqWhG3FmU9+FXzPjVwgMw3UxJ8=
=NHBu
-----END PGP SIGNATURE-----

--pzXmrZV7H0eC5sNK--

