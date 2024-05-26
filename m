Return-Path: <linux-man+bounces-996-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B58CF3F2
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 12:37:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BDEDB2140B
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 10:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C0E9454;
	Sun, 26 May 2024 10:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgAfAIir"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480648F4E
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 10:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716719825; cv=none; b=pTWDoFsmqOy9L98h4RYTNertFlK6XT5XcGhVFBkA2sb5I56dG+G/+QpVjqhlnkRf6+XfUAmSCD9TVr8lENcoFSl5Jl3xmz0x/OqTy7NcxZf24ecaH0q8xLcLyjts9Wr/cszfvts3YjJwkpA2bFyu5iz6o5/Mseh80sRiXicqH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716719825; c=relaxed/simple;
	bh=L8wvuRCPZjIyyCB/vMqYH7LEmxQnXKTeeafvTtVPHdc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LUaAr7T5j092ZU07IfBFN87lesTF08qjeabm2OSmN8ugTF0HfEk7rWzV7kY340mgYFWgapiiJU8rwgH8iviqMJf6XwXq9sOcGtzXs3mt/1i3y73/E1RAHxGvrMkU1bEqqWvDmxlx+tRiXrFyw17EoVskBJen3McFvvbKH4Deq4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgAfAIir; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87106C32782;
	Sun, 26 May 2024 10:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716719824;
	bh=L8wvuRCPZjIyyCB/vMqYH7LEmxQnXKTeeafvTtVPHdc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AgAfAIirL17OJMISdby/MWS9qJfRc1SsO18yrOHH4wnzb0bO2s+AauEkfpi+egaXI
	 f77eNjTIkxfjG3rquzZdI/z7REUh7MGvxQIOSlT49ELvvxkJZiAM0odRnUDIBXZquK
	 CRWmmbpyOo/OxaGubrAuf9oxeMTdkzPJNLHgbP3eTrOijp9B5J2MlMt6L+8XZaWDfk
	 zO1W8AG5EujfW99xeHVUIGjO24U0zK5s2eenLo/CyNMPCMhAu2ToO7lGS7ZD3K6Jzg
	 r3+Pps48S4Z8/hkWVtLW6iabjgkgaVbyGcWxBXiMA/5SDVOxwNTeLRQtKa2z2AWWfl
	 BFuEBU0157amg==
Date: Sun, 26 May 2024 12:36:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <erkmfrnua26323vx26kmzv7ynrt2vpub3pmrotr4wmvlujpfyi@42xwmyjyjt22>
References: <20240524190829.2503648-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u7dl2lg6r2fopng2"
Content-Disposition: inline
In-Reply-To: <20240524190829.2503648-1-briannorris@chromium.org>


--u7dl2lg6r2fopng2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] sched_setattr.2: Document sched_util_{min,max}
References: <20240524190829.2503648-1-briannorris@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20240524190829.2503648-1-briannorris@chromium.org>

Hi Brian,

On Fri, May 24, 2024 at 12:08:28PM GMT, Brian Norris wrote:
> Utilization attributes were added in Linux v5.3 via commit a509a7cd7974
> ("sched/uclamp: Extend sched_setattr() to support utilization
> clamping"). Borrow some documentation from there, with a bit of
> editorial trimming and augmentation.
>=20
> The "reset" (-1 / UINT32_MAX) behavior was added in Linux 5.11 via
> commit 480a6ca2dc6e ("sched/uclamp: Allow to reset a task uclamp
> constraint value").
>=20
> Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
> Cc: Patrick Bellasi <patrick.bellasi@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>  man/man2/sched_setattr.2 | 65 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 63 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> index 5d7061bd6e3a..4b940d76de53 100644
> --- a/man/man2/sched_setattr.2
> +++ b/man/man2/sched_setattr.2
> @@ -94,10 +94,14 @@ .SS sched_setattr()
>                                SCHED_BATCH) */
>      u32 sched_priority;    /* Static priority (SCHED_FIFO,
>                                SCHED_RR) */
> -    /* Remaining fields are for SCHED_DEADLINE */
> +    /* For SCHED_DEADLINE */

LGTM.

>      u64 sched_runtime;
>      u64 sched_deadline;
>      u64 sched_period;
> +

Please don't use blank lines in the source code.  They trigger a
warning.  For that, you can use the dummy escape sequence:

\&

> +    /* Utilization hints */
> +    u32 sched_util_min;
> +    u32 sched_util_max;

LGTM.

>  };
>  .EE
>  .in
> @@ -186,6 +190,20 @@ .SS sched_setattr()
>  On the other hand, if the process-directed signal is delivered to
>  a thread inside the process other than the one that had a run-time overr=
un,
>  the application has no way of knowing which thread overran.
> +.TP
> +.BR SCHED_FLAG_UTIL_CLAMP_MIN ", " SCHED_FLAG_UTIL_CLAMP_MAX " (since Li=
nux 5.3)"

I'd use separate tags, with TQ:

=2ETP
=2EB SCHED_FLAG_UTIL_CLAMP_MIN
=2ETQ
=2EBR SCHED_FLAG_UTIL_CLAMP_MAX " (both since Linux 5.3)"

> +These flags indicate that the
> +.I
> +sched_util_min
> +or
> +.I
> +sched_util_max
> +fields, respectively, are present, representing the expected minimum and
> +maximum utilization of the thread.

