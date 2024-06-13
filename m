Return-Path: <linux-man+bounces-1180-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7736E907E5A
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 23:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AFB21C21CC6
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 21:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03AE5A4FD;
	Thu, 13 Jun 2024 21:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYtBxCV8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A216214A4E5
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 21:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718315489; cv=none; b=HqW5ESY+XOaVvi42+sFEKCzea2Y8694e3srTm4S7Ubo+nRKhbc7TxoPe7lcHHwNhWv8MO7wfqx7g6JguHcjXlHNKfbcZKHTTF2Wll6EmweE/nTlnoVkpVF6AdtwtWAltFL3KCOBv2oPn1mufu5dkUtB+6frMZS9MaIOi5Nqm+AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718315489; c=relaxed/simple;
	bh=U4HO/mep8kbfknQo6yizUEByRblMQi0YOvPUdt95dqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aLmDxSmu1V0/AOVosJv9YZ/USpk0Esu8wKqvQfTDXtEQHV4vtYkLUcJnZCV5GzV077I55NKrKx+J7ZmyLpeNzsnmTYr1vioDOppzrTeuHAfcHEtuR8EJAe2a69wqF6v+mDxuTj9fkX/ocuTS0SIMzbWmcjQzWhGZOODXUS3S+G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYtBxCV8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FFA5C2BBFC;
	Thu, 13 Jun 2024 21:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718315489;
	bh=U4HO/mep8kbfknQo6yizUEByRblMQi0YOvPUdt95dqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mYtBxCV80Q1GY3HaxoHfYVhJF3SMFsKGYWM1wEYzADMmWkUnI6xUmA8p3YCfzuILn
	 +sg3fg/UK9vq5sDElb1Fs1BtUPQ9xVafqX2TAp4+0KNdJFthUlnr9OjPVo1mUci52U
	 2jc+Qjkhrh4xmuFS7M3pXhecBdB4G0LeZG1Hj6tfHc+9zkVTlTDlon9+EvOMWpXstI
	 CXsvd5usmamHwzU/LyMlohxnANpMyBt+KV/xG+BYr+62OfwM75v1sAm4fieh/madvd
	 Q+jFomogG9E5o5YnXjTjDkH0ZKnBPCc40t2KBKdm4OM4HnM2in8QsoUC35wkaOOp7I
	 IAHTurJvvgy+A==
Date: Thu, 13 Jun 2024 23:51:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <pxlkzl66inphv6dbjwud4gexnqrl67m5gr5t6btwazbyfstfwb@nndrthl2vatw>
References: <20240613204823.3184609-1-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jcrgho6kikycuggm"
Content-Disposition: inline
In-Reply-To: <20240613204823.3184609-1-briannorris@chromium.org>


--jcrgho6kikycuggm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3] sched_setattr.2: Document sched_util_{min,max}
References: <20240613204823.3184609-1-briannorris@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20240613204823.3184609-1-briannorris@chromium.org>

Hi Brian,

On Thu, Jun 13, 2024 at 01:46:56PM GMT, Brian Norris wrote:
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

Patch applied; thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De771005bd2b700362218d4c9f226570adfb047b3>

Have a lovely night!
Alex

