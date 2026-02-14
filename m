Return-Path: <linux-man+bounces-5133-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBciFrWxkGldcQEAu9opvQ
	(envelope-from <linux-man+bounces-5133-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 18:32:37 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3013C9EA
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 18:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE88F3013A4D
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 17:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 064342C11D6;
	Sat, 14 Feb 2026 17:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhch/eHj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA6F220F38
	for <linux-man@vger.kernel.org>; Sat, 14 Feb 2026 17:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771090340; cv=none; b=tiU27J4i1uK0JTA/yNYN2rtpKXTrgbOuLZedr1jk+1V//fhZNm0NIUXxTxSf8oQBXuShJ0Ho9/6/4CtVDq6sX8thNsFX4OCYEvSGXni8SGiEnUwWPfo6G7F3lwQ/WUfh4q54rG2sUCm+Otst8dFW96D3Xq0JVowWSJXuI7uKtjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771090340; c=relaxed/simple;
	bh=Pm1/0nqupnhDOJpT0UjoExEnhurLM0xaK6X5CMnXGtk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ureeeb1chj8h1RSaTucvMgiqSyqlNMdWgXOXV3N6vYdSLMq7pivVSQqJYBdu5whQgt14MKO0MTD5nuSJb2gyiJCZ5grTHaWyQcXj3ezZ8VPwk44BFQIdFjGkBFl/CpeNHPppgS/NeqEjY+8kcDIzDCfntpMHB1kJidgg+qrCAXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhch/eHj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A831EC16AAE;
	Sat, 14 Feb 2026 17:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771090340;
	bh=Pm1/0nqupnhDOJpT0UjoExEnhurLM0xaK6X5CMnXGtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uhch/eHj2kG6vO+PM+QYidRWm8Z4Ek0kJ47SXfTyYJzCT7mSyFqT3I/kb4UBZLAN5
	 phtZsrP5F71dg6PGxwgaFgD1FlyBAKWCw64nKIGDA6Ibm+DmcfaiD496CsCwEje3dr
	 3VzTAxCBV2w2JLNB35TuE6w0xd4MP9+0yGBlCdw7RhX5Lfn4iVYDU1zX93hLkfs5LC
	 O3dHDBZavhAC/zGTiJfbxQ9CDfek6pwlp+W9/c186urTi5W/uJx6kKWT1ZkgUuYb7V
	 WEktlQgezhzKDuD1tPzsbtiVcwx6XCTGMHCu+NkdRFpuIgl1iwxzQ4Qh5YpWAW09tS
	 DAzFBRpg7K65g==
Date: Sat, 14 Feb 2026 18:32:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7] futex_waitv.2: new page
Message-ID: <aZCpWitr7ioKU1C-@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g2nrgfoovtjx3ddx"
Content-Disposition: inline
In-Reply-To: <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5133-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabijaczleweli.xyz:email]
X-Rspamd-Queue-Id: A7E3013C9EA
X-Rspamd-Action: no action


--g2nrgfoovtjx3ddx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7] futex_waitv.2: new page
Message-ID: <aZCpWitr7ioKU1C-@devuan>
References: <aYySf9HuORRCchje@devuan>
 <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <3e2gme6737jjnklm37pmgdlhl3zfxbdtvi5po254czvwuvn3cj@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-02-11T15:44:20+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> Range-diff against v5:
[...]
Thanks!

>=20
>  man/man2/futex_waitv.2 | 421 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 428 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..a1eeb8ce8
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
> @@ -0,0 +1,421 @@
[...]
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/futex.h>" "  /* Definition of " FUTEX* " constants =
*/"

Out of curiosity, why are some macros FUTEX2_* instead of FUTEX_*?
(if you know)

> +.BR "#include <sys/syscall.h>" "  /* Definition of " SYS_* " constants *=
/"
> +.B #include <unistd.h>
> +.B #include <time.h>
> +.P
> +.SH ERRORS
[...]
> +.TP
> +.B EINVAL
> +.I n
> +was not in the range
> +.RB [ 1 ,
> +.I FUTEX_WAITV_MAX
> +(128)].

Ahhh, so 128 is the value of FUTEX_WAITV_MAX, not its argument.
I prefer not showing that value here.  Let's just say

	.IR FUTEX_WAITV_MAX ].

