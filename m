Return-Path: <linux-man+bounces-1034-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 359C08FF6F8
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 23:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E220B215B8
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 21:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215C971B3A;
	Thu,  6 Jun 2024 21:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W47eIRFf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27A34F5EC
	for <linux-man@vger.kernel.org>; Thu,  6 Jun 2024 21:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717710001; cv=none; b=OEuNfdM+n2SdsyTtQwoUeesWWzI6hZPvU9l8mETxyzMbVBmUezDP1cHOShhz4UZVaCuMWd5Jv1wlFXymHX0eszkQNY/ZJ0cQgbveg4H2qgY8LZRDZi5bljR7D1+9Pk4Xa53xdV6pMaemH8rW7E25h1xDKpeAKTjsTHf4wvD9+qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717710001; c=relaxed/simple;
	bh=CiIPDGIb4IrBQOX6FLE+yTGjGOVdmSvCrEBmAC9gVH4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ERWr45pdfD4dhf3v6vd673bcAYxDg8W8qaCJj/gY8eGg5pViN9A98QCQ8C8BwKuc0FVxDvlK/pkXszYl0YKkSbcF8OISoxUdGa3W+XyWxpyultvfmVvSyQ8N4Xf6aAhth5tDL7sOo4zHgpxl7BGfiubGMRIfUckpjfef/NTfRyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W47eIRFf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9D25C2BD10;
	Thu,  6 Jun 2024 21:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717710001;
	bh=CiIPDGIb4IrBQOX6FLE+yTGjGOVdmSvCrEBmAC9gVH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W47eIRFfQo0PGijIgXRH95qklqmfXmrIwsVtZlWuvzlUexvjmelKTZg1+H5kf26er
	 hIjh80908QwfvGLUTaHlFZHhyCQQgyl6CSzw5QMMRnzXyh9wnFrykhfUQEIY7Vm3wt
	 xqYi2z2YEs27y+YSGkq5/BCMq7VF+yJJRoA4kQulPfwV4EDvFFAtq31hajahacadci
	 Xwq7vS0ffYq5nhG4dZatM6oSoRIZAjYfeawlsq/sO0VnEiNceSYOXqaBOVHBi5mYLa
	 oL27AdX/4d6MGbAkMY+DfweR+Ci15bk2JF8kDP8BZ1pxoI3JbqKeKzmFZeJW5Uo/v5
	 tfTyK0fdJkJDQ==
Date: Thu, 6 Jun 2024 23:39:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cx6yjngsvpkxyb3i"
Content-Disposition: inline
In-Reply-To: <20240604181740.1741860-2-jdamato@fastly.com>


--cx6yjngsvpkxyb3i
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
MIME-Version: 1.0
In-Reply-To: <20240604181740.1741860-2-jdamato@fastly.com>

Hi Joe,

On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Thanks for the patch!  Please see a few comments below.

Have a lovely night!
Alex

> ---
>  man/man2/epoll_create.2 |   1 +
>  man/man2/epoll_ctl.2    |   1 +
>  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
>  man/man7/epoll.7        |   1 +
>  4 files changed, 206 insertions(+)
>  create mode 100644 man/man2/ioctl_epoll.2
>=20
> diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> index f0327e8ba..2aa1745f5 100644
> --- a/man/man2/epoll_create.2
> +++ b/man/man2/epoll_create.2
> @@ -141,4 +141,5 @@ on overrun.
>  .BR close (2),
>  .BR epoll_ctl (2),
>  .BR epoll_wait (2),
> +.BR ioctl_epoll (2),
>  .BR epoll (7)
> diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> index 6d5bc032e..24bbe7405 100644
> --- a/man/man2/epoll_ctl.2
> +++ b/man/man2/epoll_ctl.2
> @@ -425,5 +425,6 @@ flag.
>  .SH SEE ALSO
>  .BR epoll_create (2),
>  .BR epoll_wait (2),
> +.BR ioctl_epoll (2),
>  .BR poll (2),
>  .BR epoll (7)
> diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> new file mode 100644
> index 000000000..1d53f458e
> --- /dev/null
> +++ b/man/man2/ioctl_epoll.2
> @@ -0,0 +1,203 @@
> +.\" Copyright (c) 2024, Joe Damato
> +.\" Written by Joe Damato <jdamato@fastly.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.\"

