Return-Path: <linux-man+bounces-1617-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7A7954897
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 14:20:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 231ADB20E29
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 12:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210391917DF;
	Fri, 16 Aug 2024 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwbnvfsS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56FA1AC8B9
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 12:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723810832; cv=none; b=XH9YEOwMkE8jKlip7DhjFNNmJ9fhLtFTFMeU25X2rqHSGf9zJlgXCdJJIU5NPZubM588OK5mFHQen2j17kEs59hdrHyfm1lZOft/JYifeKwQvYrBu/JIfkPNjFYwMxFQP/UDgrBfhootO4HVSgyPzT4AJk0ysZeKA5q+BljC5TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723810832; c=relaxed/simple;
	bh=YQLKOfiqOgm1NhMVv7uoIK7+Z7KD+FCmRi/tH7zRMJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UjKsW3n1ryG+UhLtJJxcc988Z2+zydvTbWfvbaxAeE/tuMOhh0j3XLllnLyP6iWFdH3SlgMnZmHHwaXBH7UZu13XRYTDisBmjwLg0qDtGvbIGAOw2+v9W3mA7X7lZf04OSjsO32E09wxy0McX3JlhTiIPtzLa1C07o1CiAzu3OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwbnvfsS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5716C32782;
	Fri, 16 Aug 2024 12:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723810832;
	bh=YQLKOfiqOgm1NhMVv7uoIK7+Z7KD+FCmRi/tH7zRMJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rwbnvfsSCgimrL6fbO3FSovt22VUlx3IVGSX7uFMhpwCA4rTq8OlJRPBUWWDkTPxP
	 TWntG3kblsNPoEvMOGLeDxHefyXcMDSDSsmVpY9Jn5mt5naCzPNvOl1zBRWxaWykfS
	 PmX44A4I2bLOYUWYyhmSK6IXmH1RFRM5BatzOcI1yy6w5B0uuI0z/YSDU3QbnWwryW
	 RAAz9vljM0EArEe69Wunnk2KjKREOKiJExW5ySH2GGUKeBQhH4RsJd+rs0rVdM1bRf
	 bKPS3x4fr0sVm7GD6EuboFhUjm8hLawNVXhtnLwJtPr8nsyssEiKknW7EOCe9KoEQA
	 iEifC2rXIuRVw==
Date: Fri, 16 Aug 2024 14:20:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bdflush.2, syscalls.2: bdflush was removed
Message-ID: <m2pzpsr7ym6ifcm7nxsafw6ko4gmwn3b2ixygpmodqpzgqrdwy@4xglbwgvvql3>
References: <rc5hfkbvmw47jjd22kanjjblouv75t2xaiqcyxmxwquk3m7m6p@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dgwpvqls6jfut6fn"
Content-Disposition: inline
In-Reply-To: <rc5hfkbvmw47jjd22kanjjblouv75t2xaiqcyxmxwquk3m7m6p@tarta.nabijaczleweli.xyz>


--dgwpvqls6jfut6fn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bdflush.2, syscalls.2: bdflush was removed
References: <rc5hfkbvmw47jjd22kanjjblouv75t2xaiqcyxmxwquk3m7m6p@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <rc5hfkbvmw47jjd22kanjjblouv75t2xaiqcyxmxwquk3m7m6p@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1!

On Mon, Aug 12, 2024 at 07:23:08PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> There's no point documenting this syscall at any point in time,
> because it changed constantly. A post-mortem summary I believe to be
> comprehensive is included below.
>=20

[...]

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/bdflush.2  | 97 ++++++++++-----------------------------------
>  man/man2/syscalls.2 |  3 +-
>  2 files changed, 22 insertions(+), 78 deletions(-)
>=20
> diff --git a/man/man2/bdflush.2 b/man/man2/bdflush.2
> index 8627a42a2..c4c6400ff 100644
> --- a/man/man2/bdflush.2
> +++ b/man/man2/bdflush.2
> @@ -12,91 +12,34 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/kdaemon.h>
>  .P
> -.BI "[[deprecated]] int bdflush(int "  func ", long *" address );
> -.BI "[[deprecated]] int bdflush(int "  func ", long " data );
> +.BI "int bdflush(int "  func ", long " data );
> +.RI "// if " func " is even, " data " actually represents a pointer)"

I prefer that comment as a paragraph within DESCRIPTION, I think.

>  .fi
>  .SH DESCRIPTION
> -.IR Note :
> -Since Linux 2.6,
> -.\" As noted in changes in the 2.5.12 source
> -this system call is deprecated and does nothing.
> -It is likely to disappear altogether in a future kernel release.
> -Nowadays, the task performed by
> -.BR bdflush ()
> -is handled by the kernel
> -.I pdflush
> -thread.
> +This system call was introduced in Linux 1.1.3,
> +became effectively obsolete in Linux 1.3.50,
> +mostly useless in Linux 2.3.23,
> +entirely useless in Linux 2.5.12,
> +officially deprecated in Linux 2.5.52,
> +and removed outright in Linux 5.15.

