Return-Path: <linux-man+bounces-2233-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24696A11532
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 00:16:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE60E16989B
	for <lists+linux-man@lfdr.de>; Tue, 14 Jan 2025 23:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F9A02144B5;
	Tue, 14 Jan 2025 23:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaV0Ky8J"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A020F07A
	for <linux-man@vger.kernel.org>; Tue, 14 Jan 2025 23:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736896575; cv=none; b=EyFq0clauDiLKQ9vz/Ltw7kNqdSvBHx1RDbWIAA02JhzTzvHeFLeUN59aE71Uiw4xr9DSZPp1IvgcftAWKFJf9VPzEg7Qv1hTS1Y+MwkcVIkEt2VktgBvog0tfirJapn++1mrIjSm1REJOLGvrXr59XNGPg/vSaATbQQ2SAZTU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736896575; c=relaxed/simple;
	bh=Y9TaOD+ge33wEmc2Oj6aslyFY+F8MLOVYO4cBbPklf8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b5mQAhVMq+h9zuCXy/ljk1khOHsT99z/grfsXsvguJ+8Odu6d/8eDfOKBU3sMAdoiW4DEzidwjOYR9lAJ0sFBKnNedfR7bHM1MthbqFlMh3X2lBpqBOU4ZGx3xerzFXl09qm8fPXUh9o6vlA7LxMRRzUI+DOpvcz09o6KUNN654=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaV0Ky8J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3FF6C4CEDD;
	Tue, 14 Jan 2025 23:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736896573;
	bh=Y9TaOD+ge33wEmc2Oj6aslyFY+F8MLOVYO4cBbPklf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FaV0Ky8JwoUVFNvKujZ+GS7EL1GmEz7RFbVfx4AnjrTpSEuYvU1kZW2qo9bzHfmF4
	 u1Uj0tQ4sDqJTxLm4JnPO3sjreMKfFWmnM/GnuOiAjb1pepMF4W/49AhKBZT5LfZwt
	 58+5EZ90f+pL6wuN8cPXP0xyAyZfb63YJL4egpczuFD8IWHlikcAbqcbVFCmRv6+rQ
	 GnoCtUGEljZEnIfbBRKvuaC9+fRzr5MgA3OW5v5NYp+QaEQW7VozG7JixRFE+Wa8IT
	 dj96DeFovnFV1NnZQvo1lfmmtjpCYGvAGnl+ERCVLzUIBj4R3ffj+nNK4NuAMkQTCS
	 wSVXv+50OETng==
Date: Wed, 15 Jan 2025 00:16:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
Message-ID: <d7ee53vahk2atqk2bz3fnwvzkp63vthymrd2adeiyzjhqlv4bc@pcc2vxtpintm>
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
 <20250114151504.3wipct4hpkuzn57t@illithid>
 <ndy2h5rm2azltvcozordn66sl5fn6lipmen32qhgtjgyuxgt4p@fnlasx4tg7ax>
 <20250114155214.3rdz4zwqim2gyhfc@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kfcz2arx2ounftmm"
Content-Disposition: inline
In-Reply-To: <20250114155214.3rdz4zwqim2gyhfc@illithid>


--kfcz2arx2ounftmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: Man page titles, identifers, capitalization, and hyphens therein
References: <20250114130028.28638-1-jason@jasonyundt.email>
 <mog6nnwzwl2dmlrec5b7l76wbxlsnklvdulok644x6o557trib@3zwtoz47r4x3>
 <20250114151504.3wipct4hpkuzn57t@illithid>
 <ndy2h5rm2azltvcozordn66sl5fn6lipmen32qhgtjgyuxgt4p@fnlasx4tg7ax>
 <20250114155214.3rdz4zwqim2gyhfc@illithid>
MIME-Version: 1.0
In-Reply-To: <20250114155214.3rdz4zwqim2gyhfc@illithid>

Hi Branden,

On Tue, Jan 14, 2025 at 09:52:14AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> Thanks for clarifying a couple of points.  I have...
>=20
> ...counter-clarifications!  :P

:P

> > For consistency with "TH" (title heading?), I think I prefer "title".
>=20
> Except in *roff(7), "titles" are the term given to headers and footers
> collectively; the content of these is precisely what the `TH` macro
> configures; and arguments beyond its first are just determinative of
> "title" content.

Hmmm, makes sense.

> > filename is the file name.
>=20
> No disagreement here.  I would say that "filename" is an excellent C
> identifier, but it is not English.  Novice man page authors have a
> terrible habit of porting C identifiers into English prose as if they
> were the same language.  Possibly this practice arises from a feeling
> of greater confidence and a self-assessment of more experience
> expressing themselves in C than in English.

I have been tempted to do a reform, and change man-pages(7) to recommend
using file name and file system (etc.) instead of filename and
filesystem.  I find it inconsistent that it recommends filename but
recommends user space.  I would either use a neologism in all of them or
in none of them, but find the status quo arbitrary.

So far, I've had more important food in my plate, but at some point I
might take a fork and a knive and start with it.

> > > > if the name is something like UTF-8,
> > >=20
> > > (by which you mean "uses code points outside the Basic Latin range")
> >=20
> > Nope.  I meant UTF-8(7):
>=20
> Oh, ha!  I'd have quoted it in that case -- use/mention distinction. ;-)

Thanks!  Indeed, I should have.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--kfcz2arx2ounftmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeG8DwACgkQnowa+77/
2zJTBQ/+OfqdF6YtyVq4+WwZcdTRYx1coEL0nPqwNu3u2cv1myDss0bsBy2iZ1iX
W1AHfRu6lt6tmueUBnX0PZcl06FrB5drEfaopigN/DCYuGrZd9Vd3DvJLjU8ScTY
2FCYfCdaVymKCZjmOwHY/5SeQ/x5xbjEy7lcqunIdchyeh6TFU9oPIPOj4VsJqC8
eOsmXsg1rqYo6SMLUnZ5KdRCfNZOLw5URNUeuYftn4urqf9kqebgsKVCcqcrSDvY
0RM0Z1cUFFbHTQYTjZymm9BTDwtdoPCCb91H6qy+tQUXIXt4P9n+hFKKML+UxNGg
JA3NV1vuaJtlKt7Str4/xFIgXzREYgLfI18SPriR+AERHwrXTEKI9Ocp7KYUuAXG
uB2VQuAz4yhZAhUtYLkPd1zREbKD1QD14Mh6TP4KsGHJb5uPM2RsT5yleJNHs3a7
zVhvais012HiUr99XalWRdl0r9EfYphEAM1VSWZGhpc5dv4nuP6OfYCgV6kwtCHf
mbuilDTpY7GXMbMyR8Oa92A/xfUUwXlt2mq3SLg242Tg/FPbiS93pHhcz1geCwd0
yxyTyxLxBeSgVTunxYvDeRoL6bEcmaJfIm5SFx4IEuERZOTaLnasLnYxXqxwUhTu
VzqCAwzl0jEd6DYHY677kWT6IYYKHii6KxxSsOgpE2LE3d0dfzI=
=O2tG
-----END PGP SIGNATURE-----

--kfcz2arx2ounftmm--

