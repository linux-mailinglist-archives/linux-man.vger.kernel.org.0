Return-Path: <linux-man+bounces-2361-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B7A2D8C6
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 22:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 479BD18837E5
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFA624397E;
	Sat,  8 Feb 2025 21:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AE8Q3aX9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3DB243959
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 21:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739048583; cv=none; b=Es+AtgFIWcp3MBGhqksFqrTr79zL/kJt/1EPT/WSniYm5XE1LzIrywHyXn0GL0OHs+pE5LZ4vsIXI3c0f1+kjJGFMeBTX+uXu0lnCRZq3LfVXRRsab720NHOtyZflufKymCPgFm51Ii7y517E7YIRgwe0/FSJ5vYOkbmhvV3rsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739048583; c=relaxed/simple;
	bh=Kv5iEC11zFLOHixL7QRksB++luxe0LvpPi/OmJY06nI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nxMGXbtqc4kurba3BZ1oBUitkgspdvMHZr5oF2mDR5j+UHZnFb97w3h3Za82R4YYhbPwNmjsjKKZAoJEXWBq4CUqeU+oGTHIArBRLEkSHio7qpsdRjfKywHJZMVFCbzM0MkmHeSw6ObeMVCJvQcHiZeKN75oSUNCqidhmzqffqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AE8Q3aX9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C6E5C4CED6;
	Sat,  8 Feb 2025 21:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739048582;
	bh=Kv5iEC11zFLOHixL7QRksB++luxe0LvpPi/OmJY06nI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AE8Q3aX9Ak58MEzHNLndIklvS5PQ351yl/wonrHg/1PoSZVIr4OesWdyiDB/I0+kp
	 h8kzPbjcM2gthEHO4bsPQIn02D6zj+lJvvLGBuVPFpOHTHdOZKKfJ0C1cTl7FMIquA
	 Asu4jRH6g/2YyQB8o+9gvmBxyMMGc+IJUdYN5Vsk7qMa5riUEz2AlTcbjEsLxEkC4x
	 SNHgBQVPgan7Pj/rkV8yunGJ4IY3uVoqL4NyKhAST081eAXSZoBhgpg3v/OYYRYHS6
	 P2p/KoFYhcIYEGWv6kCq9gxjrdMTjh6Rn9CEKbgEIPPUOXLhfGxRd8I2PdFGTCiha6
	 Iv80mTK1IkW6Q==
Date: Sat, 8 Feb 2025 22:03:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
Message-ID: <qrlytrdkrmaebyntohfmnczxjgzdoky3jxtilghgxe6ookw5qk@qfkxpzlu3bbf>
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kriw2ork5nc6qks6"
Content-Disposition: inline
In-Reply-To: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>


--kriw2ork5nc6qks6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH] man/man3/timespec_get.3: Correct return value and
 clarify description
References: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>

Hi Mark,

On Sat, Feb 08, 2025 at 12:41:42PM -0800, Mark Harris wrote:
> - 0, not -1, is returned for an unsupported time base or error
>   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74358).

LGTM.  C23 7.19.2.6p4 says

	If the timespec_get function is successful it returns the
	nonzero value base; otherwise, it returns zero.

> - Clarify that any supported value of base is always nonzero (i.e.,
>   there is no overlap between the two return value cases that may
>   require errno or some other source to disambiguate)
>   (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74357).

LGTM.  The paragraph quoted above confirms this.

> - Clarify that timespec_getres(NULL, base) is a valid call to check
>   whether the specified time base is supported (C23 7.29.2.7).

LGTM.

> - Clarify that the resolution for a particular time base is constant
>   for the lifetime of the process (i.e., there is no need to retrieve
>   it repeatedly) (C23 7.29.2.7).

LGTM.  C23 7.19.2.7p2 says

	For each supported base, multiple calls to the timespec_getres
	function during the same program execution shall have identical
	results.

> - Calls to these functions are not technically equivalent to any
>   clock_* function call; at least the return value will be different.

It would be interesting to clarify if they are equivalent except for the
return value.

> - The ERRORS section is removed, because it states only what is true
>   for every function that does not state otherwise (i.e., errno might
>   be affected by underlying system calls).

LGTM.

> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Please add appropriate tags:

	Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getres.3: Add p=
age and link page")
	Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>

