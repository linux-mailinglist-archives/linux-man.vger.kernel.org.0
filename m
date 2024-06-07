Return-Path: <linux-man+bounces-1041-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA3B9000CA
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 12:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9432D2878A1
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 10:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFEE215CD6E;
	Fri,  7 Jun 2024 10:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXBsZOEl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBE061FDD
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 10:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717756160; cv=none; b=ahTJCNKnkFM4zB5DHr6yXhmKVJTSc4m9wdja8kOCB/oy9xbWIKBPT26qU2EEY1qxB8F9Z7s5SalL96eQPKJ0xMn+3o25cQxgDLqbfIPMe5a5s7pV6Dbl36KHCguusBz7Cc2fGoFQaNIrOla7He/wfgnxcy3Gzp7Zw5Pli972fRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717756160; c=relaxed/simple;
	bh=Hnfzl2UNqPIi4bMLIMg0pL4jz1A7VAi368iIUAmpEC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usnoRyeuGn1wtQ1U+q4W5RnaWNp+trUcQ7AJz5tjH3rcWIVV55I1SG52eJQr0sr61/Ecc5a6BcqrAQlhfxWRNxy8+130U8Wqi0KjknTkYu6ld0ZTbr7jHM7AhxSH8SJA45q6Axil3e75fKHJzsVR1pMIP/0O9k3HoBOajOZLtiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXBsZOEl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C57C2BBFC;
	Fri,  7 Jun 2024 10:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717756160;
	bh=Hnfzl2UNqPIi4bMLIMg0pL4jz1A7VAi368iIUAmpEC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sXBsZOElloy/P4ftF6ARMx5VOk3yEDn7GoNG1ppa9ci+7UFx8jtAYwVdYaNmASpdP
	 RooXw+mHlFRh/VGFEOhDyLJpJo6GKqeynPLz5yonEEepGDGslsIytbE5fy8I2TABBH
	 epFgJjeG6ixyR1EGV7bkZiaTo8yjqFJfvaTra7yoEwtGo9Ru0Kajfjy7nWRjFUyKZ2
	 AK0TFmKyDD9L3uGydPcTRYkZ2iPzYOKw22V3UuTkIfn2OfHCNwMJX/08768uc2A6QP
	 gn5zhCs68oTvyCCea3rCbA6v4B2GV8sgUzHXF5tUYwH2PNyYxW1AdViO1N0aO2PFpi
	 EBcnIh9WZkhQw==
Date: Fri, 7 Jun 2024 12:29:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <m5lgw6ctbic2fa3i4llkotmxkdqvarf2kvtj2e4bgahqcivzim@tuobbjl66sl6>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6kql6u7oloq3k6ex"
Content-Disposition: inline
In-Reply-To: <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>


--6kql6u7oloq3k6ex
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
 <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>

Hi!

On Thu, Jun 06, 2024 at 07:06:05PM GMT, Joe Damato wrote:
> On Thu, Jun 06, 2024 at 11:39:58PM +0200, Alejandro Colomar wrote:
> > Hi Joe,
> >=20
> > On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> >=20
> > Thanks for the patch!  Please see a few comments below.
>=20
> I've included some questions below just to make sure I give you a v2
> that is much closer to correct :)

Nice :)

> > > +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> > > +.SH NAME
> > > +ioctl_epoll \- ioctl() operations for epoll file descriptors
> >=20
> > Please add link pages <man2const/EPIOCSPARAMS.2const> and
> > <man2const/EPIOCGPARAMS.2const>.
>=20
> And after adding those, I'd add those to SEE ALSO and I'd omit the
> description of them from the ioctl_epoll.2 page (because they'd have
> their own pages) ?

Nope.  The manual page would still be <ioctl_epoll.2>.  The other two
would be link pages, that is, if you `man EPIOCSPARAMS`, you'd get the
manual page ioctl_epoll(2).

See for example the manual page slist(3):

	$ head man/man3/slist.3
	.\" Copyright (c) 1993
	.\"    The Regents of the University of California.  All rights reserved.
	.\" and Copyright (c) 2020 by Alejandro Colomar <alx@kernel.org>
	.\"
	.\" SPDX-License-Identifier: BSD-3-Clause
	.\"
	.\"
	.TH SLIST 3 (date) "Linux man-pages (unreleased)"
	.SH NAME
	SLIST_EMPTY,

