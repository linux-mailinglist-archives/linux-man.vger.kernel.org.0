Return-Path: <linux-man+bounces-2010-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD83A9D0461
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A042B2174C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AD4C1D8DEE;
	Sun, 17 Nov 2024 14:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+4JUeeF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198DB1898FC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855501; cv=none; b=k2C7H7D/0AE80lKCv0VJbFrAWv8DqhESzBRhj7RyiG4n2lfE12mb0iMao4sEfqxvqA3Qcuze1tfYPgs9IjS7hgb1P+WXrZ6u+UsgISoPs06OZ8heI/7KmxWSvCoO8gO7Bh+JxhFd3giAAI9gUQPeDbcfMjVhzQQ8LxdqYPS7uR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855501; c=relaxed/simple;
	bh=V+3E/IiYUTSbfcPGGCY1Q/ZVdkG1vxK7wNL8lJMdq1A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UhV/km+85l+VXhGiZe7h8Da1by/aWIQ+oIh4Vq0UCeW/xpT8+vPa5jzfHKZZ01Gdv/nOH32GkOf0M2p2AD+KayWLiiau1qMHNvNTYmoM1fmyTyIojR7VCEOfWhJcvUkX3RRrXAUjY2ezlEqV7npvdD0CbhHNaTqS4M3CSaIRQVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+4JUeeF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8110C4CECD;
	Sun, 17 Nov 2024 14:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855500;
	bh=V+3E/IiYUTSbfcPGGCY1Q/ZVdkG1vxK7wNL8lJMdq1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F+4JUeeFywdCne4azUXzrchlHsriDl3k12DrGQd9lb8+0WsjvtwCd+MCOzNsLbuEf
	 POSz6DcA4g+hNs7F6UvYUKcanN+frNuVKcY722buFynYZQYS5xBrjh3ByGD+F8gETG
	 YjYy+3EE9SO/CQmQ+6u6rMmc4HovNx6v3zFlTybhipo+ccizHXe1U9TYkURAanu/so
	 IudPtX2pjFzHW1ESsj/YBEagru9wVoKlpRnR1XuK6wS2nhXhM6lJewGePrw7OBk1t8
	 R5f7xHKvBzxDzUjBwoQrMjbtO86uBMOwMnepCUVB+JYKn2XImeQ8EiJQ8t2IN1NERf
	 K4hVUASIqEHtg==
Date: Sun, 17 Nov 2024 15:58:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page timer_getoverrun.2
Message-ID: <3mmexyslcnqlhst7fzbandupshugop5hhfbhi677w7genje6uf@nlfkyyivhhxr>
References: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wy5ukc5pcccsiaem"
Content-Disposition: inline
In-Reply-To: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>


--wy5ukc5pcccsiaem
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page timer_getoverrun.2
References: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Wording o.k.? "=E2=80=A6 integer, the counter cycles, starting =
=E2=80=A6

It's correct.  cycles here is a verb, not a plural noun.  It means that
it advances a cycle (doing a +1, overflows).

Cheers,
Alex

>=20
> "POSIX.1 specifies that if the timer overrun count is equal to or greater=
 "
> "than an implementation-defined maximum, B<DELAYTIMER_MAX>, then "
> "B<timer_getoverrun>()  should return B<DELAYTIMER_MAX>.  However, before=
 "
> "Linux 4.19, if the timer overrun value exceeds the maximum representable=
 "
> "integer, the counter cycles, starting once more from low values.  Since "
> "Linux 4.19, B<timer_getoverrun>()  returns B<DELAYTIMER_MAX> (defined as=
 "
> "B<INT_MAX> in I<E<lt>limits.hE<gt>>)  in this case (and the overrun valu=
e is "
> "reset to 0)."
>=20

--=20
<https://www.alejandro-colomar.es/>

--wy5ukc5pcccsiaem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6BIkACgkQnowa+77/
2zL42g/+OYmAP13Mp4QdJ00I/0qqrkFCIVc16551xjCUZxSoMpA9Hqe8mos2oV/w
nbx9bshNtB9wVV1KO01VtK8mBLnqF7gs9rJla7GvSdjcsNgLUMLh5fbVl1cwmM6Y
ETAlrvkKU1Xwj318JZQujWVzP10QU8dT41Cpos7N2mtk1txM9vz1NIOWjL2lcX3X
IhaKnKm/IpynOpX2OtmwF41W8c06vChqoX0aHsf1DaTEXtRqaQILhNyhokLkvAih
n38A8gLcNeQEw6JcHL965Zpi099fpt5i5ClKS7LlJaqdZ6MP9K3152JlCz6v96X3
B5HAmRWKF1vrUy/KRyZ9rRZAljWEN1GnY1hBlQt72tC+qfbgXCmWXd9HbzfxtY69
X/ygykol6awHQEeFzmILEEDnqFM/5nIAEsXYYwE9nh05QmkdKmMkQ5G/ggb8+14u
cubJUcGn8BMmvQ7+e9PHXkTAOfkR7msq8cHTaIHi3rxOU7KF0NSRhTVPrTxnq04N
nRKeBLnhQFja1rFpYXzdb7czlJtQluTf11dXd42BAGUxcwHBAQwiMsrEx8X4yo1n
8XfcbzNWEr4pXntpLdOJiM9SXGN96YCnDvNG5tTrgMskoWSJF6aDqFU+tKmdCj3Q
WHbKM7O96UDWJSpObNkLuUI0ov4tT5VlDA9CbgMt9FAn5ToRq6E=
=5/3v
-----END PGP SIGNATURE-----

--wy5ukc5pcccsiaem--

