Return-Path: <linux-man+bounces-1143-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B87889047B6
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 01:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C93B1F23363
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13DF0155314;
	Tue, 11 Jun 2024 23:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVWxlhyO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BDF4594C
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 23:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718149098; cv=none; b=O+Y6kw/W0zXl5GyFXrVyIELjcGZhTQwOMd0dwaujARIF20kvxxFibPUbjs/9qlBaIALG3O6qii93wDduvxvFQn+bql8drh9MDXOsBxA0Tiyu0NXOkHh7LmgcG2vbwHdtZxoWRMMehpOVR4QWDlmSjvluanrc+kHqz/QB6WL+hyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718149098; c=relaxed/simple;
	bh=FaA7M5y++eYhx9u2DsPTTJNqokfWRZyWjvHJo0jcy8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QvRDKZiWJUjyBWLcBd0TCUz/2gf4gLHGfgg0wkA64u7KhHocMNvti9EHwCMwapXKqFbeUL8EcwpBUutbrK3o73cFfVJcYJv+WW3BPg6EH5gU9pENUbrNMOgNYW2XMW7L2Ol0XV8UbQ3B/1AJyaefwTtFCUaytLpVV1B3zkOAQ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVWxlhyO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADFB4C2BD10;
	Tue, 11 Jun 2024 23:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718149098;
	bh=FaA7M5y++eYhx9u2DsPTTJNqokfWRZyWjvHJo0jcy8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nVWxlhyOg0rrJmWZTOityG3+JCoxn/c951k+fZFQGQca6RrJ+RtA2Naun1qFTV1Gg
	 TKGZB/zjCY4roRTRamviFDeWud4LWgi+D+F679+P0pweC84veMCkuw8a1thnTH4kyf
	 XSdORfzEQH7R8QfS/IJMi7pSXZaQSQdwXtL460Kot9l4+8i4n7JXVoHHoVGlVQgfRj
	 MnGYXcxYDo8L9s6PJe/EL9lUI6N19MF6ghzMS3jvrtkVZBo/7+MLuwdjZYZdhYXdVu
	 m4xT8AtHDvILt1TxmKuu2NPIZa3rNg/kVa0dbmvnTJuZHML0ZW0UTq8kL1a5fXQAaU
	 ebYvNrTb7ILvw==
Date: Wed, 12 Jun 2024 01:38:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
Message-ID: <h26ptahsj5x2tmlrub24u7krsnxpme4jhrs6zkwp6g72aqeadv@ux2eu3pfzueg>
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
 <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dwhxqu6kojoqx7ty"
Content-Disposition: inline
In-Reply-To: <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>


--dwhxqu6kojoqx7ty
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
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
 <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>

Hi Joe,

On Tue, Jun 11, 2024 at 04:14:46PM GMT, Joe Damato wrote:
> On Wed, Jun 12, 2024 at 01:01:11AM +0200, Alejandro Colomar wrote:
> > On Tue, Jun 11, 2024 at 09:09:41PM GMT, Joe Damato wrote:
> > > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > >=20
> > > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > >=20
> > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > ---
> > >  man/man2/epoll_create.2           |   1 +
> > >  man/man2/epoll_ctl.2              |   1 +
> > >  man/man2/ioctl.2                  |   1 +
> > >  man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++=
++
> > >  man/man2const/EPIOCGPARAMS.2const |   1 +
> > >  man/man2const/EPIOCSPARAMS.2const |   1 +
> > >  man/man7/epoll.7                  |   1 +
> > >  7 files changed, 181 insertions(+)
> > >  create mode 100644 man/man2/ioctl_eventpoll.2
> > >  create mode 100644 man/man2const/EPIOCGPARAMS.2const
> > >  create mode 100644 man/man2const/EPIOCSPARAMS.2const

[...]

> > > +.B "#include <sys/epoll.h>"
> > > +.P
> > > +.EX
> > > +.B struct epoll_params {
> > > +.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy pol=
l */"
> > > +.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> > > +.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> > > +\&
> > > +.BR " " "/* pad the struct to a multiple of 64bits */"
> > > +.BR "  uint8_t  __pad;" "  /* Must be zero */"
> > > +.B };

I didn't notice that you had changed the indentation to 2.  There was a
misunderstanding.  I've amended it myself with what I meant:

diff --git i/man/man2/ioctl_eventpoll.2 w/man/man2/ioctl_eventpoll.2
index 64a8770e7..79931eb7e 100644
--- i/man/man2/ioctl_eventpoll.2
+++ w/man/man2/ioctl_eventpoll.2
@@ -24,12 +24,12 @@ .SH SYNOPSIS
 .P
 .EX
 .B struct epoll_params {
-.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
-.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
-.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
+.BR "    uint32_t  busy_poll_usecs;" "   /* Number of usecs to busy poll *=
/"
+.BR "    uint16_t  busy_poll_budget;" "  /* Max packets per poll */"
+.BR "    uint8_t   prefer_busy_poll;" "  /* Boolean preference  */"
 \&
-.BR " " "/* pad the struct to a multiple of 64bits */"
-.BR "  uint8_t  __pad;" "  /* Must be zero */"
+    /* pad the struct to a multiple of 64bits */
+.BR "    uint8_t   __pad;" "             /* Must be zero */"
 .B };
 .EE

