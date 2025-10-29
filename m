Return-Path: <linux-man+bounces-4220-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67506C19D2A
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05E3542719C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DD1331A74;
	Wed, 29 Oct 2025 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoRBdQVF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5632E0418
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761733689; cv=none; b=t0ax4lFIWiMIKKQ0t8AhptYMI8ED+RZmF/ck1QBa2o8xiHcMNiHvuM0gxcudMPAVBSJ2FXFdxovnzFhXKGqSiIZkxwyrZCVCiOYExOOBy55qZXq7U1gwEhnbCwTb4vWO4rm4I6R5z8AzuUtJZKFnXHCiEWfRsMXrjoNaN1utUBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761733689; c=relaxed/simple;
	bh=V1qA9DPBPddb/QMLqsxypCmj8mYMQGy/vKVCMGdae9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WNx/0F1+UtBLW2nAYBD2eL2ewjNkzJhzS9WaKyQfDGkqNwqS5k2SuB00prnbmqHYXj7FbZ2MxeL+fof/ja1MQ9gEjTstB9F87vuBC6ZbqWgQncyk3bir/WuLtNhc3Iala5BNYU0poNDoGz7+XT+iC4avPc2hHjiETbB6oteX+4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoRBdQVF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE37FC4CEF7;
	Wed, 29 Oct 2025 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761733687;
	bh=V1qA9DPBPddb/QMLqsxypCmj8mYMQGy/vKVCMGdae9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eoRBdQVF2g4ZaxF2c53wA5sTkuT70seMWXqCmcv0M2wmLo0IohVNX/TAO6NjV+yYs
	 i1gS2DQi41pQGjV2gufhVT/AdkXxafs1G1BOJmL5bD5KUbWuGHKQX03DFEdVCiNyeT
	 6triCOiT7iCOnH0OnYYO+fuU3NIztYSrtvEPp4Nd4YC1Fo+PpqDhyqRqfCMNn0FEOn
	 W6CwHudOwy2DF8zJahhn4VFDR2Zhqorkti4q2b4xJUD19X0DKKCrppFNFKt4JYdtif
	 q6OWAGp32uyHL1jRQElF8tOzj48CG0AhO6AB9hq8q8RBziHg6gevHBKIYg2BhsHSio
	 1Hsz2vYDPKwfg==
Date: Wed, 29 Oct 2025 11:28:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <edgo7ztyfw4o4j6yl2sa67rydefbfypenrs5r5qngmon5rjtku@43f2uzni7qyw>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2i54yycmynrevuj"
Content-Disposition: inline
In-Reply-To: <20251013191049.193375-2-kolyshkin@gmail.com>


--b2i54yycmynrevuj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <edgo7ztyfw4o4j6yl2sa67rydefbfypenrs5r5qngmon5rjtku@43f2uzni7qyw>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251013191049.193375-2-kolyshkin@gmail.com>

Hi Kir,

On Mon, Oct 13, 2025 at 12:10:48PM -0700, Kir Kolyshkin wrote:
> PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
>=20
> Add a TODO to describe the nuances of using poll/epoll/select
> with a pidfd referring to a process vs a thread.
>=20
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3D64bef697d33b
>=20
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Thanks!  I've applied the patch.

