Return-Path: <linux-man+bounces-2698-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA759A762AD
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EFD0168164
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27EA1DB12C;
	Mon, 31 Mar 2025 08:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT9TJ+E0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B8D1D516A
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743410714; cv=none; b=nOoaKp3WXaX52WWQ7nfSOr6A8RAD19flb040qTd3+Bnl1O5ZxsiAhYyNHpcoGLLMBbwG6gxQKoSMx8U/O6GVYHC6CpFXwBhRWcxpLDo7G9LqaTsuqF9fflWsybxE+cxD6iWBgOe0JL6tjmpy7R7g65qhOxWZuB2RERloYPU2Yec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743410714; c=relaxed/simple;
	bh=HvmL7vT1PZNHUaI+KOKEN/qYWKU16Am6NEy/AsfX23c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eHk6rX9a4gxYPoUzyU+AQzeF4OhJ5I4ggqFnfzoWXxCsSSVvJIYgB+CPsgn8Um8uJ5w6dcA7b7rtfzoaRmayoLfc2seALy8pKXOdjYe24jRmHrhMsRh6gLp+Zpewd3gMAEzXNlMeqFOeSzqa0kln7gUKdGPUwNseq92QF6O8NDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT9TJ+E0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 097B2C4CEE5;
	Mon, 31 Mar 2025 08:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743410713;
	bh=HvmL7vT1PZNHUaI+KOKEN/qYWKU16Am6NEy/AsfX23c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GT9TJ+E0cusqLdPWNNc9wR6Vp4qqjftQBn0UYnz+P7Rj3VyKgprEwo8r7TRFL3wRM
	 R/gssSPkfQbLAc2XUlDwpMCvgEAIp3ENKkixuU7TnlDgiUVRDpXK4DXjWMIwHyScjQ
	 ZAKDkan1zGkTCMgfUcwBhADfQsJAwOwqqeeT8An8qhwcWoEJL786J8MeyhXKfsHXdc
	 zs75GxagSW1dJReb2l63QbHKSN3Wsy96QyP1+H8RnfbURqojwH7IZcY+KrXWBysGdh
	 /n/ux34me+z7cQ3evcwKCHfvhQkzoUaSCPDEw2hSgb0u61zk9bpA7yzQ9XWtZUxmEC
	 k58iXbHiCZwCA==
Date: Mon, 31 Mar 2025 10:45:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] name_to_handle_at.2: Document the
 AT_HANDLE_CONNECTABLE flag
Message-ID: <illia4j47ysk2d2ea55n4sw36lyhe7wftebileuo7h2q7ldzij@kbxmnq37wixq>
References: <20250331081642.1423812-1-amir73il@gmail.com>
 <20250331081642.1423812-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vfobmoklihoshybc"
Content-Disposition: inline
In-Reply-To: <20250331081642.1423812-2-amir73il@gmail.com>


--vfobmoklihoshybc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] name_to_handle_at.2: Document the
 AT_HANDLE_CONNECTABLE flag
References: <20250331081642.1423812-1-amir73il@gmail.com>
 <20250331081642.1423812-2-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331081642.1423812-2-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 10:16:42AM +0200, Amir Goldstein wrote:
> A flag since v6.13 to indicate that the requested file_handle is
> intended to be used for open_by_handle_at(2) to obtain an open file
> with a known path.
>=20
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Jeff Layton <jlayton@poochiereds.net>
> Cc: Christian Brauner <brauner@kernel.org>
> Cc: Jan Kara <jack@suse.cz>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied the patch.

> ---
>  man/man2/open_by_handle_at.2 | 31 ++++++++++++++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
> index e3ec70dd5..f808ea933 100644
> --- a/man/man2/open_by_handle_at.2
> +++ b/man/man2/open_by_handle_at.2
> @@ -128,6 +128,7 @@ The
>  argument is a bit mask constructed by ORing together zero or more of
>  .BR AT_HANDLE_FID ,
>  .BR AT_HANDLE_MNT_ID_UNIQUE,
> +.BR AT_HANDLE_CONNECTABLE,

