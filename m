Return-Path: <linux-man+bounces-479-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C9862A5E
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 13:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F40B1C209C8
	for <lists+linux-man@lfdr.de>; Sun, 25 Feb 2024 12:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9ADB10949;
	Sun, 25 Feb 2024 12:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBbtpny9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA324EED5
	for <linux-man@vger.kernel.org>; Sun, 25 Feb 2024 12:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708865565; cv=none; b=UFFyIAlOzjXVEfkePNNcN09BBf3s4x75eqIeDuxZWbp45rXCKbZszP04O93NadvsrLgdt5F+jjR/nE5X/LXoHpq9XLgdeukGpMbSveXcJEhtfTeZeTD2WqnvzHg/Qoc2pdW53PZAgzgMQFuxZTOT0S7mA/CUerVPLkNoVCTGLpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708865565; c=relaxed/simple;
	bh=I+Wjx+jMEqxElDH6ablWNL68rRuT2RrmFp9PgCOivDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TxvfuCP5NzKbMgnbcGT0YEWA4EbWCrHIxS0LBPnPblzVWmpPs4t6bGlJz993SwSSUaDS0XqRbyEDJLvAqmgnMpuJKrVbYF+80+H69Xd0toKzYPFzuWwr9/D9bz0Vuy37aLNW6AM3A0ghCSPtLr87fAsxSkC9VG+wjU35woNXVWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBbtpny9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A67CFC433C7;
	Sun, 25 Feb 2024 12:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708865565;
	bh=I+Wjx+jMEqxElDH6ablWNL68rRuT2RrmFp9PgCOivDI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EBbtpny9pMhRQlg+pmdseN9V2dY19+8KostnmaN/I15/WJDbfcFey4meTDHVIUNBf
	 Lm8Z+c5PBANU4TRyCrgedUU71ixWyNyRobIoiMpifkcsT1mn8XjcVQ8CYV1E857nGx
	 wYbFDI6aSYhGKQASp7GiPFMUhV+xc5NTnQjdw37NHwoQjzxgS42UhCi6WT1/yOE/A4
	 mxeRgUf2DUqwtE+kNXYvkmhF/EcCCFNnnzJ2DaSYARh0AOofQ3B7te4MxFMhdn9UYB
	 NKc0vz8IP9zff9eDzqjHBl4qyOprmGAGEi8+Zzsh5Waf1MT9aPiqmJbtsHWAIkGiMS
	 Q6F2fwR12c/1A==
Date: Sun, 25 Feb 2024 13:52:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: linux-man@vger.kernel.org, dutyrok@altlinux.org, kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v2] delete_module.2: Update man to current syscall
 behaviour
Message-ID: <Zds4GcQ98cZWwLy6@debian>
References: <20240221094852.14994-1-oficerovas@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QQVQM9Lse/KkA9B5"
Content-Disposition: inline
In-Reply-To: <20240221094852.14994-1-oficerovas@altlinux.org>


--QQVQM9Lse/KkA9B5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 25 Feb 2024 13:52:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: linux-man@vger.kernel.org, dutyrok@altlinux.org, kovalev@altlinux.org,
	"Dmitry V. Levin" <ldv@altlinux.org>,
	"G. Branden Robinson" <branden@debian.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v2] delete_module.2: Update man to current syscall
 behaviour

Hi Alexander,

On Wed, Feb 21, 2024 at 12:48:52PM +0300, Alexander Ofitserov wrote:
> Parameter O_NONBLOCK described in man doesn't exist anymore
> in kernel versions 3.13+ (particularly in commit
> 3f2b9c9cdf389e303b2273679af08aab5f153517 aka v3.13-rc1~83^2~5),
> which is quite old, only O_TRUNC parameter present for current kernel ver=
sion,
> O_NONBLOCK does nothing.
>=20
> v1 -> v2:

Please add to the commit message tags to CC those who participated in
the discussion of the patch, including previous revisions.

