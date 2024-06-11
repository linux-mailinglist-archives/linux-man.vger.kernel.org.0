Return-Path: <linux-man+bounces-1140-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149A90476E
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 01:01:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CAAB1F2222A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6DC85BAFC;
	Tue, 11 Jun 2024 23:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzmPZfOt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B1923774
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 23:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718146874; cv=none; b=JbIwcxi/mUHAoUKj8rsPO/vnBsWMXBKrxBh81HHmnx2LkqptULWPrlP2uLRqjlLh9/ZSP3yedI3iSHCTPUDZFQ77TVocEkc/CT5aD1jigtQkwg0rBZeqST1Vs+KOT0bIV45rTsB8wqKr02o5PfYTdqRgM3RjiVyOxsb0xBNO458=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718146874; c=relaxed/simple;
	bh=A7d+IVaUlvvdzb1WcIwUc81644pUql8Xe8bNODlEm8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCdoZoLroN5rBZB8bLrArhAAtPaYtSjF33Gk2WiGf649nWy9FK+TNxAloxugKj7DejWpe8668iSLmI//qmzcogPgEB8gLtgV8073ryI0cIo00SHPsCDKiZqx2XU156Zv86K3fPNr5RRrGnqd/c4lWEZhE1Vxt2sZCcAv07ksUXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzmPZfOt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64DD0C2BD10;
	Tue, 11 Jun 2024 23:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718146874;
	bh=A7d+IVaUlvvdzb1WcIwUc81644pUql8Xe8bNODlEm8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dzmPZfOtyurMKgpGnDsnn+D1arWpFDChmMH0qXvUZJA6mL3xWvL6A4OOLX9CQ+x6N
	 GrotQhqCy69iqKZkmP1pusxxqZ1NkzxAZm2Lqt5qnh+FdIMsRxaiFt3syzGU/dhV68
	 9Kgr4BdqaEFj9jZ97XQX9dglM3fC0TwlNyMmzxvqg18njbLPhrvD5mQIvTXu43ePSY
	 qPVqOOPxbZpKUinyE5wng6zEn3Riipb644bj229/L1C7sga8GelI6gds8ZR1BjsYrx
	 2738XzxdzhUJPKYVzJQ+Vw0XTm0yILRAXxxeORuYuJVtLVJYfS1zlaCUYpv2SdAver
	 KX++umnq+kWjA==
Date: Wed, 12 Jun 2024 01:01:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
Message-ID: <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kneqn67mxdetyw5r"
Content-Disposition: inline
In-Reply-To: <20240611210941.1791446-2-jdamato@fastly.com>


--kneqn67mxdetyw5r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
MIME-Version: 1.0
In-Reply-To: <20240611210941.1791446-2-jdamato@fastly.com>

Hi Joe,

On Tue, Jun 11, 2024 at 09:09:41PM GMT, Joe Damato wrote:
> A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> EPIOCGPARAMS which allow the user to control epoll-based busy polling.
>=20
> Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
>=20
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  man/man2/epoll_create.2           |   1 +
>  man/man2/epoll_ctl.2              |   1 +
>  man/man2/ioctl.2                  |   1 +
>  man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++++
>  man/man2const/EPIOCGPARAMS.2const |   1 +
>  man/man2const/EPIOCSPARAMS.2const |   1 +
>  man/man7/epoll.7                  |   1 +
>  7 files changed, 181 insertions(+)
>  create mode 100644 man/man2/ioctl_eventpoll.2
>  create mode 100644 man/man2const/EPIOCGPARAMS.2const
>  create mode 100644 man/man2const/EPIOCSPARAMS.2const
>=20
> diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> index f0327e8ba..013f81b64 100644
> --- a/man/man2/epoll_create.2
> +++ b/man/man2/epoll_create.2
> @@ -141,4 +141,5 @@ on overrun.
>  .BR close (2),
>  .BR epoll_ctl (2),
>  .BR epoll_wait (2),
> +.BR ioctl_eventpoll (2),
>  .BR epoll (7)
> diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> index 6d5bc032e..29a6da375 100644
> --- a/man/man2/epoll_ctl.2
> +++ b/man/man2/epoll_ctl.2
> @@ -425,5 +425,6 @@ flag.
>  .SH SEE ALSO
>  .BR epoll_create (2),
>  .BR epoll_wait (2),
> +.BR ioctl_eventpoll (2),
>  .BR poll (2),
>  .BR epoll (7)
> diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
> index 5b8c28a9c..6f7725904 100644
> --- a/man/man2/ioctl.2
> +++ b/man/man2/ioctl.2
> @@ -225,6 +225,7 @@ for the various architectures.
>  .BR ioctl_ns (2),
>  .BR ioctl_tty (2),
>  .BR ioctl_userfaultfd (2),
> +.BR ioctl_eventpoll (2),
>  .BR open (2),
>  .\" .BR mt (4),
>  .BR sd (4),
> diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
> new file mode 100644
> index 000000000..6bbbef2d5
> --- /dev/null
> +++ b/man/man2/ioctl_eventpoll.2
> @@ -0,0 +1,175 @@
> +.\" Copyright 2024, Joe Damato <jdamato@fastly.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH ioctl_eventpoll 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +ioctl_eventpoll,
> +EPIOCSPARAMS,
> +EPIOCGPARAMS
> +\-
> +ioctl() operations for epoll file descriptors
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> +.B "#include <sys/ioctl.h>"
> +.P
> +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" ar=
gp );
> +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> +.P
> +.B "#include <sys/epoll.h>"
> +.P
> +.EX
> +.B struct epoll_params {
> +.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> +.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> +.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> +\&
> +.BR " " "/* pad the struct to a multiple of 64bits */"
> +.BR "  uint8_t  __pad;" "  /* Must be zero */"
> +.B };
> +.EE
> +.fi
> +.SH DESCRIPTION
> +.TP
> +.B EPIOCSPARAMS
> +Set the
> +.I epoll_params
> +structure to configure the operation of epoll.
> +Refer to the structure description below
> +to learn what configuration is supported.
> +.TP
> +.B EPIOCGPARAMS
> +Get the current
> +.I epoll_params
> +configuration settings.
> +.P
> +All operations documented above must be performed on an epoll file descr=
iptor,
> +which can be obtained with a call to
> +.BR epoll_create (2)
> +or
> +.BR epoll_create1 (2).
> +.SS The epoll_params structure
> +.I argp.busy_poll_usecs
> +denotes the number of microseconds that the network stack will busy poll.
> +During this time period,
> +the network device will be polled repeatedly for packets.
> +This value cannot exceed
> +.BR INT_MAX .
> +.in

