Return-Path: <linux-man+bounces-2965-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8CEABAEB8
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A2AF7A7E46
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350DB35966;
	Sun, 18 May 2025 08:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AViizKes"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80E64C7D
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 08:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747556160; cv=none; b=FIOKwdNsKEZe2/gpnO0y6MRbjkPEwz0Av45ZWbju1J/2Q6Xkz7ng7cxgO5n5gzjyDOOL0EGGiySKZhxA9Ua4J1mITvOATlis597TnZXSPpKq5hsJ+EpHQiCizT2TFyxgQKe+CgGRABSNVOc/Zix24aUJcNvFmK6jjQOSWtHiNkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747556160; c=relaxed/simple;
	bh=B/Q79XF0kWQvfJtIhqMh/nCuY2Whphzrpulis2LJlGg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hLcXx3xRO5xNrBhH1USUylsX61ritodcROclSZ4GVKMmRpHznmOCJGCPhlIh+2/m2wA0G71CzkU5nWvAlXodOClZuJ0GG1FQMKI33KgUC7E2sOfcgMzA3DoUrxiBDY65f4M6FzJ6gVM2/lOMfLLqj8UVNKKM4+GbZ9QxtkR5KDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AViizKes; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE9DAC4CEE7;
	Sun, 18 May 2025 08:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747556159;
	bh=B/Q79XF0kWQvfJtIhqMh/nCuY2Whphzrpulis2LJlGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AViizKes9vJKsXSBNBrEH1KA5XPa7RGm+OHYZvBB97/U3OwyjfUKR8DqB1Qzefz9Z
	 a3IzoFCfXbJ7UMjOMgDQRJ3ImCzUm/IOOhy2RTqtZqXORQGNjrYvDiL766MwkKYd1s
	 UFxRWgMlw2ttwN1nbzR0mitf6XGfCUJPx4R5uhftrnb+HgTY9YbdrCLZ6/ztP6j4lh
	 2HdXt4soRYfEVJrXh+TpsEpqqy9Tf70HVBNU70ubzysFcoGbp1miy7dTpTHOKpvJqv
	 FuRZPlGB+1kkgjp3IqLkSWf6txdSXDY2YxQ2NlXdZhOW35n4RgmmHHv9QqnVpQYPqU
	 J3DplR8pUSLvg==
Date: Sun, 18 May 2025 10:15:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*printf.3: Add errors section
Message-ID: <tfyxxmci3xhe4a4vssgk576hy5c4xfm3dcfpsq4odi6pl5obds@jjti3wfzepld>
References: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u6xlgxfsdr36rang"
Content-Disposition: inline
In-Reply-To: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>


--u6xlgxfsdr36rang
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tobias Stoeckmann <tobias@stoeckmann.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*printf.3: Add errors section
References: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
MIME-Version: 1.0
In-Reply-To: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>

Hey Tobias!

On Fri, May 16, 2025 at 06:08:54PM +0200, Tobias Stoeckmann wrote:
> The printf family of functions set errno if a negative value is returned.
>=20
> Source is POSIX.1-2024, see
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fprintf.html>
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fwprintf.html>
>=20
> Also see manual pages of FreeBSD and OpenBSD.
>=20
> Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
> ---
>  man/man3/asprintf.3 | 10 +++++++++-
>  man/man3/printf.3   | 25 ++++++++++++++++++++++++-
>  man/man3/wprintf.3  | 24 +++++++++++++++++++++++-
>  3 files changed, 56 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/asprintf.3 b/man/man3/asprintf.3
> index 319382c3a..8340d7798 100644
> --- a/man/man3/asprintf.3
> +++ b/man/man3/asprintf.3
> @@ -38,9 +38,17 @@ When successful, these functions return the number of =
bytes printed,
>  just like
>  .BR sprintf (3).
>  If memory allocation wasn't possible, or some other error occurs,
> -these functions will return \-1, and the contents of
> +these functions will return \-1, set errno, and the contents of
>  .I strp
>  are undefined.
> +.SH ERRORS
> +These functions may fail and set errno for any of the errors
> +specified for the library call
> +.BR sprintf (3).

I'm wondering if we could shorten that to just "See sprintf(3)."

> +In addition, the following error may occur:
> +.TP
> +.B ENOMEM
> +Insufficient storage space is available.