It has several aliases, one for each macro that it documents.  Here are
a few examples:

	$ head man/man3/SLIST_EMPTY.3
	.so man3/slist.3
	$ head man/man3/SLIST_FOREACH.3=20
	.so man3/slist.3

That .so roff(7) request is similar to a C #include, so that they're
actually the same page.  You can check in your terminal, with
`man slist` and `man SLIST_FOREACH`, which will give you the same page.

So, basically, I want you to write these:

	$ cat man/man2const/EPIOCSPARAMS.2const
	.so man2/ioctl_epoll.2
	$ cat man/man2const/EPIOCGPARAMS.2const
	.so man2/ioctl_epoll.2

Nothing else is required.

> > > +In the above,
> > > +.I fd
> > > +is a file descriptor referring to an epoll file descriptor obtained =
with a
> > > +call to
> > > +.BR epoll_create (2).
> > > +.I op
> > > +is one of the operations listed below, and
> > > +.I argp
> > > +is a pointer to the data structure described below.
> >=20
> > If argp is a pointer to a structure, then the prototype should document
> > that:
> >=20
> > .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );
> >=20
> > Also, I would document the two operations separately:
> >=20
> > .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" a=
rgp );
> > .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> >=20
> > This allows documenting that the 'S' one doesn't modify the argp
> > (AFAICS).
>=20
> Do you mean that I should omit the generic=20
>=20
>  .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );
>=20
> and instead have the above with the two ops?

Exactly.

As in for example, PR_SET_MM_START_DATA.2const.  You can have a look at
that page in the repository, because it hasn't yet been released.

I'll paste here a copy of it, since it's short:

$ MANWIDTH=3D72 man PR_SET_MM_START_DATA | cat
PR_SET_MM_START_DATA(2const)               PR_SET_MM_START_DATA(2const)

NAME
     PR_SET_MM_START_DATA,  PR_SET_MM_END_DATA  -  modify kernel memory
     map descriptor fields

LIBRARY
     Standard C library (libc, -lc)

SYNOPSIS
     #include <linux/prctl.h>  /* Definition of PR_* constants */
     #include <sys/prctl.h>

     int prctl(PR_SET_MM, PR_SET_MM_START_DATA, unsigned long addr, 0L, 0L);
     int prctl(PR_SET_MM, PR_SET_MM_END_DATA, unsigned long addr, 0L, 0L);

DESCRIPTION
     PR_SET_MM_START_DATA
            Set the address above which initialized  and  uninitialized
            (bss)  data are placed.  The corresponding memory area must
            be readable and writable, but not executable or shareable.

     PR_SET_MM_END_DATA
            Set the address below which initialized  and  uninitialized
            (bss)  data are placed.  The corresponding memory area must
            be readable and writable, but not executable or shareable.

RETURN VALUE
     On success, 0 is returned.  On error, -1 is returned, and errno is
     set to indicate the error.

ERRORS
     EINVAL
            addr is greater than TASK_SIZE (the limit on  the  size  of
            the user address space for this architecture).

     EINVAL
            The permissions of the corresponding memory area are not as
            required.

STANDARDS
     Linux.

HISTORY
     Linux 3.3.

SEE ALSO
     prctl(2)

Linux man=E2=80=90pages 6.8=E2=80=90151=E2=80=90g58... 2024=E2=80=9006=E2=
=80=9001  PR_SET_MM_START_DATA(2const)


BTW, now I realize that page is missing a reference to PR_SET_MM(2const)
in the SEE ALSO section.  I'll fix that in a moment.

> > > +.\"
> > > +.P
> > > +All supported
> > > +.I op
> > > +values (described below) use an
> > > +.I argp
> > > +argument which is a pointer to a
> > > +.I epoll_params
> > > +structure, defined as:
> > > +.P
> > > +.in +4n
> > > +.EX
> > > +struct epoll_params {
> > > +    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
> > > +    uint16_t busy_poll_budget;  /* Maximum number of packets to retr=
ieve per poll */
> > > +    uint8_t prefer_busy_poll;   /* Boolean to enable or disable pref=
er busy poll  */
> > > +
> > > +    /* pad the struct to a multiple of 64bits */
> > > +    uint8_t __pad;              /* Must be zero */
> > > +};
> >=20
> > You could add this type definition to the SYNOPSIS, below the function
> > prototypes.
>=20
> OK, I moved it.
>=20
> I'm not sure if it is formatted properly, though. I'll see if I can
> find other examples of this style to check against.

