Return-Path: <linux-man+bounces-2769-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DACCAA87969
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 09:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D77721684EC
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 07:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5CED257AF7;
	Mon, 14 Apr 2025 07:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jD6bb0Zt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869231A2398
	for <linux-man@vger.kernel.org>; Mon, 14 Apr 2025 07:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744617068; cv=none; b=OIaw8vwnWx+bCc1thvdpgkMPbSgH2lMKD2xLnn7etoTNV/D5ZPgHiUyZ+f/IAnUvrAscGyZc1MNNh/S+Wvm9Glg8MPmspMGPXykPu2+UDhpX735rXlwHosrscDVronTppzjTOvlTLWgw1OcA8asrzUGNnADU24BM5gRFG7MBCfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744617068; c=relaxed/simple;
	bh=24oPuHXb8C/9cL30SD6vnJ32BHV+W8/2k9AE7H9ntm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=csBHQC1wOQYpVFy3qcj9eDfzvkaJW9wYzEqN8nulrxXQe0nI+dg6EW5JqeRehREUH++k1uMeG2uXxEW9d1ESBXVrtsTmYPawEvqRsOS8thG0dEqTNwvnwzPWnEMmqTjI5b3SQvOpUS4RXGpnKuK+r8xN9MD4WsF4GJG3/FO8s7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jD6bb0Zt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63D00C4CEE2;
	Mon, 14 Apr 2025 07:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744617068;
	bh=24oPuHXb8C/9cL30SD6vnJ32BHV+W8/2k9AE7H9ntm8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jD6bb0Ztp4tvB7IDEjOSt/W6S4KhhMuHxZ1jeBo6naYFbfaXyOzqf2LXPVPpstxlB
	 CjEuC6fxmMFK1Bh3BhCBJzgSC1lY6LB38+GC1ModBqcOr1aZJqTIdFsa7w/Hz00T52
	 ngT82z6AII4g5S/vQ4vk0jdXpQUB08WJ/3YdHA/PcGsmk3ZgLfkHpYAs2uf9OAsENI
	 INwNjXN1SR6KMR7iOrG68tD1VtZnT2qY0J+zs5JIEarbgR0izmaQ4vcLdv6WHO+rzo
	 h3T4izXW1Qcb9jFg6yTaGeU1+Kng4h33jwf/cv4Q/Z5KATEfntD3WW3PklDg599ePT
	 BOpmQr57hRoQw==
Date: Mon, 14 Apr 2025 09:51:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Anton Zellerhoff <wg14@ascz.de>
Cc: linux-man@vger.kernel.org, 
	Lenard Mollenkopf <glibc@lenardmollenkopf.de>, Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
Message-ID: <g3dj7mhsl2mlaf3srsvz3oocjmfv2db4d6d2y2aartwz7t4mol@5vzkhothrry4>
References: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dmzqofunw3u4cezp"
Content-Disposition: inline
In-Reply-To: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>


--dmzqofunw3u4cezp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Anton Zellerhoff <wg14@ascz.de>
Cc: linux-man@vger.kernel.org, 
	Lenard Mollenkopf <glibc@lenardmollenkopf.de>, Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
References: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
MIME-Version: 1.0
In-Reply-To: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>

Hi Anton,

On Sun, Apr 13, 2025 at 07:50:11PM +0200, Anton Zellerhoff wrote:
> C2Y adds unsigned versions of the abs functions (see C2Y draft N3467 and
> proposal N3349).  Support for these functions will be included in GCC 15
> and glibc 2.42.

Thanks!  I've applied the patch.  There are some things I don't like
about the layout of the page, but since they are pre-existing or based
on pre-existing text, I'll amend them myself afterwards.

Please see some comments below.

>=20
> Link: <https://www.open-std.org/JTC1/SC22/WG14/www/docs/n3467.pdf>
> Link: <https://www.open-std.org/JTC1/SC22/WG14/www/docs/n3349.pdf>
> Link: <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D117024>
> Link: <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D5b132=
ec2b7712dbc055838b3b538b83ad1196414>
> Signed-off-by: Anton Zellerhoff <wg14@ascz.de>
> ---
> I am a co-author of N3349.

