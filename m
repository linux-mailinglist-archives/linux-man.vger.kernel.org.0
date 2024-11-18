Return-Path: <linux-man+bounces-2044-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BE79D1B3C
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 23:52:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 917841F2204A
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 22:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77FBF1E907B;
	Mon, 18 Nov 2024 22:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC1kBWAB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CF91E906E
	for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 22:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731970312; cv=none; b=tRMG7D33yNoEJ2xVO0lbOiAXREJ25UJbYCJey3ZgN1xB6mnnD5MzmjH4usapOKc9TuRZXZwD3/Q+o6l7dA75yjM7REhmZNknpmD0K0MKPx4Eh4KxuDspUmdHbwIo2x+XftbMYg9Zb0L7PdVkWG+6X/WC8ZY/kYzBwaqBOxrTCXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731970312; c=relaxed/simple;
	bh=4CvB3JyjLRjloV6kp/vr+aD1xDHab2gPb0teZdOQnq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VJ+A3XktXVcUeir/m2lwOXSjA+xNXuBYDX9ksKFDcr7hKH104VGb8fManWR68iHnbocgGMv/zrfh44fWCyVeOA1MW0cNAO3F6zGri+1mp8zRmy20trf7ulHi22ySkxs46vAQBYZr7xJV8DSMg7En/P8Bo24hnZkyBWKpn0KYQjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC1kBWAB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBA57C4CED6;
	Mon, 18 Nov 2024 22:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731970311;
	bh=4CvB3JyjLRjloV6kp/vr+aD1xDHab2gPb0teZdOQnq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FC1kBWABQqH7jy5pooJBg/upGxTtTsjW0qlpCKQiMKAAh7YKqUrCvgnqJzcgR45cT
	 DXNIi6r8JaBZFJrmb18aj6ryBLG7nmoO+Ds8LQBdzNDmyfaBbRXbzQJgbT3/C4WHu8
	 vG4J2qrzMXhm/yZI71Cp0ERoBlz1BX0WCq+q7ShajCTa2JHZ81WwhCAMCLUzw/eP3T
	 h2wbcKF828eT2GRNcemNfuNi9jAaoK8GwooQsAkU6Zayni8opcOfBL1zDXUdONCxMv
	 hCy+lp7JWM39Bftsk7C/Wl5M8Soe+8L1eWFMqRQahQKxDxFWPdnVVeb+nBX0zOaZvk
	 FkkjD+yUsOahQ==
Date: Mon, 18 Nov 2024 23:51:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] add time64 copies of system calls
Message-ID: <20241118225148.fgrvxxg2p6on4nl3@devuan>
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fyjcutqyyfn6wnwm"
Content-Disposition: inline
In-Reply-To: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>


--fyjcutqyyfn6wnwm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] add time64 copies of system calls
MIME-Version: 1.0

Hi Marcin,

On Mon, Nov 18, 2024 at 08:16:24PM +0100, Marcin Juszkiewicz wrote:
> During work on y2038 problem several time related system calls got "64"
> or "_time64" copies. It happened only on 32-bit architectures as there
> was no problem on 64-bit ones.
>=20
> Signed-off-by: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>

This only adds link pages, but doesn't add any documentation for them.
Should we add anything?  Maybe to the SYNOPSIS and VERSIONS (or HISTORY)?

Cheers,
Alex

