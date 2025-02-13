Return-Path: <linux-man+bounces-2426-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47491A33574
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 03:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8353167E3B
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 02:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F8C0433AD;
	Thu, 13 Feb 2025 02:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="APE16V0l"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A421F8677
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 02:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739413254; cv=none; b=QxS+EHzmq0ConIjvCmE8Y7RFd6lJNqA7VdLYx+YxxOahhUSL6wfLVfh34UAMEHS1pj5v5HAtmEnsUbFJastwAKA4CIJ9BRqDFGaMZykqS7/N2GqMPmYYl4zQY7hHLSRBaKMAPcOoF9la3kmULiOyyb7dvItogWcu7gm5IOg50ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739413254; c=relaxed/simple;
	bh=7Q6CBFRQqkZvjcp970XxOV4WJlb6NWvs26rWurd1HEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c79ynhu/lqnanIbyVAeay7+DF8Y+Cn3/FAwvO9Uk/jt65FoNnMWf3fG7iLDTB2vDKDPODYVP7dI5Q7aZ1wcXoYWElprluLsDZKBh3YCgTpPp+Jsd0hsVwI7lWGgmHsrL04LtSrQ4fDlUZ5UghjzyR3E5M8T9EDzjmyIJ8E6bPRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=APE16V0l; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1739412721;
	bh=7Q6CBFRQqkZvjcp970XxOV4WJlb6NWvs26rWurd1HEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=APE16V0lseCQDYZCco0VR58mJMaDQItwc6dO6u55p6DCZXEtK+HIzaUn4Y+BnEabC
	 IpjU8C8zMigv6VmvzolT4XUOnzkgBKkLvBPUiOBdW2iviHCKoZ2zzVjUIV9ht9ejB2
	 45o7U1FgOxpzkv6xY511nA1k0irCSA/fftKWQR0n2/jbvnCL2kFPyxElDTaRb7+oaw
	 K0VLVZZtQWbP4VAAbQbzFV0jWtSS6urqwryg974U7KL4XCMQqjlgdsKY+aD/dOdHlm
	 cHP5g8SM03RgzVveDjfVPpxnPXAAEEPLxxG7u1CQwnzlfFpwath4rim0CWwtKJesit
	 xXvlxbwgz+vEA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 637AF8236;
	Thu, 13 Feb 2025 03:12:01 +0100 (CET)
Date: Thu, 13 Feb 2025 03:12:01 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
Message-ID: <zflsk242wizk2yb6mw3vuqixcshof4grsb5fk2n7wxwqd7b3e6@tarta.nabijaczleweli.xyz>
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yvvdvqus2wyr4sfk"
Content-Disposition: inline
In-Reply-To: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--yvvdvqus2wyr4sfk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Just for reference since Alex didn't link it: the PDF in question is
  https://archive.org/details/unix-v10-vol2
and the "why not" by the scanner is
  https://labyrinth.zone/notice/AqqVamq2W6Ybq8N3xY
Pull quotes:
> the troff source uses some special tools that i think only ever ran inside
> of bell labs, and i dont know what im doing wrt building them
>
> the tool that gave me hell when i briefly tried to build it is called pre=
fer(1),
> and it=E2=80=99s meant as a successor to refer(1).
> it works by running a modified version of awk in a subprocess and talking=
 over a pipe

I'm not touching that shit with a ten-mile island,
and if she, as an actual 9p user can't, I certainly can't either;
but the scanned PNGs are real and lord only knows my 7h10m are better-spent
levelling and cutting them up to produce something concrete
than apply-rock-to-head/rinse/repeating with software that barely worked,
30 years ago, in fake C, under fake unix and have naught to show for it.

--yvvdvqus2wyr4sfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmetVO4ACgkQvP0LAY0m
WPHd+w/9ETcHeF9yFzQYtFTrI6SwNC5tkV8NM+kKQzQ/R92j4iYltQF7E7hhikSz
z0M/SUYowR8ibzPojDpnVmZm8Uy+chnSJwTbj4boczV/rm8qOEfiBN2ZA4P/0St8
PISwxdZ1VukwnqxqYRwoaAkx+jR2IkUxMbDzIW4b16EczEV0rkvKknR9e+2bFu3L
2OnODv81P1+kosk2XX2OO44Yb7JurQyzOrOBljDs9GApjoXnrpgHP1Qsb699z1zK
wdqhGyyewlUomRLP532hXIUtQtX3cWiAXYa820TYJTD0yO40LrFv/P4501gkcocR
9U9NwMTkoOzCWDsuiiFy1XzTc9Ply1GsAIFPgrVkxOvMH/J+M0pSWVUaaMrddYM/
JmaSP5p4jroxz8ccs8+9HLtkqdrLWEuM33cpDB7mFITm+4h/FXfe2E2c8jr3UHYo
DTaqXSWdy+pAnTNiNDBATQ6YSVZi65l36xdTSYF7GjBPyLcqwRu7jzin/tNYu4Bu
vBMxYIiQqswfqdXZziH5u5IhzKDW+mXf9G+XJlgMY6a+1/hg5rrtrXTepVg77sEe
98aFuED2bAGIg48fMI9s/uEzCQoA+MHBqVdT5wHhDnL4nzSfoDeQXsByAgZiT0fU
AfMDyqVJYey1i0QtqDZSqCDtj3y9H9shdI+mYpY8awkYX0GzEVg=
=wcka
-----END PGP SIGNATURE-----

--yvvdvqus2wyr4sfk--

