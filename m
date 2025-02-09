Return-Path: <linux-man+bounces-2375-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7A8A2DBE1
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 10:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30D163A55DD
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 09:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B2E14F9EB;
	Sun,  9 Feb 2025 09:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+qua5qF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09213BC35
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739094754; cv=none; b=lDcXd+hLFTaDTUuPWonz1P7LKdNXxUWcIIOEfRbuU7B3dcvuSCrWw8HtY2FREa7nr52thGxypyShZAo83PntGmtDVOT7UyjSpSCdCftJUPov2dbmnMMBQRfEubYw98I3zgEOrF4KCN41CQS0XA/GaIZgVnbJCjC2tmtLUqL6yIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739094754; c=relaxed/simple;
	bh=HMkVRJ4WXj4RwR4bgLwrD5s1lEqwY46l021kj8XLQa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jwERoxpBDtxRQnD+aGm4YBxYO26iU20JC60Y+WcoNleAblhcj0rOKaYs8cZnAbEe0UFBGEY1ROMxBo9xiLFX8wjq1kSHP+27JADpTxwbANnVuLKbptiAuWHtXCCiqQD1kUsK2fNB8yGUN4iNGG3Bea6BMrYdITgsc0WVMGeT+O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+qua5qF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF3DAC4CEDD;
	Sun,  9 Feb 2025 09:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739094753;
	bh=HMkVRJ4WXj4RwR4bgLwrD5s1lEqwY46l021kj8XLQa8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a+qua5qFEaM1yCwHNEYqDwUYbnQ+xTq5nRRp9RIcnDkX8YCv2BrlzpsS9wggVyxfb
	 gg7iWwRBzGGpbDe/YcGduRcJAdK/SUz44QlezR2pUZrPweufQoq8SbYHMaZiYW/yTt
	 VN1yfBH/SUcFLEqkXC08V8HCY7xiNwXXf6gufJNSrfZqGLzVBuftriyFPcM7mvjO+q
	 wCOXyTmf80LpPh42VXFIxeZ3p+PEFL7kEoksRjkq+eePTrZHGGlPQsi8L+FHt4zThF
	 uOvY5wra2XVLybF90v+IGU6c0Lx0rCkSKTSWo/JvJiTdAfm1vp6WDFYes6kF2VsI7D
	 nSDQWfEDyE2Yg==
Date: Sun, 9 Feb 2025 10:53:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] man/man3/timespec_get.3: Correct return value and
 clarify description
Message-ID: <ozm6r4q7iqmttn6t3ykqyfve5lts3xhovziual7wfbtlul6awb@zcyzamisvuof>
References: <5f8dc5d2dc51f080a18de53e98610df43389b98b.1739063937.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wlsdbfi3gqylach3"
Content-Disposition: inline
In-Reply-To: <5f8dc5d2dc51f080a18de53e98610df43389b98b.1739063937.git.mark.hsj@gmail.com>


--wlsdbfi3gqylach3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v2] man/man3/timespec_get.3: Correct return value and
 clarify description
References: <5f8dc5d2dc51f080a18de53e98610df43389b98b.1739063937.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5f8dc5d2dc51f080a18de53e98610df43389b98b.1739063937.git.mark.hsj@gmail.com>

Hi Mark,

On Sat, Feb 08, 2025 at 05:24:14PM -0800, Mark Harris wrote:
> Range-diff against v1:

Thanks a lot!  :-)

I've applied the patch, with a minor tweak (see below).
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D48cbc739e8c0bec4049fd2ae58a270101a77b7b6>

> 1:  c6990f9c9 ! 1:  5f8dc5d2d man/man3/timespec_get.3: Correct return val=
ue and clarify description
>     @@ Commit message
>            it repeatedly) (C23 7.29.2.7).
>          - Calls to these functions are not technically equivalent to any
>            clock_* function call; at least the return value will be diffe=
rent.
>     +      Clarify that it is the time and resolution that are the same.

LGTM.

>          - The ERRORS section is removed, because it states only what is =
true
>            for every function that does not state otherwise (i.e., errno =
might
>            be affected by underlying system calls).
>     =20
>     +    Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getre=
s.3: Add page and link page")
>     +    Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
>          Signed-off-by: Mark Harris <mark.hsj@gmail.com>
>     =20
>       ## man/man3/timespec_get.3 ##
>     @@ man/man3/timespec_get.3: .SH SYNOPSIS
>      +The
>      +.BR timespec_get ()
>      +function stores the current time, based on the specified time base,=
 in the
