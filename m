Return-Path: <linux-man+bounces-1036-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F698FF700
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 23:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A5071C21434
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 21:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6004594A;
	Thu,  6 Jun 2024 21:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLM/Dzrl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7572F2B
	for <linux-man@vger.kernel.org>; Thu,  6 Jun 2024 21:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717710410; cv=none; b=rD6m/1U26z4pUaTPiWMlp+cNBna4dqFk8DoPS8IvhWXFZTsKxpRQ2wLxW4Ntqs3HaTyi1KST/XFlGSAISKFwdkBdDbi/WdMManFm7rsz9SFoVV173M4hq66WM5JFBQ5KZVg0rA3nxxj3BCZ53+inu5bctuppvXTmlspUrlD1ONU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717710410; c=relaxed/simple;
	bh=KBd45PljumjneMEmohmosxkz7+sfb6IAQ2S3r1boWJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g7/126PNVnKPBtsZKqIN2qyxzGVkLUz2qboPfg0JwAqGTpqQSUCwIAiWyEP47gWjVE7XsXJ4cPJR1ijvGDfzeay+k8RFmO0m/TB8wV22GNkrru+aGTgFgFtzkVh+M+995/A4hGjC9sTQeOtJTSoNmjrkJGhD0CO2UdhkB2KtnVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLM/Dzrl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33D39C2BD10;
	Thu,  6 Jun 2024 21:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717710409;
	bh=KBd45PljumjneMEmohmosxkz7+sfb6IAQ2S3r1boWJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jLM/DzrlmJsL/HkuIDLyVDmbrNhlh4AZv3o5foWs3Q2cxRM/dlVyMlcnYHhAgjIYE
	 f0eJnKPlrzTDtrfcjvU+WAkefxCN7xd8mnxS6/+65gUlHGhc3YKq+Cblavt/pzUIut
	 eQJ5rwdpspyNiDGvnbKfJVldOwXiOgOMbb63tBRGFhdpNlWv+tkBwsSyC3evwvOY4j
	 yHCRxrDGIolLTLVRiWdJO19/cO1OoTVrrn1m7H1OeKanX8qOnCZaWbj7iAUuIv1+yT
	 PpebFXDvW84g7yqGfMEJkW3iG7jDMlyAqS0x6cSx13l0uNwNebrXBFK1dU8zrvOpdT
	 n/TlZydO17QSQ==
Date: Thu, 6 Jun 2024 23:46:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="64mxess3qvljjcrn"
Content-Disposition: inline
In-Reply-To: <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>


--64mxess3qvljjcrn
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
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
MIME-Version: 1.0
In-Reply-To: <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>

On Thu, Jun 06, 2024 at 11:40:01PM GMT, Alejandro Colomar wrote:
> Hi Joe,
>=20
> On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
>=20
> Thanks for the patch!  Please see a few comments below.

BTW, it triggers the following warning:

$ make lint build check -j24
GROTTY		.tmp/man/man2/epoll_create.2.cat
GROTTY		.tmp/man/man2/epoll_ctl.2.cat
TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/c=
atman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'

