Return-Path: <linux-man+bounces-5367-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGmDJDjx6GkdRwIAu9opvQ
	(envelope-from <linux-man+bounces-5367-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:03:04 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DACCA448377
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA3BC3014BCC
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 16:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA552361DB4;
	Wed, 22 Apr 2026 16:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY3MGCiS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E76833A708;
	Wed, 22 Apr 2026 16:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776873774; cv=none; b=j1B9W/YUPNdGH4NBoCmJ7rUxaxm1MbVsRudBw+omD6S2f9Ht2wc+o+VnxNtENgx9daAThNTJYzIXGIBQD4Cr6vtCEW7cM1dmAkXcNDkQVQf7mpivBmIptmPYJq7nUipY3Cf3qnH6lqZ+67sCw2vNegS2YS6r8PBDwmBs4OBjUhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776873774; c=relaxed/simple;
	bh=nL9IsUTicRDtZsgkxDf6frSYlGTBgN51+NKX/76YYgs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WB6/BZXUYs1H0Xqnd50BGVOQJyyoB1Zi9eKGrL7chNqElHoeZEKu1m60GHebiMUwDiIyEW855kYdWpRKnUYgHr2VRfrruv/aqOu3jcvfDdSS2epH5YsAzSMBjHZ3ahhfG2jyE8B/LuaP/l6z15MYwFY3jHX/BRFYYjufllux3sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY3MGCiS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74818C19425;
	Wed, 22 Apr 2026 16:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776873774;
	bh=nL9IsUTicRDtZsgkxDf6frSYlGTBgN51+NKX/76YYgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pY3MGCiSl2esxhSSigNMVoFdx7Tid5NTVNnpKEgGtEJXis7v8+es35AT8FlU2xIyM
	 zUJ9xItfnNRuzkJ2SVOaZKtH0K+yKr1SyTJagMM39OWYMA600UegrjneuDGhf6kcri
	 oE/lH1mb88lLAMX/EIMCSPhsJ2rTSk3rxT4WaFJJRHwBq0CQRoLZ/j5MsWHmL9UnXp
	 FceknXj+4f2VtIbLq1CnyjYvPNTB5lA/r3N0JyYmICQ8EIOegL5FtiyqRO1tF5S5ru
	 u0QZrsG/zP9j8AK/CVyp37N2hxCW4H1Ap8RwrIb01MOgcJbRdT8RQR0aAIJpBBubNH
	 2NMTiCumE/TOA==
Date: Wed, 22 Apr 2026 18:02:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Cheng-Yang Chou <yphbchou0911@gmail.com>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aejvcpOKmAxCnJQV@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iv4pwsfupebvrkdl"
Content-Disposition: inline
In-Reply-To: <20260412181743.276652-1-yphbchou0911@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,kernel.org,manifault.com,nvidia.com,igalia.com,ccns.ncku.edu.tw,gmail.com];
	TAGGED_FROM(0.00)[bounces-5367-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[yphbchou0911.gmail.com:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DACCA448377
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--iv4pwsfupebvrkdl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cheng-Yang Chou <yphbchou0911@gmail.com>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aejvcpOKmAxCnJQV@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260412181743.276652-1-yphbchou0911@gmail.com>

Hi Cheng-Yang,

On 2026-04-13T02:16:58+0800, Cheng-Yang Chou wrote:
> Add the sched_ext(7) manual page and update existing scheduling
> documentation to include the SCHED_EXT policy.
>=20
> Signed-off-by: Cheng-Yang Chou <yphbchou0911@gmail.com>
> ---
>  man/man2/sched_setattr.2      |  11 +++-
>  man/man2/sched_setscheduler.2 |   4 ++
>  man/man7/sched.7              |  13 +++++
>  man/man7/sched_ext.7          | 100 ++++++++++++++++++++++++++++++++++
>  4 files changed, 126 insertions(+), 2 deletions(-)
>  create mode 100644 man/man7/sched_ext.7
>=20
> diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> index 80a0ac726dcf..d60678f00e72 100644
> --- a/man/man2/sched_setattr.2
> +++ b/man/man2/sched_setattr.2
> @@ -81,6 +81,10 @@ a deadline scheduling policy;
>  see
>  .BR sched (7)
>  for details.
> +.TP 14
> +.B SCHED_EXT
> +for extensible scheduling policies implemented via BPF
> +(see \fBsched_ext\fR(7)).

Please follow the style within that manual page.  We avoid \f unless
truly necessary.

>  .P
>  The
>  .I attr
> @@ -95,7 +99,8 @@ struct sched_attr {
>      u32 sched_policy;      /* Policy (SCHED_*) */
>      u64 sched_flags;       /* Flags */
>      s32 sched_nice;        /* Nice value (SCHED_OTHER,
> -                              SCHED_BATCH) */
> +                              SCHED_BATCH,
> +                              SCHED_EXT) */

Why break the line?

>      u32 sched_priority;    /* Static priority (SCHED_FIFO,
>                                SCHED_RR) */
>      /* For SCHED_DEADLINE */
> @@ -218,8 +223,10 @@ This field specifies the nice value to be set when s=
pecifying
>  .I sched_policy
>  as
>  .B SCHED_OTHER
> +,

What's the reason for this weird formatting of the source code?  At this
point I wonder if this was generated by AI.

Please take into account 'CONTRIBUTING.d/ai'.

> +.BR SCHED_BATCH ,
>  or
> -.BR SCHED_BATCH .
> +.BR SCHED_EXT .
>  The nice value is a number in the range \-20 (high priority)
>  to +19 (low priority);
>  see
> diff --git a/man/man2/sched_setscheduler.2 b/man/man2/sched_setscheduler.2
> index b4c35543e5bf..825eb7290ee7 100644
> --- a/man/man2/sched_setscheduler.2
> +++ b/man/man2/sched_setscheduler.2
> @@ -67,6 +67,10 @@ and
>  for running
>  .I very
>  low priority background jobs.
> +.TP
> +.B SCHED_EXT
> +for extensible scheduling policies implemented via BPF
> +(see \fBsched_ext\fR(7)).

Please check formatting.

>  .P
>  For each of the above policies,
>  .I param\->sched_priority
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index 00926cd34ecf..2e73a4c716b9 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -116,6 +116,13 @@ and
>  .BR sched_get_priority_max (2)
>  to find the range of priorities supported for a particular policy.
>  .P
> +Since Linux 6.12, there is an extensible BPF scheduling policy
> +.RB ( SCHED_EXT ),
> +which allows for custom scheduling algorithms to be implemented as BPF
> +programs.
> +See
> +.BR sched_ext (7).
> +.P
>  Conceptually,
>  the scheduler maintains a list of runnable threads for each possible
>  .I sched_priority
> @@ -529,6 +536,12 @@ priority (lower even than a +19 nice value with the
>  or
>  .B SCHED_BATCH
>  policies).
> +.SS SCHED_EXT: Extensible BPF Scheduling
> +Tasks with this policy are managed by an extensible scheduler class,
> +which allows for custom scheduling algorithms to be implemented as
> +BPF programs.
> +See
> +.BR sched_ext (7).
>  .\"
>  .SS Resetting scheduling policy for child processes
>  Each thread has a reset-on-fork scheduling flag.
> diff --git a/man/man7/sched_ext.7 b/man/man7/sched_ext.7
> new file mode 100644
> index 000000000000..7ea467e18b84
> --- /dev/null
> +++ b/man/man7/sched_ext.7
> @@ -0,0 +1,100 @@
> +.TH SCHED_EXT 7 2024-04-13 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +sched_ext \- Extensible BPF Scheduler Class
> +.SH SYNOPSIS
> +.B #include <linux/sched.h>
> +.PP

The use of P and PP seems very inconsistent.


Have a lovely day!
Alex

> +.B #define SCHED_EXT 7
> +.SH DESCRIPTION
> +.B sched_ext
> +is a scheduling class whose behavior can be defined by a set of BPF
> +programs, known as the BPF scheduler. It allows for the implementation
> +of custom scheduling algorithms that can be loaded and unloaded
> +dynamically.
> +.PP
> +When a BPF scheduler is loaded, it can take over the scheduling of
> +tasks that use the
> +.B SCHED_EXT
> +policy, as well as tasks using standard policies like
> +.BR SCHED_NORMAL ,
> +.BR SCHED_BATCH ,
> +and
> +.B SCHED_IDLE ,
> +depending on how the BPF scheduler is configured.
> +.SS Switching to and from sched_ext
> +The feature is enabled via the
> +.B CONFIG_SCHED_CLASS_EXT
> +kernel configuration option.
> +.PP
> +A task can explicitly request the
> +.B SCHED_EXT
> +policy using system calls such as
> +.BR sched_setscheduler (2)
> +or
> +.BR sched_setattr (2).
> +If no BPF scheduler is currently loaded, tasks with the
> +.B SCHED_EXT
> +policy are treated as
> +.B SCHED_NORMAL
> +and scheduled by the default fair-class scheduler (CFS/EEVDF).
> +.PP
> +When a BPF scheduler is loaded:
> +.IP \(bu 3
> +If
> +.B SCX_OPS_SWITCH_PARTIAL
> +is NOT set in the scheduler's flags, ALL tasks with policies
> +.BR SCHED_NORMAL ,
> +.BR SCHED_BATCH ,
> +.BR SCHED_IDLE ,
> +and
> +.B SCHED_EXT
> +are scheduled by
> +.BR sched_ext .
> +.IP \(bu 3
> +If
> +.B SCX_OPS_SWITCH_PARTIAL
> +IS set, only tasks with the
> +.B SCHED_EXT
> +policy are scheduled by
> +.BR sched_ext .
> +Tasks with other policies remain under the control of the fair-class sch=
eduler.
> +.PP
> +If the BPF scheduler terminates (either normally, due to an error, or
> +via a SysRq command), all tasks are automatically reverted to the
> +fair-class scheduler.
> +.SS System Interfaces
> +.B sched_ext
> +exposes several interfaces in sysfs for monitoring and control:
> +.TP
> +.I /sys/kernel/sched_ext/state
> +Shows the current state of the BPF scheduler (\fBenabled\fR, \fBdisabled=
\fR, etc.).
> +.TP
> +.I /sys/kernel/sched_ext/root/ops
> +Shows the name of the currently loaded BPF scheduler.
> +.TP
> +.I /sys/kernel/sched_ext/enable_seq
> +A monotonically incrementing counter that tracks how many times a BPF
> +scheduler has been enabled since boot.
> +.SS Safety and Debugging
> +System integrity is maintained regardless of the BPF scheduler's
> +behavior. If a runnable task stalls or an internal error is detected,
> +the BPF scheduler is aborted.
> +.PP
> +The following SysRq sequences are available for emergency management:
> +.TP
> +.B SysRq-S
> +Aborts the current BPF scheduler and reverts all tasks to the fair-class
> +scheduler.
> +.TP
> +.B SysRq-D
> +Triggers a debug dump of the current scheduler state to the
> +.B sched_ext_dump
> +tracepoint.
> +.SH SEE ALSO
> +.BR sched (7),
> +.BR sched_setscheduler (2),
> +.BR sched_setattr (2),
> +.BR bpf (2)
> +.PP
> +.I Documentation/scheduler/sched-ext.rst
> +in the Linux kernel source tree.
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es>

--iv4pwsfupebvrkdl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmno8SkACgkQ64mZXMKQ
wqnzoRAAr6k++84i5vxj2yr80JLRblz/py+xD7UkbAaxla6rOCtDvuQVFsFAsOC5
2oH5zzUT/X4exvFV22yhHu3+5hBhUVftoQ46yLYH+odzNCvNda33E0cYJmpT0p5s
JjiIxKVl25hXG553RAY7ZzF9Bwwi04ADhNyIEoFS4AK3OjdGHlD+ZMe3VO1H9dgX
dYCbZN5ZH29sHFhQydK6o/W8Gj5s1OF4Ut7DI2AWGKVn3TzPIgRctdpUNw8viFWG
f7cu8DZe/RNkt+0qT5Z4CKiQ33kiBudp5voaqYBYDk+TwccRNuJ9DwEAPMorEjWv
RMF9j58bIQ36kMPlGqWu29ZLEIWboxNl9sKyzMHPZRyHmFHM4LvJd6uIx2HITQQr
6I69FD7Kom0uJsKl9nJYhS+bMC7JY6syJkzhHmwhluj1tIAbEvvutdT6IUC5GhYy
ta7AMNqalbeuQ7xoXqSBFPdHqdZgx1Xh2KCqC8pOAP13a5vSCr56Znhv/EHK9FVZ
QGK7mmxpOwAKls9pmiUWT1dQp4p9TeCNgmcJ9PVRKHwYMM+ehrJQhm1T5tGJhAYB
HmLzpB3BrnBmyJsTiuDagypsAz8VV9dVoROkVGnLWc5+8to+nk6L9eV9gH5obJ9v
pXUU0750RxDhpPA9XW7jAVC5sQjQZUGq58vaCeFC3lTxiUsyhhM=
=tV7x
-----END PGP SIGNATURE-----

--iv4pwsfupebvrkdl--