> v3:
>  * more grammar, formatting fixes
>  * drop patch 1 / semi-unrelated content which was already applied
>=20
> v2:
>  * address various style, linter review comments
>=20
>  man/man2/sched_setattr.2 | 72 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 71 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> index 0c866a786748..aa27dee79dce 100644
> --- a/man/man2/sched_setattr.2
> +++ b/man/man2/sched_setattr.2
> @@ -94,10 +94,14 @@ .SS sched_setattr()
>                                SCHED_BATCH) */
>      u32 sched_priority;    /* Static priority (SCHED_FIFO,
>                                SCHED_RR) */
> -    /* Remaining fields are for SCHED_DEADLINE */
> +    /* For SCHED_DEADLINE */
>      u64 sched_runtime;
>      u64 sched_deadline;
>      u64 sched_period;
> +\&
> +    /* Utilization hints */
> +    u32 sched_util_min;
> +    u32 sched_util_max;
>  };
>  .EE
>  .in
> @@ -186,6 +190,23 @@ .SS sched_setattr()
>  On the other hand, if the process-directed signal is delivered to
>  a thread inside the process other than the one that had a run-time overr=
un,
>  the application has no way of knowing which thread overran.
> +.TP
> +.B SCHED_FLAG_UTIL_CLAMP_MIN
> +.TQ
> +.BR SCHED_FLAG_UTIL_CLAMP_MAX " (both since Linux 5.3)"
> +These flags indicate that the
> +.I
> +sched_util_min
> +or
> +.I
> +sched_util_max
> +fields, respectively, are present,
> +representing the expected minimum and maximum utilization of the thread.
> +.IP
> +The utilization attributes provide the scheduler with boundaries
> +within which it should schedule the thread,
> +potentially informing its decisions
> +regarding task placement and frequency selection.
>  .RE
>  .TP
>  .I sched_nice
> @@ -228,6 +249,37 @@ .SS sched_setattr()
>  .I sched_period
>  This field specifies the "Period" parameter for deadline scheduling.
>  The value is expressed in nanoseconds.
> +.TP
> +.I sched_util_min
> +.TQ
> +.IR sched_util_max " (both since Linux 5.3)"
> +These fields specify the expected minimum and maximum utilization, respe=
ctively.
> +They are ignored unless their corresponding
> +.B SCHED_FLAG_UTIL_CLAMP_MIN
> +or
> +.B SCHED_FLAG_UTIL_CLAMP_MAX
> +is set in
> +.IR sched_flags .
> +.IP
> +Utilization is a value in the range [0, 1024], representing the percenta=
ge of
> +CPU time used by a task when running at the maximum frequency
> +on the highest capacity CPU of the system.
> +This is a fixed point representation, where 1024 corresponds to 100%,
> +and 0 corresponds to 0%.
> +For example,
> +a 20% utilization task is
> +a task running for 2ms every 10ms at maximum frequency and is represente=
d by a
> +utilization value of
> +.IR 0.2\~*\~1024\~=3D\~205 .
> +.IP
> +A task with a minimum utilization value larger than 0 is more likely
> +scheduled on a CPU with a capacity big enough to fit the specified value.
> +A task with a maximum utilization value smaller than 1024 is more likely
> +scheduled on a CPU with no more capacity than the specified value.
> +.IP
> +A task utilization boundary can be reset by setting its field to
> +.B UINT32_MAX
> +(since Linux 5.11).
>  .P
>  The
>  .I flags
> @@ -368,6 +420,24 @@ .SH ERRORS
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
> +.B SCHED_FLAG_UTIL_CLAMP
> +was provided, but the kernel was not built with
> +.B CONFIG_UCLAMP_TASK
> +support.
> +.TP
>  .B EPERM
>  The caller does not have appropriate privileges.
>  .TP
> --=20
> 2.45.2.627.g7a2c4fd464-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--jcrgho6kikycuggm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZrad0ACgkQnowa+77/
2zLtXhAAoz5vejaJcdWs4d3QyxqvCRJ91bW8FAEREiGOn3f2B3oUMOD5cnbAZ1sr
FcojJKqYtYN+k2l2/Ml2/KQT41/snNnn6T5bsAmnfFsx2y6Ic2i8bbuyhwuSYqpb
eXM2MmJWhzkQOlD2dsArCZe353tGCzbi/CslBSgFf2CuFzv0Op2x4azGXay0o5/e
ti4I5pG6kI8Td8oKetvsPg5NCZ8tSIRJVjwr+pkp5O1Vzn0ruuFmeD0NyR+D5vk5
k2qlo+/u1Mw2wjW8zvN6h+U8RGZqmJjdwKxk3loJqenZ3IHv43ylhU6ZSACwSOLy
CfVIG60Ea5ZgpJpGVfZIaa77nMqCfgo5Dw815j3JYeBnvw+r4Mf00AQUnSGw0zYq
LFkZdX5zpnOHxZJgD+G3Q+Z/RPbX1d1O7ACJKP/tweJ5VwzrwKSWOiRUsJuBGufM
Js5QpOI7UT/uK6DxWEwrI21nDoeNx8Sobx1fKlyXryaAIoG7D8F/NmjpRyZN7pnn
2X1quwpqfdhz80j4Rorq0eUHpy21idsvtzLRGnu5TJi5OpGYuf6PLnELDHxPenio
H48ZoF6nbRC0Q5x1NqI6iKbSY3sqMcG8E9iXfgN+bGy0Kb8h2SYhWQUf1M6p2gyQ
cBRhYnxPEiLYxXsGbPgNEFlQoJ38eUYXQK029MihhZXhPZ5hkFs=
=ki1e
-----END PGP SIGNATURE-----

--jcrgho6kikycuggm--

