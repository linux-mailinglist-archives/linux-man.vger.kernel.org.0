Return-Path: <linux-man+bounces-936-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5278C99D0
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 10:29:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 160A3281850
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 08:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC6C1BC23;
	Mon, 20 May 2024 08:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaV1C8cJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDE21CD00
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 08:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716193755; cv=none; b=BVlTTSXfrg7HwfWI5/HVl2QNUrH9RFjnCUoIAoXO9EJFTDMJJvJCRSqKmWXZrn/b3DyGN8C6S3gxO96GvY790imtRr8jfIUsSKhoad2drolaQlKXrnlLs4TJVJACN5XkUyVuTdPtcIn3wEkxkG6OaeY567aUhRQr5J8lgz8T/Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716193755; c=relaxed/simple;
	bh=Q62p7eVPec6UFRIT2VvWbWyPLUodxziMhlYpsSnj40s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WRbbi5wsJF48tgZqK8ImNYxeim8mSWGPyr198kh9/a7wDOplhXY1pcWlt3r7UejgqWnzoozY2zFWB54URJrcuspYTRXb8xmAIifdACV5AIb2RP+Rjs3RvwVpuPHQALVk1OhYcXNSkrMksoCaM1/6sfXQ8Cf8olRMWKcjaTl8SsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaV1C8cJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AA53C2BD10;
	Mon, 20 May 2024 08:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716193755;
	bh=Q62p7eVPec6UFRIT2VvWbWyPLUodxziMhlYpsSnj40s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qaV1C8cJEq2qiVh+q8H3em/Uk5JYr++BXpE8lAiOv+Iccyw3sXTGAc1RjTPR+9EmF
	 yf487rmC27aeaOqMqAfVNmOzjcfTgaL8J+itk4n0s49Jlk9EXMDAGLm03riQYJembq
	 2FD9Vvv8jSea/IoiaH4CKgvkqZLOHMpjHWvMtF2A9a7hXSmqi1gMgi0tEsItKxpWlY
	 HQIbZYiWiZM6mZ26jGnP3VujPeBEIDY6Y6YeBCYhhQOfNg/k4xHuuOIrAMnmFwb1a3
	 ygvtM/kj94RPls2yNherxqxD+DG5aF0byKm00etUZ2Vg7mkckUz8TYEVsR7AItkWbi
	 3qPugTAbRC/HQ==
Date: Mon, 20 May 2024 10:29:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@vger.kernel.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
References: <ZkrZb91EgZoaOybZ@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iqkxqeoowptszacl"
Content-Disposition: inline
In-Reply-To: <ZkrZb91EgZoaOybZ@t420>


--iqkxqeoowptszacl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@vger.kernel.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
References: <ZkrZb91EgZoaOybZ@t420>
MIME-Version: 1.0
In-Reply-To: <ZkrZb91EgZoaOybZ@t420>

On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
> Hello.

Hi Emanuele,

> pidfd_open(2) only lists sys/syscall.h and unistd.h in its SYNOPSYS:
>=20
>   SYNOPSIS
>          #include <sys/syscall.h>      /* Definition of SYS_* constants */
>          #include <unistd.h>
>=20
>          int syscall(SYS_pidfd_open, pid_t pid, unsigned int flags);
>=20
>          Note:  glibc provides no wrapper for pidfd_open(), necessitating
>          the use of syscall(2).
>=20
> Then it mentions PIDFD_NONBLOCK as one of its flags:
>=20
>   PIDFD_NONBLOCK (since Linux 5.10)
>          Return  a nonblocking file descriptor.  If the process referred
>          to by the file descriptor has not yet terminated, then  an  at=
=E2=80=90
>          tempt to wait on the file descriptor using waitid(2) will imme=
=E2=80=90
>          diately return the error EAGAIN rather than blocking.
>=20
> But PIDFD_NONBLOCK is not defined in any of the listed headers.

Hmmm.  Thanks!  We need to add its header.

