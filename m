Return-Path: <linux-man+bounces-4264-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 55129C43D04
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 13:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 96ADA347796
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 12:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85CA42E7178;
	Sun,  9 Nov 2025 12:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+OrPoJU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EA12AD25;
	Sun,  9 Nov 2025 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762689715; cv=none; b=i2a7LGYUUQKgeLa4rFiIqefJa8jmwySGW+qlBG9g4xRS2PlF/oJKUyoYuW2IfKan6U+LCVgpdEaNan8567hYn4sUn159DJgncEugBIQ2Pk7/pVBNwg9AffKePZW3AvoNkIWol9Ew2BbM3XMJxnN8/JFb+b1pcy/vvwO9r5TuYCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762689715; c=relaxed/simple;
	bh=2fDDDm7pTJcL5mK5rfDRLM6TjBp4teOvRaGlErd93q0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tAM3j7Zw8pM+WOfJeA5kzaWJq5y3zZaRqy0+tqb2d1ooN1YXw3HnAIBG3PlTkvcc2SF9UJnLsP8D890F8s1NuKOIkSZqWBucl5X8+qzn6u5Qk+TCz6mMFpDQYc279Ndvr7c2g8y8Nd+9gSHiHGX+DTHBgfPJVFR4Xwod62AIEuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+OrPoJU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40F69C4CEF8;
	Sun,  9 Nov 2025 12:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762689714;
	bh=2fDDDm7pTJcL5mK5rfDRLM6TjBp4teOvRaGlErd93q0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M+OrPoJUdFLm4bcz0S8jFKCeG49p2qE4OvFzRr9/cpg3AjXgHpREpOP923gjMXmm+
	 03xIFNKiouphOhpHjJ5ZK3gWBH57RW+MKfwSft5U7Lsr3osAzV68VyJafAtS2Y9tEr
	 YnMnkqkiSJYBO89iNIqHQiWIK/z0z2QuFvN1cc7m1We+ONMZ+sGJ1eXRPJy1I9Ebvw
	 Jh/opt8H8pcNUAvL+zbRnXI/00wmv1LKwsqgaVtUdlMWsCJpCNuHS+xyOkXhYYYjtO
	 kmQGc2mDRsoa/8SF612GrCCm+DXnXW/csfcprtEOtZ3ZCqVEghcL7xPmrbRGxwAXJp
	 7Z2ZQudRlSDuw==
Date: Sun, 9 Nov 2025 13:01:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH v2] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Message-ID: <fywihr6bre6d7kzdgtzjti72sgidfb6p43oujv2pzuxl223qlo@dyovi7er57dr>
References: <20251105134811.3170745-1-usamaarif642@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4wyadkjkygg3mzfu"
Content-Disposition: inline
In-Reply-To: <20251105134811.3170745-1-usamaarif642@gmail.com>


--4wyadkjkygg3mzfu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH v2] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Message-ID: <fywihr6bre6d7kzdgtzjti72sgidfb6p43oujv2pzuxl223qlo@dyovi7er57dr>
References: <20251105134811.3170745-1-usamaarif642@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251105134811.3170745-1-usamaarif642@gmail.com>

Hi Usama,

On Wed, Nov 05, 2025 at 01:48:11PM +0000, Usama Arif wrote:
> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
> THPs when advised. IOW, it allows individual processes to opt-out of THP =
=3D
> "always" into THP =3D "madvise", without affecting other workloads on the
> system. The series has been merged in [1]. Before [1], the following 2
> calls were allowed with PR_SET_THP_DISABLE:
>=20
> prctl(PR_SET_THP_DISABLE, 0, 0, 0, 0); // to reset THP setting.
> prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); // to disable THPs completely.
>=20
> Now in addition to the 2 calls above, you can do:
>=20
> prctl(PR_SET_THP_DISABLE, 1, PR_THP_DISABLE_EXCEPT_ADVISED, 0, 0); // to
> disable THPs except madvise.
>=20
> This patch documents the changes introduced due to the addition of
> PR_THP_DISABLE_EXCEPT_ADVISED flag:
> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>   is configured for the calling thread (with or without
>   PR_THP_DISABLE_EXCEPT_ADVISED).
> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>   completely for the process, or disable except madvise
>   (PR_THP_DISABLE_EXCEPT_ADVISED).
>=20
> [1] https://github.com/torvalds/linux/commit/9dc21bbd62edeae6f63e6f25e1ed=
b7167452457b
>=20
> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
> ---
> v1 -> v2 (Alejandro Colomar):
> - Fixed double negation on when MADV_HUGEPAGE will succeed
> - Turn return values of PR_GET_THP_DISABLE into a table
> - Turn madvise calls into full italics
> - Use semantic newlines