I amended here the missing space.


Cheers,
Alex

>  .BR AT_EMPTY_PATH ,
>  and
>  .BR AT_SYMLINK_FOLLOW ,
> @@ -163,6 +164,29 @@ with the
>  .BR STATX_MNT_ID_UNIQUE
>  flag.
>  .P
> +When
> +.I flags
> +contain the
> +.BR AT_HANDLE_CONNECTABLE " (since Linux 6.13)"
> +.\" commit a20853ab8296d4a8754482cb5e9adde8ab426a25
> +flag, the caller indicates that the returned
> +.I file_handle
> +is needed to open a file with known path later,
> +so it should be expected that a subsequent call to
> +.BR open_by_handle_at ()
> +with the returned
> +.I file_handle
> +may fail if the file was moved,
> +but otherwise,
> +the path of the opened file is expected to be visible
> +from the
> +.IR /proc/ pid /fd/ *
> +magic link.
> +This flag can not be used in combination with the flags
> +.B AT_HANDLE_FID
> +and/or
> +.BR AT_EMPTY_PATH .
> +.P
>  Together, the
>  .I pathname
>  and
> @@ -327,7 +351,7 @@ points outside your accessible address space.
>  .TP
>  .B EINVAL
>  .I flags
> -includes an invalid bit value.
> +includes an invalid bit value or an invalid bit combination.
>  .TP
>  .B EINVAL
>  .I handle\->handle_bytes
> @@ -414,6 +438,11 @@ was acquired using the
>  .B AT_HANDLE_FID
>  flag and the filesystem does not support
>  .BR open_by_handle_at ().
> +This error can also occur if the
> +.I handle
> +was acquired using the
> +.B AT_HANDLE_CONNECTABLE
> +flag and the file was moved to a different parent.
>  .SH VERSIONS
>  FreeBSD has a broadly similar pair of system calls in the form of
>  .BR getfh ()
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--vfobmoklihoshybc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqVhYACgkQ64mZXMKQ
wqkeiQ/9EBp/Xiio2kDxioel5X4972jzl0Fojt0/CW+kPMfpf0AuNaf9xdqwWlV8
iZoUTUOR29hTolDdYsvwNeIsuTxRI2UEOQfVCDYIfTLEKmt23pw+IINfWb5lZtmN
usTrIaZGoIypvuUfZ/H0tx3090mJXUjBPnBushyGm5jnVSVlMMrFHofCwAgt9RSH
UXgzhSOOhzdBMal4xeKIkPOUMgZgRwnJ09dXDaNoEOqD0bNHHWtVs+mK1UaCfmol
/CDHk2Ujy8+HgNwucjXvtLnFzmkvNlP9DT3gm86jM0Ea7KNYzqK4vWyZrXH872Rm
h5eLSevNq5PQ8fMpquv/g7cHpdqFE3xDj4nTtoyHKJZxttMrm9poWWUbhctvapio
VbQN9VKJtPMzUd5wH4HCz+6hIQHnqSt3LrKUT5smWGK0a0/BNdkzMzWwz60ed6Xz
qAzcliVBzfu3cby6VPMI4UpiGTRg2MKF0xXQIrtGa2TKkdL1WvInOErMBpVwzT/K
+uAU6Vh27bXTaQXJQts9UlZ2Ou6uKrEFb6SvC3GUZZcZ+xdXTTrwmB/Cx0Bb1VXT
ZqX7+FDGXeYiq09N1BjvCljBwCyYRdzZuwatrM/UOaVRQulbTEQ0TW0cm9btKguD
TWURpYqaKgxWuszpmHKYSXaLGcI+WpFrUovxYF3X77X1HMluKnI=
=9QCh
-----END PGP SIGNATURE-----

--vfobmoklihoshybc--

