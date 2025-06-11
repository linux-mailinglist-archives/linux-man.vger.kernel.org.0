Return-Path: <linux-man+bounces-3124-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E6DAD4EAA
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7708A1888AFD
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76EAF23ED6A;
	Wed, 11 Jun 2025 08:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm1n8smN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCDF23ABAF;
	Wed, 11 Jun 2025 08:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749631392; cv=none; b=TAqdniEY9V7HwjFWXVw/FA5Qogv+g7SZLQ/NoIIgOjjmCuP3MY29dSVwnrk1ZxAdJbMyGmj2oHPiHOP0tH/y4pITu0J0zQuN0gvsh4MM6gsnB8euht/66IxyQl35hGaFTYKR00uljiCiBzLaFa+RCR2SHUN54I2Dv+KgwY5jCQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749631392; c=relaxed/simple;
	bh=zccRcZCC4heQa5yDK/Muc0pngsx5uIkJF9+9yCQh5uA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BGDVKlE8FTyQNRr5p/OZQHA7A9YRyNwrdAeBPkDZjUjjxF5PaBESG53dfegwXjMyjlOMnyYsJK2e4LmFxEB2QfB08HqkHXaghNHuWzzccnRE72m9tZiXAmnikIdPW4F/jwIC6jNibyRqhCRH4yQ9UklXsduH3sZluoedcTc7+Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm1n8smN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58085C4CEEE;
	Wed, 11 Jun 2025 08:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749631391;
	bh=zccRcZCC4heQa5yDK/Muc0pngsx5uIkJF9+9yCQh5uA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mm1n8smNvtz9Q2trvXtT84dHoz/yYhE0HthDApLO7rQCC03xDbaO6LCUjoYpKA2jH
	 KAbEfQ+5KmlBxq9Gg0HB76za3pdlsL/yiLhSdIFBQbhDVn+x7JEFUlblAiDycaMCq0
	 G4dw87OY8CMXf7WVQV6fws/jUHbLX9oFxGjTnU2ai2H24ukQGNyQskpUpk5ZVTxa+A
	 aKoScP3pWJ8TG348c2jNVPul3BATMf9IDCvcTyse6Xyq09nmI99FhrkoEXgYJ5VchC
	 04c5H8KgoFBvhaBKSy06IpmfQ3/swIrd6ZkRKOWqsGWc5MobDjXRxughuD37Eoaaj0
	 cf/l5MfdUV99g==
Date: Wed, 11 Jun 2025 10:43:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Message-ID: <qgp2ueiyfwfd6t3fpwvnryrhnpy6rro5npsqjqzvkovhyawiyb@kl6igspxexqn>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-2-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7q7uoj3sczzyhnpr"
Content-Disposition: inline
In-Reply-To: <20250602140104.2769223-2-bigeasy@linutronix.de>


