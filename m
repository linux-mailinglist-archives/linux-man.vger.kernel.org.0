Return-Path: <linux-man+bounces-4161-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1433BE0D63
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EAE419C744A
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96C42FFDF2;
	Wed, 15 Oct 2025 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODmVc6J0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A5B2FF67A;
	Wed, 15 Oct 2025 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564434; cv=none; b=WqDm/K2jNmcIl25c3LNcRgLpXp7yURbIaAmzE/zvVENOUnRjBqwN153Ysabr5b0niPOAD4AYImAv9ksvrQ9RuCDrJd7FvM/aWHbWpbFr+9Ia9NAODB43VqcNCIXshDXKMOdtSM8wYf5zO+mTfbQfDfReHIk6vacx3a3mKo+ZqdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564434; c=relaxed/simple;
	bh=WKfZEPnTf3pc2qBTMBE9UypqrBWAxUjB8feJIBXgGeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I6tHKltXbchQ/zFRF3OYbMKZAunkmVcI84Brt1wtiV+TE3p/cv1vE1vcyhnoKhCQwhncR6cBEM5SPjnOh3BunE/m5LaQ9m9JrdKTWLjaEvGrjaZXYpSZSvTUd5FuVrPpZaAlQAZbMF7ncPBvKD352jdT+/aDzZWJzGdctLdM7lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODmVc6J0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63A8CC4CEF8;
	Wed, 15 Oct 2025 21:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760564433;
	bh=WKfZEPnTf3pc2qBTMBE9UypqrBWAxUjB8feJIBXgGeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODmVc6J0+MG4S47Jjgn0gLJMBJOOm9s+9Vbp/sIjePjyOFJNEBXbd7w48M/qbwBhZ
	 +G9neXjMxk91r6YkntUUZxYJ534z+wDvr3t9oop/jK0XrqvZBeJuTO9peU2fh1lWY4
	 d+oCuKQG+6t6noixJF0AD2azfcBpUEoz7S9HmbkcbGnw7w2EOd6313gIywmvvEle9W
	 qNq2KXOGEx0fF0O/PMqPULH7IB4fDHTIoUj2sNNEqXMxUThtET1polBywPM8g8hD2J
	 aTnDAiEuXHLptagC5bjlCu1MZ/ZWchkKtV7cHsz0f082yEkxbBBEI1ttav0I3tpU8V
	 /OEZUER/l197A==
Date: Wed, 15 Oct 2025 23:40:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v2 2/5] man/man7/sched.7: Update the real-time section
Message-ID: <l3u4eon4paxymk4zxre7trz5jxkrc7vr3ohkdmmvvkw2n6lofl@5m7lz332hyr4>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-3-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dnyggwyokbftrpyw"
Content-Disposition: inline
In-Reply-To: <20250915141305.906440-3-bigeasy@linutronix.de>


--dnyggwyokbftrpyw
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
Subject: Re: [PATCH v2 2/5] man/man7/sched.7: Update the real-time section
Message-ID: <l3u4eon4paxymk4zxre7trz5jxkrc7vr3ohkdmmvvkw2n6lofl@5m7lz332hyr4>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
 <20250915141305.906440-3-bigeasy@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250915141305.906440-3-bigeasy@linutronix.de>

Hi Sebastian,

On Mon, Sep 15, 2025 at 04:13:02PM +0200, Sebastian Andrzej Siewior wrote:
> Update the outdated information:
> - The PREEMPT_RT patch is merged. The patch continues to exist (as of
>   now) but is not mandatory.
> - The patch can be still downloaded but most people use the git tree
>   these days. Add a reference to it.
> - CONFIG_PREEMPT_DESKTOP was never thing as far as I remember. It was
>   always CONFIG_PREEMPT and its description referred to "low latency
>   desktop".
> - Within the PREEMPT-RT patch there was a brief window which introduced
>   PREEMPT_RT_BASE and PREEMPT_RT_FULL. I am going to ignore this.
> - The introduction of PREEMPT_LAZY in 6.13 moved PREEMPT_RT from a
>   preemption model to an option.
> - The mentioned wiki is deprecated. Update the URL to the new one.
>=20
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Thanks!  I've applied the patch, with the following amendment:

	diff --git i/man/man7/sched.7 w/man/man7/sched.7
	index 51300d611..9622c1824 100644
	--- i/man/man7/sched.7
	+++ w/man/man7/sched.7
	@@ -960,18 +960,18 @@ .SS Real-time features in the mainline Linux kernel
	 or cloned from a git tree
	 .UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/rt\:/linu=
x-stable-rt.git
	 .UE .
	-The individual releases are maintained as long as
	-the matching LTS kernel is maintained.
	+The individual releases are maintained
	+as long as the matching LTS kernel is maintained.
	 .P
	-Since 6.12 it possible to enable the real-time preemption
	+Since Linux 6.12 it possible to enable the real-time preemption
	 without the need for any patches.
	 The
	 .I realtime\-patch
	 continues to exist and contains support
	-for not yet integrated architectures,
	-drivers and features that are in development.
	+for not-yet-integrated architectures,
	+drivers, and features that are in development.
	 .P
	-Since 6.13 real-time becomes an option
	+Since Linux 6.13 real-time became an option
	 and not a preemption model.
	 With this change,
	 the following preemption models are available:
	@@ -982,13 +982,13 @@ .SS Real-time features in the mainline Linux kernel
	 .BR CONFIG_PREEMPT_LAZY .
	 The real-time capabilities can be enabled with the option
	 .B CONFIG_PREEMPT_RT
	-and the preemption model be set to either
	+and the preemption model can be set to either
	 .B CONFIG_PREEMPT
	 or
	 .BR CONFIG_PREEMPT_LAZY .
	 The latter model is less eager to preempt
	 .B SCHED_NORMAL
	-tasks in an attempt to reduce lock holder preemption.
	+tasks in an attempt to reduce lock-holder preemption.
	 It does not affect real-time tasks.
	 .P
	 With