In general, we don't hard-code magic values unless users *need* to know
them.  This makes it more evident that if users rely on a specific
value, that may carry portability problems.

[...]
> +.TP
> +.B EINVAL
> +.B FUTEX2_NUMA
> +was set in
> +.IR waiters []. flags ,
> +and the NUMA word
> +(which is the same size as the futex word)
> +is too small to contain the index of the biggest NUMA domain
> +(for example,
> +.B FUTEX2_SIZE_U8
> +and there are more than 255 NUMA domains).

Is it 255 or 256?  I assume it's a 0-based index, so I'd expect there to
fit 256 indices in a u8.

[...]
> +.SH NOTES
> +.BR FUTEX2_SIZE_U8 ,
> +.BR FUTEX2_SIZE_U16 ,
> +and
> +.B FUTEX2_SIZE_U64
> +where
> +.I .val
> +and
> +.I *.uaddr

This should also be .uaddr[]

> +are 8, 16, or 64 bits are defined, but not implemented
> +.RB ( EINVAL ).
[...]
> +.SH EXAMPLES
[...]
> +.EX
> +.RB $\~ ./futex_waitv
> +153	153	153	237	100	245	177	127	215	61
> +									122!
> +				200!
> +							254!
> +306	306!
> +		306!
> +						354!
> +								430!
> +			474!
> +					490!
> +Connection timed out
> +.EE
> +.P
> +.\" SRC BEGIN (futex_waitv.c)
> +.EX
> +#include <errno.h>
> +#include <inttypes.h>
> +#include <linux/futex.h>
> +#include <pthread.h>
> +#include <stdatomic.h>
> +#include <stdcountof.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/syscall.h>
> +#include <time.h>
> +#include <unistd.h>
> +\&
> +static inline long
> +my_futex_wait_private(_Atomic uint32_t *uaddr, uint32_t val)
> +{
> +	return syscall(SYS_futex, uaddr, FUTEX_WAKE_PRIVATE, val);
> +}
> +\&
> +static inline long
> +my_futex_waitv(unsigned int n;
> +               struct futex_waitv waiters[n], unsigned int n,
> +               unsigned int flags, const struct timespec *timeout,
> +               clockid_t clockid)
> +{
> +	return syscall(SYS_futex_waitv, waiters, n, flags, timeout, clockid);
> +}
> +\&
> +void *
> +worker(void *arg)
> +{
> +	_Atomic uint32_t  *futex =3D arg;
> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	my_futex_wait_private(futex, 1);
> +	return NULL;
> +}
> +\&
> +int
> +main(void)
> +{
> +	_Atomic uint32_t  futexes[10];
> +	uint8_t  init[countof(futexes)];
> +	struct futex_waitv waiters[countof(futexes)] =3D {};
> +	int  i;
> +\&
> +	getentropy(init, sizeof(init));

$ make -R lint build-all check CC=3D/opt/local/gnu/gcc/cap4/bin/gcc=20
=2E..
=2Etmp/man/man2/futex_waitv.2.d/futex_waitv.c:50:6: error: ignoring return =
value of =E2=80=98getentropy=E2=80=99 declared with attribute =E2=80=98warn=
_unused_result=E2=80=99 [-Werror=3Dunused-result]
   50 |      getentropy(init, sizeof(init));
      |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
At top level:
cc1: note: unrecognized command-line option =E2=80=98-Wno-reserved-identifi=
er=E2=80=99 may have been intended to silence earlier diagnostics
cc1: all warnings being treated as errors
make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/ex=
amples/cc.mk:30: .tmp/man/man2/futex_waitv.2.d/futex_waitv.o] Error 1

> +	init[0] =3D init[1] =3D init[2];
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		printf("%" PRIu8 "\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);
> +	}
> +	putchar('\[rs]n');

Here and elsewhere in the example: \[aq] instea of '

> +\&
> +	for (i =3D 0; i < countof(futexes); ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t)&futexes[i];

Please add a space between casts and the expression their operand.

> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec  timeout;
> +		int  woke;
> +\&
> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		woke =3D my_futex_waitv(waiters, countof(futexes), 0, &timeout, CLOCK_=
MONOTONIC);
> +		if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))

