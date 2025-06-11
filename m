Return-Path: <linux-man+bounces-3127-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA80AD4EE2
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7871166F42
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89EC23F40C;
	Wed, 11 Jun 2025 08:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+rzgP9G"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73335136996;
	Wed, 11 Jun 2025 08:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631963; cv=none; b=ZEo7dLK38YIHkKuM8yv4/bBnFOURioZpzNnj5XgAKF7DmwUGKKSx6CCNAhglst7g9V3CLjtRVl6MTLm5m6AdgIPLEmO3nhh/PSvoKecU5r/P+XhA965WZVFU/UNco5zcl2Nxnc85TwS3E5fdDl25uwFqG5KL3H/dVykPtrEVGJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631963; c=relaxed/simple;
	bh=fA14+yQbBTNWTTTLTwDKlOFpxLOZyO3p8kAVr5QkUTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ncDT6slDQA2z16BBSWqiPNM3yli+50aS3mpxaQ+7ndqdlG9k+qm3jY0UjPzeXRbSZsS7pQkRlN6OZwkxo4Ui5CN41X/6tUHVztrRYc0sf3RVgCm0XG6G/74roCphGeP9ia5U100lQckYqXs5wfF2zm1IPMK6mC8fdVrwOaBUXLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+rzgP9G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B519CC4CEEE;
	Wed, 11 Jun 2025 08:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749631962;
	bh=fA14+yQbBTNWTTTLTwDKlOFpxLOZyO3p8kAVr5QkUTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J+rzgP9GKMRCFYPB1kMXbx+rJW+H+c2Rmzvt0899go5VOmNppl4gAd7Xp1zMpQHIF
	 06YDvHILjOF0tpIsUOjFcecrr6xBzVTiNxMbqe7dco5f/DufaWVUvRFKCW2X9rkLzV
	 im8U8gUOm0TY7xUnqTGyA9jI9OnMDFBKj6y4XIbyIIDb64QME354rxwH2p8IiY4ung
	 0U1E8+q+m+jwvRSPyTTiQJ/9kmABJ8Ed2y02oLynEFZX8lsBXSBkcQDlBtrSULt6dZ
	 KaT1LO4DYAXEJB/oltBSR/jeNh3d1kDP/bQF2Gsd8Mlm5n9JAuO+gAVRKtNijt9xEE
	 IzG3/pgRmIq6w==
Date: Wed, 11 Jun 2025 10:52:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 3/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const:
 Document PR_FUTEX_HASH_GET_SLOTS
Message-ID: <k6m7trn4dr3g7yacpw3a6ze4nhcrdkfqmib75sbti4mtv53o3m@o523ifdqzikz>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-4-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a43a2w5iocg3orf6"
Content-Disposition: inline
In-Reply-To: <20250602140104.2769223-4-bigeasy@linutronix.de>


--a43a2w5iocg3orf6
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
Subject: Re: [PATCH v4 3/4] man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const:
 Document PR_FUTEX_HASH_GET_SLOTS
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-4-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250602140104.2769223-4-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Jun 02, 2025 at 04:01:03PM +0200, Sebastian Andrzej Siewior wrote:
> Reviewed-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 37 ++++++++++++++++++++
>  man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const |  7 ++--
>  2 files changed, 40 insertions(+), 4 deletions(-)
>  create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
>=20
> diff --git a/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_GET_SLOTS.2const
> new file mode 100644
> index 0000000000000..f5c6380ef1fe7
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
> @@ -0,0 +1,37 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH_GET_SLOTS 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH_GET_SLOTS
> +\-
> +return the size of the private hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_GET_SLOTS);
> +.fi
> +.SH DESCRIPTION
> +Return the current size of the private hash.
> +.SH RETURN VALUE
> +A value of 0 means that a private hash has not been allocated
> +and the global hash is in use.
> +A value >0 specifies the size of the private hash.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR PR_FUTEX_HASH (2const),
> +.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
> +.BR PR_FUTEX_HASH_SET_SLOTS (2const)
> diff --git a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const b/man/man2const=
/PR_FUTEX_HASH_SET_SLOTS.2const
> index 1f08d1bb30485..531e3bcca112d 100644
> --- a/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> +++ b/man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const
> @@ -29,7 +29,7 @@ Specifies the size of private hash to allocate.
>  Use the global hash.
>  This is the behaviour used before 6.16.
>  The operation implies the
> -.I FH_FLAG_IMMUTABLE
> +.B FH_FLAG_IMMUTABLE

This seems like a rebase accident.  This does not belong in this patch.
A few others below too.


Cheers,
Alex

>  flag.
>  .TP
>  .I >0
> @@ -38,7 +38,7 @@ The value must be power of two and the lowest possible =
value is 2.
>  The upper limit depends on the available memory in the system.
>  Each slot requires 64bytes of memory.
>  Kernels compiled with
> -.I CONFIG_PROVE_LOCKING
> +.B CONFIG_PROVE_LOCKING
>  will consume more than that.
>  .RE
>  .TP
> @@ -46,7 +46,7 @@ will consume more than that.
>  .RS
>  The following flags can be specified:
>  .TP
> -.I FH_FLAG_IMMUTABLE
> +.B FH_FLAG_IMMUTABLE
>  The private hash can no longer be changed.
>  By using an immutable private hash
>  the kernel can avoid some accounting for the data structure.
> @@ -54,7 +54,6 @@ This accounting is visible in benchmarks if many
>  .BR futex (2)
>  operations are invoked in parallel on different CPUs.
>  .RE
> -.RE
>  .SH RETURN VALUE
>  On success,
>  0 is returned.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--a43a2w5iocg3orf6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJQ9UACgkQ64mZXMKQ
wqmPZA/+ImCMFAJMrWDbqxisqZab69+wzr6X27yUthBmvOrFHHFE0ABWX4YQsfsU
wysNpPC1nGE8cDKBNOZKNQGnH0DlHsFTyI0cJH2Ssgw2wcJq+0zTbA2jQM1KSA1w
RJ4WZ/1WfwsdPsFQGOkir+KvncSMHaKj0Rro61tPeWGVYTCy0YOFTDdMWAcq8Y4m
wOEAqtkPQz4wfD+Irz1x/zmQSkYTRC4C9bKg91BVLR9emX+CgJJBSnJU17rclWN6
aB4SJe8tB7SRoprowdbSieafvSfzrNxQurotmL3FNthsDWNPMJ3aQBTUaqI8tviM
2ouZOiZ6FJUdjn8v7EMKfc6MFZR/+VIRwLCxQIi5lH0mm5lWbVmY7MYykr69t9Qd
ONF+xj4vrumfNGjRMiApiicFf6vFnLTX3jqn+8XpOZrB4A//sGt0MGifPTodxcAx
PPJOmBIfJv4M7dXdYSVJRJi/nBMEwr4SGdwGT3PBAcZ9TQ95AFiAllyHAJ70/Yr7
2Cc9Jey8nHb4/dTm/BDxVp9wOy9MPC2axIC8KMHSu0QfCWm2SMMwLCMXywy5pP83
OMOZO2GHH99lGl6sT5SLfHQL0CrfAAeuM00n9L05j9X8bQpOqqGCRqef8SYdZWMv
M0WueqAWPLM+BeRb65uVGI2Y2UAi5xGts/Cv5WsX6Es+CG79gIY=
=4dmv
-----END PGP SIGNATURE-----

--a43a2w5iocg3orf6--