--7q7uoj3sczzyhnpr
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
Subject: Re: [PATCH v4 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-2-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250602140104.2769223-2-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Jun 02, 2025 at 04:01:01PM +0200, Sebastian Andrzej Siewior wrote:
> The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> Add some documentation of the interface.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

LGTM, thanks!  Please let me know when this is merged into Linus's tree.


Have a lovely day!
Alex

> ---
>  man/man2/prctl.2                   |  3 +
>  man/man2const/PR_FUTEX_HASH.2const | 89 ++++++++++++++++++++++++++++++
>  2 files changed, 92 insertions(+)
>  create mode 100644 man/man2const/PR_FUTEX_HASH.2const
>=20
> diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
> index cb5e75bf79ab2..ddfd1d1f5b940 100644
> --- a/man/man2/prctl.2
> +++ b/man/man2/prctl.2
> @@ -150,6 +150,8 @@ with a significance depending on the first one.
>  .B PR_GET_MDWE
>  .TQ
>  .B PR_RISCV_SET_ICACHE_FLUSH_CTX
> +.TQ
> +.B PR_FUTEX_HASH
>  .SH RETURN VALUE
>  On success,
>  a nonnegative value is returned.
> @@ -262,4 +264,5 @@ so these operations should be used with care.
>  .BR PR_SET_MDWE (2const),
>  .BR PR_GET_MDWE (2const),
>  .BR PR_RISCV_SET_ICACHE_FLUSH_CTX (2const),
> +.BR PR_FUTEX_HASH (2const),
>  .BR core (5)
> diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_=
HASH.2const
> new file mode 100644
> index 0000000000000..08511b18335b2
> --- /dev/null
> +++ b/man/man2const/PR_FUTEX_HASH.2const
> @@ -0,0 +1,89 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH PR_FUTEX_HASH 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +PR_FUTEX_HASH
> +\-
> +configure the private futex hash
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
> +.B #include <sys/prctl.h>
> +.P
> +.BI "int prctl(PR_FUTEX_HASH, unsigned long " op ", ...);"
> +.fi
> +.SH DESCRIPTION
> +Configure the attributes for the underlying hash used by the
> +.BR futex (2)
> +family of operations.
> +The Linux kernel uses a hash to distribute the unrelated
> +.BR futex (2)
> +requests to different data structures
> +in order to reduce the lock contention.
> +Unrelated requests are requests which are not related to one another
> +because they use a different futex word.
> +The data structure holds the in-kernel representation of the operation a=
nd
> +keeps track of the current users which are enqueued and wait for a wake =
up.
> +It also provides synchronisation of waiters against wakers.
> +The size of the global hash is determined at boot time
> +and is based on the number of CPUs in the system.
> +Due to hash collision,
> +two unrelated
> +.BR futex (2)
> +requests can share the same hash bucket.
> +This in turn can lead to delays of the
> +.BR futex (2)
> +operation due to lock contention while accessing the data structure.
> +These delays can be problematic on a real-time system
> +since random processes can
> +share in-kernel locks
> +and it is not deterministic which process will be involved.
> +.P
> +Linux 6.16 implements a process-wide private hash which is used by all
> +.BR futex (2)
> +operations that specify the
> +.B FUTEX_PRIVATE_FLAG
> +option as part of the operation.
> +Without any configuration
> +the kernel will allocate 16 hash slots
> +once the first thread has been created.
> +If the process continues to create threads,
> +the kernel will try to resize the private hash based on the number of th=
reads
> +and available CPUs in the system.
> +The kernel will only increase the size and will make sure it does not ex=
ceed
> +the size of the global hash.
> +.P
> +The user can configure the size of the private
> +hash which will also disable the
> +automatic resize provided by the kernel.
> +.P
> +The value in
> +.I op
> +is one of the options below.
> +.TP
> +.B PR_FUTEX_HASH_GET_IMMUTABLE
> +.TQ
> +.B PR_FUTEX_HASH_GET_SLOTS
> +.TQ
> +.B PR_FUTEX_HASH_SET_SLOTS
> +.SH RETURN VALUE
> +On success,
> +these calls return a nonnegative value.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.16.
> +.SH SEE ALSO
> +.BR prctl (2),
> +.BR futex (2),
> +.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
> +.BR PR_FUTEX_HASH_GET_SLOTS (2const),
> +.BR PR_FUTEX_HASH_SET_SLOTS (2const)
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--7q7uoj3sczzyhnpr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJQZoACgkQ64mZXMKQ
wqmIzRAAqS5YF0GzonCIg1sjMEvtJTiA7n9MgoXE3sko5bfcNjDzAia1EnaODzYk
EGJGca2SGsIiefbSjbmaNSCZ5w2uQ8n+8BP4Tdl+EkhGhFbf/uEWhUTGiYd98TXC
u7GlaZOttbBud24JOniKDhKXQBd9qXWwOdn5sDZ/5cAAW2nuxOJpIggf+ILVhF+j
wS1HOMc90xulzegXWC6zL/ROAaGNlcd4RYHgS2weuLyUBiKX4BFRcoRXEVe9OzdH
qX67VeEyRqbsOgadNJTAJY/NcdHLMyb2MkykENrdpLLtM9dokvo5iTy+cyDhgPRS
O/fjOZBdkwt2w9HIjbt8cnuDRCzFznO0iKe+ES11q8QbAwn/J3frfyfEBoLAsTxb
RxfBP2n7KVGZ+npSZ2xW4QXD76iuTGM6sVUj4QU5QHb6PFzMy9UBDnccMNjw68kg
mw7eZjQI0Nis3vRS+YPxh8QRtd3Ix4gsYR89a6ErHp5XLOvAkOq1xL6csy2WwJ+X
jzukn4pmu42zHDYX5d/lPw9Oq7qWdxrRS4jMLCXXaCav3YetMUK04FH/yRaLpvLn
HF5IaKlz09kMbhySEP6frd8nfLC4zwM87X74muIQirwnShIzJO3g2J7NxszvsieO
3zwhlIjLWB8ix2BysTiR8/PH76p67aVCLzF44F4vSIEpYIyM0cE=
=rZqZ
-----END PGP SIGNATURE-----

--7q7uoj3sczzyhnpr--

