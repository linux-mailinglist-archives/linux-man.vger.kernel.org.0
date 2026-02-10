Return-Path: <linux-man+bounces-5092-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDSoLB+fi2kKXQAAu9opvQ
	(envelope-from <linux-man+bounces-5092-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:11:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EB611F525
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:11:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC76B3004D0C
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 21:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C6E3370F0;
	Tue, 10 Feb 2026 21:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQy6ltJy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2A1331A5C
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 21:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770757914; cv=none; b=i/pM7/5eGp7nZ2iiQh08yMF+2EQGujoQ0q/bEg6nGq0WOREnWDHWzE4mBvQM2ycIOHVIJP2qF9AZkhIaPV/eaI1KPmtQUcqKzpEwz9v0NiR/2QSdg/QwDvB77n1hvlmwG0jLVwI1zkCvNWvzzBDYjCBtLF+sb7lh+4F9keUkH6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770757914; c=relaxed/simple;
	bh=YSTOWS8sW6g7Jo8z8/3aUHrLXcRMkSR78hSN3sl51uE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SedtX5PzSrXDQ19G/zRgMh84D1OcACIgzDhK+WX3VAIYfBPFF1NEe9Lq1FwuOPnkaucnZ9AlGUY1xbfngDYgqwu3RrZnasKUdKUdnjW4MVkf5cJeyQ8QHeOpN5TA95/byy7xvJfOduUnIl3eQMyrllqC46eJbBPM1lj3KXZ0fSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQy6ltJy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C290C116C6;
	Tue, 10 Feb 2026 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770757914;
	bh=YSTOWS8sW6g7Jo8z8/3aUHrLXcRMkSR78hSN3sl51uE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mQy6ltJyTTwMyY3BgQ8x6Mb5KLXWxedxkY5TQZnTQeAHoBaO7pefuR69IOc1AlubR
	 MJzImZNZg4eVFfWn6kHXtaKueg0spdQInowu5cM9ICkyQVwvcSMT17Dlq/RoEKNtub
	 TVWVygkdDxh1SluyVkNDZvlrQrgE0a9gHBGCaNLENIlP+44H+TMmoXOXHfsO+JaC57
	 rNjwQw/UhTcpP+rY7/R/RIYcn90Bw73Vr3JTfeCxwYXZuHuizH8CxO5YWUjiP+zdQJ
	 lvY+ooHu2EQre06RZgnWsMV95hve8d1qIVOxGQA9aHh77rdUzOpImUJN54+CuzFjrJ
	 8J5nlrbeozNHA==
Date: Tue, 10 Feb 2026 22:11:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] futex_waitv.2: new page
Message-ID: <aYuXZUwh09hVHm3R@devuan>
References: <aYuPRo9lgl7frmym@devuan>
 <gfajadj3fxuf44m3wy3xwponaon4mnzavd7fnukv34pvt43hqu@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zdn5un4xbxnezfz2"
Content-Disposition: inline
In-Reply-To: <gfajadj3fxuf44m3wy3xwponaon4mnzavd7fnukv34pvt43hqu@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5092-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0EB611F525
X-Rspamd-Action: no action


--zdn5un4xbxnezfz2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] futex_waitv.2: new page
Message-ID: <aYuXZUwh09hVHm3R@devuan>
References: <aYuPRo9lgl7frmym@devuan>
 <gfajadj3fxuf44m3wy3xwponaon4mnzavd7fnukv34pvt43hqu@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <gfajadj3fxuf44m3wy3xwponaon4mnzavd7fnukv34pvt43hqu@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-10T21:32:18+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/futex_waitv.2 | 407 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 414 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..2ec6e4b50
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
> @@ -0,0 +1,407 @@
[...]

> +.SH EXAMPLES
> +The program below executes a linear-time operation on 10 threads,
> +displaying the results in real time,
> +waiting at most 1 second for each new result.
> +The first 3 threads operate on the same data (complete in the same time).
> +.B !\&
> +indicates the futex that woke up each
> +.BR futex_waitv ().
> +.in +4
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
> +.EX

Please wrap the program in comments so that it's checked by the build
system.  See for example:

	eventfd.2:381:.\" SRC BEGIN (eventfd.c)
	eventfd.2:436:.\" SRC END

