Return-Path: <linux-man+bounces-3009-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0C1AC30E4
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 20:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A590E17AB61
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 18:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4304B1B5EB5;
	Sat, 24 May 2025 18:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SINOwlZy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001851946AA
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 18:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748109839; cv=none; b=FNePj+9e8wZ5aplAhdz1dfdtnhL2/JsKja6wGLpb4/6h/bOXEAkhCqFXXPTw6v4aTC9PuoTXq1OkYyeZ7M4ptilomLlfK6IVeekvTF/Dw8qqqhF0dzzZgLeF6qsL8bwuZstl0LdCVM8z5zXFxs7RLTHMGgdQvHuikubvOg/Z4LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748109839; c=relaxed/simple;
	bh=qB/EEJVC9zFW2K5mefBHuJCnSCnTww7yMRZ4zW3jvYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7uERWCRcye+4p5pgklZabJpkH3+e6UmiMxNAM3vggc+6y+5efl5RovdjjfHtX0geUMFVc0mF9cyQVshOJDRm0ZLeX8b8PBO8xfP6BvNGxwwYDSO14WmZLuAPksa6sb+UtFKqY1VV1hcnI7C6zpHhcWxzBzwBsoLl9NlWsRexbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SINOwlZy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0480C4CEE4;
	Sat, 24 May 2025 18:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748109838;
	bh=qB/EEJVC9zFW2K5mefBHuJCnSCnTww7yMRZ4zW3jvYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SINOwlZyau5m2j2OokqOilVozsftFKSPJ66cK9h25rNnFPxrn/PJbEYizOhf+vYKq
	 Kz598lCoHtLmM4lbgE05FgCyx35gi1k92qtCToQQ0vVPa9RJUEFLdqWnXhvALO3ACk
	 c/6fMUsHjFUj9xAADrllGi1pYujtcLaEOsBjdDyagrfnd1Z9EjHHkw/EuXTtsugVBB
	 rFphW00aiCi1RzdLGUESWkTngYLobIbUXDuMfshU7PxzEMAITtmzOBl+4U+NcbHdv2
	 2lhM5V11+oGIpqko92LiOAcsYnuNu9J+ZCjkWLDhjYeFvodXCcmoO8CcEvTsUIAMcy
	 BbBDNCBHIlDJw==
Date: Sat, 24 May 2025 20:03:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/socket.2: Mention POSIX.1-2024 added
 SOCK_NONBLOCK, SOCK_CLOEXEC, SOCK_CLOFORK.
Message-ID: <3ygqvwjlmrtuhw7ngiglmyeogxw3r7s3vmgwcmyotfayjr4mlt@xht2jd43ds67>
References: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rro4wwznc6qq2mkk"
Content-Disposition: inline
In-Reply-To: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>


--rro4wwznc6qq2mkk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/socket.2: Mention POSIX.1-2024 added
 SOCK_NONBLOCK, SOCK_CLOEXEC, SOCK_CLOFORK.
References: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <fcb9715252e3d7cf296911ba78fcc8840e971224.1747972727.git.collin.funk1@gmail.com>

Hi Collin!

On Thu, May 22, 2025 at 08:58:50PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

I've applied a similar patch already.  :)
I've pushed all of the work-in-progress POSIX.1-2024-related patches in
a branch to avoid collisions.  There you can see my work.  (Be warned
that I'll rebase that branch every now and then, and eventually remove
it when I merge it.)

> ---
>  man/man2/socket.2 | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/socket.2 b/man/man2/socket.2
> index 01b125fa0..b626ded8d 100644
> --- a/man/man2/socket.2
> +++ b/man/man2/socket.2
> @@ -422,13 +422,24 @@ .SH ERRORS
>  .SH STANDARDS
>  POSIX.1-2008.
>  .P
> -.B SOCK_NONBLOCK
> +The
> +.BR SOCK_NONBLOCK
>  and
> -.B SOCK_CLOEXEC
> -are Linux-specific.
> +.BR SOCK_CLOEXEC
> +flags are specified by POSIX.1-2024.
> +.P
> +The
> +.BR SOCK_CLOFORK
> +flag is also specified by POSIX.1-2024 but is not implemented by Linux.

