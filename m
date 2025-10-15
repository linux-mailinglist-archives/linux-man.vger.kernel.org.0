Return-Path: <linux-man+bounces-4164-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 07749BE0DFF
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:53:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9E7F84E8CB0
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13FF303A2E;
	Wed, 15 Oct 2025 21:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVuZZ5E3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0BE226863;
	Wed, 15 Oct 2025 21:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760565226; cv=none; b=nk28H2LGeqOTwiEY3PqVfrgz0I4914iz7fFUA8/hnm40LiPq0UtL7wX2WocG27BGdyBur2rjW+XrcsWMh8UxKsbJhrC0bGPfeWf7UjvkMYMlR2dLYYFIhg6wZ7lKCLZfbG/lZADoBezxnPxC3jncu37i6sdSXyKaRKoW4eP1Vg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760565226; c=relaxed/simple;
	bh=TUP3G+3YBjuKMU90+gsh+SHhAT+Wrly3xy+ikFDxeNc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sIt4Nx5jEcPL+Ohc6ba6WQ5TnDSLGNS1l/Fplxip5fOlOzi1SXUrTUYqfG8oW+CSFTDlRjpGbRiVpGKU30jQM3eaqRfKsbztKDIEw2+o4zZk9TOtNseCuT7sUG+uwOgyP7FJNJk11CXpN/OMCHYsUqVXRTRxRLzBoO8cEuDn+j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVuZZ5E3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70F03C4CEF8;
	Wed, 15 Oct 2025 21:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760565225;
	bh=TUP3G+3YBjuKMU90+gsh+SHhAT+Wrly3xy+ikFDxeNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hVuZZ5E37mL2DdQWd0Wsg/fpBLcG2a1zeHEBf/8MjqmRSSbJrBVxYwDCdDwaxIKMK
	 rDSvDMUH4M+/8klTwgRcZ7+r2L5wZ/5MgJGmS65oLwTCxWEY0+VL/Y0hcE67A9lRdP
	 /FF6d5Q3bh0sWrYJmLjkOJWZpOo1YnxvWzbt33qSKtmtCBxsBBTdDHX6Al2TJOaWXf
	 cFolv/MEhXR4BtFRovn0LqmV9KOQHVfPPIaxYeXKiEdX7dauePRK7lq8M4KtY7I2dc
	 VkxSb1JAu3sv2YnzBR9/xNGsSysHKQAvd41YJxeZFonB7TgGawGL8QG1zoQXasIPUf
	 q4Ct0FpE7Xhlw==
Date: Wed, 15 Oct 2025 23:53:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2 5/5] man/man3/pthread_cond_init.3: Add a note
 regarding real-time usage
Message-ID: <e2i2tn3a7i4ehzoeglv4n52q657hn4l3vauial2xyaqyrjyvcm@vagxk3mquxfw>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-6-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gsvjs2qzdyde7s4d"
Content-Disposition: inline
In-Reply-To: <20250915141305.906440-6-bigeasy@linutronix.de>


--gsvjs2qzdyde7s4d
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
Subject: Re: [PATCH v2 5/5] man/man3/pthread_cond_init.3: Add a note
 regarding real-time usage
Message-ID: <e2i2tn3a7i4ehzoeglv4n52q657hn4l3vauial2xyaqyrjyvcm@vagxk3mquxfw>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-6-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250915141305.906440-6-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Sep 15, 2025 at 04:13:05PM +0200, Sebastian Andrzej Siewior wrote:
> The "old" implementation led to priority inversion and was more or less
> easy to trigger. It seems that after the rewrite the issue disappeared
> especially since the old workaround does not apply anymore.
>=20
> Add a note mentioning the old problem and why the issue is not gone
> since the rewrite in glibc 2.25 but harder to trigger.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch, with the following amendments:

	diff --git i/man/man3/pthread_cond_init.3 w/man/man3/pthread_cond_init.3
	index 779f6de6d..9c151dd8c 100644
	--- i/man/man3/pthread_cond_init.3
	+++ w/man/man3/pthread_cond_init.3
	@@ -115,7 +115,7 @@ .SH DESCRIPTION
	 this guarantees that the condition cannot be signaled (and thus ignored)
	 between the time a thread locks the mutex
	 and the time it waits on the condition variable.
	-See NOTES below.
	+See CAVEATS below.
	 .P
	 .BR pthread_cond_timedwait ()
	 atomically unlocks
	@@ -241,13 +241,14 @@ .SH "SEE ALSO"
	 .BR gettimeofday (2),
	 .BR nanosleep (2).
	 .
	-.SH NOTES
	+.SH CAVEATS
	 The implementation of the provided functions until
	 glibc 2.25 used an internal data lock.
	 This lock did not support priority-inheritance and
	 was subject to unbounded priority inversion,
	 visible on a real-time system.
	-After the rewrite of the implementation in 2.25
	+.P
	+After the rewrite of the implementation in glibc 2.25
	 the usage of internal lock changed.
	 The internal lock is always acquired by
	 the signaling functions
	@@ -256,10 +257,11 @@ .SH NOTES
	 .BR pthread_cond_broadcast ().
	 The waiting function acquires the lock
	 if the waiting process was interrupted.
	-The interruption can be caused for instance by a specified timeout
	+The interruption can be caused for instance by a specified timeout,
	 and denoted by the error value
	-.B ETIMEDOUT
	-or a received signal which is denoted by the error value
	+.BR ETIMEDOUTA ,
	+or by a received signal,
	+which is denoted by the error value
	 .BR EINTR .
	 .
	 .SH EXAMPLE


