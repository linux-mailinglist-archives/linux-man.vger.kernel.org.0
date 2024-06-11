Return-Path: <linux-man+bounces-1131-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89656904584
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31C182862E3
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D287BB17;
	Tue, 11 Jun 2024 20:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlGevbvg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B2A1879
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 20:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718136435; cv=none; b=Hf/LAcOggnaj45sPGha53NUIRuMybpglUhntr5tUH1qpx9Kkb88S+xp3YU5BLd7sI35p6cCwY3bnR9G+ubiqcgfiPJTBhdiz0ajsAKW/KUDu0cb3J3QeD2MTaLmNHgO09rDnxeg15m5DqsgjTsNJuJ0TXx/1JBfXhtCpcjlAsM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718136435; c=relaxed/simple;
	bh=jQsCfcjnMT2L6AK9D1GUYA8vLwSaOBhJE1RJrgZjqz0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=hG2FKJ/18pCXdXQprSZvTxBL/JOS805rYib2zTv9hv5A5CXb80C54aYFvdLggzc/CvDUN6r8ZlvqqoSd2S5ThMjkaLUv6XM/MeDwszOz1lP8IdXiOVwn382mixrbK3ItGFb/PM3+vIZcs5tPLKIW8QxlSKRquHlzpMPNnfV7Z+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlGevbvg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E9DC2BD10;
	Tue, 11 Jun 2024 20:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718136435;
	bh=jQsCfcjnMT2L6AK9D1GUYA8vLwSaOBhJE1RJrgZjqz0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=MlGevbvgxYjYnGUS4DJbCuroxDlmG02Uq2K5vVHokdiRr/QP0485f7uPP1s4lIBZg
	 88dBkYtRoEavOxqtkI0HClA5GRIaRcE2cQEowzU6Dfd1SJ4a5FP3ibMrN0afK/DAER
	 MnJxr/ofNrWasWvKCldJPlVvvQ3/Ew/B3LTCoeJllgdI8CJ8iro9ldGdsjMBerQXDr
	 wgFwVstr7kpbObFElLjcPH5znflZlP0I1GukEsFsfnlmXOwEUdR1X/aXVMLE8DO1S7
	 7yZSYgsqH/Wx4wgmYbBG1IBEhYxc6dajNybeZ9R/cCFbfTsPPAIYTpuvc5h8LdsGLg
	 OjvTFp6uYxHIQ==
Date: Tue, 11 Jun 2024 22:07:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
Message-ID: <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t7jusfvyuqnycujn"
Content-Disposition: inline
In-Reply-To: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>


--t7jusfvyuqnycujn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
MIME-Version: 1.0
In-Reply-To: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>

Greetings Joe,

On Tue, Jun 11, 2024 at 07:12:56PM GMT, Joe Damato wrote:
> Greetings:
>
> Welcome to v3.
>
> This revision includes several important changes:
>   1. Renamed the file from man/man2/ioctl_epoll.2 to
>      man/man2/ioctl_eventpoll.2.
>   2. Attempts to use semantic newlines to shorten long lines.
>   3. Replaces the include with <sys/epoll.h> instead of the kernel source=
s.
>   4. Many style issues that Alejandro pointed out in v2.
>   5. Using \[rs] instead of \e in the example code.
>   6. Replace all instances of ioctl_epoll with ioctl_eventpoll
>
> Many thanks for Alejandro for his unending patience and attention to
> detail.

Thank you.  :)

We'll still need a v4, but we're almost there.

> Subject: ioctl_eventpoll.2: New page describing epoll ioctl(2)

Let's make the commit subject this:

ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New page describing epoll ioctl(=
2)

On Tue, Jun 11, 2024 at 07:12:57PM GMT, Joe Damato wrote:
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
>  man/man2/ioctl_eventpoll.2        | 173 ++++++++++++++++++++++++++++++
>  man/man2const/EPIOCGPARAMS.2const |   1 +
>  man/man2const/EPIOCSPARAMS.2const |   1 +
>  man/man7/epoll.7                  |   1 +
>  7 files changed, 179 insertions(+)
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
> index 000000000..0fe03d6d4
> --- /dev/null
> +++ b/man/man2/ioctl_eventpoll.2
> @@ -0,0 +1,173 @@
> +.\" Copyright (c) 2024, Joe Damato

1d

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
> +.EX

This should be '.nf' instead of '.EX'.  We want most of the SYNOPSIS to
use proportional font in PDF.  EX/EE is nf/fi + monospace.  We want it
for the structs, but not for the rest of the SYNOPSIS.

> +.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> +.B "#include <sys/ioctl.h>"
> +.P
> +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" ar=
gp );
> +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> +.P
> +.B "#include <sys/epoll.h>"
> +.P

Here let's insert a .EX to make the structure use monospace (for
alignment reasons).

> +.B struct epoll_params {

When reading the page in a usual terminal, these comments go past the
80 column, which is not nice.  Please shorten the comments so that
the SYNOPSIS renders nicely in a (80x24) usual terminal.

Below go some suggestions.

> +.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll *=
/"
> +.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to r=
etrieve per poll */"

s/Maximum number of/Max/
s/to retrieve //

> +.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable p=
refer busy poll  */"

I'd simplify this as

	/* Boolean preference */

Also, I'd like to align the member names according to
<https://nginx.org/en/docs/dev/development_guide.html#code_style_variables>.
That is, 2 spaces of minimum alignment, plus the necessary to make them
all aligned (so 3 on the last).

I'd like also 2 spaces minimum before the comments, instead of just 1.

> +\&
> +.BR " " "   /* pad the struct to a multiple of 64bits */"
> +.BR "    uint8_t __pad;"            "  /* Must be zero */"
> +.B };
> +.EE