> I have noticed that PIDFD_NONBLOCK is the same value as O_NONBLOCK,
> so perhaps this flag could be listed as
>=20
>   O_NONBLOCK or PIDFD_NONBLOCK (since Linux 5.10)
>=20
> like O_NDELAY and O_NONBLOCK in open.2.
>=20
> This way the user would know that O_NONBLOCK may be used instead of
> PIDFD_NONBLOCK if PIDFD_NONBLOCK is not available.

No.  That's an implementation detail, which shouldn't be abused.

> I have also noticed that GNU libc (in its linux-api-headers submodule)
> provides a linux/pidfd.h header that just defines PIDFD_NONBLOCK as
> O_NONBLOCK, perhaps another solution would be to list in linux/pidfd.h
> in the synopsis and say it is required to use PIDFD_NONBLOCK.

Yep, that's the kernel uapi header.  I didn't know glibc redistributes
those.

Anyway, we should indeed include <linux/pidfd.h> for this macro.

> Then, I also noticed that GNU libc now also provides the sys/pidfd.h
> header with the definition of PIDFD_NONBLOCK, and prototypes for
> pidfd_open, pidfd_send_signal, pidfd_getfd, and also a prototype for
> pidfd_getpid that is an helper function that parses the "Pid:" field
> from /proc/self/fdinfo/FD and currently does not have a man page.

Hmmm, I've CCed glibc for a question:  When you provide a macro like
this one, without providing a syscall wrapper, should we include the
glibc header or the kernel one?  Do you provide all kernel uapi macros,
or just select ones?

>=20
> So probably the best solution is to just make the pidfd_open(2),
> pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to include
> sys/pidfd.h and call the GNU libc functions instead of including
> sys/syscall.h and unistd.h and calling syscall(2) directly; now that
> sys/pidfd.h exists.

Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
It seems added in 2.39.  We can directly document that in
pidfd_getfd(2).

> And maybe to also add a pidfd_getpid(3) man page for the new pidfd
> helper function.

No, usually we document the glibc wrapper in man2, unless there's a big
difference between the kernel syscall and the glibc wrapper.

Thanks for the detailed report!

Have a lovely day!
Alex

>=20
>=20
> o/
>  emanuele6

--=20
<https://www.alejandro-colomar.es/>

--iqkxqeoowptszacl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZLCdEACgkQnowa+77/
2zL1Jw//bf4M96pH19R0yVZ+DMwSA+N3cyUhVaRLFCL5djQJ84URl632kY//pKZM
zatT72Wm+obYTdg/plkd/RcuXixPPxZhZ4W1xOpyj4zO2QSh6G03BYvCY1QumFRs
0yoxnBM/2qBc49TBzD2u4L2e3kq+pwBKnHeEx45twxuxFxzus6ugHk5FpsB0f3Yq
pvbDqO4KqwAuc6BFGptbiHUgytbt9gx+zZRwI/QUcNTX3vPwc8UKr7Mw1BMCDCvW
D1OeDGSnhW8kodoqqr+dDV+u+9wuklJPyry5hezz0yDlL9RkM4KXrfOMwGz5IpTx
rVa5kVfuv6El2C4RSu1rO8ZPMhHds5l4rg4QqkA3W6IaENjfISad5mVjgaJJYTT3
N+ntwWpOemUW29HgBvP0gY5UhVATH3+XWFIX1eGuqz7teCVbdcJiHAqxG7JnnbYa
/1ZBQfgHqxxt+pxGDEUNcp5YMUbHJtxWUCHMwgSQyyXvl/wuqKNjFZOzOu1yZL2M
R8JzkP7fwZmsB+sOT+58uGCSFsilv4CFv0k9KQzEmmdPEvp1iqI0niL+0BsyLkHt
wdBX4ogco4sxax1eLRoZMEgw5TYpxdGVnbtysofzIl8OrAKCKYFe/z9T6boyIGpd
ZrpOFqJL6dnHdFmRWfFbQb6p3Fdae96s9gBffzCP/9Di9LmzBJM=
=F2S0
-----END PGP SIGNATURE-----

--iqkxqeoowptszacl--