About SOCK_CLOFORK, I've done this:

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git show a9d2a0=
0ed3e2
	commit a9d2a00ed3e2d4128b1d0f5a30853682cb53fe5d
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat May 17 19:26:44 2025 +0200

	    man/man2/socket.2: VERSIONS: POSIX.1-2024 specifies SOCK_CLOFORK, but =
Linux doesn't support it
	   =20
	    Fixes: 265b9898dfe2 (2025-05-09; "man/man2/: VERSIONS: POSIX.1-2024 sp=
ecifies *_CLOFORK, but Linux doesn't support it")
	    Link: <https://lore.kernel.org/all/20200515160342.GE23230@ZenIV.linux.=
org.uk/>
	    Cc: Mateusz Guzik <mjguzik@gmail.com>
	    Cc: Jeff Layton <jlayton@kernel.org>
	    Cc: Chuck Lever <chuck.lever@oracle.com>
	    Cc: <linux-fsdevel@vger.kernel.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/socket.2 b/man/man2/socket.2
	index 01b125fa0..d80508248 100644
	--- a/man/man2/socket.2
	+++ b/man/man2/socket.2
	@@ -419,6 +419,10 @@ .SH ERRORS
	 supported within this domain.
	 .P
	 Other errors may be generated by the underlying protocol modules.
	+.SH VERSIONS
	+POSIX.1-2024 specifies
	+.BR SOCK_CLOFORK ,
	+but Linux doesn't support it.
	 .SH STANDARDS
	 POSIX.1-2008.
	 .P

which results in

	$ diffman-git a9d2a00ed3e2
	--- a9d2a00ed3e2^:man/man2/socket.2
	+++ a9d2a00ed3e2:man/man2/socket.2
	@@ -196,6 +196,9 @@
	=20
	      Other errors may be generated by the underlying protocol modules.
	=20
	+VERSIONS
	+     POSIX.1=E2=80=902024 specifies SOCK_CLOFORK, but Linux doesn=E2=80=
=99t support it.
	+
	 STANDARDS
	      POSIX.1=E2=80=902008.
	=20

=20




>  .SH HISTORY
>  POSIX.1-2001, 4.4BSD.
>  .P
> +The
> +.BR SOCK_NONBLOCK
> +and
> +.BR SOCK_CLOEXEC
> +flags were originally Linux extensions.
> +.P

About SOCK_NONBLOCK and SOCK_CLOEXEC I've applied this:

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git show e78e3a=
82d85f -- man/man2/socket.2
	commit e78e3a82d85ffb3a3b076f352b5d2c7806e28c67
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Mon Apr 14 22:16:10 2025 +0200

	    man/man2/: STANDARDS: Update system calls for POSIX.1-2024
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/socket.2 b/man/man2/socket.2
	index d80508248..7c0a5c2f6 100644
	--- a/man/man2/socket.2
	+++ b/man/man2/socket.2
	@@ -424,17 +424,10 @@ .SH VERSIONS
	 .BR SOCK_CLOFORK ,
	 but Linux doesn't support it.
	 .SH STANDARDS
	-POSIX.1-2008.
	-.P
	-.B SOCK_NONBLOCK
	-and
	-.B SOCK_CLOEXEC
	-are Linux-specific.
	+POSIX.1-2024.
	 .SH HISTORY
	-POSIX.1-2001, 4.4BSD.
	+POSIX.1-2001, 4.2BSD.
	 .P
	-.BR socket ()
	-appeared in 4.2BSD.
	 It is generally portable to/from
	 non-BSD systems supporting clones of the BSD socket layer (including
	 System\ V variants).
	@@ -451,6 +444,11 @@ .SH HISTORY
	 However, already the BSD man page promises: "The protocol
	 family generally is the same as the address family", and subsequent
	 standards use AF_* everywhere.
	+.TP
	+.B SOCK_NONBLOCK
	+.TQ
	+.B SOCK_CLOEXEC
	+POSIX.1-2024.
	 .SH EXAMPLES
	 An example of the use of
	 .BR socket ()

which results in

	$ MANWIDTH=3D72 diffman-git -U4 e78e3a82d85f | grep -A34 man/man2/socket.2;
	--- e78e3a82d85f^:man/man2/socket.2
	+++ e78e3a82d85f:man/man2/socket.2
	@@ -200,25 +200,26 @@
	 VERSIONS
	      POSIX.1=E2=80=902024 specifies SOCK_CLOFORK, but Linux doesn=E2=80=
=99t support it.
	=20
	 STANDARDS
	-     POSIX.1=E2=80=902008.
	-
	-     SOCK_NONBLOCK and SOCK_CLOEXEC are Linux=E2=80=90specific.
	+     POSIX.1=E2=80=902024.
	=20
	 HISTORY
	-     POSIX.1=E2=80=902001, 4.4BSD.
	+     POSIX.1=E2=80=902001, 4.2BSD.
	=20
	-     socket() appeared in 4.2BSD.  It is generally portable to/from
	-     non=E2=80=90BSD systems supporting clones of the BSD socket layer (i=
nclud=E2=80=90
	-     ing System V variants).
	+     It is generally portable to/from non=E2=80=90BSD systems supporting =
clones
	+     of the BSD socket layer (including System V variants).
	=20
	      The manifest constants used under 4.x BSD for protocol families
	      are PF_UNIX, PF_INET, and so on, while AF_UNIX, AF_INET, and so on
	      are used for address families.  However, already the BSD man page
	      promises: "The protocol family generally is the same as the ad=E2=80=
=90
	      dress family", and subsequent standards use AF_* everywhere.
	=20
	+     SOCK_NONBLOCK
	+     SOCK_CLOEXEC
	+            POSIX.1=E2=80=902024.
	+
	 EXAMPLES
	      An example of the use of socket() is shown in getaddrinfo(3).
	=20
	 SEE ALSO


See the WIP here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dposix=
24>

Cheers,
Alex


>  .BR socket ()
>  appeared in 4.2BSD.
>  It is generally portable to/from
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--rro4wwznc6qq2mkk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgyCgsACgkQ64mZXMKQ
wql9dRAAmbTdTNNXitU5GgdEBVGH8tM74J68gazk866fcEf2tEwBQtmWObjOlM3I
Z94AASHFDZ1uI0tjuI7b34wn+7kqMvyfRHAimKpVJMFXBdrV4/xwwBl/8ZVNoB2C
6MenJoaJBqscycZ3qqH7t/pILXW5gxxAo8R3LsDpZA6ha6txHsjY51cbRMx5fRv7
DYmvww/x6NHhBpTVog/HhCethuwEIUXmg6m1ywttrQZfrf7E94FEPslkPx5IrYc2
86BcQ7a+lTQvXqi5eA6xt294QBNttuR2znCd8UF2DLUhUCUYmV3EF/3NvEVe/nxQ
qyKFUA282uDAK59EKOAxhGFQsB0KfbKDpCOvR0JoFzGNhCJSCWBC//QLgN3j9mmG
7+T6LwMQHZMjo2yl+agZqgLQq1biwZGrmyNfNnij8PlVTxc+cTc7fek+PG3AzEz6
VAXmOsCWr6jJPS7LEV6XepYW0PRgwEcBjevrpxX/mNb40LOvlmBeHQNvScJcW9lR
uQJRWgn07a21ozcP89P0NGYonNvcMQwpvZXAOiQCcQFb0m4yRhhMUOolvpM+nDUD
5XlxaH1Jw2Wvt+Lb1Y7P3KWS4gTlQGL3GsdrZgpEtLhzCC6hYZ7D8MSs0e4MGjDx
0yF/9B0tmS1ulhHuxwsbsMcl09E28HJqpV2k1M8KYZf1mutlEw4=
=BDOq
-----END PGP SIGNATURE-----

--rro4wwznc6qq2mkk--

