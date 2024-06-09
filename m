Return-Path: <linux-man+bounces-1052-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0677901714
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87BEAB20DAA
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D42139AEC;
	Sun,  9 Jun 2024 17:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyCF8QP6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4631E863
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 17:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717952684; cv=none; b=No5Ox5vQxDGkosaJo+/ib2PGX0PdnqLJ4Jfy4JcapeU//6mZXX7/JP+aZNIvcdW5BjGXHYeZ4ifShQiHw6itA6unGSzPZmKuzVcY3nxxEZ3/8X/LAIGPGNYlXUyWQOgk7oaKl+Ez9fh9Ld3BHV5HnRCjakYF1AXXVQqiexBdxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717952684; c=relaxed/simple;
	bh=iGC8+9OLR5CuLpebI9aWk0JnUOhTTP4HaASgt5CafTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/yKKyMatQo7e6wyge6fdtMvPEkZPVEyGcXL1XAnETTUMwAG0yCcBeOn2fQM6p0cmrh+c1lny96cPfnZ90fWcO7SMGX9Sa7RTbRiODB5I1wccHQwq60dfqRUaD8NdvVYjnPAU8fPwVCBMm7HdePJkpXMgh16uQaI0JEPDfBG2IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyCF8QP6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13EB0C2BD10;
	Sun,  9 Jun 2024 17:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717952683;
	bh=iGC8+9OLR5CuLpebI9aWk0JnUOhTTP4HaASgt5CafTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WyCF8QP6wp805s/AbWjBaHfO/qALJN/KpSB/kh7er4wQSq+HZ8D6RnAGNGv6t0vyD
	 0iLIiHS1XvyzkiVKylnLSRmKl+n+BGhaZWHOjvnKC+OIIQ8dpu9rO++XbIbrbG80K2
	 jBIOvNSz6Z3u0OOfhgP2FfDJenhYij18BCz1XsJZCtGz9xyWrsW7Qjg1qaW54lAuVc
	 cRio77Ju92HvF6utkjaPeqr+pDhPFPLohFBKX6K0A6I1QmkRH0dVtmxjZ8a4Dtb/+b
	 BqRsIZgr8XDXXUnexMIIol1DRKUz21kMf7O4f65t9CAsNlGvVJG3/HN8CmGlMUwtHQ
	 FAXRLTTvNekPQ==
Date: Sun, 9 Jun 2024 19:04:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gcyicfc5tdvfjt2m"
Content-Disposition: inline
In-Reply-To: <ZmOBT2g55AD53QYS@LQ3V64L9R2>


--gcyicfc5tdvfjt2m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmOBT2g55AD53QYS@LQ3V64L9R2>

Hi Joe,

On Fri, Jun 07, 2024 at 02:53:19PM GMT, Joe Damato wrote:
> On Thu, Jun 06, 2024 at 11:46:47PM +0200, Alejandro Colomar wrote:
> > $ make lint build check -j24
> > GROTTY		.tmp/man/man2/epoll_create.2.cat
> > GROTTY		.tmp/man/man2/epoll_ctl.2.cat
> > TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
> > an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
> > make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/bui=
ld/catman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
> > make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'
>=20
> Hmm..
>=20
> When I run make I get an error:
>=20
> $ make
> TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
> troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust=
 line

Hmm, I can't reproduce it.  Can you run with `make --debug=3Dprint` (needs
a recent make(1))?

> I tried to run the lint build check target and got an error about
> checkpatch:
>=20
> $ make lint build check -j8
> CHECKPATCH	.tmp/man/man2/fork.2.d/fork.c.lint-c.checkpatch.touch
> bash: line 1: checkpatch: command not found
>=20
> I have mandoc, groff, and clang-tidy installed, but maybe I'm
> missing other dependency?

That's a fork of the checkpatch.pl from the kernel.  I'm working on a
repository to make it public.  Don't worry about it.

You can `make -t lint-c-checkpatch` to ignore all checkpatch lints.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--gcyicfc5tdvfjt2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl4KIACgkQnowa+77/
2zIcXBAAklmmebmss9/LiO16Map5JBG31Fikd9qfXOtH7YjGyHET+OOdl/5RR4us
B4CbYRTnCyEFQn6wveegfE02t3bX89mahSQIdrWDeFDc3Jy3vJLtuMnh+EcIdgr7
VLHPlIgDJeEny7MKSyjf1yX2kT3BZ8xcj/h7KZyQDanDga9SiYHwk4aXPjKUcApm
mRUtVl8yTqY+8lG2gDiqSj0MBucotKwihi+UDCatifPCiw4mQsEMaaxn1Qd5szC6
2IOSVxGWKnERK58ZuubzzLOXjKMksRdvBO+9OIdfiZYGiKn/slKTeyI8yYixnk+b
eKJBC11m7lW2CoDJ+cxUOXlgXmo+fdg/HHddHiR3f62HpDbquhWMykDycP7Flj+i
eS9BxfwSTRFiotR0pzeMpktGD/gcgJ5c4F3fV2JLTy2L01McH2voHjIaN+Vu3deM
iWUvhrDEoZ/W7bO4DCRRAye38gA5nYqkIhdqRbMWklRF0jyK3V/1TX2UDOuQ5spc
gvHWGoPAkaMmh1w9OuWcrbmaMH9NJcgO5VsC9tthqagao9/fcLuAhwnXYflzyQQc
3wTQBNDoogvmQFTMBkdraSsE3gPlXCsoGOcZJnaccpwVl9ju+hkwP0AoDjXCmxVI
UW5i67BJdSI/Up4kODt0IkSUlwKEPg1jZ7+zOu7TESe5t3Ae5xQ=
=atyD
-----END PGP SIGNATURE-----

--gcyicfc5tdvfjt2m--