Cc: "Dmitry V. Levin" <ldv@altlinux.org>
Cc: "G. Branden Robinson" <branden@debian.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Cc: dutyrok@altlinux.org
Cc: kovalev@altlinux.org

(You may or may not include me, since I'll sign the patch anyway.)

> added behaviour of syscall for kernel 3.12 and earlier
> in history section
> added commit hash to commit message
> changed word 'actual' to 'current' due to ambigious
> meaning
> ---
>  man2/delete_module.2 | 95 +++++++++++++++++++++++++-------------------
>  1 file changed, 55 insertions(+), 40 deletions(-)
>=20
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index e9c432e84..d6e7a4bdb 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -50,42 +50,20 @@ is zero, then the module is immediately unloaded.
>  If a module has a nonzero reference count,
>  then the behavior depends on the bits set in
>  .IR flags .
> -In normal usage (see NOTES), the
> -.B O_NONBLOCK
> -flag is always specified, and the
> +The
>  .B O_TRUNC
>  flag may additionally be specified.
>  .\"  	O_TRUNC =3D=3D KMOD_REMOVE_FORCE in kmod library
> -.\"  	O_NONBLOCK =3D=3D KMOD_REMOVE_NOWAIT in kmod library
>  .IP
>  The various combinations for
>  .I flags
>  have the following effect:
>  .RS
>  .TP
> -.B flags =3D=3D O_NONBLOCK
> -The call returns immediately, with an error.
> -.TP
> -.B flags =3D=3D (O_NONBLOCK | O_TRUNC)
> +.B flags =3D=3D O_TRUNC
>  The module is unloaded immediately,
>  regardless of whether it has a nonzero reference count.
> -.TP
> -.B (flags & O_NONBLOCK) =3D=3D 0
> -If
> -.I flags
> -does not specify
> -.BR O_NONBLOCK ,
> -the following steps occur:
>  .RS
> -.IP \[bu] 3
> -The module is marked so that no new references are permitted.
> -.IP \[bu]
> -If the module's reference count is nonzero,
> -the caller is placed in an uninterruptible sleep state
> -.RB ( TASK_UNINTERRUPTIBLE )
> -until the reference count is zero, at which point the call unblocks.
> -.IP \[bu]
> -The module is unloaded in the usual way.
>  .RE
>  .RE
>  .P
> @@ -151,11 +129,7 @@ in
>  .TP
>  .B EWOULDBLOCK
>  Other modules depend on this module;
> -or,
> -.B O_NONBLOCK
> -was specified in
> -.IR flags ,
> -but the reference count of this module is nonzero and
> +or, the reference count of this module is nonzero and
>  .B O_TRUNC
>  was not specified in
>  .IR flags .
> @@ -172,6 +146,57 @@ it is (before glibc 2.23) sufficient to
>  manually declare the interface in your code;
>  alternatively, you can invoke the system call using
>  .BR syscall (2).
> +.SS Linux 3.12 and earlier

I think it would be better to name the subsection O_NONBLOCK.

=2ESS O_NONBLOCK

> +In Linux 3.12 and earlier, the system call took two arguments:
> +.P
> +.BI "   int delete_module(const char *" name ", unsigned int " flags );

Since the current syscall still has two arguments (right?), I'd remove
the above about the arguments.

> +.P
> +Parameter
> +.I flags
> +also can contain=20
> +.B O_NONBLOCK
> +flag in addition to=20
> +.B O_TRUNC
> +flag. Behavior depends on the bits set in

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.

We always break the line after a period.  And if we didn't groff(1)
requires two spaces (the right amount, BTW :) after a period.

Have a lovely day!
Alex