Cheers,
Alex

> ---
>  man/man7/sched.7 | 58 ++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 41 insertions(+), 17 deletions(-)
>=20
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index 3299c21dc1ad8..db7753c9e912c 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -933,16 +933,12 @@ the following to modify the autogroup nice value for
>  .EE
>  .in
>  .SS Real-time features in the mainline Linux kernel
> -.\" FIXME . Probably this text will need some minor tweaking
> -.\" ask Carsten Emde about this.
> +.\" The archaeologist knows about v2.6.9-mm1-V0.1-realtime-preempt
>  Since Linux 2.6.18, Linux is gradually
>  becoming equipped with real-time capabilities,
>  most of which are derived from the former
>  .I realtime\-preempt
>  patch set.
> -Until the patches have been completely merged into the
> -mainline kernel,
> -they must be installed to achieve the best real-time performance.
>  These patches are named:
>  .P
>  .in +4n
> @@ -953,24 +949,52 @@ they must be installed to achieve the best real-tim=
e performance.
>  .P
>  and can be downloaded from
>  .UR http://www.kernel.org\:/pub\:/linux\:/kernel\:/projects\:/rt/
> +.UE
> +or cloned from a git tree
> +.UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/rt\:/lin=
ux-stable-rt.git
>  .UE .
> +The individual releases are maintained as long as
> +the matching LTS kernel is maintained.
>  .P
> -Without the patches and prior to their full inclusion into the mainline
> -kernel, the kernel configuration offers only the three preemption classes
> +Since 6.12 it possible to enable the real-time preemption
> +without the need for any patches.
> +The
> +.I realtime\-patch
> +continues to exist and contains support
> +for not yet integrated architectures,
> +drivers and features that are in development.
> +.P
> +Since 6.13 real-time becomes an option
> +and not a preemption model.
> +With this change,
> +the following preemption models are available:
>  .BR CONFIG_PREEMPT_NONE ,
>  .BR CONFIG_PREEMPT_VOLUNTARY ,
> +.BR CONFIG_PREEMPT ,
>  and
> -.B CONFIG_PREEMPT_DESKTOP
> -which respectively provide no, some, and considerable
> -reduction of the worst-case scheduling latency.
> -.P
> -With the patches applied or after their full inclusion into the mainline
> -kernel, the additional configuration item
> +.BR CONFIG_PREEMPT_LAZY .
> +The real-time capabilities can be enabled with the option
>  .B CONFIG_PREEMPT_RT
> -becomes available.
> -If this is selected, Linux is transformed into a regular
> +and the preemption model be set to either
> +.B CONFIG_PREEMPT
> +or
> +.BR CONFIG_PREEMPT_LAZY .
> +The latter model is less eager to preempt
> +.B SCHED_NORMAL
> +tasks in an attempt to reduce lock holder preemption.
> +It does not affect real-time tasks.
> +.P
> +With
> +.B CONFIG_PREEMPT_RT
> +enabled,
> +Linux is transformed into a regular
>  real-time operating system.
> -The FIFO and RR scheduling policies are then used to run a thread
> +The
> +.BR SCHED_FIFO ,
> +.BR SCHED_RR ,
> +and
> +.B SCHED_DEADLINE
> +scheduling policies are then used to run a thread
>  with true real-time priority and a minimum worst-case scheduling latency.
>  .SH NOTES
>  The
> @@ -1032,5 +1056,5 @@ and
>  .I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
>  .P
>  Worth looking at:
> -.UR http://rt.wiki.kernel.org/\:index.php
> +.UR https://wiki.linuxfoundation.org/\:realtime/\:start
>  .UE
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--dnyggwyokbftrpyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjwFMwACgkQ64mZXMKQ
wqlapQ//bP8Dpyj9R+yDIN+XJeOIe89LsK565S6JaOPH4emz2do+iL57+sIJ7qOL
iD5/0SKyVBx2wRL9+ZQiGnKS7LR/US9dv34IuP6R74sloGk0/w2UNSo5IL/jmxtf
k1uZKunBsWFy6X51fuWQQ+2wch4x0LLzaj9vS+GqTFD0X3SRumW0HN+Ea0vtS4ef
Qho4QJ5OdEg0SnNyur2miiNAVMn0INXlqEXva4NAulPH5CcH8ecQmox2ZqLo/NIu
7EbDk/j8ulVZGcjJCRQJEMOgP2Ys+AEuGm9ulyuL1VWjxa5D/EGxj6HsUr2RWYiQ
rmGtQ6ZPew37L49T6b5Fl1+nMLrGW8YuG8mIcMbVpu9XqCqrv0QpGtLsiPqp0pHq
ilI4Xyaa31k8Y/Yr9uP3ISagQjpDsGdc5m9lLp+NT9F0D2Y+in2DP3liRGdP6O/a
9CAGZ/S2eV0eheK9y3kLTic2KGvNpzV7WzWoE6xkEQwEtEBpJhYclMshGAGb3Dhj
F+5dOhaWf1IL98WlDRQE0BQCpqw81kHwulFZcIZOi5vum/p61PAUz5xPzIXOER52
IgQAvYERS2iMhUVf6oJk0GZdYsLq9NVWeYeVTh3mYIj4xVLC3wKl1QIkBg/MErJV
OQu3QnSvQw6h5uUPI+MTSB+LOwE92h4nSlznu/KPpX7ocyUThsg=
=xX8P
-----END PGP SIGNATURE-----

--dnyggwyokbftrpyw--