Which renders as:

     struct epoll_params {
         uint32_t  busy_poll_usecs;   /* Number of usecs to busy poll */
         uint16_t  busy_poll_budget;  /* Max packets per poll */
         uint8_t   prefer_busy_poll;  /* Boolean preference  */

         /* pad the struct to a multiple of 64bits */
         uint8_t   __pad;             /* Must be zero */
     };

That is:

-  4-space indentation.
-  At a minimum, 2 spaces between member type and name.

While at it, I tried aligning the comment of __pad, and seemed slightly
better, so I did it.

Since the commit was not yet on <kernel.org>, I've ammended and force-
pushed.  Sorry for the confusion.

> > > +.P
> > > +.I argp.busy_poll_budget
> > > +the maximum number of packets that the network stack will retrieve
> >=20
> > Also, this sentence seems to be missing a 'denotes' at ^.
>=20
> I removed the "denotes" because I thought you asked me to do so in a
> previous message?
>=20
> Or maybe I removed it from this one but forgot to remove from the
> one above?

I don't remember.

> Either way adding it back here seems fine to me, sorry for my
> confusion on that.

Maybe it was my confusion.  Anyway; it's good now.

> > > +.TP
> > > +.B EFAULT
> > > +.I argp
> > > +does not point to a valid memory address.
> >=20
> > And this wording is slightly wrong.  A pointer does not point to an
> > address (unless it's a pointer to a pointer).  It _is_ an address (or
> > rather, its value is an address, but that's too pedantic).
>=20
> That's right; your wording is more clear.
>=20
> > I've applied these three edits myself, and have already applied this
> > patch.
> >=20
> > diff --git i/man/man2/ioctl_eventpoll.2 w/man/man2/ioctl_eventpoll.2
> > index 6bbbef2d5..64a8770e7 100644
> > --- i/man/man2/ioctl_eventpoll.2
> > +++ w/man/man2/ioctl_eventpoll.2
> > @@ -59,10 +59,9 @@ .SS The epoll_params structure
> >  the network device will be polled repeatedly for packets.
> >  This value cannot exceed
> >  .BR INT_MAX .
> > -.in
> >  .P
> >  .I argp.busy_poll_budget
> > -the maximum number of packets that the network stack will retrieve
> > +denotes the maximum number of packets that the network stack will retr=
ieve
> >  on each poll attempt.
> >  This value cannot exceed
> >  .B NAPI_POLL_WEIGHT
> > @@ -119,7 +118,7 @@ .SH ERRORS
> >  .TP
> >  .B EFAULT
> >  .I argp
> > -does not point to a valid memory address.
> > +is an invalid address.
> >  .SH STANDARDS
> >  Linux.
> >  .SH HISTORY
>=20
> These changes look good to me, thank you for applying them.
>=20
> >=20
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3De756cd6c0ae9f8121179e3e94201e729e013f5fb>
> > I'll push it tomorrow to <kernel.org>.
>=20
> Cool !!
>=20
> > Thanks for this manual page!  :-)
>=20
> Thanks for your patience on this one and sorry for the numerous
> revisions you had to sort through.

You're welcome; and no need to be sorry.  :-)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dwhxqu6kojoqx7ty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZo3+cACgkQnowa+77/
2zJkxw/9GMRdCo09+1pMzW0JKEVKvCxU4VhdfAaDAaek1qB2bHomQesPrsG6J+jI
OMj6MUbgaIrR+USYn9uXm/SBt7TiWdJHHhlBU8zmfOhFnkitqb4IQ2GRaE1Fe6Rx
ZM50OY8VEChNSFX1xWzRceCn1tXBbuvMiasES8nRItdZ9ig1wfFSbFDub4q3LXLh
3QDe6BssxxlogVFsojfa+iSlNV2g6OV+HhnK0OvKXIBmZnH45zgQ9E2hJctYdhNk
3Z8B3vz6J4hdESrYZ2qEbV97W6HCJHotI06eQcRSbQPVZN8bX2hwFLf7dxPNb0Sa
4QkvTVnx60qI/FaqFFPUSjBTFDlK74//Q+GIcer3wTNZ6K3ujzXWjYfH4OQ7vBr3
SuZ64b1bpw7wrBXQOCjETf5uEHYfcHbO3ryos6fTxLV6UtjeU6ZMbZ7fGML1/FVn
t25MgGdSUiD5auXn8T4SiMwOFiJ+7PJXCOk+pn+ugtbzpB7lKvA8MRw3iA3feDmx
4KWQEoS+BKTvG7Bn/fcG5j9icCjzARCeNR/BB1nE8KnxphUznqHbhn7Tn9aA0PFZ
vVYqXP8B0CdjcoKE6Dmhj3k7JSuwqIIHn/jCY/5WlVPfVJ2YG3fLSW12UAWoESgK
z24BkbpMscDZhMU4XHisMORkRhOWnKUUxHMvJzaCSsbuBgXWyiU=
=evwC
-----END PGP SIGNATURE-----

--dwhxqu6kojoqx7ty--

