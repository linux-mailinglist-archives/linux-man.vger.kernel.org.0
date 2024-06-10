Return-Path: <linux-man+bounces-1070-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6B1902C96
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 01:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23E07282669
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 23:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC037BAE3;
	Mon, 10 Jun 2024 23:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVCRZiVI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C69A3BB48
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 23:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718063160; cv=none; b=FrnOChpETS/q/c80T4DxDzgoKNS6k9ZhRcWOzXzpiHX6iFmaYF099D0gd34DMR5beRYlcTSV1iAq1UsuOG5z7qLr1RC6CjnQjppkCybv1eD5eC9NmARnCOH4i/Y9rHZDl1A0uy99a3n7jwfbMSisI7n5wJktp99lXA24Z9hGQRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718063160; c=relaxed/simple;
	bh=W+Q1/JLFVFCUwuoXBXCssuxwn9dn+v+JQ1LjykrIyZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dJ86/7pqqI7a+SVd45sX7iWd+/wBmKfaj/tJ498pvKsr7CalioleWOP1G14PmbPylqEwa+Cs7S9ynjepoF3TVsnukYYROjrOtCc2brjZBASsEZIffgUbUQVqBbXKDaOrjbn7DSkFxHT7z4OmIxJr1Vjze1wd7/9MhJPKEDxfsxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVCRZiVI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C995C2BBFC;
	Mon, 10 Jun 2024 23:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718063159;
	bh=W+Q1/JLFVFCUwuoXBXCssuxwn9dn+v+JQ1LjykrIyZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WVCRZiVII166sZtMwfOOqzvchtlbrxZGNFBHDIhKX2nS2zk4u+bafpWxALgJg1iHG
	 4NnS30FEqHUHS7QlPhZPhysFbkZWwzs2YFeRhQ8DkkurZa+ex414bzU7JUOJAKHIOY
	 tL8iuK8J9EvoPI+H4ZfJ/RxoCkjeEfwProm0liRjxUOc4LVCWstSDT79trH300xpRj
	 s+hb7sNj5eKnqb4SbVFKYpCMmRX4+TQo7r/Z+32MCRIzLbGEvlFA8GeFSx9nVvtxcu
	 rRgLKrT2rm3XzykJx4EtIZQHYwdf1Lw3i3lHlgO5swecuSvANuqHRWjZMM+ggMlyPA
	 ZINiCqdjtr8aQ==
Date: Tue, 11 Jun 2024 01:45:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t4w3lj2z23iwmj3g"
Content-Disposition: inline
In-Reply-To: <20240610231206.1788738-2-jdamato@fastly.com>


--t4w3lj2z23iwmj3g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
MIME-Version: 1.0
In-Reply-To: <20240610231206.1788738-2-jdamato@fastly.com>

Hi Joe,

On Mon, Jun 10, 2024 at 11:12:06PM GMT, Joe Damato wrote:
> A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> EPIOCGPARAMS which allow the user to control epoll-based busy polling.
>=20
> Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
>=20
> Signed-off-by: Joe Damato <jdamato@fastly.com>

Thanks!

> ---
>  man/man2/epoll_create.2           |   1 +
>  man/man2/epoll_ctl.2              |   1 +
>  man/man2/ioctl.2                  |   1 +
>  man/man2/ioctl_epoll.2            | 171 ++++++++++++++++++++++++++++++

I'm working on a general refactor of all ioctl manual pages, and I'm
making the pages have a name consistent with the UAPI header that
provides them.  You can see the progress here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dioctl>

For consistency, please rename the page as ioctl_eventpoll(2).

>  man/man2const/EPIOCGPARAMS.2const |   1 +
>  man/man2const/EPIOCSPARAMS.2const |   1 +
>  man/man7/epoll.7                  |   1 +
>  7 files changed, 177 insertions(+)
>  create mode 100644 man/man2/ioctl_epoll.2
>  create mode 100644 man/man2const/EPIOCGPARAMS.2const
>  create mode 100644 man/man2const/EPIOCSPARAMS.2const
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
> diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
> index 5b8c28a9c..d96777d1f 100644
> --- a/man/man2/ioctl.2
> +++ b/man/man2/ioctl.2
> @@ -225,6 +225,7 @@ for the various architectures.
>  .BR ioctl_ns (2),
>  .BR ioctl_tty (2),
>  .BR ioctl_userfaultfd (2),
> +.BR ioctl_epoll (2),
>  .BR open (2),
>  .\" .BR mt (4),
>  .BR sd (4),
> diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> new file mode 100644
> index 000000000..458e72e9a
> --- /dev/null
> +++ b/man/man2/ioctl_epoll.2
> @@ -0,0 +1,171 @@
> +.\" Copyright (c) 2024, Joe Damato

