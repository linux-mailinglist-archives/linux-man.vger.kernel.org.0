Return-Path: <linux-man+bounces-493-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 664BD86D87B
	for <lists+linux-man@lfdr.de>; Fri,  1 Mar 2024 01:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 797AA1C20F17
	for <lists+linux-man@lfdr.de>; Fri,  1 Mar 2024 00:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B09C13F;
	Fri,  1 Mar 2024 00:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwBLxray"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD55FEEC5
	for <linux-man@vger.kernel.org>; Fri,  1 Mar 2024 00:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709254440; cv=none; b=XXKbZfGIsBZ+gqHbjbUm0HN3kL54uqN24xJZt/sMrGPs85U0bBM5yRVYC5fb/mX8COpTcBKLJeoSeYyjQMVQDAEUHUIcuHQ4x/ZJnU0eSku68xKlQl9fmzc8ZvDb5yP+PUyPQ+39HaKtSZi5GJVYoFQ1m7cAkX0zFJTS+LOC9XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709254440; c=relaxed/simple;
	bh=0c5hKpJqUEcOC9wCT5Akof5mnCy6YZCvkDmF54JZK3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g7RrqlrhqmIAYnKYWa/r9pVkK0k6c9wyJsD4o8mTfM+n8o8CFoTmhZ5tqfqB6opHMQIUAPdVMc5OT3XIWpF27ARHi5TYOIkZs/FkbkBgPhYtAxH51cBaj4b5n+ib/82PuA2wLURO23ND4eXa4e0pZkutw3A/JdfsKnuyxSPVZTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwBLxray; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963C2C433F1;
	Fri,  1 Mar 2024 00:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709254439;
	bh=0c5hKpJqUEcOC9wCT5Akof5mnCy6YZCvkDmF54JZK3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EwBLxrayhsbUuAC9Vx5kSEDO5AYNGB4uQyR0yKujKfU7mdI7zuTpF+aypetd2Em7c
	 dbIShlRGUsDDBuCAif6W2a+wTX9jitENYZCK5ESa2M/qyBPo8PHoiQfz2HJYYRVCuQ
	 T6MhziMb2xZOShuFw261Nfr5FvsGIYBAqXXgnWPGFLSX3D9UIopPlQgsLGQ98fn62h
	 tUAjN3HdRwapQwHEjRwIpOjkvGF8CUO/DWPiqsdcnqt6dhOVU2b3Sy5zZoPmxmKCb7
	 zdpqtCy0qv7zWsRKbVa+HS3g7J8fOipmWT11UbxOHl2JThJtn+bkRiGMiRWp+si+F3
	 YZZqJIj4avj/g==
Date: Fri, 1 Mar 2024 01:53:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZeEnJB96mMC5bfBz@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jVyI3CS3foJOwN6W"
Content-Disposition: inline
In-Reply-To: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>


--jVyI3CS3foJOwN6W
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Mar 2024 01:53:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

Hi Morten,

On Thu, Feb 29, 2024 at 07:28:10PM -0500, Morten Welinder wrote:
> I came across some minor issues in some math man pages.
>=20
> M.

I'll reply to the others separately.

[...]

> exp10:
> The man page probably should come with a warning not to use the
> function for the time being.  The implementation is pretty bad.  For
> example, results for integer arguments 3, 4, 7, 8, 9, and 17 are
> needlessly inaccurate.


I can't reproduce that.

	alx@debian:~/tmp$ cat exp10.c=20
	#define _GNU_SOURCE
	#include <math.h>
	#include <stdio.h>

	int
	main(void)
	{
		printf("exp10(17): %lf\n", exp10(17));
		printf("pow(10, 17): %lf\n", pow(10, 17));
	}
	alx@debian:~/tmp$ gcc -Wall -Wextra exp10.c -lm
	alx@debian:~/tmp$ ./a.out=20
	exp10(17): 100000000000000000.000000
	pow(10, 17): 100000000000000000.000000

I'm running libc6 2.37-15.

> pow(10,x) is much better, but not perfect.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--jVyI3CS3foJOwN6W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXhJx0ACgkQnowa+77/
2zLVMRAAhafSqTpm9NtxxEOKUHSBUeqyOwgyO9pNlaoQ2KPanI24nMKVUCivjYRO
SpYh2eplWyifBzaYnmm+uUOMe7gnbTDrkR20YcpY0u+1j9mv8JsJtlNRlhWiYzIX
L+DZ1GoU/WXLk28EKBTUkQdeKguSR4IjI8O7EHVVrfyx4ZYTHpEAttjtDWCHSXNA
p5xyWrXCB3kJiirsQiieTt2MpbXFC/kSUQnwzFxOGSzYkbRilJAzNnsDudn4GpbB
K7YtrEY5CFKzDOXDY+ziFSRvxag3vbh+bzpbpzAPFSZvSVqEJHNtPyqx99+wceCp
IfhFkC4HuuEh55VvLkHYDd483kLDAg7xbPRgHj4il65oUpBslvhBye9gpaY9oxwD
RBWTfDgGOcVAPduCL9upMLU3ECoCqJI3QSx2WSKPhmhoK6/HPhnYFuYmOI3Tpuzo
gOgrDuzXjAmL32TEfgv1meKk/SmkCGttYOmhP18gUkW14KwqwJEYRqyHTKOJNw+M
+IYInzkueBWDOa7ET3d55xtCbD5cyJtCAkio1ow3ZwlyEFII1gVSClZp8xJ/3k3R
dvdusYE5iRZ9tk1zYarrd5Fp6m8EqoTemjQIBGCFUvt0oZ3eD+OSzpWcQWKDlzJf
KlzRgQ+mykO+FiQoHfz/3N1WttfQLfscUR0kc8ayCLZwPnCqLUQ=
=Bx2k
-----END PGP SIGNATURE-----

--jVyI3CS3foJOwN6W--