I hadn't noticed this glitch.  This '.in' is spurious.

> +.P
> +.I argp.busy_poll_budget
> +the maximum number of packets that the network stack will retrieve

Also, this sentence seems to be missing a 'denotes' at ^.

> +on each poll attempt.
> +This value cannot exceed
> +.B NAPI_POLL_WEIGHT
> +(which is 64 as of Linux 6.9), unless the process is run with
> +.BR CAP_NET_ADMIN .
> +.P
> +.I argp.prefer_busy_poll
> +is a boolean field and
> +must be either 0 (disabled) or 1 (enabled).
> +If enabled,
> +this indicates to the network stack that
> +busy poll is the preferred method of processing network data
> +and the network stack should give the application the opportunity to bus=
y poll.
> +Without this option,
> +very busy systems may continue to do network processing
> +via the normal method of IRQs triggering softIRQ and NAPI.
> +.P
> +.I argp.__pad
> +must be zero.
> +.SH RETURN VALUE
> +On success, 0 is returned.
> +On failure, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EOPNOTSUPP
> +The kernel was not compiled with busy poll support.
> +.TP
> +.B EINVAL
> +.I fd
> +is not a valid file descriptor.
> +.TP
> +.B EINVAL
> +.I argp.__pad
> +is not zero.
> +.TP
> +.B EINVAL
> +.I argp.busy_poll_usecs
> +exceeds
> +.BR INT_MAX .
> +.TP
> +.B EINVAL
> +.I argp.prefer_busy_poll
> +is not 0 or 1.
> +.TP
> +.B EPERM
> +The process is being run without
> +.B CAP_NET_ADMIN
> +and the specified
> +.I argp.busy_poll_budget
> +exceeds
> +.BR NAPI_POLL_WEIGHT .
> +.TP
> +.B EFAULT
> +.I argp
> +does not point to a valid memory address.

And this wording is slightly wrong.  A pointer does not point to an
address (unless it's a pointer to a pointer).  It _is_ an address (or
rather, its value is an address, but that's too pedantic).

I've applied these three edits myself, and have already applied this
patch.

diff --git i/man/man2/ioctl_eventpoll.2 w/man/man2/ioctl_eventpoll.2
index 6bbbef2d5..64a8770e7 100644
--- i/man/man2/ioctl_eventpoll.2
+++ w/man/man2/ioctl_eventpoll.2
@@ -59,10 +59,9 @@ .SS The epoll_params structure
 the network device will be polled repeatedly for packets.
 This value cannot exceed
 .BR INT_MAX .
-.in
 .P
 .I argp.busy_poll_budget
-the maximum number of packets that the network stack will retrieve
+denotes the maximum number of packets that the network stack will retrieve
 on each poll attempt.
 This value cannot exceed
 .B NAPI_POLL_WEIGHT
@@ -119,7 +118,7 @@ .SH ERRORS
 .TP
 .B EFAULT
 .I argp
-does not point to a valid memory address.
+is an invalid address.
 .SH STANDARDS
 Linux.
 .SH HISTORY


<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De756cd6c0ae9f8121179e3e94201e729e013f5fb>
I'll push it tomorrow to <kernel.org>.

Thanks for this manual page!  :-)

