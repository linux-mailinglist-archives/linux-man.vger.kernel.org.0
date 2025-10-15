Return-Path: <linux-man+bounces-4158-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DF126BE0C78
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25DF8345B7A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45942C11D4;
	Wed, 15 Oct 2025 21:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQw3ZoTe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90272263C7F
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 21:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760562989; cv=none; b=n8RplrUvdNjrYqEtay4L9MfHtSJleoy1qYasGolnI3gpw+iQaEgPNdfjPVZtalqOGsSdi9iqeSDPZyB+c7gdmfwKEaT8b7o7UzZjPT+pFhtT9WK2TVAuT6tWIns5NJ0WUcevSUwhfoMYwZ1i9MfhR0F4HB9u9eMmXgKE2nr/rRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760562989; c=relaxed/simple;
	bh=tx/LnoaCuw2zIcYgy8ExWKdjyh23tfEB61YjPUyLhBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uZ3t+wYCIQFXwtRaEPit2Q+uOB9kOPn+JTJX3Jbp5W/rXIm33tHMH0Rm78rdWloskLeIiVLFu0vNHX8ssDq68T8jomgTNDOr73ciwxPAbRRofRk6GkkHvWn0F9ilBy79CyvN5rq4AbYV4Xy6rUQLXml5vFPPQGq5vwAcen8cwvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQw3ZoTe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F15C8C4CEF8;
	Wed, 15 Oct 2025 21:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760562989;
	bh=tx/LnoaCuw2zIcYgy8ExWKdjyh23tfEB61YjPUyLhBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YQw3ZoTeRT4h2MHeHblYJZDBHC0pJFla+WOxWAxyJ4FoCk0K1JXa6UJPSP3FwDP5a
	 qIuUXGblFkKK+DaS9fATCswH3wft4V+Sp78xY1r8EqNLaxBZS6w8OyqOOgGJkMM/xE
	 sT9UF73YMjR+QI51tup2JnBfurzLfcsofUToEbX+jEHaf0JUaBAR6PtGeUVw1qoro2
	 iJxp/oBgJ6f/pwpQniKFHBp2mUWryj3FIFI9p6y8wbHGe6+cyGHenBw2YhQO8QcZaS
	 Soq6m0Kn2tXYHy8IRYO4dgUqhginTg6Kyj9HYpe41s3iPa2SDCyykb5fRKKoREaVjd
	 xVvU+Eftp7bsg==
Date: Wed, 15 Oct 2025 23:16:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
References: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
 <20251013191049.193375-2-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hpwggeze7d5uefba"
Content-Disposition: inline
In-Reply-To: <20251013191049.193375-2-kolyshkin@gmail.com>


--hpwggeze7d5uefba
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <gavot3gmd5kmwzhlyqobzp36qdtqzyt7zaqaw4lnfbfxanm6d5@amvqcybaaqbx>
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
> ---

As far as I can see, the only change in v3 compared to v2 is that the
commit message is smaller now.  Is that correct?


Have a lovely night!
Alex

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

--hpwggeze7d5uefba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwDykACgkQ64mZXMKQ
wqlZpQ/9FEACkvzaWkKiMMtg/4Kwn0Ht9AJ3BsT/e1M2LYUOkuaCxJzsupTQqJSk
TlTEgjpjVxsEcG3pO4/MnxASms8Xy+0DuWc+FANQj4eR9IWOFw3mUk9L5+zNk8KB
HZSys6S/0DjISMjj5k1C9iiJ94zY9yhaqnjFL/UBHo9asCNPei42aFfIithyLhHq
/Rw44I4dmRZTk5lLH0tpGAgmqzOkbm1/5AU2Lr8OMXs+QzWojocmg+vpIYc8cxmj
Ulf3yD3UkLnIWVulX6sbtTVpyZzXpkKaygkYE1ayB0zNDyi+0AqC3Y0jY9BNTwGz
4EUU4T/cRTZ4PTiRKR0oKJM5b1W32TQHGOp6uIpMD9l9BCs5EfX2aGx7dwlrhXoh
zXO19XsOrX21LoDcu75iSUDx4KeFK5X8nXQO5x2dGATxTCuNp51pQ6r/vTud0Pup
ImxVvwgiMAHYN27BLIhi1T1lv0Q5rDPXmEXnZe1THSbhCj5YeTK7/owfIlwpw1Jb
SXpECIPGJSmyM86AzSR8cItjELvGy16Tkf5QudS9JE6AD5UqvetC3fSck2MV+hOe
hiO2spOKpLZWLRBJp7ifmYtFxE3lrHWOEbXWamZhOrcfeVGHvPXhV9vQ7B6oPhl8
VSAH4WzYY0xeQowrNgIM9zTIusajkm59nl+ih5CXpRi7VdqhwqQ=
=aUNX
-----END PGP SIGNATURE-----

--hpwggeze7d5uefba--

