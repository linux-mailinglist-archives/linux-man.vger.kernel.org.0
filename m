Return-Path: <linux-man+bounces-711-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA526892E12
	for <lists+linux-man@lfdr.de>; Sun, 31 Mar 2024 00:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89A3E2826E9
	for <lists+linux-man@lfdr.de>; Sat, 30 Mar 2024 23:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D702E446AE;
	Sat, 30 Mar 2024 23:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX6cgp3H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA6D22079
	for <linux-man@vger.kernel.org>; Sat, 30 Mar 2024 23:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711841056; cv=none; b=sWGwmNNO9EkQPPNYdrfgn4Id/0Cq7bDiVfHiZxOd5EcPyzT6E/PzFSqTrg42yyjOVDvEFokHkrZv4ETyXZKaskqVO+9Pn7TP4CTtV9YvGFcRkXd0LtBHlPUnr+0VIwrM72YbKPXhOvvak1Lnxq4xo1tn85hOboflaSIhwbzcA6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711841056; c=relaxed/simple;
	bh=L//KNhYIMg05uyRNvV5/4nwfvjUnkNJYMFUO1AjIv1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jjdQPJAnJfdLu+yXI4O8z7elBrU4WtsrXlR/HBneuzYK7pnLgiUzqx65kVqadYX3ux4Zeg7APGlTjXEiUtTfBoe46qT3aDwTaF/8hj/jxGoWtxAE/mqrlDghTrPCe0VvaJ2QyXZ4qYIYxA2wIqwFiENtCFms/93/bUk/YeQt7TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX6cgp3H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F4F6C433F1;
	Sat, 30 Mar 2024 23:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711841056;
	bh=L//KNhYIMg05uyRNvV5/4nwfvjUnkNJYMFUO1AjIv1Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uX6cgp3HFU0feBKnnOyEr5UEspCGy7XonpXh3E37a9iNAWISoY6qtTTVmKkWIlVGZ
	 V3pdCUOtsDFik7RVHHqoNSk+rnzmMftXFk5l5eptEBdTWTnrYh3NVp3hI9j6qanuMn
	 40jDVvRZ1c9Wm+OMb2NucY5Gj9sh5nGRc/3qqzVeAKtfnY/iXvFdQBu+Oq97yUlqIy
	 IludndomSMWThOQal2cPunou3ANwgCpF2VcIMKZ83C4vBv5irCDjE3BLiwau+BdkSG
	 NQetSkRXQurST1Qnay3h4FdJtIVa4ZhUk0H6xXhShdxuKhZbvklGAzJNhH3jTvUOzK
	 CDAkCbevN1VJA==
Date: Sun, 31 Mar 2024 00:24:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2
Message-ID: <ZgifHQoTaDEiga0W@debian>
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
 <ZgNYTXW4qHm7fBxi@debian>
 <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>
 <ZgU0PKbECOOBaSZ7@debian>
 <CAJgzZopUR3=QbOyy=101GrBArTxBfP2GFzfJXR75gbu90Ew_aw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gNOvd1RMFGP7NilG"
Content-Disposition: inline
In-Reply-To: <CAJgzZopUR3=QbOyy=101GrBArTxBfP2GFzfJXR75gbu90Ew_aw@mail.gmail.com>


--gNOvd1RMFGP7NilG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 Mar 2024 00:24:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2

Hi Elliott,

On Fri, Mar 29, 2024 at 05:17:18PM -0700, enh wrote:
> On Thu, Mar 28, 2024 at 2:11=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Elliott,
> >
> > On Wed, Mar 27, 2024 at 05:20:18PM -0700, enh wrote:
> > > > Do you intend to send patches?  Otherwise, let me know, and I'll pr=
epare
> > > > something.
> > >
> > > i can do, but it also sounds like enough of a bikeshed that i imagine
> > > you'd only want to rewrite it again anyway :-)
> >
> > Actually, I tried to write something, and felt like you'll definitely do
> > better; I didn't like my text.  Please send a patch.  (I can do the
> > bikeshed when applying it, if you don't feel like entertaining it.)  :-}
>=20
> heh, i didn't even write mine out and had the same worry. oh well,
> i've attached something so at least we have something concrete to talk
> about!

