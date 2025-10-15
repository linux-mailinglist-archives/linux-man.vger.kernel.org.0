Return-Path: <linux-man+bounces-4160-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAE6BE0D0F
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 398563AF4D0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265B92FC86C;
	Wed, 15 Oct 2025 21:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IohwDCXZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34692F90C4;
	Wed, 15 Oct 2025 21:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760563784; cv=none; b=CMerJ6x6sQ5JgcqkdC3UBOZrkl1Mkz3v0YuXda9gt4h16E21gexpRdJbMQW4j3EehNGplu8QJJaPO/w7jU+6bh2ZmK3dOW80sutFBRoQTRMgLUm9OnH81I11TpN4KUnlvEw2pfsHzHw5XU3rgptK+p0ZbBTjl7YIaTF0RnfxZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760563784; c=relaxed/simple;
	bh=HS6i/pBYjMvXBzaPKDcEFOI2RAx+uNQ+TIfM6YaWHSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jmkyBidOOMlr2j7pRQ1ZlvXMEq3I5wCZFwy5Dy9wmeMrE6asVJDkwnSIM5SpEZFrTf4yTM8QvmSqNuybYVTLaw8jdZAtF15EBXgLo09km7v3aabPtgj67GA+yv+hbRWM6PQ9IxHLw1a7w/pi2r5BFKgVMrNhVZ779+TAsh3My6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IohwDCXZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA713C4CEF8;
	Wed, 15 Oct 2025 21:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760563784;
	bh=HS6i/pBYjMvXBzaPKDcEFOI2RAx+uNQ+TIfM6YaWHSk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IohwDCXZw+HI5M5xn1MEFo0IjDJvLEO6Oxrq+sU50sJebRtnsOUOjHNAxuQzLt5XB
	 sQc34KMbR4VjNoVM5+KAe3gMDnDRxpJaenfiqBmAKGkzMHkI0UiWiclh3fvxgZehqJ
	 ffzSGmoNlaB3nAkX4Rrg2lzov5jR29FLlBi4OmrgrDHJHJ623Z2Gv4cZRqj1j6AzQU
	 LwbkuYi4Z25T+/YVRdsCtt9giv8zoIaY3MgZxSET4fXMsVEt09stL9eiwLZNJMnQCh
	 kcpCf/9yZJ8KgqEp1kByMlD2tvzMw4roe5uj4y2EPNjLHa2FtAzgWR6c8fEAvWnwF/
	 vmdge3sm+SOog==
Date: Wed, 15 Oct 2025 23:29:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2 1/5] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <ueacsjksonhqg6pt6hvlav4uhfms2vrqttfez3ouryud5myhb6@uunect56gya2>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-2-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ok23wencajuhdeod"
Content-Disposition: inline
In-Reply-To: <20250915141305.906440-2-bigeasy@linutronix.de>


--ok23wencajuhdeod
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2 1/5] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <ueacsjksonhqg6pt6hvlav4uhfms2vrqttfez3ouryud5myhb6@uunect56gya2>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-2-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250915141305.906440-2-bigeasy@linutronix.de>

Hi Sebastian,

Sorry for taking a month to reply.

On Mon, Sep 15, 2025 at 04:13:01PM +0200, Sebastian Andrzej Siewior wrote:
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch, and amended it with the following
change:

	diff --git c/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const i/man/man2const/=
PR_FUTEX_HASH_SET_SLOTS.2const
	index 1605c18c6..dfd97540c 100644
	--- c/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
	+++ i/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
	@@ -27,7 +27,7 @@ .SH DESCRIPTION
	 .TP
	 .I 0
	 Use the global hash.
	-This is the behaviour used before 6.17.
	+This is the behaviour used before Linux 6.17.
	 .TP
	 .I >0
	 Specify the number of slots to allocate.

Have a lovely night!
Alex

> ---
>  man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_SET_SLOTS.2const
> new file mode 100644
> index 0000000000000..1605c18c6985b
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> @@ -0,0 +1,67 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH_SET_SLOTS 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH_SET_SLOTS
> +\-
> +set the size of the private hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
> +.BI "          unsigned long " size ", unsigned long " flags ");
> +.fi
> +.SH DESCRIPTION
> +Set the number of slots to use for the private hash.
> +.TP
> +.I size
> +Specify the size of private hash to allocate.
> +.RS
> +.TP
> +.I 0
> +Use the global hash.
> +This is the behaviour used before 6.17.
> +.TP
> +.I >0
> +Specify the number of slots to allocate.
> +The value must be power of two, and the lowest possible value is 2.
> +The upper limit depends on the available memory in the system.
> +Each slot requires 64 bytes of memory.
> +Kernels compiled with
> +.I CONFIG_PROVE_LOCKING
> +will consume more than that.
> +.RE
> +.TP
> +.I flags
> +.RS
> +The argument must be 0.
> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EINVAL
> +An argument is invalid.
> +.TP
> +.B ENOMEM
> +Failed to allocate memory.
> +.TP
> +.B EBUSY
> +The global hash is in use and can not be changed.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.17.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const)
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ok23wencajuhdeod
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwEkMACgkQ64mZXMKQ
wqm12BAAlOhO2wkDTUSpIcotKfUT2By9agldaWx6+5tC+mMzFXdAVhrJIA8xBpWb
aiKgVw4xQgcm+OvjuBs+ejyehthuzUqUPIaKjlxu5OwfOlJfecrfllB07zICAIkB
lkKwDF+9Ifc3+eKIRBR5sdUvjN9wCoWgWyndxWEvoTq4xdSgGFlm4KLtZl7apXgU
sfn46hH0nsLHnYae35LJrq7YdkF/k9oiL4+4OvqSFaBJ5BUBpONljrTftB4eekgu
pMY3e4bvCmTKfMIMZqWA2TJgHiPe7qDBECQIDP09efUCN+TgaUIBfZxW3dY2dBOP
7jqTGzLZTI/9S/ZQPRdV4Ls/Kh3r4ifH/NeVIp6TMrq1IW0wOK5zFfOkARzKI0jS
BFMDgW1FWRMoB8OQZ7EBw/TcWfeTiNUvrWIStVsp7iW4g3rpEmLeDusA4k5wkDNH
mjUPWgEIvsegPmBxVgbMkUZ2eCrukxVabB2BUVLoCmW1sylpWo0sIjHFmX9SHYei
MJCLXw8y74X6pl58YPBZgUSa1j5Pd7Nnaj3SfjHXdw6Y7s4BMEbbi4A0MWos8m8Q
skgefr+i1tdPd+an352vzv6O4f/OA1aS3LPwrJKm51r4E7XsrKejVrptSOXi+gQr
VxRLAh1s9duWiVj8yK/k4YVqiwEkLBvEAsdUoSLwqxoFGYz6z6M=
=OfOu
-----END PGP SIGNATURE-----

--ok23wencajuhdeod--