Please use only one consecutive .\"

> +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +ioctl_epoll \- ioctl() operations for epoll file descriptors

Please add link pages <man2const/EPIOCSPARAMS.2const> and
<man2const/EPIOCGPARAMS.2const>.

> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " consta=
nts and struct epoll_params */"
> +.B "#include <sys/ioctl.h>"
> +.P
> +.BI "int ioctl(int " fd ", int " op ", void " *argp ");"

The '*' should be bold; not italics.

> +.fi
> +.SH DESCRIPTION
> +Various
> +.BR ioctl (2)
> +operations can be performed on an epoll file descriptor (created by a ca=
ll
> +to
> +.BR epoll_create (2))
> +(since Linux 6.9 and glibc 2.40) using calls of the form:
> +.\" commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> +.P
> +.in +4n
> +.EX
> +ioctl(fd, op, argp);
> +.EE
> +.in
> +.P
> +In the above,
> +.I fd
> +is a file descriptor referring to an epoll file descriptor obtained with=
 a
> +call to
> +.BR epoll_create (2).
> +.I op
> +is one of the operations listed below, and
> +.I argp
> +is a pointer to the data structure described below.

If argp is a pointer to a structure, then the prototype should document
that:

=2EBI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );

Also, I would document the two operations separately:

=2EBI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" arg=
p );
=2EBI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );

This allows documenting that the 'S' one doesn't modify the argp
(AFAICS).

> +.\"
> +.P
> +All supported
> +.I op
> +values (described below) use an
> +.I argp
> +argument which is a pointer to a
> +.I epoll_params
> +structure, defined as:
> +.P
> +.in +4n
> +.EX
> +struct epoll_params {
> +    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
> +    uint16_t busy_poll_budget;  /* Maximum number of packets to retrieve=
 per poll */
> +    uint8_t prefer_busy_poll;   /* Boolean to enable or disable prefer b=
usy poll  */
> +
> +    /* pad the struct to a multiple of 64bits */
> +    uint8_t __pad;              /* Must be zero */
> +};

You could add this type definition to the SYNOPSIS, below the function
prototypes.

> +.EE
> +.in
> +.P
> +The
> +.I busy_poll_usecs
> +field denotes the number of microseconds that the network stack will busy
> +poll. During this time period, the network device will be polled
> +repeatedly. This value cannot exceed
> +.B INT_MAX .
> +.in
> +.P
> +The
> +.I busy_poll_budget
> +field denotes the maximum number of packets that the network stack will
> +be retrieved on each poll attempt. This value cannot exceed
> +.B NAPI_POLL_WEIGHT
> +which, as of Linux 6.9, is 64, unless the process is run with
> +.B CAP_NET_ADMIN .
> +.P
> +The
> +.I prefer_busy_poll
> +field is a boolean field and must be either 0 (disabled) or 1 (enabled).=
 If
> +enabled, this indicates to the network stack that busy poll is the
> +preferred method of processing network data and the network stack should
> +give the application the opportunity to busy poll. Without this option,
> +very busy systems may continue to do network processing via the normal
> +method of IRQs triggering softIRQ and NAPI.
> +.P
> +The supported
> +.I op
> +values:
> +.TP
> +.B EPIOCSPARAMS
> +This operation allows the caller to specify an
> +.I epoll_params
> +structure to configure the operation of epoll. Refer to the structure
> +description of the structure above to learn what configuration is
> +supported.
> +.TP
> +.B EPIOCGPARAMS
> +This operation allows the caller to retrieve the current
> +.I epoll_params
> +structure. This can be used to determine what the current settings are.
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
> +.B ENOIOCTLCMD

Is this a thing?

	$ grep -rn ENOIOCTLCMD /usr/include/
	$=20