>=20
> Have a lovely night!
> Alex
>=20
> > ---
> >  man/man2/epoll_create.2 |   1 +
> >  man/man2/epoll_ctl.2    |   1 +
> >  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
> >  man/man7/epoll.7        |   1 +
> >  4 files changed, 206 insertions(+)
> >  create mode 100644 man/man2/ioctl_epoll.2
> >=20
> > diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> > index f0327e8ba..2aa1745f5 100644
> > --- a/man/man2/epoll_create.2
> > +++ b/man/man2/epoll_create.2
> > @@ -141,4 +141,5 @@ on overrun.
> >  .BR close (2),
> >  .BR epoll_ctl (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> > index 6d5bc032e..24bbe7405 100644
> > --- a/man/man2/epoll_ctl.2
> > +++ b/man/man2/epoll_ctl.2
> > @@ -425,5 +425,6 @@ flag.
> >  .SH SEE ALSO
> >  .BR epoll_create (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR poll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> > new file mode 100644
> > index 000000000..1d53f458e
> > --- /dev/null
> > +++ b/man/man2/ioctl_epoll.2
> > @@ -0,0 +1,203 @@
> > +.\" Copyright (c) 2024, Joe Damato
> > +.\" Written by Joe Damato <jdamato@fastly.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.\"
>=20
> Please use only one consecutive .\"
>=20
> > +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +ioctl_epoll \- ioctl() operations for epoll file descriptors
>=20
> Please add link pages <man2const/EPIOCSPARAMS.2const> and
> <man2const/EPIOCGPARAMS.2const>.
>=20
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ", " \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " cons=
tants and struct epoll_params */"
> > +.B "#include <sys/ioctl.h>"
> > +.P
> > +.BI "int ioctl(int " fd ", int " op ", void " *argp ");"
>=20
> The '*' should be bold; not italics.
>=20
> > +.fi
> > +.SH DESCRIPTION
> > +Various
> > +.BR ioctl (2)
> > +operations can be performed on an epoll file descriptor (created by a =
call
> > +to
> > +.BR epoll_create (2))
> > +(since Linux 6.9 and glibc 2.40) using calls of the form:
> > +.\" commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > +.P
> > +.in +4n
> > +.EX
> > +ioctl(fd, op, argp);
> > +.EE
> > +.in
> > +.P
> > +In the above,
> > +.I fd
> > +is a file descriptor referring to an epoll file descriptor obtained wi=
th a
> > +call to
> > +.BR epoll_create (2).
> > +.I op
> > +is one of the operations listed below, and
> > +.I argp
> > +is a pointer to the data structure described below.
>=20
> If argp is a pointer to a structure, then the prototype should document
> that:
>=20
> .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );
>=20
> Also, I would document the two operations separately:
>=20
> .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" arg=
p );
> .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
>=20
> This allows documenting that the 'S' one doesn't modify the argp
> (AFAICS).
>=20
> > +.\"
> > +.P
> > +All supported
> > +.I op
> > +values (described below) use an
> > +.I argp
> > +argument which is a pointer to a
> > +.I epoll_params
> > +structure, defined as:
> > +.P
> > +.in +4n
> > +.EX
> > +struct epoll_params {
> > +    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
> > +    uint16_t busy_poll_budget;  /* Maximum number of packets to retrie=
ve per poll */
> > +    uint8_t prefer_busy_poll;   /* Boolean to enable or disable prefer=
 busy poll  */
> > +

The warning is triggered here.  You should use a dummy character to
avoid the warning:

\&

> > +    /* pad the struct to a multiple of 64bits */
> > +    uint8_t __pad;              /* Must be zero */
> > +};
>=20
> You could add this type definition to the SYNOPSIS, below the function
> prototypes.
>=20
> > +.EE
> > +.in
> > +.P
> > +The
> > +.I busy_poll_usecs
> > +field denotes the number of microseconds that the network stack will b=
usy
> > +poll. During this time period, the network device will be polled
> > +repeatedly. This value cannot exceed
> > +.B INT_MAX .
> > +.in
> > +.P
> > +The
> > +.I busy_poll_budget
> > +field denotes the maximum number of packets that the network stack will
> > +be retrieved on each poll attempt. This value cannot exceed
> > +.B NAPI_POLL_WEIGHT
> > +which, as of Linux 6.9, is 64, unless the process is run with
> > +.B CAP_NET_ADMIN .
> > +.P
> > +The
> > +.I prefer_busy_poll
> > +field is a boolean field and must be either 0 (disabled) or 1 (enabled=
). If
> > +enabled, this indicates to the network stack that busy poll is the
> > +preferred method of processing network data and the network stack shou=
ld
> > +give the application the opportunity to busy poll. Without this option,
> > +very busy systems may continue to do network processing via the normal
> > +method of IRQs triggering softIRQ and NAPI.
> > +.P
> > +The supported
> > +.I op
> > +values:
> > +.TP
> > +.B EPIOCSPARAMS
> > +This operation allows the caller to specify an
> > +.I epoll_params
> > +structure to configure the operation of epoll. Refer to the structure
> > +description of the structure above to learn what configuration is
> > +supported.
> > +.TP
> > +.B EPIOCGPARAMS
> > +This operation allows the caller to retrieve the current
> > +.I epoll_params
> > +structure. This can be used to determine what the current settings are.
> > +.SH RETURN VALUE
> > +On success, 0 is returned.
> > +On failure, \-1 is returned, and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EOPNOTSUPP
> > +The kernel was not compiled with busy poll support.
> > +.TP
> > +.B ENOIOCTLCMD
>=20
> Is this a thing?
>=20
> 	$ grep -rn ENOIOCTLCMD /usr/include/
> 	$=20
>=20
> I suspect this is EINVAL in user space?  (Actually, you list the same
> exact error condition for EINVAL below.)
>=20
> > +The specified
> > +.I op
> > +is invalid.
> > +.TP
> > +.B EINVAL
> > +The
> > +.I fd
> > +specified is not an epoll file descriptor, or the
> > +.I op
> > +specified is invalid, or the
> > +.I __pad
> > +was not initialized to zero, or
> > +.I busy_poll_usecs
> > +exceeds
> > +.B INT_MAX ,
> > +or
> > +.I prefer_busy_poll
> > +is not 0 or 1.
>=20
> Please separate the different conditions for EINVAL into separate
> entries.  The ones that are related can go in the same one, but the
> unrelated ones are better split.
>=20
> > +.TP
> > +.B EPERM
> > +The process is being run without
> > +.I CAP_NET_ADMIN
>=20
> This should be bold.
>=20
> > +and the specified
> > +.I busy_poll_budget
>=20
> This should be
>=20
> .I argp.busy_poll_budget
>=20
> > +exceeds
> > +.I NAPI_POLL_WEIGHT
>=20
> This should be bold.
>=20
> > +(which is 64 as of Linux 6.9).
> > +.TP
> > +.B EFAULT
> > +.I argp
> > +does not point to a valid memory address.
> > +.SH EXAMPLES
> > +.EX
>=20
> Could you write an entire program, with a main()?
>=20
> If not, it's fine; this is better than nothing.  But we prefer having
> entire programs that users can paste and try.
>=20
> > +/* Code to set the epoll params to enable busy polling */
> > +\&
> > +int epollfd =3D epoll_create1(0);
> > +struct epoll_params params;
> > +\&
> > +if (epollfd =3D=3D \-1) {
> > +    perror("epoll_create1");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +memset(&params, 0, sizeof(struct epoll_params));
> > +\&
> > +params.busy_poll_usecs =3D 25;
> > +params.busy_poll_budget =3D 8;
> > +params.prefer_busy_poll =3D 1;
> > +\&
> > +if (ioctl(epollfd, EPIOCSPARAMS, &params) =3D=3D \-1) {
> > +    perror("ioctl");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +/* Code to show how to retrieve the current settings */
> > +\&
> > +memset(&params, 0, sizeof(struct epoll_params));
> > +\&
> > +if (ioctl(epollfd, EPIOCGPARAMS, &params) =3D=3D \-1) {
> > +    perror("ioctl");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +/* params struct now contains the current parameters */
> > +\&
> > +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> > +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> > +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_po=
ll);
> > +\&
> > +.SH History
> > +Linux 6.9.
> > +glibc 2.40.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR epoll_create (2),
> > +.BR epoll_create1 (2),
> > +.BR epoll (7)
> > +.P
> > +.I Documentation/networking/napi.rst
> > +.P
> > +and
> > +.P
> > +.I Documentation/admin-guide/sysctl/net.rst
> > +.P
> > +in the Linux kernel source tree
>=20
> We could document that as
>=20
> .I linux.git/Documentation/...
>=20
> to not have to say "in the Linux kernel source tree".
>=20
> > diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
> > index e7892922e..4ad032bdd 100644
> > --- a/man/man7/epoll.7
> > +++ b/man/man7/epoll.7
> > @@ -606,5 +606,6 @@ is present in an epoll instance.
> >  .BR epoll_create1 (2),
> >  .BR epoll_ctl (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR poll (2),
> >  .BR select (2)
> > --=20
> > 2.34.1
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--64mxess3qvljjcrn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZiLkYACgkQnowa+77/
2zL2Iw/8CDoDcXt+wMaq2NMIqbA93zof31sISKat5+Qr0smO4YPfFk7MP2FV8xxE
DmvdrzI3W6g3cWMg5VTfjozyNiDjwa0l8EWh++27eOhFC1n8nTsgsbdJFH7GAy0w
hQWkLWMUBuNHUxWD5IQwLPHqopfgoTo+8LxRAofk0N9rwZpMQZSdY78ID9RGVEIO
EnekdOeuKe9OknvWC0zbvgAUr+QBNH1lQXo62npFm2KcehDF52rTuYUHNviipZH8
31S7IPWRII/wyhByuS+BdxHtXhqicnZRB8tknQaCl1QZNHtP3blOXjawqK6M8AY2
z/QqN/z5/dIny0VRk2Y3XsRlvQlTy1TJhCglYhzACvnwYhXvDglELYbS2Vu29ifz
EUXmsA9w4kvpn+UJNGbRv5SNyrEITKLiaC5V0D7lwikIIqT5eYRZfZ0gbhSAqkgs
HKaoOG/ho5dlAKmM/vAyL/awYMVpyi36lfh5k2yFKg/k3cfrax45e3k4ACPkDWDa
SP0+Ammn4+Z7mBwZ8Mdk7uKjX4FPE6nPOAZbdzHiC6dzs39zhLS71GYqt0zg1sJY
0hXPdtflTdIvHcpMaKMfj9w+ogNR1NweAHkKXM2ZhQS59Ph8vHgyJBtQUTPzmkik
7xUvlIVU6Z/m7/lWiO/4L5ib9lmpqTKAj8yhJ+pGgJ1WgPPG5iE=
=bj/5
-----END PGP SIGNATURE-----

--64mxess3qvljjcrn--