> ---
>  man/man3/timespec_get.3 | 62 ++++++++++++++++++++++++-----------------
>  1 file changed, 36 insertions(+), 26 deletions(-)
>=20
> diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> index 8c8d45d33..7993e138a 100644
> --- a/man/man3/timespec_get.3
> +++ b/man/man3/timespec_get.3
> @@ -18,37 +18,47 @@ .SH SYNOPSIS
>  .BI "int timespec_getres(struct timespec *" tp ", int " base );
>  .fi
>  .SH DESCRIPTION
> -.I timespec_get(tp, TIME_UTC)
> -is defined as
> -.IR "clock_gettime(CLOCK_REALTIME, tp)" .
> +The
> +.BR timespec_get ()
> +function stores the current time, based on the specified time base, in t=
he
> +.I struct timespec

I would say

	.BR timespec (3type)
	structure

We usually say XXX structure in the manual pages, instead of struct XXX.
Just for consistency, I'd follow that.

> +pointed to by
> +.IR res .
>  .P
> -.I timespec_getres(res, TIME_UTC)
> -is equivalent to
> -.IR "clock_getres(CLOCK_REALTIME, res)" .
> +The
> +.BR timespec_getres ()
> +function stores the resolution of times retrieved by
> +.BR timespec_get ()
> +with the specified time base in the
> +.I struct timespec
> +pointed to by
> +.IR tp ,
> +if
> +.I tp
> +is non-NULL.
> +For a particular time base,
> +the resolution is constant for the lifetime of the calling process.

LGTM.

>  .P
>  .B TIME_UTC
> -is universally guaranteed to be a valid
> -.IR base ,
> -and is the only one supported under Linux.
> -Some other systems support different time bases.
> +is always a supported time base,
> +and is the only time base supported on Linux.
> +The time and resolution in this time base is the same as that retrieved =
by

Maybe s/is/are/ and s/that/those/?

> +.I clock_gettime(CLOCK_REALTIME, res)
> +and
> +.IR "clock_getres(CLOCK_REALTIME, tp)" ,

I'd use a non-breaking space:

	.I clock_gettime(CLOCK_REALTIME,\~res)
	and
	.IR clock_getres(CLOCK_REALTIME,\~tp) ,

> +respectively.
> +Other systems may support additional time bases.

LGTM.

>  .SH RETURN VALUE
> -On success,
> +.BR timespec_get ()
> +returns the nonzero value

I think I'd remove "value".  What do you think?

> +.I base
> +if it represents a supported time base
> +and the current time was successfully retrieved, or 0 otherwise.

D'oh.  Someone designed another non-standard return value.  <facepalm/>


Have a lovely night!
Alex

> +.P
> +.BR timespec_getres ()
> +returns the nonzero value
>  .I base
> -is returned.
> -On error,
> -\-1 is returned.
> -.SH ERRORS
> -Some C libraries
> -.I may
> -set
> -.I errno
> -to the same value as would be set by
> -.BR clock_gettime (2)
> -or
> -.BR clock_getres (2).
> -Neither C nor POSIX specify this,
> -but they don't really indicate it shouldn't happen, either.
> -Don't rely on this.
> +if it represents a supported time base, or 0 otherwise.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.48.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--kriw2ork5nc6qks6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmenxqMACgkQnowa+77/
2zIqQxAAkky+50O7xSptbD1uatXm0jW5cafiV762X24ScNXsMWwkGoGYxvAcC/XV
MBWBO3iSFYmLP5RudanipvpUJ0zT3VADB0iE5s5MC6onxfaElIeWxa6jM1CHv0y/
gKMKC8mh+jB0cQVW8S6XZBZsyaozBGiNn65wIAvfyo2wj2udpWmrfJYiBB72tjS9
kAzvIQDRRWxqdivO/sMqFaVF89+Z3EBbfi7p3gUkXJ9l7JaDjDVOilnlwsGxFOwm
BJ/7oe8np9EOMmSUE8X5xFpc9rVoCds922pgrfG18DvlBl3UsW110+4V1KMkYE8I
0AqlWSvJ9du8alSeR2E7xDzUan+5angxdpa0gYm3o90XDGjek32s6SOx9xzpNjT9
AC0QqcBSbTcPWHhHfDvr0Z7O9g+FpqNvdoAeM0WpVSrj5WtyepLn7PQcL0/uqFms
mnxULEwd+Kv+T/EGLhEQKGUDcNI/D6DrAjWdYbK6OUex+aSLGy/mDbv9ql7iyWRi
8uuJt6knynm5kjRv3/AxNNFori8P8RueigS6SO56xX2JugtVUR99FzHAGpB0jkaa
+7PArpiGIXsMf+u/cetLsWKXuZ+gkf64mySx6NnBWCzVTfr6suXsX7XelBhvwP1W
tqUq3g3nMzFaa903OzuvIknT2igG4hWPuyT8gKgXK+oxe2io2O4=
=vStS
-----END PGP SIGNATURE-----

--kriw2ork5nc6qks6--

