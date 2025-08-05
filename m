Return-Path: <linux-man+bounces-3331-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98040B1B8D2
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B44E1893626
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA5421A928;
	Tue,  5 Aug 2025 16:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWtaaKTi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195A91DD525
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754412884; cv=none; b=t1FIdNoQlg9zY+ukdpL5rsFjBRgBfsa7RTGOviXkQyxzTth1nPwvsKEV04j8HIyEYdlIUD5bqg2GDtoNm1QeHEKluL8Qr6Cys0HtdIC+T1IiZ2xmognLq3rE94kywmpoo4X/f0dGpPt9TLqtbxMGv4GIcOJz5dPXebP7RsUN/n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754412884; c=relaxed/simple;
	bh=5iryrhveG0V0TPmFdbEb2DoNUgZGYP8J8hqm3mOVCFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mfd8V5VrLSNdmpO3qOP2k2lodIsrc6CIwSnfkp+s7I/P11qYsX/KofscOlyuc3AhcDG3W1WWq9C9//erPTMqQI7o52SEXm704lkOJrKwshB91uwDLDENpKTFBXHGFJsaLLVS8dMpcRn4CR/OuPXuKIvk2JEU4yBjxZQt9iBp7DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWtaaKTi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 732F2C4CEF6;
	Tue,  5 Aug 2025 16:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754412883;
	bh=5iryrhveG0V0TPmFdbEb2DoNUgZGYP8J8hqm3mOVCFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NWtaaKTiius+uLCbqlM6hHr6VSYeIY701gz3kLOnzjWbLI4TwJcA5XnbSS9/tOK/I
	 MpUUtiTJbp0YfBcmzhCf6dgOaiYcVEUo3qJw9iSkVRVHMVPV/1+LR+xuTRaoRK+Z+v
	 iO9ugY6cvG7ShqVw7l5rO5juHMTiBStpWdpqsGpb/Rl1PcJMIbxfXqId/AKUryDi1Y
	 LEV/GlpB7D2s5DG5hfms/kStzqjx3TVe3THH6luzZTUIrNvXmPRKaK7Ip1c3WV0x3B
	 OrClmtutRTW6j5lsNj50pbbtyTruvC6asviLGuGXOVUGaDVGYCny4a1bny8cxfzM4Q
	 lS+xTJVo/HRKw==
Date: Tue, 5 Aug 2025 18:54:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
Message-ID: <3bzyha2suimaoub2buy3epy2awxde75tpmnsbtgbshigngbi56@pgan2jq3eic5>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jngfdnm3ggj4enag"
Content-Disposition: inline
In-Reply-To: <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>


--jngfdnm3ggj4enag
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 02:25:46AM +1000, Aleksa Sarai wrote:
> Glibc 2.36 added syscall wrappers for the entire family of fd-based
> mount syscalls, including mount_setattr(2). Thus it's no longer
> necessary to instruct users to do raw syscall(2) operations.

Thanks!

>=20
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>  man/man2/mount_setattr.2 | 45 ++++++++----------------------------------=
---
>  1 file changed, 8 insertions(+), 37 deletions(-)
>=20
> diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
> index 60d9cf9de8aa..b8ddc3e22aef 100644
> --- a/man/man2/mount_setattr.2
> +++ b/man/man2/mount_setattr.2
> @@ -10,21 +10,14 @@ Standard C library
>  .RI ( libc ,\~ \-lc )
>  .SH SYNOPSIS
>  .nf
> -.BR "#include <linux/fcntl.h>" " /* Definition of " AT_* " constants */"
> -.BR "#include <linux/mount.h>" " /* Definition of " MOUNT_ATTR_* " const=
ants */"
> -.BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constants */"
> +.B #define _GNU_SOURCE
> +.B #include <sys/mount.h>
>  .B #include <unistd.h>
> +.BR "#include <fcntl.h>" "       /* Definition of " AT_* " constants */"

Please keep the include that provides the function prototype last.

And document with a comment the rationale for including all other
headers.

>  .P
> -.BI "int syscall(SYS_mount_setattr, int " dirfd ", const char *" path ,
> -.BI "            unsigned int " flags ", struct mount_attr *" attr \
> -", size_t " size );
> +.BI "int mount_setattr(int " dirfd ", const char *" path ", unsigned int=
 " flags ",
> +.BI "                  struct mount_attr *" attr ", size_t " size );

Please use array notation if you can.  Have a look at, for example,
strncpy(3), for how it's done in source code.