See timespec(3type) or sockaddr(3type) for examples of pages documenting
structures in the SYNOPSIS.

> > > +The specified
> > > +.I op
> > > +is invalid.
> > > +.TP
> > > +.B EINVAL
> > > +The
> > > +.I fd
> > > +specified is not an epoll file descriptor, or the
> > > +.I op
> > > +specified is invalid, or the
> > > +.I __pad
> > > +was not initialized to zero, or
> > > +.I busy_poll_usecs
> > > +exceeds
> > > +.B INT_MAX ,
> > > +or
> > > +.I prefer_busy_poll
> > > +is not 0 or 1.
> >=20
> > Please separate the different conditions for EINVAL into separate
> > entries.  The ones that are related can go in the same one, but the
> > unrelated ones are better split.
>=20
> Thanks!
>=20
> I did something like this:
>=20
> .TP
> .B EINVAL
> The
> .I fd
> specified is not an epoll file descriptor.

Please use the same exact wording as in ioctl(2), for consistency.

> .TP
> .B EINVAL
> The
> .I op
> specified is invalid.

I would remove this one, since we're documenting that the calls be done
with specific operations.  There's no 'op' variable.  The variable 'op'
error is already documented in ioctl(2).

> .TP
> .B EINVAL
> The

I would remove the above 'The'.

> .I argp.__pad
> was not initialized to zero.

Maybe remove 'initialized to', to abbreviate.  If it's not zero, it's
of course because it wasn't initialized to zero.  :)

> is that what you meant?

Yup.

> > > +(which is 64 as of Linux 6.9).
> > > +.TP
> > > +.B EFAULT
> > > +.I argp
> > > +does not point to a valid memory address.
> > > +.SH EXAMPLES
> > > +.EX
> >=20
> > Could you write an entire program, with a main()?
> >=20
> > If not, it's fine; this is better than nothing.  But we prefer having
> > entire programs that users can paste and try.
>=20
> Hmm.. I can give it a try! It's a bit tricky because to actually use
> busy polling, you need to have a program that accepts incoming
> connections and calls epoll_wait (after setting the appropriate
> values with the ioctl).
>=20
> I could write something simple that does that but it would be a bit
> long, I think.

Hmmm, please do write it, but if it's so big, please do it in a second
patch, so that we're always in time to revert that one if it's too much.
Keep the current example in the patch that adds the page.

Thank you,
and have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6kql6u7oloq3k6ex
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZi4PcACgkQnowa+77/
2zLMow//S4tnTVVUCIc2n5aUwoetk6snFU0MtK1DFJ+6eM7BAPhjm5Q344RbQR69
e8kKda5FvvzA3h52Gu55vrpCZMjbTgB5zsQZv0Q2pl5b4iPOOUMJSzxcSVxkzGtO
xL4pWt0i/7nxWcElqq+UyvIzitPLDEs+ZSR2SNlt0CWTrW3rOmuw+6L2usdDvvSj
h+s6tBP4EntkQ/3k5aZBTbj/8W37YJgbXF9WlgiaN9I+uD5nyMhjoJRejZXfR1+D
kJ/Hqur/V+D2CD1QX/7Hizh8tRbcwObnb5rDlJyfboqS34zkNA38o1V6TL4jIqrK
4+CWwCZIXr9VMKOwZ8IIzJSQaKzyKgeUwiN9IMJ/wI2CtaXPDrSON5gQiS0XOe1x
z4JltfQYzPM7j0P34PdvgvX86vN/E4ZJyQAX0fZbXvRfl/kZrut5W3468BN9CrKp
+ZT+M4fM7b3VoPCCzyBoZ89O4TgIyo8xtw2sFpDvKAHh9KgAFTaxJlZthG15F4pU
iDvasyiiWaW2ElVnlqBeBMOQq35HQHBzGlrhYvYnRGyaq+aZoNol1/Yp2ebujh2D
UAxDqwpVQuwvSAl/XVvK2ARdCNLo5QjpzrW9CkIU9TclowO9VNqo4hW5FK8oOkI2
SJGQXeQgKBVVClAqpNUKcwF8NmcTLW4DhEQPF1MClmHi32qKksg=
=bGl4
-----END PGP SIGNATURE-----

--6kql6u7oloq3k6ex--

