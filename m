Return-Path: <linux-man+bounces-1166-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50301905E50
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 00:16:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B46D3B23DE8
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 22:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189734F60D;
	Wed, 12 Jun 2024 22:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeRUdQFC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ABD1DFF0
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 22:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718230558; cv=none; b=jp5qqqEV1YY5fld4EfZ4Ol2pC7ePMs9P3Cu6E0ian5iRzbxfe/iuyI4XgIB5QQtLcdpt4pWLL3zzlr/Pnr4ylhTy8soHAQBdQtloPCV/isPWAl/lnrWr6oM+Qn6Rr1SLl0put+pfbtAlyD3atDsaTEya/SH+zX5kXI0WcW+tx5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718230558; c=relaxed/simple;
	bh=RflRAhiIzAFxnDZtEscs0ZY75XZso4oa7Qn9UjJ14WY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hq0NyGMe1V3f5K2sXXkwq128PGTuhHBS5hJpSkF+ahZLF/7Wx6v9zK9maxx33krBG1Slwo7Y+EVTuwxLc6TnBBeRumZd2GSoZyPOCPY7aGIS387WDUJ+W/zuKFkkYwtPNdVfpGekFTbHoUzBzYrXG+5ghYgvckgzqzptnPtaYYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeRUdQFC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52C78C116B1;
	Wed, 12 Jun 2024 22:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718230558;
	bh=RflRAhiIzAFxnDZtEscs0ZY75XZso4oa7Qn9UjJ14WY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OeRUdQFChV8MNFAlE92oASzlDAhOxoq8ovwSPSNcTHPOELIvrf85/BF7eJkCuzd9E
	 9D96FyIvoGvkdWgZKTDPhOSYwBUNqle7tllunJTkjREIMqbcmVMD4iYd1x5yOPdH/g
	 iDsv0bMdofFAPoK6EuU6L1OJlovAMxyHDva1XDC96LtUDIMxgz+6MzxroHOSbiTeyZ
	 UkWDfR3NPbXNECdl6HTiB1/vU8Xbnb1sHkK2FrYvZknz/B0T2fcIM6DvtBkTNuENjG
	 63sRUHCZCZ4IW2bQyNOtjTiHtCpK+sofQNqX5C5tNznP69H7hD19ND0UK6M19ddCaV
	 ScuGJwKG5w/Yw==
Date: Thu, 13 Jun 2024 00:15:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yol3vlpvodhckaon"
Content-Disposition: inline
In-Reply-To: <20240612204504.2651521-2-briannorris@chromium.org>


--yol3vlpvodhckaon
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20240612204504.2651521-2-briannorris@chromium.org>

Hi Brian,

On Wed, Jun 12, 2024 at 01:44:53PM GMT, Brian Norris wrote:
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
> v2:
>  * address various style, linter review comments
>=20
>  man/man2/sched_setattr.2 | 67 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 66 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> index 0c866a786748..c3b2cc5be6f1 100644
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
> @@ -228,6 +249,33 @@ .SS sched_setattr()
>  .I sched_period
>  This field specifies the "Period" parameter for deadline scheduling.
>  The value is expressed in nanoseconds.
> +.TP
> +.IR sched_util_min ", " sched_util_max " (since Linux 5.3)"

This should use .TP and .TQ as above.

> +These fields specify the expected minimum and maximum utilization, respe=
ctively.
> +They are ignored unless their corresponding
> +.I SCHED_FLAG_UTIL_CLAMP_MIN
> +or
> +.I SCHED_FLAG_UTIL_CLAMP_MAX
> +are set in

With 'or', here corresponds 'is', not 'are'.  For 'are' we'd need 'and',
to get a plural.

> +.IR sched_flags .
> +.IP
> +Utilization is a value in the range [0, 1024], representing the percenta=
ge of

Break after ','.

> +CPU time used by a task when running at the maximum frequency on the hig=
hest
> +capacity CPU of the system.
> +This is a fixed point representation, where 1024 corresponds to 100%, an=
d 0

Break after ','.

> +corresponds to 0%.
> +For example, a 20% utilization task is a task running for 2ms every 10ms=
 at

Break after ',', and after 'is'.

> +maximum frequency and is represented by a utilization value of
> +0.2 * 1024 =3D 205.

This should go in italics.

$ MANWIDTH=3D72 man man-pages | sed -n '/Expressions/,/^$/p'
     Expressions, if not written on a separate indented line, should be
     specified in italics.  Again, the use of nonbreaking spaces may be
     appropriate if the expression is inlined with normal text.


> +.IP
> +A task with a minimum utilization value larger than 0 is more likely sch=
eduled
> +on a CPU with a capacity big enough to fit the specified value.
> +A task with a maximum utilization value smaller than 1024 is more likely
> +scheduled on a CPU with no more capacity than the specified value.

Please break both sentences at consistent points, since they have
symmetric wording.

> +.IP
> +A task utilization boundary can be reset by setting its field to
> +.B UINT32_MAX
> +(new in Linux 5.11).

s/new in/since/

>  .P
>  The
>  .I flags
> @@ -368,6 +416,23 @@ .SH ERRORS
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

Missing bold.

Have a lovely day!
Alex

> +.B CONFIG_UCLAMP_TASK
> +support.
> +.TP
>  .B EPERM
>  The caller does not have appropriate privileges.
>  .TP
> --=20
> 2.45.2.505.gda0bf45e8d-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--yol3vlpvodhckaon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZqHhoACgkQnowa+77/
2zLoWQ/+IfNSU9g1ku04Vti+DkKBH3WaTB6CBpSelEa072aydJqxgkdJiIyDutvx
wqsH+GmS2NLFFNZy75LyFpvKLQSTVjwzuoFABCDIUusWGCEKbGYclRrG0jznoacv
qkAb/TtHmjBjAF055u+31sRkWg+s1d96gb+U4UZ37DQf1Js/Q4/aKgSabr5a2mmP
efoGkhDcCcVVJmzwP+M30GXNwHg+LQLhrqSHOBepa8ni9IaPqHzc9YnxQVC4P7OO
pSydMGe/+6KwuOVMDu/Jq6rVcQxGKWT+CCX/6ne/54hCkBBATWwhLXB1Xo9TH6nz
hQnawx6fStK9AQHYYCh3+bpFkhOepqHi5iK5vgZYAiZt+mTThQas3059l8Y22zpZ
AtlMStiASewwvLovswpU6QU5N2tIT+mcLDEoTkZ/8fpKaB7GkolC5mJ2SfjE8Q0D
rk56nslNNSNxcrmYaECEdhSJp5OfOyZnIq6BnZhiBTsAYHKRgKQ7P3qQJp+yVcz6
rPXZ5keMtQLf/Mqlx5xgBrGcoszaXD+WuZh3Q6cRsh3dJRhGAUppUDSpyXD9+6+p
ocm3bhXvW9OHN/WZziOboeuVtRdLgisCMcznBp3BoXcwOegjb3z0EA2Z0GS+TtGi
DsWwZ64p7dUYfsebvrqmLJ6OFtp3osyRsbt6pKppQPhpHRuy5KY=
=WtK1
-----END PGP SIGNATURE-----

--yol3vlpvodhckaon--

