Return-Path: <linux-man+bounces-3339-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA778B1BEE8
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 04:56:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E9F027A80AD
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 02:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED25F1C8629;
	Wed,  6 Aug 2025 02:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="RatWuxwV"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8022194A44
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 02:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754448961; cv=none; b=sJY+pp2pIhvzingZyQP+aLRo9TLVnuGSkPT+kJ3sd4wk0c6p/8Qg23yVkAE03aBEDwAN8984bZii+37diLP7By4+n9HZwvTqWICiREk3gaI5KVvm9ay4+rd1QniLAHNb59CVVpfUkdcN6esgEhrnFEUiA/lOAPoNGhHpe/FpCAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754448961; c=relaxed/simple;
	bh=MUBsDABPKgj7s3+k91SNiHHe0Uk/4pDKDhdDVEhJ4Xk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UvOebwbDXytxQ9KH2gVJqsbfOf6pblbxNLOlX7myde6TbUkhmR4ulli4aRCB105ZXduK9UgRoTX7F/+b8J8xPNEJk7fM8TPXkuELbJVdNloES9t9BgGJYobviep2J8JZMu7+v6Lyy3gfZtUP1yb8Cmvg96n895xwgNGQGz3u3mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=RatWuxwV; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxZfz6SN4z9tC5;
	Wed,  6 Aug 2025 04:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754448955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DbBCSnLzI0ePxuCq2N5lXx93zjYmv7pxcgMLivXEt2E=;
	b=RatWuxwVTY1yAB4/kd/Jm5GklJoV4/7CeSZdkGxpcuNseYxpX+pCCujscJgoFifVuX8SEs
	70kQwBIaRTYLzh2MbXE4tzjsweDlmPuONbXYXEpQh6zrZmEAtPaEFSQYSoaA3UOkUhcx5t
	F4V1FdpBnyiMyk4YT8T714hxRUn3kSOdkGPxobbcF277pmX5W303xlKWI0aPaW/cxy+K/X
	oDQOtTLJMdbvytJEOgb/9ey+ysZyMIlNIi/Jw/m3gPaQg9sbyb6zPmQXPYbTg2ia348+iM
	Zz0zr+UvEt+6jVzc+5/Ar8RWLQD9HK3xlF8/49VlCP1xJIjac8UkdroH5UllMg==
Date: Wed, 6 Aug 2025 12:55:15 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
Message-ID: <2025-08-06.1754448771-warmer-joystick-brown-wins-proper-slack-7Nj7RV@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
 <3bzyha2suimaoub2buy3epy2awxde75tpmnsbtgbshigngbi56@pgan2jq3eic5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="seil2orgsrmkgwqu"
Content-Disposition: inline
In-Reply-To: <3bzyha2suimaoub2buy3epy2awxde75tpmnsbtgbshigngbi56@pgan2jq3eic5>


--seil2orgsrmkgwqu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
MIME-Version: 1.0

On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Wed, Aug 06, 2025 at 02:25:46AM +1000, Aleksa Sarai wrote:
> > Glibc 2.36 added syscall wrappers for the entire family of fd-based
> > mount syscalls, including mount_setattr(2). Thus it's no longer
> > necessary to instruct users to do raw syscall(2) operations.
>=20
> Thanks!
>=20
> >=20
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> > ---
> >  man/man2/mount_setattr.2 | 45 ++++++++--------------------------------=
-----
> >  1 file changed, 8 insertions(+), 37 deletions(-)
> >=20
> > diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
> > index 60d9cf9de8aa..b8ddc3e22aef 100644
> > --- a/man/man2/mount_setattr.2
> > +++ b/man/man2/mount_setattr.2
> > @@ -10,21 +10,14 @@ Standard C library
> >  .RI ( libc ,\~ \-lc )
> >  .SH SYNOPSIS
> >  .nf
> > -.BR "#include <linux/fcntl.h>" " /* Definition of " AT_* " constants *=
/"
> > -.BR "#include <linux/mount.h>" " /* Definition of " MOUNT_ATTR_* " con=
stants */"
> > -.BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constants =
*/"
> > +.B #define _GNU_SOURCE
> > +.B #include <sys/mount.h>
> >  .B #include <unistd.h>
> > +.BR "#include <fcntl.h>" "       /* Definition of " AT_* " constants *=
/"
>=20
> Please keep the include that provides the function prototype last.
>=20
> And document with a comment the rationale for including all other
> headers.

