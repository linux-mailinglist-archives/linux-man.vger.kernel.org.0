Return-Path: <linux-man+bounces-4224-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A10C19F29
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 12:15:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 298E91AA7F06
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3F61B423B;
	Wed, 29 Oct 2025 11:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvfbw8LN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8FE19F12D
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 11:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761736503; cv=none; b=mEAaC8OQrLurrbar2AZ63lLX9eoI7bSP+eJKcui9rP3KU31ZxBMaylab1fs8ixHuInV57rKyVFbmRIgUUe1ax62Sls37sQyZvYGYagkRgLSqjnpWQaMJsY7TLiT/L9YGwrVRxbiCJ/0rYUDbu4szicm6LwaJC+aArfcvMCrajbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761736503; c=relaxed/simple;
	bh=F2strqYpcduR4Y/xE6ZQtSPepM0mVzGfqAcfMwX04Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z6PsLOzSMCscM5rPuFYsv4decXingZ76MbINXX/bHY5Sd7oxO/O6deDZkrgZD+eszDV+7AoiVPHUAy0RJtbIR6q1p7OVF00MgU0PJyWfgloE/kLKK7H5Lr6IVTcuVEoQVlQz8nBWrZi9LR178FNfC2M0BT/QsIi4OVxGn3b12bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvfbw8LN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AEA2C4CEF7;
	Wed, 29 Oct 2025 11:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761736501;
	bh=F2strqYpcduR4Y/xE6ZQtSPepM0mVzGfqAcfMwX04Lo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zvfbw8LNkwNC7eOOzQcgbgBiM+SGh5QIS/jLXtKG15ZzJUHJGvywNJBNjBuq+gXzD
	 OG51buOAd5dXwgGNMmD3AOay3iPC081NM44wRABNZo+LyERnSMiCBJKOH/vikTxwRz
	 cX6ssx0YC6nend2KRMumFsR7HeaXIRzuMfX5LrGrW+Qkbjoemdpm7ui2XjicbTl8nm
	 SrpjcVbTp03IW+8jBb5sYjKVdglcfC7tkGyyitxyfbO7yAl9CHdUv67KuFvkDN5rKW
	 gY1W8uWbgUmTI7+gD30i5pKBHdoNTzItDzWmstLVmrqXdNTeM3DnAp4wsRLzt4lYDw
	 poamEMGkQrSlw==
Date: Wed, 29 Oct 2025 12:14:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 3/3] pidfd_send_signal.2: describe flags
Message-ID: <er7zp3thj3fcgenhja5eh5ypeutkqubsno5ad5cni4uaiis45h@eulj4t33apfc>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-4-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gmt3urczsynn4coa"
Content-Disposition: inline
In-Reply-To: <20251008020031.1215030-4-kolyshkin@gmail.com>


--gmt3urczsynn4coa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 3/3] pidfd_send_signal.2: describe flags
Message-ID: <er7zp3thj3fcgenhja5eh5ypeutkqubsno5ad5cni4uaiis45h@eulj4t33apfc>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-4-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251008020031.1215030-4-kolyshkin@gmail.com>

Hi Kir,

On Tue, Oct 07, 2025 at 07:00:30PM -0700, Kir Kolyshkin wrote:
> Those flags were added in Linux 6.9 (see [1]), and are documented in
> [2].
>=20
> The text added is a modified version of [3], removing some repetition
> and adapting from markdown to mandoc.
>=20
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3De1fb1dc08e73
> [2]: https://github.com/brauner/man-pages-md/blob/main/pidfd_send_signal.=
md
> [3]: https://github.com/brauner/man-pages-md/pull/2
>=20
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Thanks!  I've applied the patch (amending some formatting issues).


Have a lovely day!
Alex