Should that go into HISTORY and just leave here a first paragraph saying
it doesn't exist anymore in DESCRIPTION?

>  .P
> -.BR bdflush ()
> -starts, flushes, or tunes the buffer-dirty-flush daemon.
> -Only a privileged process (one with the
> -.B CAP_SYS_ADMIN
> -capability) may call
> -.BR bdflush ().
> +It used to turn the calling process into the
> +.I bdflush
> +daemon,
> +or tune it,
> +or flush the "old buffers".
> +It then progressively lost all of that functionality.
>  .P
> -If
> -.I func
> -is negative or 0, and no daemon has been started, then
> -.BR bdflush ()
> -enters the daemon code and never returns.
> -.P
> -If
> -.I func
> -is 1,
> -some dirty buffers are written to disk.
> -.P
> -If
> -.I func
> -is 2 or more and is even (low bit is 0), then
> -.I address
> -is the address of a long word,
> -and the tuning parameter numbered
> -.RI "(" "func" "\-2)/2"
> -is returned to the caller in that address.
> -.P
> -If
> -.I func
> -is 3 or more and is odd (low bit is 1), then
> -.I data
> -is a long word,
> -and the kernel sets tuning parameter numbered
> -.RI "(" "func" "\-3)/2"
> -to that value.
> -.P
> -The set of parameters, their values, and their valid ranges
> -are defined in the Linux kernel source file
> -.IR fs/buffer.c .
> -.SH RETURN VALUE
> -If
> -.I func
> -is negative or 0 and the daemon successfully starts,
> -.BR bdflush ()
> -never returns.
> -Otherwise, the return value is 0 on success and \-1 on failure, with
> -.I errno
> -set to indicate the error.
> +See
> +.I fs/buffer.c
> +in the kernel version you're interested in to see what it actually does =
there.
>  .SH ERRORS
> -.TP
> -.B EBUSY
> -An attempt was made to enter the daemon code after
> -another process has already entered.
> -.TP
> -.B EFAULT
> -.I address
> -points outside your accessible address space.
> -.TP
> -.B EINVAL
> -An attempt was made to read or write an invalid parameter number,
> -or to write an invalid value to a parameter.
> -.TP
> -.B EPERM
> -Caller does not have the
> -.B CAP_SYS_ADMIN
> -capability.
> +.B ENOSYS
> +(this system call is unimplemented)

I would keep the old errors around, in case someone needs to debug an
old system.


Cheers,

Alex

>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> -Since glibc 2.23, glibc no longer supports this obsolete system call.
> +The header and prototype were removed in glibc 2.23.
>  .SH SEE ALSO
>  .BR sync (1),
>  .BR fsync (2),
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 795a3f7be..325ecf5ac 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -170,7 +170,8 @@ .SS System call list
>  \fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
>  \fBbdflush\fP(2)	1.2	T{
>  Deprecated (does nothing)
> -since 2.6
> +since 2.6,
> +removed in 5.15
>  T}
>  \fBbind\fP(2)	2.0	T{
>  See notes on \fBsocketcall\fP(2)
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--dgwpvqls6jfut6fn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/RAcACgkQnowa+77/
2zIrfQ//UTXmIWWNPGbzLE0n1x3AIIH/cXJ/hshM4EiAY0DQKljfcF1b3sCQZddA
Rz6ZVlFOHEB6kns8GpPsysEeZbx+XGpGqZoFa8hIjdifzykYrGiuvK+zmQnP7+Cq
ySracO0g5EqEApT/OCrhmLPUmpLvZMdhBYaFNYOzMPUE6/47+XC2lF9wejmj5NA3
DC4VSr68RSVnnmLfJT5mlx0YLMhAm9s0YVCHBkXrSADALFu5j4JojCXXCP9wCvku
Z2B7tbNxJ+UFMC4Kl5QAl3IE6cr6gS6IXWg+m8EWRM30daFjagC6Vk/Frqf/QjQS
OnKlVk2VT0shaoUP2P0VJFRqzxWHAn0o1WyWUU0XAkPF3RfVdq2iT66W/xgRaztj
EX5UVcjhrWSAxMT7CNBdQt/YNL6l/cLUFvPZQotZRLW72mVCeMjtkDSdNOMVelDw
7uxfRX08f4RCxLWvbL15eJHsTw+15Su35CdibZNtej5jD3pIeWXj5+bx3FBaWL82
WL+pgGX1RzJw5W/22wFeHrG9pVCfkXXLHTkG3LORrZbPvYuJdFm9qDSW7sfvPs8Z
7IuLrl/bJ2i32IQeESwQlqysnd3PO/dFHZqpD809F21CZUe5rlCVEriSC1SxlHCR
igeyQbqcZlBpLkiLbQj/jVuWGi5zGct0rrgY9CoKmOt75zMc6M4=
=qwC3
-----END PGP SIGNATURE-----

--dgwpvqls6jfut6fn--