*All* of the headers? <sys/mount.h> includes both the prototype and
MOUNT_ATTR_* constants, and most other man pages only include an
explanation for some of the includes AFAICS.

> >  .P
> > -.BI "int syscall(SYS_mount_setattr, int " dirfd ", const char *" path ,
> > -.BI "            unsigned int " flags ", struct mount_attr *" attr \
> > -", size_t " size );
> > +.BI "int mount_setattr(int " dirfd ", const char *" path ", unsigned i=
nt " flags ",
> > +.BI "                  struct mount_attr *" attr ", size_t " size );
>=20
> Please use array notation if you can.  Have a look at, for example,
> strncpy(3), for how it's done in source code.

"struct mount_attr *attr" is not an array argument, it's an extensible
struct. mount_setattr(2) already has docs explaining this (in the
"Extensbility" section, as well as later in DESCRIPTION).

> >  .fi
> > -.P
> > -.IR Note :
> > -glibc provides no wrapper for
> > -.BR mount_setattr (),
> > -necessitating the use of
> > -.BR syscall (2).
> >  .SH DESCRIPTION
> >  The
> >  .BR mount_setattr ()
> > @@ -586,6 +579,7 @@ Linux 5.12.
>=20
> This hunk context is a bit useless.  Would you mind having a look at
> this?
>=20
> $ cat ./CONTRIBUTING.d/git | sed -n '/git-diff.*gitattributes/,+8p'
>    git-diff(1), gitattributes(5)
>        To produce useful hunk contexts in manual pages, we need to hack
>        git(1)'s idea of a function name, and also to tell git what is a
>        manual page.
>=20
>            $ git config --global diff.man.xfuncname '^\.S[SHsh] .*$';
>            $ mkdir -p ~/.config/git/;
>            $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attributes;
>=20
> >  .\" commit 7d6beb71da3cc033649d641e1e608713b8220290
> >  .\" commit 2a1867219c7b27f928e2545782b86daaf9ad50bd
> >  .\" commit 9caccd41541a6f7d6279928d9f971f6642c361af
> > +Glibc 2.36.
>=20
> We say 'glibc' even when it starts a sentence.  It's a name.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> >  .SH NOTES
> >  .SS ID-mapped mounts
> >  Creating an ID-mapped mount makes it possible to
> > @@ -914,37 +908,14 @@ with a structure which has every byte nonzero
> >  #include <err.h>
> >  #include <fcntl.h>
> >  #include <getopt.h>
> > -#include <linux/mount.h>
> > -#include <linux/types.h>
> > +#include <sys/mount.h>
> > +#include <sys/types.h>
> >  #include <stdbool.h>
> >  #include <stdio.h>
> >  #include <stdlib.h>
> >  #include <string.h>
> > -#include <sys/syscall.h>
> >  #include <unistd.h>
> >  \&
> > -static inline int
> > -mount_setattr(int dirfd, const char *path, unsigned int flags,
> > -              struct mount_attr *attr, size_t size)
> > -{
> > -    return syscall(SYS_mount_setattr, dirfd, path, flags,
> > -                   attr, size);
> > -}
> > -\&
> > -static inline int
> > -open_tree(int dirfd, const char *filename, unsigned int flags)
> > -{
> > -    return syscall(SYS_open_tree, dirfd, filename, flags);
> > -}
> > -\&
> > -static inline int
> > -move_mount(int from_dirfd, const char *from_path,
> > -           int to_dirfd, const char *to_path, unsigned int flags)
> > -{
> > -    return syscall(SYS_move_mount, from_dirfd, from_path,
> > -                   to_dirfd, to_path, flags);
> > -}
> > -\&
> >  static const struct option longopts[] =3D {
> >      {"map\-mount",       required_argument,  NULL,  \[aq]a\[aq]},
> >      {"recursive",       no_argument,        NULL,  \[aq]b\[aq]},
> >=20
> > --=20
> > 2.50.1
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--seil2orgsrmkgwqu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJLEEwAKCRAol/rSt+lE
bxSiAQDYjh+moK4kWmdRO2aYvL0DUsRiiHAUkZ5+HAjAyBd71QEA7UmNnCrDnTqc
tfCwwLGVIqoqCINeS+yred0vXuboxAw=
=QvNs
-----END PGP SIGNATURE-----

--seil2orgsrmkgwqu--