Please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +.IP
> +The utilization attributes provide the scheduler with boundaries within =
which
> +it should schedule the thread, potentially informing its decisions regar=
ding
> +task placement and frequency selection.
>  .RE
>  .TP
>  .I sched_nice
> @@ -228,6 +246,33 @@ .SS sched_setattr()
>  .I sched_period
>  This field specifies the "Period" parameter for deadline scheduling.
>  The value is expressed in nanoseconds.
> +.TP
> +.IR sched_util_min ", " sched_util_max " (since Linux 5.3)"

=2ETP
=2EI sched_util_min
=2ETQ
=2EIR sched_util_max " (both since Linux 5.3)"

> +These fields specify the expected minimum and maximum utilization, respe=
ctively.
> +They are ignored unless their corresponding
> +.I SCHED_FLAG_UTIL_CLAMP_MIN
> +or
> +.I SCHED_FLAG_UTIL_CLAMP_MAX
> +are set in
> +.IR sched_flags .
> +.IP
> +Utilization is a value in the range [0..1024],

We use mathematical notation for ranges, so, assuming both 0 and 1024
are included, it would be [0, 1024].

> representing the percentage of
> +CPU time used by a task when running at the maximum frequency on the hig=
hest
> +capacity CPU of the system.
> +This is a fixed point representation, where 1024 corresponds to 100%, an=
d 0
> +corresponds to 0%.
> +For example, a 20% utilization task is a task running for 2ms every 10ms=
 at
> +maximum frequency and is represented by a utilization value of
> +0.2 * 1024 =3D 205.
> +.IP
> +A task with a minimum utilization value larger than 0 is more likely sch=
eduled
> +on a CPU with a capacity big enough to fit the specified value.
> +A task with a maximum utilization value smaller than 1024 is more likely
> +scheduled on a CPU with no more capacity than the specified value.
> +.IP
> +A task utilization boundary can be reset by setting its field to
> +.I UINT32_MAX

Macro names are written in bold, not italics.

> +(new in Linux 5.11).
>  .P
>  The
>  .I flags
> @@ -353,7 +398,6 @@ .SH ERRORS
>  .I attr.sched_flags
>  contains a flag other than
>  .BR SCHED_FLAG_RESET_ON_FORK ;
> -or

This change seems to be unrelated to this patch, right?

>  .I attr.sched_priority
>  is invalid; or
>  .I attr.sched_policy
> @@ -363,6 +407,23 @@ .SH ERRORS
>  .I attr
>  are invalid.
>  .TP
> +.B EINVAL
> +.I attr.sched_flags
> +contains
> +.B SCHED_FLAG_UTIL_CLAMP_MIN
> +or
> +.BR SCHED_FLAG_UTIL_CLAMP_MAX ,
> +and
> +.I attr.sched_util_min
> +or
> +.I attr.sched_util_max
> +are out of bounds.
> +.TP
> +.B EOPNOTSUPP
> +SCHED_FLAG_UTIL_CLAMP was provided, but the kernel was not built with
> +.BR CONFIG_UCLAMP_TASK
> +support.
> +.TP
>  .B EPERM
>  The caller does not have appropriate privileges.
>  .TP
> --=20
> 2.45.1.288.g0e0cd299f1-goog

Have a lovely day!
Alex=20

--=20
<https://www.alejandro-colomar.es/>

--u7dl2lg6r2fopng2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTEMQACgkQnowa+77/
2zJQLw/+PFXMIRdRIKAD9wAZHSigxPJuZKpZRwdx4mrVICUt+0cBnlzCwnQDea0H
jWTps8XtV395lEhw0VNaye46PJtPFSOO7XSQwmHlvKCySTO16FTDrsfG8voVCl79
jXXMir9mmNPfjm7jMISOX4//L324r/h7FEP6oTfPtjl70AF19GkXmOv0q0WguT+r
5qGk/5eecs8WXaWTjqz4RUPRjBbkI5Eh7ipLpTnynvsq0uZOG5y+NFZEktLt004n
fc6qWxzxBdRdGBEINXqQ3Ypt0/U/V8XWGEh+19JoZaFUc+N55JyMTeKm6jNr8int
5ANg9aDIUxFVWNsx/kS8h/gdRcY9PxRjq4DEvHZrqk5UzhuJW1xsEEvENaWfWHYy
ZcVdTT4+yjOSv6MGBF0sYSL6/pGcn1Nylp/nlOcH4TOfVh/p+SjrvXJstqwj2d1V
8D88L36KRvOzBFwliwpqpMB20x4gq4TuN3S3ZCPxVUV7byG12S5HgTJ/IejFdLbm
X36vqOpl64yJykyH5wbc+avF30FnIH/MVK7tQAitrJnr3TsbrVYGp/ImqZP1JmWz
B1t4X9MEa4SmD3FxWPWXog3N1feUk01CBUj/2P0ZaQfAJcxLRrYmTo3q/0E+06bq
B7EPqTQ1XFiMjs91Kzcw4lRlfEum1wJ6PuXvFczq4Z6FaySQNN4=
=wqEG
-----END PGP SIGNATURE-----

--u7dl2lg6r2fopng2--