And here append .fi to close the initial .nf.

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
> +.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> +.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158

Please move these comments to HISTORY.

> +.SS The epoll_params structure
> +.I argp.busy_poll_usecs
> +denotes the number of microseconds that the network stack will busy poll.
> +During this time period,
> +the network device will be polled repeatedly for packets.
> +This value cannot exceed
> +.B INT_MAX.

=2EBR INT_MAX .

> +.in
> +.P
> +.I argp.busy_poll_budget
> +the maximum number of packets that the network stack will retrieve
> +on each poll attempt.
> +This value cannot exceed
> +.B NAPI_POLL_WEIGHT
> +(which is 64 as of Linux 6.9), unless the process is run with
> +.B CAP_NET_ADMIN.

=2EBR CAP_NET_ADMIN .

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
> +.B INT_MAX .

s/B/BR/

Mnemonics are:
B is for Bold, and BR is for alternating Bold and Roman.

> +.TP
> +.B EINVAL
> +.I argp.prefer_busy_poll
> +is not 0 or 1.
> +.TP
> +.B EPERM
> +The process is being run without
> +.I CAP_NET_ADMIN

s/.I/.B/

We use B for constants or type names, and I for variable names or code.

> +and the specified
> +.I argp.busy_poll_budget
> +exceeds
> +.B NAPI_POLL_WEIGHT.

=2EBR NAPI_POLL_WEIGHT .

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
> +fprintf(stderr, "epoll usecs: %lu\[rs]n", params.busy_poll_usecs);
> +fprintf(stderr, "epoll packet budget: %u\[rs]n", params.busy_poll_budget=
);
> +fprintf(stderr, "epoll prefer busy poll: %u\[rs]n", params.prefer_busy_p=
oll);
> +\&
> +.SH History

You read my mind.  :)

While I have plans to use sentence case in section names (thus, History
instead of HISTORY), that's still just a plan.  For now, please use
upper case.

Also, HISTORY goes before EXAMPLES.  You can check the order of the
sections in man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Sections within a manual page/,+29=
p'
   Sections within a manual page
     The  list  below  shows  conventional or suggested sections.  Most
     manual pages should include at  least  the  highlighted  sections.
     Arrange a new manual page so that sections are placed in the order
     shown in the list.

            NAME
            LIBRARY          [Normally only in Sections 2, 3]
            SYNOPSIS
            CONFIGURATION    [Normally only in Section 4]
            DESCRIPTION
            OPTIONS          [Normally only in Sections 1, 8]
            EXIT STATUS      [Normally only in Sections 1, 8]
            RETURN VALUE     [Normally only in Sections 2, 3]
            ERRORS           [Typically only in Sections 2, 3]
            ENVIRONMENT
            FILES
            ATTRIBUTES       [Normally only in Sections 2, 3]
            VERSIONS         [Normally only in Sections 2, 3]
            STANDARDS
            HISTORY
            NOTES
            CAVEATS
            BUGS
            EXAMPLES
            AUTHORS          [Discouraged]
            REPORTING BUGS   [Not used in man=E2=80=90pages]
            COPYRIGHT        [Not used in man=E2=80=90pages]
            SEE ALSO

Please also add a STANDARDS section, which just says "Linux."

Regarding semantic newlines, it looks great.  Thanks!

Have a lovely night!
Alex

> +Linux 6.9.
> +glibc 2.40.
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
>=20

--=20
<https://www.alejandro-colomar.es/>

--t7jusfvyuqnycujn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZormkACgkQnowa+77/
2zKAKA//SACR2QcwyiM6W9r3vQ8NykZV17ZnrMnoMSWsGOlQ1epOCwSgZIQqrF7s
6btrptorcEPPNLc87kMaAeSNLJFI62V50fXHP2w/1vQJZuv1YG1/w6VYkdZyX6Dt
iFsbSZV716QHTfaXwPQQRCoeg7LcSU6EhWorFxsR67cmZVe/fEwcPVJZNsZqPGm3
ZR4ZijS91CG3sB8sfD71FNNFzZXJ3R1xUEfS9gkYrAV8QvHKzkZczCf7vNiRWrUU
ffW9QdOt38OtYTDnq3XE/ws+rS1oHlgsIcPMJxj552++baiJFphLZYNzC+otyChW
diWto7fOrwNz7ibxFvS4Q0DZTksIXiVIBD1R3ZO4S7Ihu1R2YkrTOMgXbA9m2lYY
ElyLC2N0jwpLNxGHw9j9z5lY9z5FQN3IKl/rVRyDYowE4zy6jXsyEg3o1KoWLxXB
5M/+tq28H/8pPUiu+SYqm4L0JDeYf343FfQvWCNx65yhNGJXwJyGkYZQA/loST2t
cdouf5vc4iPV2mkvb0T4Kvj5x2zb4dJC4ibg2oWsP3D9zAFhEqnR2ijhBU7BxLFf
fWEcNCuhSjmpcPiz44qqL/nExxQ682bibZ+AQFtstce6ZSItL0oqn2H3s0BzsM8p
wjHF3NTOgaIHHChQqRoG+18wEInZJxrKyb3rQA4xkJWxiRfUEe4=
=Icu4
-----END PGP SIGNATURE-----

--t7jusfvyuqnycujn--