And since this is not native to this API, but actually a side-effect of
working "as-if" by malloc(3), maybe we can also defer to malloc(3).

So, how about this?

	ERRORS
		See sprintf(3) and malloc(3).

>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index b6e4f38b9..2c47368ff 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -904,7 +904,30 @@ Thus, a return value of
>  or more means that the output was truncated.
>  (See also below under CAVEATS.)
>  .P
> -If an output error is encountered, a negative value is returned.
> +If an output error is encountered, a negative value is returned and
> +errno is set.
> +.SH ERRORS
> +These functions may fail and set errno for any of the errors specified
> +for the system call
> +.BR write (2).
> +In addition, the following errors may occur:
> +.TP 10
> +.B EILSEQ
> +A wide-character code that does not correspond to a valid character
> +has been detected.

I think this is because of "as-if" putwc(3).  If so, I prefer deferring
to it.

Also, I see that POSIX documents this error, but why is that?  These
APIs don't handle wide-characters, do they?


Have a lovely day!
Alex

> +.TP
> +.B EOVERFLOW
> +The value to be returned is greater than
> +.BR INT_MAX .
> +.P
> +The
> +.BR dprintf ()
> +function may fail additionally if:
> +.TP
> +.B EBADF
> +The
> +.IR fd
> +argument is not a valid file descriptor.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> diff --git a/man/man3/wprintf.3 b/man/man3/wprintf.3
> index 59a6cfe07..55cfe8223 100644
> --- a/man/man3/wprintf.3
> +++ b/man/man3/wprintf.3
> @@ -198,7 +198,29 @@ case of the functions
>  .BR swprintf ()
>  and
>  .BR vswprintf ().
> -They return \-1 when an error occurs.
> +They return \-1 when an error occurs and set errno.
> +.SH ERRORS
> +These functions may fail and set errno for any of the errors specified
> +for the system call
> +.BR write (2).
> +In addition, the following errors may occur:
> +.TP 10
> +.B EILSEQ
> +A wide-character code that does not correspond to a valid character
> +has been detected.
> +.TP
> +.B EOVERFLOW
> +The value to be returned is greater than
> +.BR INT_MAX .
> +.P
> +The
> +.BR fwprintf ()
> +and
> +.BR wprintf ()
> +functions may fail additionally if:
> +.TP
> +.B ENOMEM
> +Insufficient storage space is available.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--u6xlgxfsdr36rang
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgplx8ACgkQ64mZXMKQ
wqnZrA//bXxKgCYLL6K1Zm8LLoUxyd++pkiNh3xeyX8NNnQjivj4kmsKH4GLA3ST
WkCiusLdtPiruzzVco6LIfByrMa4B7l9niGIC/uOMLfApNEQ8BCK25cFMoCXuwlG
oXEF4qn0pSquxhJmDmgXtqUG9R885Y0+Vl9csubi9YroEViOJSV7FwU+dF3GUfri
628oh++8X65Q1rMHVFHzJlOPXqvCrjhpitwBwWFaLNRPOLFDKD+SLyxdrzi55ldi
sFwnVek2KyjOA34myXgfyRCLZYpCqrbfV+WV9ZwcoFEGzZ7mGxdAq9sNCWWe49Nu
ZvNdantmhqpJL8fc9Sxkn1crMIA4YfZrn2rGN+MVgHLiB5TrTqu+fAKVM+LMUGak
mb2ZeH6YilXk2DB7jYo7StzB7ZtbVLPowElbkb5ysUNmGQba1ZYrBKksiU59Xlj8
jzgCqDNSUdeFBnKcW4piX0KnEjisXaA73BwkBITuYJ6ivA0Uwmk97pirzkWpu03g
+CcnKVicfLNpK562PhJ01IPBMQCcpVuwLKNS6d1ZQ4f4sGhJ98iVyzqzKSFwuaIt
pp2FFTkzr+snCZIG82K2xs4ImIcVJkHJZFXiSNNOh95xMgKllIxI7i+i+qUGa5+7
ivtCLwuvwXp6VvDp3apw++drkToAYbYZ3Yq5P7TzowA3LSZkh7k=
=HJck
-----END PGP SIGNATURE-----

--u6xlgxfsdr36rang--