Please reformat as:

=2E\" Copyright 2024, Joe Damato <jdamato@fastly.com>

(or another email if you want, but that's the format I'm trying to use
consistently.)

> +.\" Written by Joe Damato <jdamato@fastly.com>

You can remove this line.

> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +ioctl_epoll \- ioctl() operations for epoll file descriptors

Please reformat as:

ioctl_eventpoll,
EPIOCSPARAMS,
EPIOCGPARAMS
\-
ioctl() operations for epoll file descriptors

(which has '\-' on a line of its own, and has the individual ops
listed.)

> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.EX
> +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " consta=
nts and struct epoll_params */"

Remove ' and struct ...' from that comment.  We only have constants in
those comments (except in a few pages, where I'm fixing it at the
moment).

> +.B "#include <sys/ioctl.h>"
> +.P
> +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" ar=
gp );
> +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );

To document the header that provides this structure, let's add here:

=2EP
=2EB #include <linux/eventpoll.h>

> +.P
> +.B struct epoll_params {
> +.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll *=
/"
> +.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to r=
etrieve per poll */"
> +.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable p=
refer busy poll  */"
> +\&
> +.BR " " "   /* pad the struct to a multiple of 64bits */"
> +.BR "    uint8_t __pad;"            "  /* Must be zero */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +.TP
> +.B EPIOCSPARAMS
> +Set the
> +.I epoll_params
> +structure to configure the operation of epoll. Refer to the structure

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +description below to learn what configuration is
> +supported.
> +.TP
> +.B EPIOCGPARAMS
> +Get the current
> +.I epoll_params
> +configuration settings.
> +.TP
> +All
> +.BR ioctl (2)

We can omit 'ioctl(2)' here, since it's obvious from the context, I
think.  How about 'All operations documented ...'?

> +operations documented above must be performed on an epoll file descripto=
r,
> +which can be created with a call to

s/created/obtained/?

> +.BR epoll_create (2)
> +or
> +.BR epoll_create1 (2).
> +.\" kernel commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61

Let's reformat these:

=2E\" linux.git 18e2bf0edf4dd88d9656ec92395aa47392e85b61
=2E\" glibc.git 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158

(maybe say linux.git commit 1234...?  What do you prefer?)

> +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> +.P

I would use a subsection (.SS) for documenting the structure.

> +.I argp.busy_poll_usecs
> +field denotes the number of microseconds that the network stack will busy

s/field //?

> +poll. During this time period, the network device will be polled
> +repeatedly for packets. This value cannot exceed
> +.B INT_MAX.
> +.in
> +.P
> +.I argp.busy_poll_budget
> +field denotes the maximum number of packets that the network stack will

s/field //?

> +retrieve on each poll attempt. This value cannot exceed
> +.B NAPI_POLL_WEIGHT
> +which, as of Linux 6.9, is 64, unless the process is run with
> +.B CAP_NET_ADMIN.

This seems a bit ambiguous: 'unless the process is run with
CAP_NET_ADMIN' could refer to 'cannot exceed' or 'is 64'.  Using
parentheses instead of commas, it would be unambiguous.

> +.P
> +.I argp.prefer_busy_poll
> +field is a boolean field and must be either 0 (disabled) or 1 (enabled).=
 If

s/field is/is/?

> +enabled, this indicates to the network stack that busy poll is the
> +preferred method of processing network data and the network stack should
> +give the application the opportunity to busy poll. Without this option,
> +very busy systems may continue to do network processing via the normal
> +method of IRQs triggering softIRQ and NAPI.
> +.P
> +.I argp.__pad
> +must be zero.
> +.P

=2EP is redundant right before .SH

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
> +.I op
> +specified is invalid.

Let's not document this one, since it's already documented in ioctl(2).

> +.TP
> +.B EINVAL
> +.I argp.__pad
> +was not zero.
> +.TP
> +.B EINVAL
> +.I argp.busy_poll_usecs
> +exceeds

There's a bit of an inconsistency: the previous entry uses the past
tense, but this one uses the present.  I prefer to use the present in
both.  See also the next one.

> +.B INT_MAX .
> +.TP
> +.B EINVAL
> +.I argp.prefer_busy_poll
> +is not 0 or 1.
> +.TP
> +.B EPERM
> +The process is being run without
> +.I CAP_NET_ADMIN
> +and the specified
> +.I argp.busy_poll_budget
> +exceeds
> +.B NAPI_POLL_WEIGHT
> +(which is 64 as of Linux 6.9).

I prefer to not repeat the 64 here.

> +.TP
> +.B EFAULT
> +.I argp
> +does not point to a valid memory address.
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
> +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);