Cheers,
Alex

> ---
>  man/man3/pthread_cond_init.3 | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>=20
> diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
> index 0045e7ecee075..779f6de6d064b 100644
> --- a/man/man3/pthread_cond_init.3
> +++ b/man/man3/pthread_cond_init.3
> @@ -115,6 +115,7 @@ if all threads always acquire the mutex before signal=
ing the condition,
>  this guarantees that the condition cannot be signaled (and thus ignored)
>  between the time a thread locks the mutex
>  and the time it waits on the condition variable.
> +See NOTES below.
>  .P
>  .BR pthread_cond_timedwait ()
>  atomically unlocks
> @@ -240,6 +241,26 @@ Some threads are currently waiting on
>  .BR gettimeofday (2),
>  .BR nanosleep (2).
>  .
> +.SH NOTES
> +The implementation of the provided functions until
> +glibc 2.25 used an internal data lock.
> +This lock did not support priority-inheritance and
> +was subject to unbounded priority inversion,
> +visible on a real-time system.
> +After the rewrite of the implementation in 2.25
> +the usage of internal lock changed.
> +The internal lock is always acquired by
> +the signaling functions
> +.BR pthread_cond_signal ()
> +and
> +.BR pthread_cond_broadcast ().
> +The waiting function acquires the lock
> +if the waiting process was interrupted.
> +The interruption can be caused for instance by a specified timeout
> +and denoted by the error value
> +.B ETIMEDOUT
> +or a received signal which is denoted by the error value
> +.BR EINTR .
>  .
>  .SH EXAMPLE
>  Consider two shared variables
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--gsvjs2qzdyde7s4d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwF+QACgkQ64mZXMKQ
wqm2cw//YqWq53J159zcl52qzbL4qJlktdZYuMfFM+igA8cl5GmEOObRglXMEFt6
4HciWEkSHQhEAR+leyKA6JJ7fQxCEeNKvKPQpsh87dQW+kNZFxDeA7iaZMqJfnw+
Fkz4ghHO31G0hmjAfQ5qlNz9Al1gE12j+dOmHBgb3IaBr8+zLKQsawcp88LWPxdn
TqUDlF+/y78ImVAbqCmVXUyuwvQiQjlzrUUzm5fUK9UROw0quRt8Yvv4QdhjUO+w
djaYCMahRerp2QfyEM8Mqn8yjKGpVs4EA0tyeMOs48uNL4lGS4Ry+RUOVyB6ddFr
sjoWKufqZPy/XpiKWaRxTJl5Wr/TX0UKy+dyVUv+tV+YZiClfI2dwURyp+c+DYME
xW3q4drckn+W+KtAmKApd5o+Xb62c4b2OMCupkPUpb16B2Xx2axszmNbrTk9lPif
90TM2Fts29uDqENgBd+DeAz/kszeRD/QJect+hDqmWBl7hUim1AXqMjFmk7hnkM4
deF6sQAhKWsdKcNrX9ulkU6UKLV8UPfLtkIRCWvMknSG5WCrd2QH0tRoo8Db6Law
j6dVMMYRyJGA/uglK1F5yXj1WYDSGFh267U/4yFXPpvbIQ3ueIK4pJtp7JZa6ou8
sy3cn6yYmitG7muC0WwB0mz7mKyRGEMs9WRomyJTNQAEFf03IUU=
=+mw2
-----END PGP SIGNATURE-----

--gsvjs2qzdyde7s4d--

