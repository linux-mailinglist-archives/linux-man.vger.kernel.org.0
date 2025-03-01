Return-Path: <linux-man+bounces-2550-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C83A4AC85
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 16:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE57B7A3145
	for <lists+linux-man@lfdr.de>; Sat,  1 Mar 2025 15:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27AA1DF252;
	Sat,  1 Mar 2025 15:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaUVi5cT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B051333E1
	for <linux-man@vger.kernel.org>; Sat,  1 Mar 2025 15:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740842258; cv=none; b=a9OoP4LrK0DCCxooPrxdbzCe6hrB6ZHdVDgPNIuw5y4UQxjLxSY3c0HYRJGhOOzmy3tZKkooZ4kPGA+SFHBySDbvsoSIeMhNdj153Rvt0ez+8gW8jRoV8dLRlAyZBdoGpGqJDA41t2ENR9kMI8tJafEQBKPc9VVDyCrnLh+y8pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740842258; c=relaxed/simple;
	bh=UW9oaGKGZiIq0j+26zJV3YV49eKDlFd7KALIEXtIkdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cbpYxt7dfGJ+5o9fsgYj/6zJZ/uSE8YC7EW/imX73l146gdsdBeSYfKnmMTAlnaLWJOWWP442eWEGzoyA2IiN0iDCUndzPzOK/4GWH/yTlIFKKIAIpTxqT23STynyiV5V4mvm9qcLSUrgVeTqcRMH/I8gxubplMW3NEojX76Pe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaUVi5cT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5203FC4CEDD;
	Sat,  1 Mar 2025 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740842258;
	bh=UW9oaGKGZiIq0j+26zJV3YV49eKDlFd7KALIEXtIkdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZaUVi5cT+i+HoFOhZcmBOpexBmU/9YqjJrNtvZHI8WhBWuOMzPNrH1RUi0OPKvNPY
	 Shaed+YQU7ab04gLNFDDb2XLtSJA3EuaJok+my61RQ0TNdUTL2joyqeKeJ0W8RFHYL
	 zuUkC4K7026WmsjvXhiGskEvr9ET44khZbabC9LNj0eAhI1sw7CjUzfuwyb21N2n/u
	 EkPBRbGISF3BxGNaZ97I88Q6SUCCtbFRQBTPALqlRxqRv0/+h55nYzEJ5vNpfnzMiR
	 1yRP8Hy7e0tNH5a1+FdIkd6dosykf5GKuwty7tEZ+MYNRlws5geSfXpSdVRo23/uEu
	 760vVD1e7XcZQ==
Date: Sat, 1 Mar 2025 16:17:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: rahl <rahl@everwhe.re>, linux-man@vger.kernel.org, 
	gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
Message-ID: <cjjkh27rfpgq24b3e5k7o2gk6dbnnqyn2g5fhdoonr464tgbbs@exq64el5yph5>
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ei4lpuhavivvucky"
Content-Disposition: inline
In-Reply-To: <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>


--ei4lpuhavivvucky
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: rahl <rahl@everwhe.re>, linux-man@vger.kernel.org, 
	gcc-help@gcc.gnu.org
Subject: Re: Incorrect const in futex(2) example code
References: <64CE143F-78B6-4A90-A6DF-2D1C8361902D@everwhe.re>
 <mvkhetitsgpcyces7ctq6vvkp5ma2jni7j2ybl6sdrmyme2dxh@qhuw576ud7v6>
 <05F97E03-03EF-4B21-88B3-7F94018CCF6F@everwhe.re>
 <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdRT4mUPyE-SDSBUbEY0WAuQX8b5VK=sVXN+=tNdSPsahQ@mail.gmail.com>

Hi Jonathan, rahl,

On Sat, Mar 01, 2025 at 03:08:50PM +0000, Jonathan Wakely wrote:
> > >BTW, there seem to be other important bugs in that example program,
> > >which I don't understand either.  Would you mind having a look at those
> > >(I'm assuming that you seem familiar with these atomic APIs)?  See:
> >
> > You're right, there are more bugs. I'm however not so familiar with the=
se functions, but I do have some help.
> >
> > The errors in question relate to a missing _Atomic qualifier for severa=
l variables and function parameters.
> > The documentation linked above should clarify this as well.
> >
> > It turns out these calls could be replaced with a compiler built-in (__=
atomic_compare_exchange_n) both for clang and gcc, which wouldn't have the =
above problem, and would also allow for the removal of 'stdatomic.h'. Howev=
er, this didn't feel too in keeping with manpage example code.
>=20
> Well the example already relies on Linux-specific details of
> syscall(2) and futex(2), and only GCC-compatible compilers are really
> usable on Linux. So the GCC extensions could probably be assumed to
> exist.
>=20
> If you were writing pure C11 code intended to be portable, you
> wouldn't be using SYS_futex anyway.

*Iff* C11 atomics were something we understand, maybe even just having
a working example that uses it would be worth it, even if Linux-only
stuff can do the same.

However...

> > The gcc docs are here:
> > <https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html>
>=20
> The patch assumes that you can pass _Atomic int* to the futex syscall,
> but I'm not sure if that's correct. The syscall expects an int.

Hmmm.

>=20
> The C standard says "NOTE The representation of atomic integer types
> need not have the same size as their corresponding regular types."
>=20
> With GCC and Clang, _Atomic uint32_t does have the same representation
> as unsigned, so it should work. I'm not an expert here though.

Considering that the example has been broken for a long time, and I've
asked for help in the glibc-help@ mailing list and nobody answered, and
you don't feel comfortable with it either, the best course of action is
to revert that commit.

Thanks for the review!

rahl, I'll do the revert myself, since it probably will have some merge
conflicts.  I'll put all of you in Reported-by, and send you a link to
the commit when I've done it.  Thanks!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ei4lpuhavivvucky
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfDJQYACgkQ64mZXMKQ
wqmylA/9E5qe23ROS5MFPW9MrcBEw7QQMc03MMzuiGNUO0xDGzeJfsCcMLY5LRmN
1ElOP/C02aiLPgC73yNKUTe/YoQuOwR+vSlQjHMrWodS+SYOFb31NWCZpRsKX06h
IDCS4oJEAvbNChLnk1ee/d+NABdDenh8yPXg54T1D9JrLLbi0gGbTVjW7QeVl/t0
Y6tCbwnjuX/lNRQwvcHGwFUGn93S8+8FCSarxDBei4uyULVN1xIRQ1FZTuiZil3I
OdgZWYnhOK/PEbrCZaBt2/rKwS2BFgMRmIWI7qcT11sV6omV9Wyes8Jpgu7F7erQ
ob+mpUpr7+s89H8ScRSq4GQrng5eTTxjyo+ZEkrI+GUxXTcf3COewj5i2rfMHaDt
qVtHoJrYr1Zkr1KaK29CYgKp07VGgycTOt5hKcCTcZje1zJvVlD9EfLl6Gxaqe4i
rr3IOjrRH1N3+A2BkKXxH2kLqdVHF5Dh005MuVfaQHsQi+VzZ+ZA5n1bEqeW6JSJ
JcD7XHIki6VEmKBvswLDenJWxj+12B7p/IUFSKwL7910J5ZB88+e/22Ww5oJ57q9
h17BjXFLiDPwIzyGeVgHpdNPc1b0kV7Zq0lmFpcHslkSIv7SUOppw2+XhKbxKj8O
EjKFGv9fvwNjrk9yQ9YvhtXueO6b2r53d/aorHL3wK6BMu/7DIM=
=hHh0
-----END PGP SIGNATURE-----

--ei4lpuhavivvucky--