$ make -R lint-man-dash
make: warning: undefined variable 'GNUMAKEFLAGS'
PCRE2GREP	.tmp/man/man2/futex_waitv.2.lint-man.dash.touch
lint-man-dash: .tmp/man/man2/futex_waitv.2: Unescaped dash:
    397:			if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLO=
CK))
make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/lint/man=
/dash.mk:26: .tmp/man/man2/futex_waitv.2.lint-man.dash.touch] Error 1


Have a lovely day!
Alex

> +			break;
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%s", futexes[i], i =3D=3D woke ? "!" : "");
> +			putchar('\[rs]t');
> +		}
> +		putchar('\[rs]n');
> +\&
> +		for (i =3D 0; i < countof(futexes); ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	fprintf(stderr, "%s\[rs]n", strerror(errno));
> +}
> +.EE
> +.\" SRC END
> +.SH SEE ALSO
> +.BR futex (2),
> +.BR FUTEX_WAIT (2const),
> +.BR FUTEX_WAKE (2const),
> +.BR futex (7)
> +.P
> +Kernel source file
> +.I Documentation/userspace-api/futex2.rst
> diff --git u/man/man7/futex.7 p/man/man7/futex.7
> index 51c5d5d9b..d271144ff 100644
> --- u/man/man7/futex.7
> +++ p/man/man7/futex.7
> @@ -45,7 +45,9 @@ .SS Semantics
>  Any futex operation starts in user space,
>  but it may be necessary to communicate with the kernel using the
>  .BR futex (2)
> -system call.
> +or
> +.BR futex_waitv (2)
> +system calls.
>  .P
>  To "up" a futex, execute the proper assembler instructions that
>  will cause the host CPU to atomically increment the integer.
> @@ -72,7 +74,9 @@ .SS Semantics
>  .P
>  The
>  .BR futex (2)
> -system call can optionally be passed a timeout specifying how long
> +and
> +.BR futex_waitv (2)
> +system calls can optionally be passed a timeout specifying how long
>  the kernel should
>  wait for the futex to be upped.
>  In this case, semantics are more complex and the programmer is referred
> @@ -107,6 +111,7 @@ .SH NOTES
>  .SH SEE ALSO
>  .BR clone (2),
>  .BR futex (2),
> +.BR futex_waitv (2),
>  .BR get_robust_list (2),
>  .BR set_robust_list (2),
>  .BR set_tid_address (2),
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>

--g2nrgfoovtjx3ddx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmQsZsACgkQ64mZXMKQ
wqlhVA/9FPJT3DQQZT9ygYBFFFjjSP+6wIN5CHm0/tJZWLWMBT7wOHDOFaQ/X0a/
0Vo+zcpwrr0naE6iXBRH1eQwSW5JHp7G8wGVB/cGzyO43fl++uAbhWr4/dGkYcwG
ALnahnkPNLi9k6Hrzb6ml4goOzM3wgp8y7fQibr8kXb7V3XiPEk1V3eoYwG3cb7r
Yv7jwdGEkrcsO+2xIUcv35DH7fI6RitcbvM48wliDEbbG7gTE4bc7Gb3X+6Mjfn+
66f2ixqUcq7QxekZAe/YE1YD5cIaWx2yYuDsuKIqwSnXJOxt48mzc7i0udCfB+hf
0cfJyy4Yh19Tdk0Cvik3CFQNK+iLHOQdQVPIK6nw95YABns3sawui+GQhqJorPGJ
1Wa/QMO2tArJx8Uq4KzSSfClTLArYsF31LTRIZd/VjV5Nfb5vobriSRrDrLh5uJe
A7vyxvhugIdU5X9HDU6QmJEuisreJhCvdFUeVG0PDVEIbTPBFElFmexZDQLw8G1F
l4i17xcVeGWtk0i3mwO6W2zGJoHbHsGOxy8R9LTn71pXdRWnxkZNSIHtXgK2s3mj
cmz7h2dPM7pzjG4twLOfDhPHRDAUgZD2BHzcjEVhO/oMkIc589bwsky/ASC/+jNj
BC/Nsuvc7lAYTvZ5bXY6Prf/TZxSgj0szAbHBiwWLyaZBO14klo=
=XGwb
-----END PGP SIGNATURE-----

--g2nrgfoovtjx3ddx--

