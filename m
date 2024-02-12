Return-Path: <linux-man+bounces-433-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04948850CC0
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 02:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E69BAB20A1E
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 01:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 040BD17D2;
	Mon, 12 Feb 2024 01:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akWJJOKN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FFB17CF
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 01:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707702559; cv=none; b=bASA9eOWpP2ldOqUyEzLU1LvU5BIQfOJL+TsVPkqbU6SIs+3/rYOF8MuaQL0qwygFAgbXIA3Or2C3TWFjgmU0/fYqq82QBVVo1/B/eTX+pRxE+bQmpmvZKXXrACcr6sGXczyKUGSn3Ns99NCLoq60/H9o3hQVgAOtq8wGDCsSz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707702559; c=relaxed/simple;
	bh=uwmRVT5d36/P33qOR5ZJfU2lV3qNV6hvmr4PaI3R6Hg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kbG+dh0Dvo439m7STsZx72tw8WksrUDeqLr0krRQU5XgWu6zsRP0DXrNP96qUyyd+dxzJrQtC2MWdbLGGEfDKIoBNdlCAqOQCMyM2cHvKCU8UHE6dxstMZ4DCcqCFiS5ABCeEq0OHFIF09Nv4b/cycpmKrfYKDLL+iXVBceK+0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akWJJOKN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8617C433C7;
	Mon, 12 Feb 2024 01:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707702559;
	bh=uwmRVT5d36/P33qOR5ZJfU2lV3qNV6hvmr4PaI3R6Hg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=akWJJOKNkwjMpKwqBAGkj3BFFqzL4sGYBD+l1EfLyIx/Orq0MSaOIJu80CPvnHfO9
	 TDzFWLy7MQb5Y+4bBiZpra0eeK/M5akVyy4RZB0bYPCDb9ssFQzX5xiINWb79FY3mj
	 9h+t/STvHUKz6u797cUQVuinteUqI7Z4CUjGKWFSHZdCwxzfmMgi+WJA6ePqk5LucM
	 qSFrTviLqw+6fu0lb+B8C/a5diOjh9IKYY/HfIT6ERSXABQas96Pq0e+omA8BKFZDv
	 1FrI+br6iEehF8kuQxpo46IpCvj5aFxnPfzhk3xDtUpiBGBlKoDUFX7wrLG5sNOakf
	 3xobuiRwAUWYQ==
Date: Mon, 12 Feb 2024 02:49:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <Zcl5HJ7XS6gPvhzg@debian>
References: <20240211232903.1622396-1-mark@klomp.org>
 <ZcldDOM_i6u742Pf@debian>
 <20240212000531.GG21691@gnu.wildebeest.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OxG1GPzix4VL5rEV"
Content-Disposition: inline
In-Reply-To: <20240212000531.GG21691@gnu.wildebeest.org>


--OxG1GPzix4VL5rEV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Feb 2024 02:49:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS

Hi Mark,

On Mon, Feb 12, 2024 at 01:05:31AM +0100, Mark Wielaard wrote:
> > >  .SH SYNOPSIS
> > >  .nf
> > > -.B #include <linux/close_range.h>
> > > +.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> > > +.B #include <unistd.h>
> > > +.P
> > > +.BR "#include <linux/close_range.h>" "  /* For the flags constants *=
/"
> >=20
> > Could you please format the comment like other pages that do the same
> > thing?  See for example membarrier(2).
>=20
> Sorry, you have to be more explicit what exactly you believe is not
> the same thing that other pages do. membarrier.2 doesn't need a
> _GNU_SOURCE define and I believe I used the comment as other pages
> that do.

Sure; no problem!

When we include a header not for a function but for constants, we
specify which are those constants.  For example, membarrier(2) has

     #include <linux/membarrier.h> /* Definition of MEMBARRIER_* constants =
*/
     #include <sys/syscall.h>      /* Definition of SYS_* constants */

Here, I'd use
     #include <linux/close_range.h> /* Definition of CLOSE_RANGE_* constant=
s */

BTW, I notice that it's near the 80-column limit.  We try to limit
ourselves to 79 columns, for an obscure reason.  For that, we'll need to
use only 1 space before the comment (otherwise, I'd agree to use 2).

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--OxG1GPzix4VL5rEV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJeRwACgkQnowa+77/
2zIrwg/7Bf7PreSV0SbMQNEzr/Ku+zrZb05klvHViTOSZmOZ+D48pbel+lqldKu/
tRTUgupjK3ARi8LCuJTa7K+bze/OwyX7KL+NFAyNb8cEWowgnBBm8UaFsmrjRP8E
onOa2dO6l5lRqinPiAGiKghWp8d21gbZX5aCimk1S1RDNxAUgfEKKKg5PDTNa220
v4CsYpNLdfCIHNtwGM2jwooMGAFvE5LwfcXzNWrw5hfzU/X1XZ9Ca+dlgHRvV52J
boC10E3bM78e0Dmzb0Lmc0TfP/RpbdJlPoVkzN/erLudw0JLClD4erzDwqpvvpe3
ydjpjOIQSnHwvq06+mSiAJ6ySMXaE5BGOPu7H/RaVoPro8duzWwQs6uUPFim3Ono
pCliwFyKexT+5zBvqch8KK8LuM08IC7jB19OB2UHHSiBgK8XtEWQdHM55amIMk3v
xhd/rNIkjZ0V+su/nKESMjZq22I1OAorj/q04IDHGPLw94zhX2GcU1tP4flu0pub
VQbHoyrbtBAtJxKeTEolJqTCSzUV2W2VQ06zYcdfmmDtAHddx8OC7IzeCj4Ia+8p
scrUnX8Yp484uLnQy1QJCFjYRwvGRpDXoFtatzt9i9UHl6N0HjNeX8FJybhMg1PS
GmPOsAK9s6h/aTkWGQZw+mkY9iNhPlSFs27glc9tj6zHvIJFy2s=
=iZNb
-----END PGP SIGNATURE-----

--OxG1GPzix4VL5rEV--