>  .fi
> -.P
> -.IR Note :
> -glibc provides no wrapper for
> -.BR mount_setattr (),
> -necessitating the use of
> -.BR syscall (2).
>  .SH DESCRIPTION
>  The
>  .BR mount_setattr ()
> @@ -586,6 +579,7 @@ Linux 5.12.

This hunk context is a bit useless.  Would you mind having a look at
this?

$ cat ./CONTRIBUTING.d/git | sed -n '/git-diff.*gitattributes/,+8p'
   git-diff(1), gitattributes(5)
       To produce useful hunk contexts in manual pages, we need to hack
       git(1)'s idea of a function name, and also to tell git what is a
       manual page.

           $ git config --global diff.man.xfuncname '^\.S[SHsh] .*$';
           $ mkdir -p ~/.config/git/;
           $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attributes;

>  .\" commit 7d6beb71da3cc033649d641e1e608713b8220290
>  .\" commit 2a1867219c7b27f928e2545782b86daaf9ad50bd
>  .\" commit 9caccd41541a6f7d6279928d9f971f6642c361af
> +Glibc 2.36.

We say 'glibc' even when it starts a sentence.  It's a name.


Have a lovely day!
Alex

>  .SH NOTES
>  .SS ID-mapped mounts
>  Creating an ID-mapped mount makes it possible to
> @@ -914,37 +908,14 @@ with a structure which has every byte nonzero
>  #include <err.h>
>  #include <fcntl.h>
>  #include <getopt.h>
> -#include <linux/mount.h>
> -#include <linux/types.h>
> +#include <sys/mount.h>
> +#include <sys/types.h>
>  #include <stdbool.h>
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <string.h>
> -#include <sys/syscall.h>
>  #include <unistd.h>
>  \&
> -static inline int
> -mount_setattr(int dirfd, const char *path, unsigned int flags,
> -              struct mount_attr *attr, size_t size)
> -{
> -    return syscall(SYS_mount_setattr, dirfd, path, flags,
> -                   attr, size);
> -}
> -\&
> -static inline int
> -open_tree(int dirfd, const char *filename, unsigned int flags)
> -{
> -    return syscall(SYS_open_tree, dirfd, filename, flags);
> -}
> -\&
> -static inline int
> -move_mount(int from_dirfd, const char *from_path,
> -           int to_dirfd, const char *to_path, unsigned int flags)
> -{
> -    return syscall(SYS_move_mount, from_dirfd, from_path,
> -                   to_dirfd, to_path, flags);
> -}
> -\&
>  static const struct option longopts[] =3D {
>      {"map\-mount",       required_argument,  NULL,  \[aq]a\[aq]},
>      {"recursive",       no_argument,        NULL,  \[aq]b\[aq]},
>=20
> --=20
> 2.50.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--jngfdnm3ggj4enag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiSN0UACgkQ64mZXMKQ
wqk1fBAAtaUtHPfOpb0ASBt0NrHMsh4G8vRWmncih5Fza8XliCXCdGhdbEjtVdA2
W1GtEBiE51X1rKIaxAff2Prs6DutA5KaQxoA3X0NGkTnuidojyDo97ugs8OiMlwX
vsVOi0Xu9GSpteKmZFoooo4imRqh3AnXGr6vUAnWeb7b0AJ1ryisLHf7m9OC9z5l
pchuTiXvN3a2MgA6ExNrOJuKSSQfBYkZVxoyROkx9k8gbYcYrBeuuzTX3x0ZSazb
KouG8NTLcBLMBD5CHuTzI8f6Qr/SSHuJ72UAzFJVfg0Z6gVlJUkvyp666IOEr3z7
pzMVeU2Rk16Zg+lVk/3DUU18gOLGKmOah/j3P7Kl+y2CVGkR3lETrxgTMAgvOhdh
tuqVnCujhqh6tmIZry/tR4PWtkWHbutCMtxXlg8MVbeAxwXOJdxvyfLU2YX+h2Fz
M0mfxUz5z0BScBo0UQ0gCx15V+L+dYbjdDFabwM5jx52VsTXr/k5XEkjh8J3J53s
QcteugxN7iv47SxkzY2S0AJ2tS3dCuUbVgdh7BY8R8D8KqpW/XfbnCqGCdaxxWl1
znuYWa/56JIzuwGgAEriJyED2Pl6t1LK+mMOmomZWXRbHPKT8uGHGv98db/tauCr
RDsyZzoahfSh32qguJfVtVbA6zRGrt7sA7OmOGMAXmSoAK+w5l4=
=aYtI
-----END PGP SIGNATURE-----

--jngfdnm3ggj4enag--