Have a lovely night!
Alex

> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> +.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> +Linux 6.9.
> +glibc 2.40.
> +.SH EXAMPLES
> +.EX
> +/* Code to set the epoll params to enable busy polling */
> +\&
> +int epollfd =3D epoll_create1(0);
> +struct epoll_params params;
> +\&
> +if (epollfd =3D=3D \-1) {
> +    perror("epoll_create1");
> +    exit(EXIT_FAILURE);
> +}
> +\&
> +memset(&params, 0, sizeof(struct epoll_params));
> +\&
> +params.busy_poll_usecs =3D 25;
> +params.busy_poll_budget =3D 8;
> +params.prefer_busy_poll =3D 1;
> +\&
> +if (ioctl(epollfd, EPIOCSPARAMS, &params) =3D=3D \-1) {
> +    perror("ioctl");
> +    exit(EXIT_FAILURE);
> +}
> +\&
> +/* Code to show how to retrieve the current settings */
> +\&
> +memset(&params, 0, sizeof(struct epoll_params));
> +\&
> +if (ioctl(epollfd, EPIOCGPARAMS, &params) =3D=3D \-1) {
> +    perror("ioctl");
> +    exit(EXIT_FAILURE);
> +}
> +\&
> +/* params struct now contains the current parameters */
> +\&
> +fprintf(stderr, "epoll usecs: %lu\[rs]n", params.busy_poll_usecs);
> +fprintf(stderr, "epoll packet budget: %u\[rs]n", params.busy_poll_budget=
);
> +fprintf(stderr, "epoll prefer busy poll: %u\[rs]n", params.prefer_busy_p=
oll);
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR epoll_create (2),
> +.BR epoll_create1 (2),
> +.BR epoll (7)
> +.P
> +.I linux.git/Documentation/networking/napi.rst
> +.P
> +.I linux.git/Documentation/admin-guide/sysctl/net.rst
> diff --git a/man/man2const/EPIOCGPARAMS.2const b/man/man2const/EPIOCGPARA=
MS.2const
> new file mode 100644
> index 000000000..b70a1a565
> --- /dev/null
> +++ b/man/man2const/EPIOCGPARAMS.2const
> @@ -0,0 +1 @@
> +.so man2/ioctl_eventpoll.2
> diff --git a/man/man2const/EPIOCSPARAMS.2const b/man/man2const/EPIOCSPARA=
MS.2const
> new file mode 100644
> index 000000000..b70a1a565
> --- /dev/null
> +++ b/man/man2const/EPIOCSPARAMS.2const
> @@ -0,0 +1 @@
> +.so man2/ioctl_eventpoll.2
> diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
> index e7892922e..951500131 100644
> --- a/man/man7/epoll.7
> +++ b/man/man7/epoll.7
> @@ -606,5 +606,6 @@ is present in an epoll instance.
>  .BR epoll_create1 (2),
>  .BR epoll_ctl (2),
>  .BR epoll_wait (2),
> +.BR ioctl_eventpoll (2),
>  .BR poll (2),
>  .BR select (2)
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--kneqn67mxdetyw5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZo1zcACgkQnowa+77/
2zLWrg//YKw6hn6yNi9qaI73nLah9ijcjyWO38gFTSlaPNVE5E0+1MokZw+4vZRM
oWX49fg9it8FWUopjrjPY5SF2VMr+aOb33TPekNI9tmt4UFSEz/MgWuTHa0CHdek
OgPTZGef4EEbkSh/pP8FN/8SQTj2Skz/V5v2gzZ2SmKg431Gagai+6KF5B8/zfOk
aSn+JKw2jfXAaMmnW25JhAqzhb0Wrdjvi3SVsel8tPrZx0uk2dHzxOfXTUrS4WvJ
1SquAtyLBfiwv/8t5jzpe/2FjxISLEANfZyFtDTdicIhbMs621fMLidAo9f8vgNq
DHzvwQBKJvC72lQ5NknnjhlwrBmSfhPylr1XRsPgyZbqPt54qyfOFwEId9evwSrf
JTm80PZUMdZzrTP7k/HxZpoD72ZlVgoCfCiVayvqqb69WhJNvoBYfNspXpM495Jk
q/7iL84bGbk7WgWIvTI/YyT8bY4si8QEVSZgNVg9KDa/mE6b/gvcAi+73IBl35nM
Z6Z6ohIrNzuxpn2zd8mFhkcX47cKt0yfA4SPYsszbOLEKcZuPQ/4Du64VKwM5QUt
lu4QLDkQhjO1TOWG2rvC71r6DRRi8IihjYVbaPBLzJirtho4yb5uKiT3AHeA5lKu
FoRSRmkQ+mj9GzaphTRM13QdWknvg9kghyayqU4CO4th373ZkOU=
=QcgJ
-----END PGP SIGNATURE-----

--kneqn67mxdetyw5r--