>     -+.I struct timespec
>     -+pointed to by
>     ++.BR timespec (3type)
>     ++structure pointed to by
>      +.IR res .
>       .P
>      -.I timespec_getres(res, TIME_UTC)
>     @@ man/man3/timespec_get.3: .SH SYNOPSIS
>      +function stores the resolution of times retrieved by
>      +.BR timespec_get ()
>      +with the specified time base in the
>     -+.I struct timespec
>     -+pointed to by
>     ++.BR timespec (3type)
>     ++structure pointed to by
>      +.IR tp ,
>      +if
>      +.I tp
>     @@ man/man3/timespec_get.3: .SH SYNOPSIS
>      -Some other systems support different time bases.
>      +is always a supported time base,
>      +and is the only time base supported on Linux.
>     -+The time and resolution in this time base is the same as that retri=
eved by
>     -+.I clock_gettime(CLOCK_REALTIME, res)
>     ++The time and resolution in this time base
>     ++are the same as those retrieved by
>     ++.I clock_gettime(CLOCK_REALTIME,\~res)
>      +and
>     -+.IR "clock_getres(CLOCK_REALTIME, tp)" ,
>     ++.IR "clock_getres(CLOCK_REALTIME,\~tp)" ,

The quotes here are unnecessary, because now there's no white space in
the quoted text.  I've applied this minor tweak to your patch:

	diff --git c/man/man3/timespec_get.3 i/man/man3/timespec_get.3
	index ecac06d99..95a1833e1 100644
	--- c/man/man3/timespec_get.3
	+++ i/man/man3/timespec_get.3
	@@ -46,7 +46,7 @@ .SH DESCRIPTION
	 are the same as those retrieved by
	 .I clock_gettime(CLOCK_REALTIME,\~res)
	 and
	-.IR "clock_getres(CLOCK_REALTIME,\~tp)" ,
	+.IR clock_getres(CLOCK_REALTIME,\~tp) ,
	 respectively.
	 Other systems may support additional time bases.
	 .SH RETURN VALUE

>      +respectively.
>      +Other systems may support additional time bases.
>       .SH RETURN VALUE
>      -On success,
>      +.BR timespec_get ()
>     -+returns the nonzero value
>     ++returns the nonzero
>      +.I base
>     -+if it represents a supported time base
>     ++if it is a supported time base
>      +and the current time was successfully retrieved, or 0 otherwise.
>      +.P
>      +.BR timespec_getres ()
>     -+returns the nonzero value
>     ++returns the nonzero
>       .I base
>      -is returned.
>      -On error,
>     @@ man/man3/timespec_get.3: .SH SYNOPSIS
>      -Neither C nor POSIX specify this,
>      -but they don't really indicate it shouldn't happen, either.
>      -Don't rely on this.
>     -+if it represents a supported time base, or 0 otherwise.
>     ++if it is a supported time base, or 0 otherwise.
>       .SH ATTRIBUTES
>       For an explanation of the terms used in this section, see
>       .BR attributes (7).

LGTM.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wlsdbfi3gqylach3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeoewUACgkQnowa+77/
2zIHBQ//cKmMLj15t4fskBIs6+wIryRh8y6qSW/xIaVcSjiN/hL/mKZsIq80k4vf
GDRjMfv8zndAhUzcm++VxIFqe4h8c+fmF6viVJmZi8DSOYLAQFSZMwNivXSyUYtv
VqTtHqX8UV/2vvNN99eWl9BfeBin8OL9WhtPTzIMnlkj1IKjuUfkRfkLYdB1SkwG
RXj+QgqFXW8z9rw0cWXVKqHr4gEn6RuX0ShxDKYksmugwAJsIncp5Dfidm2BSwbE
4Q95/zsLtx/eBujmTLlu4GRfDWGD7VgesXYfvMDa8FryRHJqqvJcQbRpq3aOH+p7
FCRoKLNXrxvkmu9c7ymc+6LPQh9aB8CxnXeOU8Tb6/Q6WQw2kg4uyB+QO3AxwGzY
jenra5u5zJS++dPRWCmNgw+PveRg1ljGtBXLjC6mc872cbWyQvEM78wyJkYBpC93
3SmhxYEs4p2yUldzESDk0zZ4pT43Oh2yuTPKKExD+3Pnhqrgoa0sSsMMPI33TgND
5Shos9CtGZ5wBXDGHXUSZfwwIvvm+l9o/t/khlfEervE85S9YvnoCBoc5vQ3OwQZ
teiv3rqUHn+1LpOhg+jvhJtQ94nGUNhq4OlOLnBW9af94Wo7yj7zln9s67wRr55W
Q8zb8Qwhvg8m2QfqrHh9FFhg1QcqUEyd4+GWKRcSL/mCOSUaqVE=
=+9nS
-----END PGP SIGNATURE-----

--wlsdbfi3gqylach3--

