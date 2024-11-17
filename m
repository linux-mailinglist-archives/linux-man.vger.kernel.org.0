Return-Path: <linux-man+bounces-2022-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF3B9D0476
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45C5FB217A9
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43DDD192D89;
	Sun, 17 Nov 2024 15:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKJGoRhV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04154335B5
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856608; cv=none; b=XKH92Lr8KBpvqzP2E9qk6uWdB64w8lq4wsFcJPzJo+Ur8W7fz9AXNY8OQupL+ajX5nOdHNC3P10QYOT5CJYufIajO9gU1Nt7VuXnZqy5oCB2+DFj4VHXVU4PNTcwfVJw0bCRhOSWIqnbSL/qAnZQAr6Eq+mULam/2wbqTTUR4cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856608; c=relaxed/simple;
	bh=V/iaskuy4IDT0LqQqcdarUolA2kyIzlTGNXKd13lPJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z1plT2wQbTFxcSbHsVZe0LoG0FmsbvNrufgQhpB1UT3OJ6u/dyIBDBHrlHdgDtWRh/aXrLgrSIY6LEgKFOTWBDIdw+d0MZ50txW+grL6SuCtOODp2DrJpuf6e7sU/m3DwCFN65gjsl+FTGGQaG1cjlJgiMtBpwbqEGQeV0IlnDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKJGoRhV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7889C4CECD;
	Sun, 17 Nov 2024 15:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731856607;
	bh=V/iaskuy4IDT0LqQqcdarUolA2kyIzlTGNXKd13lPJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PKJGoRhV0Wzryr18OhyX9P0oeLor8Ll977VDWQt151hjdDyS6dIMrrFFnmSHPrGoN
	 e/ZOHoiHvTQSDfj3sYFuNmZLw2LGjEjMip21TNf5Y+OmNAA5wlAE7ChdnYIQSGEUtP
	 su3ozNh3wJ3CuYNYyQ2SFpgLGnSdGP2qjpd7I9PR4NGq32tBr6ErCBQsIhO+Gdie9u
	 tI088zRZzaT+oJzzjBsGF+e7fdoOcx0RfRQfrj9PBiJqxBOEYyNkbsQVH7X9K+xwN5
	 LP8bnUY2lAF9DMisVooIs8PPoK4T3pETFVrwVXYbTiQK7IhIlKQZjE5ZWq/wxsXc7n
	 Od2j5XzJQEGVQ==
Date: Sun, 17 Nov 2024 16:16:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <i72sj6q7ugenx46iwmjbqteewvrxyymt3ygafnjoknurvfanl3@4spr24bsl2gh>
References: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
 <zdew7riqkeywiwstzz2jecvet63zwozvjtpeudr2ef7z5ezvhn@tvow2a5qofwe>
 <ZzoGspXgEj0u0TMO@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="37jd63svuh5znyo4"
Content-Disposition: inline
In-Reply-To: <ZzoGspXgEj0u0TMO@meinfjell.helgefjelltest.de>


--37jd63svuh5znyo4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
References: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
 <zdew7riqkeywiwstzz2jecvet63zwozvjtpeudr2ef7z5ezvhn@tvow2a5qofwe>
 <ZzoGspXgEj0u0TMO@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZzoGspXgEj0u0TMO@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 03:07:30PM GMT, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Nov 17, 2024 at 03:47:27PM +0100 schrieb Alejandro Colomar:
> > On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    (it) is \\[aq]/\\[aq]s correct (the final s is a english pl=
ural s)
> >=20
> > Would you mind clarifying the report?  I don't understand it.  Thanks!
> >=20
> > Cheers,
> > Alex
> >=20
> > >=20
> > > "Note that UTF-8 is self-synchronizing: 10xxxxxx is a tail, any other=
 byte is "
> > > "the head of a code.  Note that the only way ASCII bytes occur in a U=
TF-8 "
> > > "stream, is as themselves.  In particular, there are no embedded NULs=
 "
> > > "(\\[aq]\\[rs]0\\[aq]) or \\[aq]/\\[aq]s that form part of some large=
r code."
>=20
> As I understand it, the reporter is wondering if the "s" after \\[aq]/\\[=
aq]=20
> is correct. For the (\\[aq]\\[rs]0\\[aq]) there is no (plural) "s" and

The '\0' is in a parenthetical, but '/'s has the plural like NULs.
Let's keep it like that.  :)

Cheers,
Alex

> here grammar (which probably dictates a plural s) and clarity are a
> little in conflict.
>=20
> Greetings
>=20
>       Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--37jd63svuh5znyo4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6CNwACgkQnowa+77/
2zJHvg/+K1422MZ+nNT79uVz36DOkdAEWjdwupo0EnoLEhlTv7gg4jZViZtNtC16
X+BDwTDHBf+e8uTrwb7C4m/p8Rk+K2UZlnhV87uaMRkQEYbA7YSrzI2k1y7vDT9G
zRuCru3uQJOHKLNfPW6+CUG3k5VCWy6mkq1PgUzMAK97mewFnyf2fSVWgfYUXimY
Q+am11CeqrhNJQgOWPRNlGaCyR/1DVRFwwXDxI32TcwUi23Hx9f3fW5wtJDUdhZH
VLe5h4he32dLMFF5zA5T0a/X9VTDb/QNRl4dr1eJH3yqwT1VDRQsIYNfJkR4Iyq6
LxQKzwBT1GosnLx3jccHu6VaaBqoDvzWs/2+HCNwgmvJQVsi/iKM64HYELQu+2jF
UlXoIGxXeWmsUy8hcGbc7YP5T3CXTD2wKrQlV+FFTa8iXvFTSrtmpmvObfe6bjar
uU4Rkn0jifxoP8EdGc9rDBow38csw/5xUIZv5KRUE5zlsrXDvfc27WaEUuBqQFTq
DuQOABCdFYsXIlJzJfqHaTNB8R+gKOMLHYWZULHv99WXRHws55VYESAZOY566X6Q
yELVQDCQc+K7Gv77RW9dIZD4Fe7UUiETun9ATqzWTra3dB6Kt5GYz9l2kLIjYWGh
QaTYEtRqClpghW+JXjPEHtiNrWJubU8cbgUthrv0tnCx+O+Gno4=
=WcmV
-----END PGP SIGNATURE-----

--37jd63svuh5znyo4--