I suspect this is EINVAL in user space?  (Actually, you list the same
exact error condition for EINVAL below.)

> +The specified
> +.I op
> +is invalid.
> +.TP
> +.B EINVAL
> +The
> +.I fd
> +specified is not an epoll file descriptor, or the
> +.I op
> +specified is invalid, or the
> +.I __pad
> +was not initialized to zero, or
> +.I busy_poll_usecs
> +exceeds
> +.B INT_MAX ,
> +or
> +.I prefer_busy_poll
> +is not 0 or 1.

Please separate the different conditions for EINVAL into separate
entries.  The ones that are related can go in the same one, but the
unrelated ones are better split.

> +.TP
> +.B EPERM
> +The process is being run without
> +.I CAP_NET_ADMIN

This should be bold.

> +and the specified
> +.I busy_poll_budget

This should be

=2EI argp.busy_poll_budget

> +exceeds
> +.I NAPI_POLL_WEIGHT

This should be bold.

> +(which is 64 as of Linux 6.9).
> +.TP
> +.B EFAULT
> +.I argp
> +does not point to a valid memory address.
> +.SH EXAMPLES
> +.EX

Could you write an entire program, with a main()?

If not, it's fine; this is better than nothing.  But we prefer having
entire programs that users can paste and try.

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
> +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll=
);
> +\&
> +.SH History
> +Linux 6.9.
> +glibc 2.40.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR epoll_create (2),
> +.BR epoll_create1 (2),
> +.BR epoll (7)
> +.P
> +.I Documentation/networking/napi.rst
> +.P
> +and
> +.P
> +.I Documentation/admin-guide/sysctl/net.rst
> +.P
> +in the Linux kernel source tree

We could document that as

=2EI linux.git/Documentation/...

to not have to say "in the Linux kernel source tree".

> diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
> index e7892922e..4ad032bdd 100644
> --- a/man/man7/epoll.7
> +++ b/man/man7/epoll.7
> @@ -606,5 +606,6 @@ is present in an epoll instance.
>  .BR epoll_create1 (2),
>  .BR epoll_ctl (2),
>  .BR epoll_wait (2),
> +.BR ioctl_epoll (2),
>  .BR poll (2),
>  .BR select (2)
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--cx6yjngsvpkxyb3i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZiLKYACgkQnowa+77/
2zL96Q/9FrIA3cqr+3BzN5z4Tg/6IeowiGTgdkRKjWiLJdATkYGMeULHscYKKTzo
q2Ai737+R6J3B1W/maY9lPqc5vWawqbEAb/7jEFtdwdr9uMXkuIrzguZE6Sg3MhK
v4AAYVZMLD8MR/TfhuoZQjdv9ruUuNzQDRiqPrD011a2+NIbbQYoLNUPIEQZ6nZr
VSLxc1XecbgAPzQC0E+liCWk/PxMtizvrCkyhVzCc2rUv9N1zfdwPRAkLbQGST3i
tJkV+6pOnsAT0HYiv3eC5KiUXdihTG7QxIQbAtz4bQwKfgKWMh4vZM8uNnhs4VLt
VA3+053ProsL+/8plLA7esDRDAIMB03Sptt9SVtToW1Uy5O8c8DqK+GnG4j+tWId
T+NbzOcL09jzI5a3rz3sxOO1NWwH7ILKjibxRXvZCwpheUYM2dRtY8f6OpwQrYen
IMy/0kYq7qavBSy+fNXP+Td5YfEzXG9IJRrdu7JDb69qKdFjXi/aWEmCNh9czggW
8CkVUDuFWc24m4pQE7LuKb1UUn8Tb79f4GamJMijklh8aVZwcjMWQjnfb4pDuGpB
kLdC1OETPREtp0jpK4KarBYHb8oC7B3ujD8UB3hKJx61qtD+eElS547UUaC4arij
FRyReW4E+PR1zoeaJXlNe9Dc9Gq5WJ2RaJTMjBfyPNSsRCdD+WE=
=zR7Q
-----END PGP SIGNATURE-----

--cx6yjngsvpkxyb3i--

