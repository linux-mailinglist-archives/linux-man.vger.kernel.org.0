Return-Path: <linux-man+bounces-1075-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B96A903764
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 11:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF7DDB2FF48
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 08:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07210176256;
	Tue, 11 Jun 2024 08:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP5naMWC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC09917556B
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 08:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096070; cv=none; b=UZ3tT6aWZ9bFJMhMfCSA3cNAZnWKrx0+/FgeMXwrZy3z4V5aIYhk48ZMlE3hRZ1PneIKbJlIjnNY+zWF99m79u2TFtjlEErxs+zC4yjv6OUgDmabRJD4UKsOB/BtbiFozv6ZavPo1B7+evof52a2+Lbj9jvszVsWEhsQ0oarEfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096070; c=relaxed/simple;
	bh=Pq5YpsUaflX9vUn877LPmKLA06OsfdEwB7AXWmD/kJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CsYYtqp7Jb4zFDeqRLrijU6t/c8AviXkTxfwghSqPQLIxr9S004i/ACg4HdDeZG+IZrP0PoyVjL4gplETNr+6qXtKCZWMvxYNx9kynj08aqwJeU3uCOg7OsakXpZoGa4DPVHIcBAKmCPeRHjw+cM6ETHNKbjy3jgVqJpACkVjVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP5naMWC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE7DC2BD10;
	Tue, 11 Jun 2024 08:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718096070;
	bh=Pq5YpsUaflX9vUn877LPmKLA06OsfdEwB7AXWmD/kJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lP5naMWCxmybgOBmdl31iBwXx0D0iThDhr9gOpmXcSjpLV7CtigjJYLOIP2fWqyKX
	 L4WmNkyhDzB8YbO1fbgUsA2OYOFGAodY82Uh7ZH1m5PPAikR0LjngA9KbFjrXgqzEy
	 TBzxZy5Pv/2Kx0xRlsGkkA2Z/TOhNEBRAxJd37DlczkZADdnnCAenuKL+iSiaBe2//
	 KvxLrKPEpwdJamRQJjNma1XfJdlUKMGFRTGePSnHiPKI8otvJTjwrSpH7JInpdP35S
	 iYInyqYg1i6C/JNyaZyCRcam+TuejTH9ly3dMQQf0DReSFrjVk/yxHK1aS1k2tfgEv
	 zZQCLUz4h8qoQ==
Date: Tue, 11 Jun 2024 10:54:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q3uhm5kuycqhjley"
Content-Disposition: inline
In-Reply-To: <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>


--q3uhm5kuycqhjley
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>

Hi Joe,

On Mon, Jun 10, 2024 at 05:29:06PM GMT, Joe Damato wrote:
> On Tue, Jun 11, 2024 at 01:45:57AM +0200, Alejandro Colomar wrote:
> > Hi Joe,
> >=20
> > On Mon, Jun 10, 2024 at 11:12:06PM GMT, Joe Damato wrote:
> > > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > >=20
> > > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > >=20
> > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> >=20
> > Thanks!
>=20
> Thanks again for your careful review. Sorry this wasn't the winning
> revision :)

No problem.  Sorry for being so pedantic.  (Not sorry, actually.)  :-)
And thanks for your patience on my review.

[...]

> > > +.B "#include <sys/ioctl.h>"
> > > +.P
> > > +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *=
" argp );
> > > +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp=
 );
> >=20
> > To document the header that provides this structure, let's add here:
> >=20
> > .P
> > .B #include <linux/eventpoll.h>
>=20
> Hmm, that's the linux sources header file, I think.
>=20
> Should I be showing the glibc header instead?
>=20
> https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/unix/sysv/=
linux/sys/epoll.h;h=3D45e546fa4440a83bb94288c220bfbe9295f02cc9;hb=3D92c270d=
32caf3f8d5a02b8e46c7ec5d9d0315158#l91

Ahh, sure, and for the constants too.  We prefer glibc headers when
available.  I had the inertia that most ioctl(2)s do not have glibc
headers.

> Which would be:
>=20
> .B #include <sys/epoll.h>
>=20
> It's in the same header as epoll_create(2) and
> epoll_create1(2).
>=20
> Let me know what you think.

Like.

[...]

> > > +description below to learn what configuration is
> > > +supported.
> > > +.TP
> > > +.B EPIOCGPARAMS
> > > +Get the current
> > > +.I epoll_params
> > > +configuration settings.
> > > +.TP
>=20
> I think this .TP should be a .P, not a .TP. It looks better as a .P,
> at least :)
>=20
> Let me know what you think.

Yup.

BTW, here's the mnemonics:

P	paragraph
TP	tagged paragraph
IP	indented paragraph

[...]

> > > +.BR epoll_create (2)
> > > +or
> > > +.BR epoll_create1 (2).
> > > +.\" kernel commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> >=20
> > Let's reformat these:
> >=20
> > .\" linux.git 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > .\" glibc.git 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> >=20
> > (maybe say linux.git commit 1234...?  What do you prefer?)
>=20
> I've made them:
>=20
> .\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> .\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158

Good.  I'll start using that format everywhere.

> > > +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > > +.P
> >=20
> > I would use a subsection (.SS) for documenting the structure.
>=20
> Sure, I can do that.
>=20
> .SS
> The epoll_params structure
> .I argp.busy_poll_usecs
>=20
> Is that OK for a heading?
>=20
> I saw this is how man/man2/stat.2 does the subsection.
>=20
> Let me know what you think.