:-)

> > > (i was actually surprised how many references to glibc 2.0 there are
> > > in various man pages, and even more amused by references to "ancient
> > > versions of glibc" being defined as "before glibc 2.0", as  if 1997
> > > isn't ancient :-) )
> >
> > You can move anything like that to HISTORY sections in any page you see
> > it.  In some cases, it might make sense to remove it, but only if it was
> > a small bug.
> >
> > Have a lovely day!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>
> > Looking for a remote C programming job at the moment.

> From e4e24a6a7ef66016edcd735f3cebc7f6583e716a Mon Sep 17 00:00:00 2001
> From: Elliott Hughes <enh@google.com>
> Date: Fri, 29 Mar 2024 17:10:26 -0700
> Subject: [PATCH] getpagesize.2/syscalls.2: modernization.
>=20
> Remove the HP-UX portability advice, since getpagesize() is a slightly
> better option than sysconf() for Linux systems.
>=20
> Explain why this function exists, and why this man page is in the wrong
> section. (The previous text tried to do both at the same, which was
> confusing.) Also explain how the vast majority of architectures that
> don't have a syscall (but do support multiple page sizes) actually work.
>=20
> Also de-emphasize the glibc 2.0 bug, since most people don't need to
> worry about compatibility with versions of glibc from 1997.
>=20
> Finally, change "not on x86" in syscalls.2 to say where there _is_ a
> syscall.
> ---
>  man2/getpagesize.2 | 47 ++++++++++------------------------------------
>  man2/syscalls.2    |  4 +++-
>  2 files changed, 13 insertions(+), 38 deletions(-)
>=20
> diff --git a/man2/getpagesize.2 b/man2/getpagesize.2
> index b82586f36..5d0006f04 100644
> --- a/man2/getpagesize.2
> +++ b/man2/getpagesize.2
> @@ -44,46 +44,19 @@ This call first appeared in 4.2BSD.
>  SVr4, 4.4BSD, SUSv2.
>  In SUSv2 the
>  .BR getpagesize ()
> -call is labeled LEGACY, and in POSIX.1-2001
> -it has been dropped;
> -HP-UX does not have this call.
> +call was labeled LEGACY, and it was removed in POSIX.1-2001.

LGTM

>  .SH NOTES
> -Portable applications should employ
> -.I sysconf(_SC_PAGESIZE)
> -instead of
> -.BR getpagesize ():
> -.P
> -.in +4n
> -.EX
> -#include <unistd.h>
> -long sz =3D sysconf(_SC_PAGESIZE);
> -.EE
> -.in
> -.P
> -(Most systems allow the synonym
> -.B _SC_PAGE_SIZE
> -for
> -.BR _SC_PAGESIZE .)
> -.P
> -Whether
> -.BR getpagesize ()
> -is present as a Linux system call depends on the architecture.
> -If it is, it returns the kernel symbol
> -.BR PAGE_SIZE ,
> -whose value depends on the architecture and machine model.
> -Generally, one uses binaries that are dependent on the architecture but =
not
> -on the machine model, in order to have a single binary
> -distribution per architecture.
> -This means that a user program
> -should not find
> +A user program should not hard-code a page size,
> +neither as a literal nor using the
>  .B PAGE_SIZE
> -at compile time from a header file,
> -but use an actual system call, at least for those architectures
> -(like sun4) where this dependency exists.
> -Here glibc 2.0 fails because its
> +macro, because some architectures support multiple page sizes.
> +.P
> +This manual page is in section 2 because Alpha, SPARC, and SPARC64
> +all have a Linux system call
>  .BR getpagesize ()
> -returns a statically derived value, and does not use a system call.
> -Things are OK in glibc 2.1.
> +though other architectures do not, and use the ELF auxiliary vector

Remember to use semantic newlines.  :)

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

