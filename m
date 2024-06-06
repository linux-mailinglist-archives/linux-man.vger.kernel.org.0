Return-Path: <linux-man+bounces-1035-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4E18FF6FD
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 23:44:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C57AA1F23007
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 21:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAEA71B3A;
	Thu,  6 Jun 2024 21:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AINeKwFu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8784F5EC
	for <linux-man@vger.kernel.org>; Thu,  6 Jun 2024 21:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717710253; cv=none; b=XDrmRZxRVuwtmVT8eC4tfsT6QCgBGCMp6cvd4bH6NC8wQ5shWX9gW6rhCZ9XF8KHW8VydL4q5bTLecN+g47EgRSCRwwuyHapLI7l0g4eRw4z4g7Y32SVA5+dbTsvA0Sppio1Drux+nC0lQOI8nVpegRi0LQn1AEC8PFAcO17bIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717710253; c=relaxed/simple;
	bh=y7ddsvEv+CQghlBZQpYz2d4O2+948Vytlqg6FBrqI/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vr2ytTPIIRuMtKYQceyElstB/lzGLBPKhr6uV7vNp2gGeBx43rUjumRerBt/pfn9A0d1gSpWA1l8MHYmtLSH+RsisdjfY1Lj7j6U2KAtR9t63sFD9vqUi7PVl7dAk41ynRPSilRqkNRETdJWH1D/imNWjWQB5A6DGxAyKSGPJnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AINeKwFu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28B75C2BD10;
	Thu,  6 Jun 2024 21:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717710252;
	bh=y7ddsvEv+CQghlBZQpYz2d4O2+948Vytlqg6FBrqI/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AINeKwFun4VQgFhpKZGtuXXEBH9TIFg89t+3DrlzpfHh1PF97YXcX3a5cfy05r6qb
	 8UUJwI64/E4VSNXZnWloZIAVGe28O+gIYxqdY+oUo2/bZ7bwuwXzTMc9uTaTbteF/W
	 X+0VFEr45Kxyuk5kj4Kd4ptelcnwnshtg2Lh8g/60S9rQ1k+6M5wpjVZB8j3HhtjYr
	 8uaATK/sIoZVN3Qtmg4hpOD2vRmPrQPMDnldm2lt81n/Bj+zYqme5rOrYBdi7V9m94
	 xEsjMRmhrhYi/vHavsPjs3GSu/0qzu8VGgzFIvNnXqGkJzDVkUakoS48EO40Fr1Jnh
	 PYuD2ZHQAQOsQ==
Date: Thu, 6 Jun 2024 23:44:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Message-ID: <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
References: <20240604181740.1741860-1-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t42lx7qusttlthkq"
Content-Disposition: inline
In-Reply-To: <20240604181740.1741860-1-jdamato@fastly.com>


--t42lx7qusttlthkq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
References: <20240604181740.1741860-1-jdamato@fastly.com>
MIME-Version: 1.0
In-Reply-To: <20240604181740.1741860-1-jdamato@fastly.com>

On Tue, Jun 04, 2024 at 06:17:39PM GMT, Joe Damato wrote:
> Greetings:

Greetings!

> This is my first contribution to the man-pages project, so please excuse
> any obvious issues; I am happy to take feedback and send updated patches =
as
> needed.

Sure; no problem.

> This change documents a new ioctl interface for epoll added to Linux kern=
el
> 6.9 [1] and glibc [2] for controlling busy poll on a per-epoll fd basis.

Thanks!

> I noted that other ioctls have ioctl_*.2 files, so I followed that
> pattern in this change.

Sure.  I used a different pattern with prctl(2)s, so let's use a mix.
Do the ioctl_*.2 tradition, but also add link pages with the names of
the actual operations (which will allow to search directly for the man
pages of the individual operations).

> Based on the current status of glibc, I would assume that this change will
> be part of glibc 2.40 (it is listed under 2.40 in the NEWS section), which
> may be released in a few months [3].

If you're certain that this will be part of glibc 2.40, I'm fine merging
it already.  We can always patch it if something changes.

> Given that, I am not sure if I should wait until glibc 2.40 has been
> released before sending this change to this project or not.
>=20
> Please let me know.
>=20
> Thanks,
> Joe
>=20

Cheers,
Alex

> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/com=
mit/fs/eventpoll.c?h=3Dv6.9&id=3D18e2bf0edf4dd88d9656ec92395aa47392e85b61
> [2]: https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D92c270d32ca=
f3f8d5a02b8e46c7ec5d9d0315158
> [3]: https://sourceware.org/glibc/wiki/Glibc%20Timeline
>=20
> Joe Damato (1):
>   ioctl_epoll.2: New page describing ioctl(2) operations for epoll fds
>=20
>  man/man2/epoll_create.2 |   1 +
>  man/man2/epoll_ctl.2    |   1 +
>  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
>  man/man7/epoll.7        |   1 +
>  4 files changed, 206 insertions(+)
>  create mode 100644 man/man2/ioctl_epoll.2
>=20
> --=20
> 2.34.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--t42lx7qusttlthkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZiLakACgkQnowa+77/
2zLB/BAAiOYD1CReAELYnYL7wySjP/umX5+k40n8jSvaGe1Mkd4cBacxMsgCp04p
scMZmxKzhhH8Ckzn+P6gT9soRwX32nz5MfZ+qRNnGEmkWb1nh5dOJRvTaF26AiPF
DJv84SaZugHOpbi9vOuyoIo8uMpsZszX39EltiXC28dh/XoR/7epUUFrWLiNncWd
onX/bFI5CSwEtFJNmXXLWcPUTga1pmR9StfIVYzGpjna9e2rwjEl6PHIP/N1rZZO
utF7g7oj8cPTYuuIr1VLJU20o6HP6Q8V9KLxjfiNIMuPLNVLLdS2x4ewGzWyx+qV
hO/0Bi6fnjDP4YqxQlcfARQbtMe+d8nX0mz9HCmj93JEKHi++j8w2A4EeceBu+pX
1rhBExeAVX+FWOJdh3oKtT3f+zy415Y0ASJiAvhpQlzopHyZSJWI5mAE1gf8devH
7rEEqTVMRv021/gNIP9awHMIBULBCkZSdiEMqgRJq5d8o4iVZ7PQqtLL+U1G1tP6
nglNXEUuA46hZHDR0KHOGLQbkDDy1T94lI03LvBVUllvaoAaSofOELA61iC5vils
84ih1xjwlL/1zQeuBfDHxx43fYSUC8IgTD33IHlTk4JBRM9B5rPDIuLtGd4j4L/U
9EWqGdSk2MS68CeCFx3WeIAWPOoD1be3AwzPoh4e4VXpWiVs6qg=
=S30R
-----END PGP SIGNATURE-----

--t42lx7qusttlthkq--