We use '\e', not '\\'.  (I haven't checked whether it also works, and
don't remember.)

> +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll=
);
> +\&
> +.SH History
> +Linux 6.9, glibc 2.40.

Let's reformat this as:

Linux 6.9.
glibc 2.40.

> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR epoll_create (2),
> +.BR epoll_create1 (2),
> +.BR epoll (7)
> +.P
> +.I linux.git/Documentation/networking/napi.rst
> +.P
> +and
> +.P

I think we can remove the 'and'.

> +.I linux.git/Documentation/admin-guide/sysctl/net.rst
> diff --git a/man/man2const/EPIOCGPARAMS.2const b/man/man2const/EPIOCGPARA=
MS.2const
> new file mode 100644
> index 000000000..6fbc5f0f8
> --- /dev/null
> +++ b/man/man2const/EPIOCGPARAMS.2const
> @@ -0,0 +1 @@
> +.so man2/ioctl_epoll.2
> diff --git a/man/man2const/EPIOCSPARAMS.2const b/man/man2const/EPIOCSPARA=
MS.2const
> new file mode 100644
> index 000000000..6fbc5f0f8
> --- /dev/null
> +++ b/man/man2const/EPIOCSPARAMS.2const
> @@ -0,0 +1 @@
> +.so man2/ioctl_epoll.2
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

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--t4w3lj2z23iwmj3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZnkCIACgkQnowa+77/
2zJukQ/+MccQw/lKY8Y5gKLOs3gLWQtwn++/Z1kmkVdxMO4rNynQChcxUNSzzqVW
SU9vQW0PHocbmwA/Dna7tki+zcHoF4qfPgpGmnibTaJWvOVC/U5j+SFjcFAyr56F
u7qKPNM697DmeupIw3Bus8Rfw5injW1K8tfQj8NE+4i9Sauf/TjVjJ4M35oACNEX
HxI6TtcEC4qZN0m03P05xJLbrx0Y2mAGt83lA5og5FEdLeTRbBOuOYGyVMFVlcLE
44KdttNngJ/WpbtsDjt08G2Wag1pf6yn6sGJmlsRr1mQF/MIM6YtnvdCJkXZC98T
lNygOLc+c96JG2qnwnKmXwKk+zAnmD5AMHTy3KZl+JXzauzeORKkkLXsbDpIlNyi
0Ha2UVTrVTGTe7UwioijnmRHNDe24INsvNoKGJIRcq30qY5/NdmdHXCzmW1gAhVI
4u/Utimqj5exCA+FO6DgxXdmNLC9eWdF4tw9qB038TGbZeocZ29ly6WIFuRrfJkO
Tdfsyg+AB5emzf+kkd7v4IN0Zuq7Gbran/Lz1vaWykKP973LRY4XzZ70I48iHEGr
+tknxmveCms9cAGeRUPnqKgUN+9dR7w4++hQes3F/aFg3z4qfMGVZZWAzKzDs5OE
PWQnLZyqk+Qxfv4HXTVxBo0iVVOskDsEfpqW7BNi20T+ZBWA5Ws=
=Hku7
-----END PGP SIGNATURE-----

--t4w3lj2z23iwmj3g--