> +#include <errno.h>
> +#include <inttypes.h>
> +#include <linux/futex.h>
> +#include <pthread.h>
> +#include <stdatomic.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <sys/syscall.h>
> +#include <time.h>
> +#include <unistd.h>
> +\&
> +void *
> +worker(void *arg)
> +{
> +	_Atomic uint32_t *futex =3D arg;

Please use two spaces to separate the type from the identifier:

	_Atomic uint32_t  *futex;

> +\&
> +	usleep(*futex * 10000);
> +	*futex *=3D 2;
> +	syscall(SYS_futex, futex, FUTEX_WAKE_PRIVATE, 1);

Is this allowed?  FUTEX_WAIT(2const) documents a 5th parameter.

     long syscall(SYS_futex, uint32_t *uaddr, FUTEX_WAIT, uint32_t val,
                  const struct timespec *_Nullable timeout);

You may get away because uninitialized values get a NULL often, but
is this reliable?  And even if it were reliable on glibc, would it be
good to use it in a manual page?

Also, please define a wrapper function futex_wait_private() that has the
following prototype:

	static inline long
	my_futex_wait_private(uint32_t *uaddr, uint32_t val,
	                      const struct timespec *_Nullable timeout);

> +	return NULL;
> +}
> +\&
> +int
> +main(void)
> +{
> +#define WORKERS 10
> +	_Atomic uint32_t futexes[WORKERS];
> +\&
> +	uint8_t init[WORKERS];

Please separate declarations from code with a blank line (kernel style).

> +	getentropy(init, sizeof(init));
> +	init[0] =3D init[1] =3D init[2];
> +	for (int i =3D 0; i < WORKERS; ++i) {

I'd prefer using countof() in things like this.

> +		printf("%" PRIu8 "\[rs]t", init[i]);
> +		atomic_init(&futexes[i], init[i]);
> +		pthread_create(&(pthread_t){}, NULL, worker, &futexes[i]);

I've now pushed a patch documenting _Nullable in pthread_create(3).

> +	}
> +	putchar('\[rs]n');
> +\&
> +	struct futex_waitv waiters[WORKERS] =3D {};
> +	for (int i =3D 0; i < WORKERS; ++i) {
> +		waiters[i].val   =3D futexes[i];
> +		waiters[i].uaddr =3D (uintptr_t)&futexes[i];
> +		waiters[i].flags =3D FUTEX2_SIZE_U32 | FUTEX2_PRIVATE;
> +	}
> +	for (;;) {
> +		struct timespec timeout;
> +		clock_gettime(CLOCK_MONOTONIC, &timeout);
> +		timeout.tv_sec +=3D 1;
> +\&
> +		int woke =3D syscall(SYS_futex_waitv, waiters, WORKERS, 0, &timeout, C=
LOCK_MONOTONIC);

Please write a my_futex_waitv() static inline wrapper.

Please separate declarations from code, and avoid initializations except
when really needed.

> +		if (woke =3D=3D -1 && (errno !=3D EAGAIN && errno !=3D EWOULDBLOCK))
> +			break;
> +\&
> +		for (int i =3D 0; i < WORKERS; ++i) {
> +			if (futexes[i] !=3D waiters[i].val)
> +				printf("%" PRIu32 "%.*s", futexes[i], i =3D=3D woke, "!");

I'd prefer to avoid "%.*s" unless really needed.  That's something to be
used exclusively with [[gnu::nonstring]].  If I'm reading this
correctly, you really want "%s" with i=3D=3Dwoke ? "!" : "".

> +			putchar('\[rs]t');
> +		}
> +		putchar('\[rs]n');
> +\&
> +		for (int i =3D 0; i < WORKERS; ++i)
> +			waiters[i].val =3D futexes[i];
> +	}
> +	printf("%s\[rs]n", strerror(errno));

I expect strerror(3) should go to stderr.  Do we really want stdout?


Cheers,
Alex

> +}
> +.EE
> +.SH SEE ALSO
> +.ad l
> +.BR futex (2),
> +.BR FUTEX_WAIT (2const),
> +.BR FUTEX_WAKE (2const),
> +.BR futex (7)
> +.P
> +The following kernel source files:
> +.IP \[bu]
> +.I Documentation/userspace-api/futex2.rst
> +.IP \[bu]
> +.I kernel/futex/syscall.c
> +.IP \[bu]
> +.I kernel/futex/waitwake.c
> +.IP \[bu]
> +.I kernel/futex/futex.h
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

--zdn5un4xbxnezfz2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLnxEACgkQ64mZXMKQ
wqnTJRAAu7ggbjZDel0BL+vIZTxWLjRm4ySnI8uUpFW8bs3PkSm0V6XGAB3cWJrK
RXsSd2wQjSsdNdK9ZMl4E0/q2mJZJvAELzhWPOE3FaDQZY4srhHeGMLgx210tHgS
O12yv+adB3l3u7iS+1YHH80Yx0g5VGKBhdsf7c6zLhyK1V0AAPmzewtQcqyMxJMD
71kxBs3AX2W0LxY8dcgiBz3g27deYitSbtkxLEYGbD3bkYTo7sRGDMsdWVcdOrf4
7j6TyhSyOkGWdrn3kPuCoGTUMSpi7BKSGLELhqu621rrl86HphrFsXdU7KkOVfu8
yJEFRgF/eUK8IuL9my4l0vFm+RZOBHPOTAd7ARxFyp8RLk1TrLAMs0WvTocHQ9xL
heuuFuc28PSxdduYfRT28SuK+YVgmXxyjjP0eJBF06UEMscx+gNaZOLahnUyUmbR
Oy/7omuOunDDTEyJkknrCQ+CBROYQyxeCMIjhrm9emN93wmJ2qeJLMHGQynOH6dI
kWWCp4ChBPMLCF6GG/BMOhsb3mmAw16UQnzj9afZM0G4h/kp5sANVmyfWR2zPMdl
jC3qzyKVDhQxjk85AbsudCKQrDzudOI9rbm3rLPyUES9OMcGB3vK4xVQp5cIh9+Y
FhPBVq08Rrgh6TzgMsChpFoB4Fe+xvYJdkw505IHo6p0QVJG4fQ=
=WMUl
-----END PGP SIGNATURE-----

--zdn5un4xbxnezfz2--