Thanks!  :-)

>=20
> I was unsure waht to do with the current standards. As the functions did
> not change from C99 to C11 I deleted them.

Yep, I need to address that.  This page is a bit inconsistent with the
rest.  I applied some global changes standardizing the way STANDARDS and
HISTORY are layed out, but it seems I forgot to apply it to this one, or
maybe I did it but wrongly.  I'll take care.

>=20
>  man/man3/abs.3      | 63 ++++++++++++++++++++++++++++++++++++++-------
>  man/man3/uabs.3     |  1 +
>  man/man3/uimaxabs.3 |  1 +
>  man/man3/ulabs.3    |  1 +
>  man/man3/ullabs.3   |  1 +
>  5 files changed, 57 insertions(+), 10 deletions(-)
>  create mode 100644 man/man3/uabs.3
>  create mode 100644 man/man3/uimaxabs.3
>  create mode 100644 man/man3/ulabs.3
>  create mode 100644 man/man3/ullabs.3
>=20
> diff --git a/man/man3/abs.3 b/man/man3/abs.3
> index 6a9780019..fbd546cdf 100644
> --- a/man/man3/abs.3
> +++ b/man/man3/abs.3
> @@ -14,7 +14,7 @@
>  .\"
>  .TH abs 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -abs, labs, llabs, imaxabs \- compute the absolute value of an integer
> +abs, labs, llabs, imaxabs, uabs, ulabs, ullabs, uimaxabs \- compute the =
absolute value of an integer
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -26,9 +26,14 @@ .SH SYNOPSIS
>  .BI "long labs(long " j );
>  .BI "long long llabs(long long " j );
>  .P
> +.BI "unsigned int uabs(int " j );
> +.BI "unsigned long ulabs(long " j );
> +.BI "unsigned long long ullabs(long long " j );
> +.P
>  .B #include <inttypes.h>
>  .P
>  .BI "intmax_t imaxabs(intmax_t " j );
> +.BI "uintmax_t uimaxabs(intmax_t " j );
>  .fi
>  .P
>  .RS -4
> @@ -40,17 +45,25 @@ .SH SYNOPSIS
>  .nf
>      _ISOC99_SOURCE || _POSIX_C_SOURCE >=3D 200112L
>  .fi
> +.P
> +.BR uabs (),
> +.BR ulabs (),
> +.BR ullabs (),
> +.BR uimaxabs ():
> +.nf
> +    _ISOC2Y_SOURCE
> +.fi
>  .SH DESCRIPTION
>  The
> -.BR abs ()
> -function computes the absolute value of the integer
> -argument
> -.IR j .
> -The
> +.BR abs (),
>  .BR labs (),
>  .BR llabs (),
> +.BR imaxabs (),
> +.BR uabs (),
> +.BR ulabs (),
> +.BR \%ullabs (),
>  and
> -.BR imaxabs ()
> +.BR \%uimaxabs ()
>  functions compute the absolute value of the argument
>  .I j
>  of the
> @@ -72,11 +85,15 @@ .SH ATTRIBUTES
>  .BR abs (),
>  .BR labs (),
>  .BR llabs (),
> -.BR imaxabs ()
> +.BR imaxabs (),
> +.BR uabs (),
> +.BR ulabs (),
> +.BR \%ullabs (),
> +.BR \%uimaxabs ()
>  T}	Thread safety	MT-Safe
>  .TE
>  .SH STANDARDS
> -C11, POSIX.1-2008.
> +C2Y.
>  .SH HISTORY
>  POSIX.1-2001, C99, SVr4, 4.3BSD.
>  .\" POSIX.1 (1996 edition) requires only the
> @@ -93,8 +110,21 @@ .SH HISTORY
>  and
>  .BR imaxabs ()
>  were added in C99.
> +The functions
> +.BR uabs (),
> +.BR ulabs (),
> +.BR \%ullabs (),
> +and
> +.BR \%uimaxabs ()
> +were added in C2Y.
>  .SH NOTES
> -Trying to take the absolute value of the most negative integer
> +For
> +.BR abs (),
> +.BR labs (),
> +.BR llabs (),
> +and
> +.BR imaxabs ()
> +trying to take the absolute value of the most negative integer
>  is not defined.
>  .P
>  The
> @@ -103,6 +133,13 @@ .SH NOTES
>  The
>  .BR imaxabs ()
>  function is included since glibc 2.1.1.
> +The
> +.BR uabs (),
> +.BR ulabs (),
> +.BR \%ullabs (),
> +and
> +.BR \%uimaxabs ()
> +functions are included since glibc 2.42.
>  .P
>  For
>  .BR llabs ()
> @@ -121,6 +158,12 @@ .SH NOTES
>  .BR llabs ()
>  and
>  .BR imaxabs ()
> +and (since GCC 15.0)
> +.BR uabs (),
> +.BR ulabs (),
> +.BR \%ullabs (),
> +and
> +.BR \%uimaxabs ()