For posterity, here's the range-diff comparing to v2:

	$ git range-diff old^..old HEAD^..HEAD=20
	1:  efaf8c056 ! 1:  b0b6040f9 pidfd_open.2: add PIDFD_THREAD
	    @@ Commit message
		 pidfd_open.2: add PIDFD_THREAD
	    =20
		 PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
	    -    EPOLLHUP was added in Linux 6.9 (see [2]).
	    =20
	    -    This adds description of both, mostly taken from kernel commit
	    -    messages and previous discussions in linux-man (see [3]).
	    +    Add a TODO to describe the nuances of using poll/epoll/select
	    +    with a pidfd referring to a process vs a thread.
	    =20
		 [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
commit/?id=3D64bef697d33b
	    -    [2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git/commit/?id=3D43f0df54c96f
	    -    [3]: https://lore.kernel.org/linux-man/20240709021335.158849-3-ko=
lyshkin@gmail.com/
	    =20
		 Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
	    =20
	      ## man/man2/pidfd_open.2 ##
	    @@ man/man2/pidfd_open.2: .SH DESCRIPTION
	      .BR pidfd_open ()
	      system call creates a file descriptor that refers to
	     -the process whose PID is specified in
	    -+the task whose PID is specified in
	    ++the task referenced by
	      .IR pid .
	      The file descriptor is returned as the function result;
	      the close-on-exec flag is set on the file descriptor.

Have a lovely day!
Alex

> ---
>  man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
> index 3c7c568c2..60cac6fdd 100644
> --- a/man/man2/pidfd_open.2
> +++ b/man/man2/pidfd_open.2
> @@ -4,7 +4,7 @@
>  .\"
>  .TH pidfd_open 2 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -pidfd_open \- obtain a file descriptor that refers to a process
> +pidfd_open \- obtain a file descriptor that refers to a task
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -25,24 +25,32 @@ .SH DESCRIPTION
>  The
>  .BR pidfd_open ()
>  system call creates a file descriptor that refers to
> -the process whose PID is specified in
> +the task referenced by
>  .IR pid .
>  The file descriptor is returned as the function result;
>  the close-on-exec flag is set on the file descriptor.
>  .P
>  The
>  .I flags
> -argument either has the value 0, or contains the following flag:
> +argument either has the value 0, or contains the following flags:
>  .TP
>  .BR PIDFD_NONBLOCK " (since Linux 5.10)"
>  .\" commit 4da9af0014b51c8b015ed8c622440ef28912efe6
>  Return a nonblocking file descriptor.
> -If the process referred to by the file descriptor has not yet terminated,
> +If the task referred to by the file descriptor has not yet terminated,
>  then an attempt to wait on the file descriptor using
>  .BR waitid (2)
>  will immediately return the error
>  .B EAGAIN
>  rather than blocking.
> +.TP
> +.BR PIDFD_THREAD " (since Linux 6.9)"
> +.\" commit 64bef697d33b75fc06c5789b3f8108680271529f
> +Create a file descriptor that refers to a specific thread, rather than a=
 process
> +(thread-group leader). If this flag is not set,
> +.I pid
> +must refer to a process.
> +.P
>  .SH RETURN VALUE
>  On success,
>  .BR pidfd_open ()
> @@ -155,13 +163,28 @@ .SS Use cases for PID file descriptors
>  .BR select (2),
>  and
>  .BR epoll (7).
> -When the process that it refers to terminates,
> -these interfaces indicate the file descriptor as readable.
> +When the task that it refers to terminates and becomes a zombie,
> +these interfaces indicate the file descriptor as readable
> +.RB ( EPOLLIN ).
> +When the task is reaped, these interfaces produce a hangup event
> +.\" commit 43f0df54c96f
> +.RB ( EPOLLHUP ).
>  Note, however, that in the current implementation,
>  nothing can be read from the file descriptor
>  .RB ( read (2)
>  on the file descriptor fails with the error
>  .BR EINVAL ).
> +The polling behavior depends on whether
> +.B PIDFD_THREAD
> +flag was used when obtaining the file descriptor:
> +.RS
> +.IP \[bu] 3
> +With \fBPIDFD_THREAD\fR, the file descriptor becomes readable when the t=
ask
> +exits and becomes a zombie, even if the thread-group is not empty.
> +.IP \[bu] 3
> +Without \fBPIDFD_THREAD\fR, the file descriptor becomes readable only wh=
en
> +the last thread in the thread group exits.
> +.RE
>  .IP \[bu]
>  If the PID file descriptor refers to a child of the calling process,
>  then it can be waited on using
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--b2i54yycmynrevuj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB7DMACgkQ64mZXMKQ
wqm0qg//aHKgEsUpfdevHWuexFEKld7yCdJeBBlbqQC0AiDv53ZQIaf7VUdgvnOF
t2H90MUEOGCQ7KHoyQFnOMjEoyNAjmFcjAQXWXZqmHggX4BYghKIr1LVaN/o1LvS
5OYcs+DZxAVdiK3iScVnz8hOEscIMSaVoQIDRYteWzKIvbCL/xrvvflNZCk1/+N6
dL42USo80OSrt0jUrSoN9Rk7JFwv3YjkuyX6yn3BLN1BEFvLerpGXaoOO+9D8mXb
IxuUpNJulrD9lWd/NzizRrl3W5U6MnH0Q7kkxv+egNjyzEo8TS2T2kfA0Y/KxF/Q
tGYkqQ3mChI1/du3XHrZ5O5GnoBcauOChk0UIan7X3zCFj+LKQ4RFm5Fjn1QWpUD
yyMp0fo/VmQvc5CmLbS0R6whXEx9e9s5aa/uZZzq8ujjV61oqvERD5KSl/sDvOG7
HWQTx34FBzCnmOcCtHCcO6YfnGxvIARq4SDldGqLIqkAAf8IvpYkUtTeZ89Zqd7I
D0EdhDn6WdtmiqJJj+OvGUt0xnWEW9lbqVpPRYSy0TBjrnDhxp+GCEy8n5AoSkkd
zarQXM9g/s+rL9QqxzXbIRQemAfzEG0Eeh5cLNtwUleQ5bqDEYaeAWgypSf8sOXq
3nL5ylEdJEWmzVbJ2IuPVFY+fM/SxnNUjK0Xoj31Su4WLWw51kk=
=oAqO
-----END PGP SIGNATURE-----

--b2i54yycmynrevuj--