Yep.  Except that the title goes on the SS line:

$ grep '\.SS' man/man2/stat.2=20
=2ESS The stat structure
=2ESS fstatat()
=2ESS C library/kernel differences

[...]

> > > +retrieve on each poll attempt. This value cannot exceed
> > > +.B NAPI_POLL_WEIGHT
> > > +which, as of Linux 6.9, is 64, unless the process is run with
> > > +.B CAP_NET_ADMIN.
> >=20
> > This seems a bit ambiguous: 'unless the process is run with
> > CAP_NET_ADMIN' could refer to 'cannot exceed' or 'is 64'.  Using
> > parentheses instead of commas, it would be unambiguous.
>=20
> Changed this to:
>=20
> retrieve on each poll attempt. This value cannot exceed
> .B NAPI_POLL_WEIGHT
> (which is 64 as of Linux 6.9), unless the process is run with
> .B CAP_NET_ADMIN.
>=20
> How is that?

Much better.  (But still needs to use semantic newlines.)

[...]

> > > +.SH RETURN VALUE
> > > +On success, 0 is returned.
> > > +On failure, \-1 is returned, and
> > > +.I errno
> > > +is set to indicate the error.
> > > +.SH ERRORS
> > > +.TP
> > > +.B EOPNOTSUPP
> > > +The kernel was not compiled with busy poll support.
>=20
> This line here has a weird indentation compared to the rest of the
> errors when rendered.
>=20
> Maybe I am doing something wrong with this one?

Nope; it's all right.  When the tag of the tagged paragraph is larger
than the indentation, the paragraph is moved to the next line, so that
it starts with the same indentation.

[...]

> > > +.TP
> > > +.B EFAULT
> > > +.I argp
> > > +does not point to a valid memory address.
> > > +.SH EXAMPLES
> > > +.EX
> > > +/* Code to set the epoll params to enable busy polling */
> > > +\&
> > > +int epollfd =3D epoll_create1(0);
> > > +struct epoll_params params;
> > > +\&
> > > +if (epollfd =3D=3D \-1) {
> > > +    perror("epoll_create1");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +memset(&params, 0, sizeof(struct epoll_params));
> > > +\&
> > > +params.busy_poll_usecs =3D 25;
> > > +params.busy_poll_budget =3D 8;
> > > +params.prefer_busy_poll =3D 1;
> > > +\&
> > > +if (ioctl(epollfd, EPIOCSPARAMS, &params) =3D=3D \-1) {
> > > +    perror("ioctl");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +/* Code to show how to retrieve the current settings */
> > > +\&
> > > +memset(&params, 0, sizeof(struct epoll_params));
> > > +\&
> > > +if (ioctl(epollfd, EPIOCGPARAMS, &params) =3D=3D \-1) {
> > > +    perror("ioctl");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +/* params struct now contains the current parameters */
> > > +\&
> > > +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> >=20
> > We use '\e', not '\\'.  (I haven't checked whether it also works, and
> > don't remember.)
>=20
> Change this to '\e' and tested it. It looks like it works to me :)

Hmm, yep, both work the same.  I remember there's a small difference in
meaning, but I don't know why we use \e.  Anyway.

$ cat esc.man=20
=2ETH a s d f
=2ESH example
=2EEX
a\\b\ec
=2EEE
$ groff -man -Tutf8 esc.man -rLL=3D72n
a(s)                                                                a(s)

example
     a\b\c

f                                   d                               a(s)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--q3uhm5kuycqhjley
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoEL0ACgkQnowa+77/
2zIPdg//Vo5uMd26axdKcJ+UNZZdbdySh05LQAdq8CGNFrIAE9CmJMkZNFClnmCM
cga+hlLgPY8MByS1su0Fhe/tPIcBjjCqmO4xFQsUXbJaqjR7R4ecLL2uJrg997uR
WOO9Y8+oziXDd92vqsRkDw4AbJG0jWItPp3Lgh2yyZuoqDH3cbRevz4TAC2DEQ28
bfXR4G6yC09RW9eAU4Ro8HjjAsWSUjPSgjM2yxbfdpijbM8opPlICKzjf+4oHVFF
ZvNwySPXqkbCRTYMpIMkI0PG9u3D1sdcXkX/Gs1B+VV4H6YCpdkEYOOqkM/ZMBaG
BbMUDf92VkAjU2nnYkG9qU08i7glONdhYVXm7F9I6m+shj6aKlEOhCjkHVIqq6Js
Z7sbYW0ZGRXiXMQ7RwfunCOzgM3mWw+aQHeqnJk9QroWIBFIb6TrDUWwhui5lguS
PTf9VbjLvODi+yJXCSTOK8hXHtQHoqOyrIq0Ee/1ve2xykMEbq8y8RLMVMJn/9ez
QvNjIVGhk5sn4Pz7gbqZ8LrDDRNJCwHITnAhol7tuKBtVQq9BoGDDuRdMk9LGvLt
M90DB/C22f6mwVMVihXT28RW8ChQBepPUF2jzh9RuUj4nCvRIZxkMVh2COuPgG2z
eL7J0SvvFoxXNTGcBNjshwhBhHnawzICRNZrPiOJ49EdTXdGOvo=
=0Lw/
-----END PGP SIGNATURE-----

--q3uhm5kuycqhjley--