Should I just remove this entire paragraph?  Who cares about it being
a built-in or not?  Of course GCC optimizes many library calls,
including memcpy(3), and we don't say so for each one.


Have a lovely day!
Alex

>  as built-in functions.
>  .SH SEE ALSO
>  .BR cabs (3),
> diff --git a/man/man3/uabs.3 b/man/man3/uabs.3
> new file mode 100644
> index 000000000..97db8d2b6
> --- /dev/null
> +++ b/man/man3/uabs.3
> @@ -0,0 +1 @@
> +.so man3/abs.3
> diff --git a/man/man3/uimaxabs.3 b/man/man3/uimaxabs.3
> new file mode 100644
> index 000000000..97db8d2b6
> --- /dev/null
> +++ b/man/man3/uimaxabs.3
> @@ -0,0 +1 @@
> +.so man3/abs.3
> diff --git a/man/man3/ulabs.3 b/man/man3/ulabs.3
> new file mode 100644
> index 000000000..97db8d2b6
> --- /dev/null
> +++ b/man/man3/ulabs.3
> @@ -0,0 +1 @@
> +.so man3/abs.3
> diff --git a/man/man3/ullabs.3 b/man/man3/ullabs.3
> new file mode 100644
> index 000000000..97db8d2b6
> --- /dev/null
> +++ b/man/man3/ullabs.3
> @@ -0,0 +1 @@
> +.so man3/abs.3
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--dmzqofunw3u4cezp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf8vmYACgkQ64mZXMKQ
wqkBDQ//dDCMBNDqQVATGQeh7kj8g+c6HCBwU/ljswoDXjzb0S5fja+oGIcnUrba
8n93z3UQS1BKdkdSxDe+sXmGqAcySzpGMvVbwWufhgcsJQS/p5u+cpyceqB7aEZ/
3QmXRkNKBm4u7BAECfI5whgkvNp9dVXgHQkRB9grEXeZu8gfZA+N6PXV8XDs6M5F
/o7i+PHuzT8RNp/f2za8RNQGzISh64I+Daa1aK0DcEGd/sBIrH2kENkVbOaDzDuH
ncYEuGyqmAMFYJ+ilLMvy5+QvpwzX/YEPyq/mCI7YiF3HlG/WyeczKRO4h3Bafc/
KIiVBO3qoOR5f1o9s1+XNEwfeWXharAl59q6pYD9Hw6Z59g1617PM7dZnxer8NyB
NjsK5l2MK/PLuINEQJhLsbb7xT6vGNAnXDSoM6BfQ7qZ1PnN1+I1iZrBFkQULaRm
l16ilAfv6LTEpE+xEiV5YjlAlHiYC6UbMsqrXWh+TnImL68ufzXBjnGPZgr6HfXL
rX0a2LWtiWDfidjb/SSQfaUVhQiDIDnGw1EObDIfQ+ICrfrDIlIkxObASJ2ZzcTs
QYJRWTpigaIhZ7LDaQZR/nOGFBsQVmZN7KV8uzB5BnLwuAZ3TcbmyAqGpI1OEfFI
IlHavpFFglWHx9pm6aR2r31looh2Kd1Vu/5O1K2eA7zgeGg+T9A=
=z3SB
-----END PGP SIGNATURE-----

--dmzqofunw3u4cezp--