> ---
>  man/man2/pidfd_send_signal.2 | 53 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 50 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/pidfd_send_signal.2 b/man/man2/pidfd_send_signal.2
> index c4a9ce40e..70eaaa34f 100644
> --- a/man/man2/pidfd_send_signal.2
> +++ b/man/man2/pidfd_send_signal.2
> @@ -78,8 +78,55 @@ .SH DESCRIPTION
>  .P
>  The
>  .I flags
> -argument is reserved for future use;
> -currently, this argument must be specified as 0.
> +argument allows to modify the scope of the signal. By
> +default, the scope of the signal will be inferred from the
> +. I pidfd
> +argument. For example, if
> +.I pidfd
> +refers to a specific thread, i.e., the
> +.I pidfd
> +was created through
> +.BR pidfd_open (2)
> +passing the
> +.B PIDFD_THREAD
> +flag
> +or through
> +.BR clone3 (2)
> +using the
> +.B CLONE_PIDFD
> +flag together with the
> +.B CLONE_THREAD
> +flag, then passing
> +.I pidfd to
> +.BR pidfd_send_signal (2)
> +and leaving the
> +.I flags argument as
> +.B 0
> +will cause the signal to be sent to the specific thread referenced by the
> +.I pidfd.
> +.TP
> +.BR PIDFD_SIGNAL_THREAD " (since Linux 6.9)"
> +.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
> +Ensure that the signal is sent to the specific thread referenced by
> +.I pidfd.
> +.TP
> +.BR PIDFD_SIGNAL_THREAD_GROUP " (since Linux 6.9)"
> +.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
> +If
> +.I pidfd
> +refers to a thread-group leader, ensure that the signal is
> +sent to the thread-group, even if
> +.I pidfd
> +was created to refer to a specific thread.
> +.TP
> +.BR PIDFD_SIGNAL_PROCESS_GROUP " (since Linux 6.9)"
> +.\" commit e1fb1dc08e73466830612bcf2f9f72180965c9ba
> +If
> +.I pidfd
> +refers to a process-group leader, ensure that the signal is
> +sent to the process-group, even if
> +.I pidfd
> +was created to refer to a specific thread or to a thread-group leader.
>  .SH RETURN VALUE
>  On success,
>  .BR pidfd_send_signal ()
> @@ -103,7 +150,7 @@ .SH ERRORS
>  .TP
>  .B EINVAL
>  .I flags
> -is not 0.
> +is not valid.
>  .TP
>  .B EPERM
>  The calling process does not have permission to send the signal
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--gmt3urczsynn4coa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB9zEACgkQ64mZXMKQ
wqmrZA/+PFMgeZBclnfmOBQUHslP4LWTFfzDlrL8VkTtlbU+eyTQhHRnFrh+BJWO
1w3bQLBpIecFeDiEqCqcPtLrBcuYyogWnpflWn2rXKuf4UCaHdllZHYiMDY0DzLy
hVXnmMM6xPcusrjkkXVQDgFMbYm6r+fYC5wYlS2r7hwOU0/g+HdckQSI9+0eq74X
H4ZT/pXmzjhT6LL9lE2ivIJ8Z7jN50Hv+GVaFAfqVhoKF9nN6GbfpvY8iuNhgY25
k3J9DB/OTSisf3yXEAEcBfjICq1+Lk5VdvUXWgw3SwrCGQFumbmrOvcUkxKIYtul
+wbvCR7DxTC0aHHrSe9BEmfawgP3yybxBJztAdheqzRuGUrWwCmgyuH6mNKuHIRj
ErDtuu6jb0hyLnYna1O5JobgGFHOyWmjk9sX16FYW6OK3ak+f8HI9faPWwhkHcSN
Etc5VZOv1v6tveQQ/Yc9MJ2cQO7yk1M6/MHaKLTk32zixCBDEyW0KKvvaP919IDo
QVVovjePBwjIbOLD6JhTnyRWXEMkbvHxz9vU/t7O6qxCfSssvJutVl9U+sxCfssK
pWFTlPgWA/LLkPkF04EgrhagwRmkKpDULP6VpqrfdGOswJEofy4xa6Wt+oH/1+ns
i53Xa6UjUhzwBwLExP3gSXT9hC5xGtsxPdn5wGRf8zNscxEpVX4=
=IPwQ
-----END PGP SIGNATURE-----

--gmt3urczsynn4coa--