> +instead. glibc 2.0 returned a constant even on architectures with mutlip=
le
> +page sizes.

I would maybe move the glibc 2.0 comment to HISTORY.  Someone interested
in these NOTES probably doesn't care about that detail, unless they care
about HISTORY.  The fact that HISTORY goes before NOTES is a bit bad for
this, but I was thinking that the new text fits well a VERSIONS section,
so we could move it before HISTORY in a new VERSIONS section.  Here's
what I'm thinking of:

VERSIONS
     A  user  program  should  not hard=E2=80=90code a page size, neither a=
s a
     literal nor using the PAGE_SIZE macro, because some architectures
     support multiple page sizes.

     This manual page is  in  section  2  because  Alpha,  SPARC,  and
     SPARC64  all  have a Linux system call getpagesize() though other
     architectures do not, and use the ELF auxiliary  vector  instead.

HISTORY
     This  call  first  appeared  in 4.2BSD.  SVr4, 4.4BSD, SUSv2.  In
     SUSv2 the getpagesize() call was labeled LEGACY, and it  was  re=E2=80=
=90
     moved in POSIX.1=E2=80=902001.

     glibc 2.0 returned a constant even on architectures with mutliple
     page sizes.

This order reinforces the sense that this function is preferred, being
documented first, and that POSIX removed it is unimportant to us, and
lower in the page.

>  .SH SEE ALSO
>  .BR mmap (2),
>  .BR sysconf (3)
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 6c2313506..69f24ef29 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -324,7 +324,9 @@ T}
>  \fBgetpeername\fP(2)	2.0	T{
>  See notes on \fBsocketcall\fP(2)
>  T}
> -\fBgetpagesize\fP(2)	2.0	Not on x86
> +\fBgetpagesize\fP(2)	2.0	T{
> +Alpha, SPARC/SPARC64 only
> +T}

LGTM

Have a lovely night!
Alex

>  \fBgetpgid\fP(2)	1.0
>  \fBgetpgrp\fP(2)	1.0
>  \fBgetpid\fP(2)	1.0
> --=20
> 2.44.0.478.gd926399ef9-goog
>=20


--=20
<https://www.alejandro-colomar.es/>

--gNOvd1RMFGP7NilG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYInxwACgkQnowa+77/
2zInIw//ZofweTb5ZPqftieAZxdVXequWTdUu3EComAox9251xtzyrCbipk380Ka
B4DU9GgapOcT2EqIQk2hx0z/KaqLVKzZ143frZuNbTJA/qjCzoXHRTP9tQao2+Zj
7Ahiyj4yfAt2YZJ+4+/4Bca+Lm72kA8sWM1GJRPa7BJj6ECKzArYY/a9u4hgyrGo
M8Vq+NQvWueLWKP4a5eV4uDtkvM664ciQe48puhoKxcSKLCzj9CzN5t7zmJd9LYM
99MFNs/ENwL7eGEV3nl5j5tIxZou94Xvsc1N5QTLw5AfpxlB+DYn6xO1MsHUgw7x
rIAH8MopI3/pRzaiVadeSlmtzRW6NzpVmYOx818ULRwXPJHqcBfl9/yRzJmZ343m
I4uCPlTyAY6TegUsQc+vf3NDJ0hMRnq59RD2nISrD6oIBLCBMDWLRWTvTad10egR
+PrMnxJefgtCJzXPLnlAPD6O6F8YHElEb+GqYqP5e+oTs5s6JKR1KqTpEREHpRaK
45hJhoblInxEa32lw3xyO6W0ld2XsLvIyZcGTRofDVxDEu7t7BSVYQeR0snBZl+x
9gD+kLLXPi7jbfxbrjpC/WYP5YDlXMAvuSj2mCTQ6XWfLxT00N1QDpT6GdUZooDo
8G2gZOLqZPHC4oXWt1lDEJ2gVrKBEsTyvoIuAHlGgnz38c9eoNQ=
=037C
-----END PGP SIGNATURE-----

--gNOvd1RMFGP7NilG--