> ---
>  man/man2/clock_adjtime64.2              | 1 +
>  man/man2/clock_getres64.2               | 1 +
>  man/man2/clock_gettime64.2              | 1 +
>  man/man2/clock_nanosleep_time64.2       | 1 +
>  man/man2/clock_settime64.2              | 1 +
>  man/man2/futex_time64.2                 | 1 +
>  man/man2/mq_timedreceive_time64.2       | 2 ++
>  man/man2/mq_timedsend_time64.2          | 2 ++
>  man/man2/ppoll_time64.2                 | 1 +
>  man/man2/pselect6_time64.2              | 1 +
>  man/man2/recvmmsg_time64.2              | 1 +
>  man/man2/rt_sigtimedwait_time64.2       | 1 +
>  man/man2/sched_rr_get_interval_time64.2 | 1 +
>  man/man2/semtimedop_time64.2            | 1 +
>  man/man2/timer_gettime64.2              | 1 +
>  man/man2/timer_settime64.2              | 1 +
>  man/man2/timerfd_gettime64.2            | 1 +
>  man/man2/timerfd_settime64.2            | 1 +
>  man/man2/utimensat_time64.2             | 1 +
>  19 files changed, 21 insertions(+)
>  create mode 100644 man/man2/clock_adjtime64.2
>  create mode 100644 man/man2/clock_getres64.2
>  create mode 100644 man/man2/clock_gettime64.2
>  create mode 100644 man/man2/clock_nanosleep_time64.2
>  create mode 100644 man/man2/clock_settime64.2
>  create mode 100644 man/man2/futex_time64.2
>  create mode 100644 man/man2/mq_timedreceive_time64.2
>  create mode 100644 man/man2/mq_timedsend_time64.2
>  create mode 100644 man/man2/ppoll_time64.2
>  create mode 100644 man/man2/pselect6_time64.2
>  create mode 100644 man/man2/recvmmsg_time64.2
>  create mode 100644 man/man2/rt_sigtimedwait_time64.2
>  create mode 100644 man/man2/sched_rr_get_interval_time64.2
>  create mode 100644 man/man2/semtimedop_time64.2
>  create mode 100644 man/man2/timer_gettime64.2
>  create mode 100644 man/man2/timer_settime64.2
>  create mode 100644 man/man2/timerfd_gettime64.2
>  create mode 100644 man/man2/timerfd_settime64.2
>  create mode 100644 man/man2/utimensat_time64.2
>=20
> diff --git a/man/man2/clock_adjtime64.2 b/man/man2/clock_adjtime64.2
> new file mode 100644
> index 000000000..b08b9c801
> --- /dev/null
> +++ b/man/man2/clock_adjtime64.2
> @@ -0,0 +1 @@
> +.so man2/adjtimex.2
> diff --git a/man/man2/clock_getres64.2 b/man/man2/clock_getres64.2
> new file mode 100644
> index 000000000..5a599b4b9
> --- /dev/null
> +++ b/man/man2/clock_getres64.2
> @@ -0,0 +1 @@
> +.so man2/clock_getres.2
> diff --git a/man/man2/clock_gettime64.2 b/man/man2/clock_gettime64.2
> new file mode 100644
> index 000000000..5a599b4b9
> --- /dev/null
> +++ b/man/man2/clock_gettime64.2
> @@ -0,0 +1 @@
> +.so man2/clock_getres.2
> diff --git a/man/man2/clock_nanosleep_time64.2 b/man/man2/clock_nanosleep=
_time64.2
> new file mode 100644
> index 000000000..b69e18aaa
> --- /dev/null
> +++ b/man/man2/clock_nanosleep_time64.2
> @@ -0,0 +1 @@
> +.so man2/clock_nanosleep.2
> diff --git a/man/man2/clock_settime64.2 b/man/man2/clock_settime64.2
> new file mode 100644
> index 000000000..5a599b4b9
> --- /dev/null
> +++ b/man/man2/clock_settime64.2
> @@ -0,0 +1 @@
> +.so man2/clock_getres.2
> diff --git a/man/man2/futex_time64.2 b/man/man2/futex_time64.2
> new file mode 100644
> index 000000000..5dbcdeae1
> --- /dev/null
> +++ b/man/man2/futex_time64.2
> @@ -0,0 +1 @@
> +.so man2/futex.2
> diff --git a/man/man2/mq_timedreceive_time64.2 b/man/man2/mq_timedreceive=
_time64.2
> new file mode 100644
> index 000000000..b4184f8c2
> --- /dev/null
> +++ b/man/man2/mq_timedreceive_time64.2
> @@ -0,0 +1,2 @@
> +.so man3/mq_timedreceive.3
> +.\" Because mq_timedreceive(3) is layered on a system call of the same n=
ame
> diff --git a/man/man2/mq_timedsend_time64.2 b/man/man2/mq_timedsend_time6=
4.2
> new file mode 100644
> index 000000000..db95863ad
> --- /dev/null
> +++ b/man/man2/mq_timedsend_time64.2
> @@ -0,0 +1,2 @@
> +.so man3/mq_timedsend.3
> +.\" Because mq_timedsend(3) is layered on a system call of the same name
> diff --git a/man/man2/ppoll_time64.2 b/man/man2/ppoll_time64.2
> new file mode 100644
> index 000000000..227cd0e47
> --- /dev/null
> +++ b/man/man2/ppoll_time64.2
> @@ -0,0 +1 @@
> +.so man2/poll.2
> diff --git a/man/man2/pselect6_time64.2 b/man/man2/pselect6_time64.2
> new file mode 100644
> index 000000000..e17784318
> --- /dev/null
> +++ b/man/man2/pselect6_time64.2
> @@ -0,0 +1 @@
> +.so man2/select.2
> diff --git a/man/man2/recvmmsg_time64.2 b/man/man2/recvmmsg_time64.2
> new file mode 100644
> index 000000000..8b9c14ff3
> --- /dev/null
> +++ b/man/man2/recvmmsg_time64.2
> @@ -0,0 +1 @@
> +.so man2/recvmmsg.2
> diff --git a/man/man2/rt_sigtimedwait_time64.2 b/man/man2/rt_sigtimedwait=
_time64.2
> new file mode 100644
> index 000000000..ca098e5fc
> --- /dev/null
> +++ b/man/man2/rt_sigtimedwait_time64.2
> @@ -0,0 +1 @@
> +.so man2/sigtimedwait.2
> diff --git a/man/man2/sched_rr_get_interval_time64.2 b/man/man2/sched_rr_=
get_interval_time64.2
> new file mode 100644
> index 000000000..27c946363
> --- /dev/null
> +++ b/man/man2/sched_rr_get_interval_time64.2
> @@ -0,0 +1 @@
> +.so man2/sched_rr_get_interval.2
> diff --git a/man/man2/semtimedop_time64.2 b/man/man2/semtimedop_time64.2
> new file mode 100644
> index 000000000..8a4061874
> --- /dev/null
> +++ b/man/man2/semtimedop_time64.2
> @@ -0,0 +1 @@
> +.so man2/semop.2
> diff --git a/man/man2/timer_gettime64.2 b/man/man2/timer_gettime64.2
> new file mode 100644
> index 000000000..42015ca6b
> --- /dev/null
> +++ b/man/man2/timer_gettime64.2
> @@ -0,0 +1 @@
> +.so man2/timer_settime.2
> diff --git a/man/man2/timer_settime64.2 b/man/man2/timer_settime64.2
> new file mode 100644
> index 000000000..42015ca6b
> --- /dev/null
> +++ b/man/man2/timer_settime64.2
> @@ -0,0 +1 @@
> +.so man2/timer_settime.2
> diff --git a/man/man2/timerfd_gettime64.2 b/man/man2/timerfd_gettime64.2
> new file mode 100644
> index 000000000..6d1294048
> --- /dev/null
> +++ b/man/man2/timerfd_gettime64.2
> @@ -0,0 +1 @@
> +.so man2/timerfd_create.2
> diff --git a/man/man2/timerfd_settime64.2 b/man/man2/timerfd_settime64.2
> new file mode 100644
> index 000000000..6d1294048
> --- /dev/null
> +++ b/man/man2/timerfd_settime64.2
> @@ -0,0 +1 @@
> +.so man2/timerfd_create.2
> diff --git a/man/man2/utimensat_time64.2 b/man/man2/utimensat_time64.2
> new file mode 100644
> index 000000000..a365c7b53
> --- /dev/null
> +++ b/man/man2/utimensat_time64.2
> @@ -0,0 +1 @@
> +.so man2/utimensat.2
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--fyjcutqyyfn6wnwm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc7xQQACgkQnowa+77/
2zJ34g//Qap0+hc7Tmn0mA9MU4gAXFYEgcM+bonsyqQJnLqoiZrO+HP8s2LGNnxJ
MBi5Neo+A/tElfPG6yICWSZPHU11Qph9sijWVZC8OKmPBo/8hUiDiI3tkMCaqbYX
kN/Ficpun9vdL2mEM59Dc0d+1PS2OvgjHbypCYFQgXNDiJHRnYNKutDkiGDFtCfV
jQf1FgOmvYYvLgkFuqcVb2IJ8XB3Gv7pOYo47NxtIyqvnOuQdkrXxASFzBpJY5Qq
7z3rkfKGqckEDbwU7B3ZMNVnXwKim4fRqpWKiEq5wQfDOZ7iuW9EvlQVCSHhUCbv
52L513iHX4lzOpVtoYZVrEGm410ge1GCg0/kDpi93ium5DF5V+QcNbQR4B4COgP2
uFY9PneSC767oNhpkl/fpkxsrxWmO7FJi9WNIFLdLs2NhVCQBCOwTJA5SDv7CfHT
v4CZfdD9uVZnYuIU6zVOQTcHSX1MnQxDCj9T8ToeL13WLEGbZF5XUQeL18Gpbg3w
6HyP0R423J6UhvJGF6VrHHHRIe5u/FO3nNO9oi4u8xSZdtw7sV/MtR+gmXUiGPpf
gxCfKKE/kBZ+yJQPIYU4dtw+4EYLOEyQNL2PA0Q0tSopKYIf/7HC8TabLo9FXBb/
FELycu+MLw7AiDG2dO4e/18JMRCQLqJd3TZ0RyoG/qgrr1JfI6c=
=fftG
-----END PGP SIGNATURE-----

--fyjcutqyyfn6wnwm--