Thanks!  I've applied the patch.  I've amended a few things (see below).


Have a lovely day!
Alex

> ---
>  man/man2/madvise.2                      |  6 ++-
>  man/man2const/PR_GET_THP_DISABLE.2const | 20 +++++++---
>  man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>  3 files changed, 64 insertions(+), 14 deletions(-)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 7a4310c40..55c6f4a6c 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -372,9 +372,11 @@ or
>  .BR VM_PFNMAP ,
>  nor can it be stack memory or backed by a DAX-enabled device
>  (unless the DAX device is hot-plugged as System RAM).
> -The process must also not have
> +The process can have
>  .B PR_SET_THP_DISABLE
> -set (see
> +set only if
> +.B PR_THP_DISABLE_EXCEPT_ADVISED
> +flag is set (see

I've removed 'flag', for consistency.

>  .BR prctl (2)).
>  .IP
>  The
> diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_G=
ET_THP_DISABLE.2const
> index 38ff3b370..d63cff21c 100644
> --- a/man/man2const/PR_GET_THP_DISABLE.2const
> +++ b/man/man2const/PR_GET_THP_DISABLE.2const
> @@ -6,7 +6,7 @@
>  .SH NAME
>  PR_GET_THP_DISABLE
>  \-
> -get the state of the "THP disable" flag for the calling thread
> +get the state of the "THP disable" flags for the calling thread
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -18,13 +18,23 @@ Standard C library
>  .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
>  .fi
>  .SH DESCRIPTION
> -Return the current setting of
> -the "THP disable" flag for the calling thread:
> -either 1, if the flag is set, or 0, if it is not.
> +Return a value whose bits indicate how THP-disable is configured
> +for the calling thread.
> +The returned value is interpreted as follows:
> +.P
> +.TS
> +allbox;
> +cb cb cb l
> +c c c l.
> +Bit 1	Bit 0	Value	Description
> +0	0	0	No THP-disable behaviour specified.
> +0	1	1	THP is entirely disabled for this process.
> +1	1	3	THP-except-advised mode is set for this process.
> +.TE

I've replaced this by something simpler:

	.TP
	.B 0b00
	No THP-disable behaviour specified.
	.TP
	.B 0b01
	THP is entirely disabled for this process.
	.TP
	.B 0b11
	THP-except-advised mode is set for this process.

(0b is a binary prefix standardized in ISO C23, and it is now supported
 by printf(3) and strtol(3).)

>  .SH RETURN VALUE
>  On success,
>  .BR PR_GET_THP_DISABLE ,
> -returns the boolean value described above.
> +returns the value described above.
>  On error, \-1 is returned, and
>  .I errno
>  is set to indicate the error.
> diff --git a/man/man2const/PR_SET_THP_DISABLE.2const b/man/man2const/PR_S=
ET_THP_DISABLE.2const
> index 532beac66..75e17fa6a 100644
> --- a/man/man2const/PR_SET_THP_DISABLE.2const
> +++ b/man/man2const/PR_SET_THP_DISABLE.2const
> @@ -6,7 +6,7 @@
>  .SH NAME
>  PR_SET_THP_DISABLE
>  \-
> -set the state of the "THP disable" flag for the calling thread
> +set the state of the "THP disable" flags for the calling thread
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -15,15 +15,20 @@ Standard C library
>  .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
>  .B #include <sys/prctl.h>
>  .P
> -.BI "int prctl(PR_SET_THP_DISABLE, long " flag ", 0L, 0L, 0L);"
> +.BI "int prctl(PR_SET_THP_DISABLE, long " thp_disable ", unsigned long "=
 flags ", 0L, 0L);"
>  .fi
>  .SH DESCRIPTION
> -Set the state of the "THP disable" flag for the calling thread.
> +Set the state of the "THP disable" flags for the calling thread.
>  If
> -.I flag
> -has a nonzero value, the flag is set, otherwise it is cleared.
> +.I thp_disable
> +has a nonzero value,
> +the THP disable flag is set according to the value of
> +.I flags,

This should be

	.IR flags ,

> +otherwise it is cleared.
>  .P
> -Setting this flag provides a method
> +This
> +.BR prctl (2)
> +provides a method
>  for disabling transparent huge pages
>  for jobs where the code cannot be modified,
>  and using a
> @@ -31,10 +36,43 @@ and using a
>  hook with
>  .BR madvise (2)
>  is not an option (i.e., statically allocated data).
> -The setting of the "THP disable" flag is inherited by a child created via
> +The setting of the "THP disable" flags is inherited by a child created v=
ia
>  .BR fork (2)
>  and is preserved across
>  .BR execve (2).
> +.P
> +The behavior depends on the value of
> +.IR flags:

This should be:

	.IR flags :

> +.TP
> +.B 0
> +The
> +.BR prctl (2)
> +call will disable THPs completely for the process,
> +irrespective of global THP controls or
> +.BR MADV_COLLAPSE .
> +.TP
> +.B PR_THP_DISABLE_EXCEPT_ADVISED
> +The
> +.BR prctl (2)
> +call will disable THPs for the process
> +except when the usage of THPs is
> +advised.
> +Consequently, THPs will only be used when:
> +.RS
> +.IP \[bu] 3
> +Global THP controls are set to "always" or "madvise" and
> +.I \%madvise(...,\~MADV_HUGEPAGE)
> +or
> +.I \%madvise(...,\~MADV_COLLAPSE)
> +is used.
> +.IP \[bu]
> +Global THP controls are set to "never" and
> +.I \%madvise(...,\~MADV_COLLAPSE)
> +is used.
> +This is the same behavior
> +as if THPs would not be disabled on
> +a process level.
> +.RE
>  .SH RETURN VALUE
>  On success,
>  0 is returned.
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4wyadkjkygg3mzfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQgq0ACgkQ64mZXMKQ
wqkVpg//dH61N5UzmaeHTXlWBLA7iHcqrYnvNU6LXqDLaKtGTOxS9BVh9YftbLy5
GQKb+MtGwt+zwDWr1WOxEIM6mWGd8PG9xLyMu4ezLBe70YEFoD7uVEVk3ODfDaW8
Qv/GR8WEAHvq+qPAE0+V2aLq2omvsp/vc0ZJjKA0USGVJYADRRd1EBdRkZYcbSCC
dZpOqfrWhxdVlLgTrmPImuVP6iJLpa4YBG555KuNbEo48Ozua8ns2bfi6Bqy3/gI
1DShLlpDJm7aSlqMPpVL8Yxyu26/r2cO46s8Q5wUgvedAQY/sAjQFaIAqdFc3ZVs
FmMVNQweVbiGRlSSTk2fkpSl39GrDTX+v3X6wV8SZ9VXO4LdQUXxlPo3LktNGSpe
IgwvveD68YhCA3DLwXgIigE83dHgww+YU+FpTru/3xtA8RrBL2VfeCjbo1zCrtzZ
hD+bODGX94IZCiWxgosGh3/FPcy2cemMjq2/koCj/Kz2kveHd7JVHbCJoyEz96oP
aB0b+N5sV9SK08ndRAqtF2wtsrj9DKRFssaSNrFo+NbF8INhydNwFNGM8RD+/8Kf
dpFU2evLyGKzPGxSzP9AmI7sd1VVvy5x4np6cjT3yITWV7FyzHaIqYuuZPK9jRTA
EK7bg8Jz3ma8qk4Ixsoo1EPQfn/ERgRbIT8tHCOfhI+X0KOIDQc=
=c6Bk
-----END PGP SIGNATURE-----

--4wyadkjkygg3mzfu--

