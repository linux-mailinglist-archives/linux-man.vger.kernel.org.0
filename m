Return-Path: <linux-man+bounces-4113-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D78BD0CFD
	for <lists+linux-man@lfdr.de>; Mon, 13 Oct 2025 00:16:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FC7B3B64D9
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 22:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473B923C51D;
	Sun, 12 Oct 2025 22:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eV7FHrZV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A7C2222C0
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 22:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760307373; cv=none; b=BHe93AFGdp8m/KefJDPLhKQin3+YC6Cldi/vStK1qNzirwyf4Mc//jOWynii5dq3ZYDUiOX7nwG7//4P6safzRAIwb2r1VDHiROMjAdN3ZE9AHGa/y4VHbtdOryZn9Wjime4EEPuBM013WjT+F3s8pnms+oVK83zTLyDUuX0j18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760307373; c=relaxed/simple;
	bh=+x8kEfgdEvJ7AaiOxBtFvGdW0p1ZwUewEyIMGQxYubo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bnRqcwhz+pd4KAiR/gRp+1YMzyyGJvFz1xNrNE5OmfSwv2qVoKCtz+55wgXMbDa7t/G+fyldWpiRegZKnlHPYWoYUQA5Xj11XfTTCE6ZXi/UcJUZCOMQJ5riEuHh0VVRAWV5lezz9M1Lka+AKjOZuK+9ZQL/M1BRU9Tz9kPkfoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eV7FHrZV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BD53C4CEE7;
	Sun, 12 Oct 2025 22:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760307372;
	bh=+x8kEfgdEvJ7AaiOxBtFvGdW0p1ZwUewEyIMGQxYubo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eV7FHrZV8mcUPY2QaIzLRHrYZT3aFz67FNrtCE6BlBMT4oKScYmt6OZJXtimw9UNf
	 BYpoGTiqC2NatfwhDo9/WZyh4GwuvtzoCBhD6FOXb+3pkRPrF98k6VInDAJRlSWcB+
	 pgwP4wrvu0xWuCF0UUmVQZMHakCmq1uPzDGEOoNntI8GYX/srsJ97NyMnUvfC6iBjQ
	 oEa2JTU9QpHnmbvanhUL1W5WewhoQMwORKh0oXXANhVNNVyIt4HL1qynG3EBrRarpc
	 WCiFN04tdt2tfWZ+aw9/g3mJ0FTge38HSR1d3deWD7WpmjuruTj38tut2TUz25DKSR
	 VBnQuBel06JWg==
Date: Mon, 13 Oct 2025 00:16:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v2 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-3-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zytyyit2ynccahp7"
Content-Disposition: inline
In-Reply-To: <20251008020031.1215030-3-kolyshkin@gmail.com>


--zytyyit2ynccahp7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v2 2/3] pidfd_open.2: add PIDFD_THREAD
Message-ID: <7vb3ed5qttoe6n5ozzjwqtzw5iupifozplkkhd3jjvbhy5efqy@d4ksex445ixl>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-3-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251008020031.1215030-3-kolyshkin@gmail.com>

Hi Kir,

On Tue, Oct 07, 2025 at 07:00:29PM -0700, Kir Kolyshkin wrote:
> PIDFD_THREAD flag for pidfd_open(2) was added in Linux 6.9 (see [1]).
> EPOLLHUP was added in Linux 6.9 (see [2]).
>=20
> This adds description of both, mostly taken from kernel commit
> messages and previous discussions in linux-man (see [3]).
>=20
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3D64bef697d33b
> [2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3D43f0df54c96f
> [3]: https://lore.kernel.org/linux-man/20240709021335.158849-3-kolyshkin@=
gmail.com/
>=20
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man/man2/pidfd_open.2 | 35 +++++++++++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
> index 3c7c568c2..e8b61ec3e 100644
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
> +the task whose PID is specified in

Should this say TID (thread ID)?  Or is it correct as PID?  I don't know
which is appropriate here.


Have a lovely night!
Alex

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
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--zytyyit2ynccahp7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjsKKEACgkQ64mZXMKQ
wqm+xw//VxG5sPMFRPWnjuWj5rc5S90hzlgiTE4GoPQ+vSsj196Hvsrb1HRw4O1u
eitltgu45JLKkSpsS9+w4F4sYg0hg5k0O0ak7IYTZYz+GL6MB8fca1fo45Z+pBWW
Wte02lafs2MlaoRgu0ovDnz5aeRnGGBInmIgA9Gg2WiNBFvMn5nrOu9caJhOIm8t
ErZxjFqQPvFHLu/zeWDyHLazeHCQ2uP7UlA933oGm5E1XrV1fxGFHzw5ni9y1QNx
5egPkKx1Zx9nCgOQ9ys+UDkyarbsKt9ik/Pa2trdmLhxf+y+kc0wgsLa8dnbG8UY
W6+Z9OgCXg+vN2CCY8Hck4izCLCkvDL1wKzrZSE81sjesP8Z1UnyRaBihqTzPaC0
b1bndeXScoTcABXx6pIsB/LcmPBynNMQ1CmY6hlS4GRTGfB3MGMw9JFCiIREM+gI
VPuIB7TGybg8x6p0PRvpKbFLGJyWwEXnueKwi94VN54eH+HFPN0svQMnV5TxU9KO
pgPJVheHHZ170BUHBnjBPFklaWJdJfRm5VL2kgD2Uy2K3K3XB+Bs2erhQPk9lPM+
2oL1pI8EM8zd/nKwunjlMEu38P0P/mU+BOyakO6EmD0MTdemOaWhUyd6C66ZwlD7
o8mEJXsqukPM2r42eQR+9auMqQeQwQrFhWaJTt0TnMXHtJtsOmc=
=gLKg
-----END PGP SIGNATURE-----

--zytyyit2ynccahp7--