> +.IR flags .
> +In normal usage (see NOTES), the
> +.B O_NONBLOCK
> +flag is always specified, and the
> +.B O_TRUNC
> +flag may additionally be specified.
> +.\"  	O_TRUNC =3D=3D KMOD_REMOVE_FORCE in kmod library
> +.\"  	O_NONBLOCK =3D=3D KMOD_REMOVE_NOWAIT in kmod library
> +.IP
> +The various combinations for
> +.I flags
> +have the following effect:
> +.RS
> +.TP
> +.B flags =3D=3D O_NONBLOCK
> +The call returns immediately, with an error.
> +.TP
> +.B flags =3D=3D (O_NONBLOCK | O_TRUNC)
> +The module is unloaded immediately,
> +regardless of whether it has a nonzero reference count.
> +.TP
> +.B (flags & O_NONBLOCK) =3D=3D 0
> +If
> +.I flags
> +does not specify
> +.BR O_NONBLOCK ,
> +the following steps occur:
> +.RS
> +.IP \[bu] 3
> +The module is marked so that no new references are permitted.
> +.IP \[bu]
> +If the module's reference count is nonzero,
> +the caller is placed in an uninterruptible sleep state
> +.RB ( TASK_UNINTERRUPTIBLE )
> +until the reference count is zero, at which point the call unblocks.
> +.IP \[bu]
> +The module is unloaded in the usual way.
> +.RE
> +.RE
>  .SS Linux 2.4 and earlier
>  In Linux 2.4 and earlier, the system call took only one argument:
>  .P
> @@ -183,19 +208,9 @@ is NULL, all unused modules marked auto-clean are re=
moved.
>  .P
>  Some further details of differences in the behavior of
>  .BR delete_module ()
> -in Linux 2.4 and earlier are
> +in Linux 3.12 and earlier are
>  .I not
>  currently explained in this manual page.
> -.SH NOTES
> -The uninterruptible sleep that may occur if
> -.B O_NONBLOCK
> -is omitted from
> -.I flags
> -is considered undesirable, because the sleeping process is left
> -in an unkillable state.
> -As at Linux 3.7, specifying
> -.B O_NONBLOCK
> -is optional, but in future kernels it is likely to become mandatory.
>  .SH SEE ALSO
>  .BR create_module (2),
>  .BR init_module (2),
> --=20
> 2.33.8
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--QQVQM9Lse/KkA9B5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXbOBIACgkQnowa+77/
2zIiNQ//aZVchzuAU/LDm+cyE7DYMNTzQWJBmLyklWYvG+6wJIoYkPGEF3i8yBZ0
7oPNrO+r6PnFQe1ZgYpd2Yp/i0+iB8GuZFsHbOKSTMQ2xT/pxc1RGba1i68VkRNd
TqvTzQd/QBmSC5uAXc84wYbC5//9e45GqQVKr/Ptx5WICJ3mxbN5wOFSmE7kcVX1
5FPJIHDKdxyA579e61XVtjdVD4F+WXQRoWtQOgi1Lg243BJbFw7t9h3+2Aag2Fhm
fi7SJp9Qx8noog7TypB7c0I2aN+mO106xBsUJ1akdePGt06m0zmvqzXQnRf704ls
jeFuncZ4ok36ClBwCQ3ZZBV7KrPuwY9DRsbY1HZYdNpQq51pUwAPRglCLHOjSvIS
JAMbyQG79SSFoNDvTRraSH8H154A5R8F2wqu134pNzjPB9x5yLFU1n6PECN6f76t
ZK5aZJget5v5rZYMK5FoSb6lZQRC24TmrPPFbjona8x8WOlz0aAQTgllbATyqcEE
T4EGGRHmEh9dkDlpj/TYT+bPW7qkj8ln0ZKV0bNSmv4MkK8SOzSgJ76Am6kgIhKe
1KsdofomVQMqt2tuBqjHHkMLeaKIykP4a/Kk4UMmtLPcIXWAGwW7MHRDdBX4ELL4
QBQEbOoliuojPdUamS2rEARlX6gvBhEoxYamjYMtvKS+j4R89q0=
=25j7
-----END PGP SIGNATURE-----

--QQVQM9Lse/KkA9B5--

