Return-Path: <linux-man+bounces-4989-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFJWNzglemlk3QEAu9opvQ
	(envelope-from <linux-man+bounces-4989-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 16:03:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29852A3745
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 16:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFA06305CF7F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0A83659F5;
	Wed, 28 Jan 2026 14:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QObQCbxe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0EB357737
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612276; cv=none; b=uUZn6hW6ecbACDucEDrwt0J5ZWVFXf6z2PDv4Ja1Oclc0hxavG6ZF0hT6haVYnv56SBHDtygTVXeUjh/L2GQojoFkxuWHtt7weC1uOCYuNTO6kCU5OOuvdo0eufueK5wc7lfarwZnOjv9HmH29pkpSb7z8HrY9KtMvkX07frjlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612276; c=relaxed/simple;
	bh=3pGXhLvIJVU40OjUvK+k3BU/sweW5CmmmVcsuNhd5Jo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zbnwn0a1jF0klsw0b/NuCSiZff0Q1L7OX+qlodIAw68YuV5/L4b687abYlzHZUgGQ3igHywclbeHWeDZzYdwsWegsIh4Ld/q4dXT0nILyflosnnqeCCYXJENIAqIrQFNCcAPZe8v40AX2BiQmHRpr/JLKCgwCbXnxxs0k2WguJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QObQCbxe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91457C4CEF1;
	Wed, 28 Jan 2026 14:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769612275;
	bh=3pGXhLvIJVU40OjUvK+k3BU/sweW5CmmmVcsuNhd5Jo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QObQCbxe+Ald8o440Xc4NtRMwPHKiwNNNDxoeBcGe/GyAaQDNhuKdezedXeqipXuB
	 0T/op32sCPgoEudsLynCbkP7GRJ/i+Tqdmccq7U22mQ5EUZ2wQH1UNF44k/Q3HDxsv
	 iqw40w2schA63owKxx40ONJDk+JBzCL13Yc3dPMVrIe6npya7uj7nztCvxn5eZ1F4E
	 2RpKP0xcrITeThQGAj9bR3wnM23lPfbM9ve7rootFrcBc6JQpUnQPw5N+9X8btfxPy
	 /rfn464aTWsE7SbikOxgUhmoAVd0cmWKXxjNHuKXPXhbF/zCRV36EMGktlgsqkDr7d
	 kVZhskTum9gCA==
Date: Wed, 28 Jan 2026 15:57:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH] man/man3/timespec_get.3: Add ISO C23 time bases
Message-ID: <aXoixaxyo_OkBRJ_@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kuy7kx2fwmh26lek"
Content-Disposition: inline
In-Reply-To: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN_FAIL(0.00)[10.253.234.172.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-4989-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 29852A3745
X-Rspamd-Action: no action


--kuy7kx2fwmh26lek
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH] man/man3/timespec_get.3: Add ISO C23 time bases
Message-ID: <aXoixaxyo_OkBRJ_@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>

Hi Mark,

On 2026-01-27T22:42:21-0800, Mark Harris wrote:
> Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
> TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
> glibc 2.43.[1]
>=20
> [1] <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3Df28a11e43f4=
0>
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Thanks!

> ---
>  man/man3/timespec_get.3 | 64 ++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 57 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> index 79bb82226..d2be50fd4 100644
> --- a/man/man3/timespec_get.3
> +++ b/man/man3/timespec_get.3
> @@ -17,6 +17,25 @@ .SH SYNOPSIS
>  .BI "int timespec_get(struct timespec *" res ", int " base );
>  .BI "int timespec_getres(struct timespec *" tp ", int " base );
>  .fi
> +.P
> +.RS -4
> +Feature Test Macro Requirements for glibc (see
> +.BR feature_test_macros (7)):
> +.RE
> +.P
> +.BR timespec_get (),
> +.BR TIME_UTC :
> +.nf
> +    _ISOC11_SOURCE
> +.fi
> +.P
> +.BR timespec_getres (),
> +.BR TIME_MONOTONIC ,
> +.BR TIME_ACTIVE ,
> +.BR TIME_THREAD_ACTIVE :
> +.nf
> +    _ISOC23_SOURCE
> +.fi
>  .SH DESCRIPTION
>  The
>  .BR timespec_get ()

LGTM.  But would you mind separating the patch into one that reformats
the page without adding the new time bases, and then one patch that adds
the new time bases?

> @@ -39,16 +58,49 @@ .SH DESCRIPTION
>  For a particular time base,
>  the resolution is constant for the lifetime of the calling process.
>  .P
> +The time base
> +.I base
> +is one of the following:
> +.TP

Same here.  I'd like this to be part of a pre-patch.

>  .B TIME_UTC
> -is always a supported time base,
> -and is the only time base supported on Linux.
> +A system-wide time base that measures real (i.e., wall-clock) time.
>  The time and resolution in this time base
>  are the same as those retrieved by
>  .I clock_gettime(CLOCK_REALTIME,\~res)
>  and
>  .IR clock_getres(CLOCK_REALTIME,\~tp) ,
>  respectively.
> -Other systems may support additional time bases.
> +.TP
> +.BR TIME_MONOTONIC " (since glibc 2.43)"
> +A time base that measures time since an unspecified point in the past,
> +where the time within a process will not decrease even if the
> +system's real time clock is set or adjusted.
> +The time and resolution in this time base
> +are the same as those retrieved by
> +.I clock_gettime(CLOCK_MONOTONIC,\~res)
> +and
> +.IR clock_getres(CLOCK_MONOTONIC,\~tp) ,
> +respectively.
> +.TP
> +.BR TIME_ACTIVE " (since glibc 2.43)"
> +A process-specific time base that measures CPU time consumed by
> +the calling process.
> +The time and resolution in this time base
> +are the same as those retrieved by
> +.I clock_gettime(CLOCK_PROCESS_CPUTIME_ID,\~res)
> +and
> +.IR clock_getres(CLOCK_PROCESS_CPUTIME_ID,\~tp) ,
> +respectively.
> +.TP
> +.BR TIME_THREAD_ACTIVE " (since glibc 2.43)"
> +A thread-specific time base that measures CPU time consumed by
> +the calling thread.
> +The time and resolution in this time base
> +are the same as those retrieved by
> +.I clock_gettime(CLOCK_THREAD_CPUTIME_ID,\~res)
> +and
> +.IR clock_getres(CLOCK_THREAD_CPUTIME_ID,\~tp) ,
> +respectively.
>  .SH RETURN VALUE
>  .BR timespec_get ()
>  returns the nonzero
> @@ -78,9 +130,9 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  .TP
>  .BR timespec_get ()
> -.TQ
> +C23 (though ISO C doesn't specify the
>  .B TIME_UTC
> -C23 (though ISO C doesn't specify the time epoch),
> +epoch),

I don't understand this change.  Could you please clarify?

>  POSIX.1-2024.
>  .TP
>  .BR timespec_getres ()
> @@ -88,8 +140,6 @@ .SH STANDARDS
>  .SH HISTORY
>  .TP
>  .BR timespec_get ()
> -.TQ
> -.B TIME_UTC
>  C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.

I'd like to have the new bases documented in HISTORY, which will allow
documenting also support in musl and other libraries.


Have a lovely day!
Alex

>  .TP
>  .BR timespec_getres ()
> --=20
> 2.52.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--kuy7kx2fwmh26lek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml6I94ACgkQ64mZXMKQ
wqn80g/3a5Q5spTlmEgrvDM/0z2u8kDe9Q1jvsRzM4mqWnKFd1V0f1M7Uqj+NMFc
trsXaSLJxJNbAfqIQ9DSxkXoXfSnlz00LTU89HiJNznOwB3Uz+wBN6sL8qpJ5W6q
2pd5dkzAzODlQ9HaO7uaOrDOCDAwIOVHqB/atHxyXkSpt3arDfwB/T8VkHo5Ul0i
4jlm74uHxzednLQBQ+Flh+iUX+T1PV+lRqCU0kt5BktAUuJCEtUnFm4X3avigUwd
YGNU9nJNaNFosPy9sy9Bjd8Ag+mreX3QfmXB+JD3gXKTEr4iQhEEnuEymyaOxxO9
j7UB1XIxXVjSlh1cLn2q0eZlHsO9on5e9/ZFs0j35AagVFjWY3zTawOallFi3Hms
Ki9MlJffAaoUHw7cR6FeH5gDkPGWxhRtNh2RI2wdDv076tXHcqBMXg+eIYvMzrr8
veDLesFvLiwZu2uh8I0ClKUGj2apwcot/rDIXeXdW+IGMgpYhLE7hsiZzsDcrIeE
f8XYBJSKx3JXI05ZJOaNM4vDg8zlhSQI+YZkjfFR2TfZHgXekRtwdvtTcrUY8ld1
a8b0EKzy3PX+WW9/7Y6hTGYTxrLgXPFMXhEu/i5ij/fQmy4i4rrU312XszSApzos
Rs34JKttiCsdM16rD8Dbk5AV1y/YKHsHt9uVljI0RF2aaVTREQ==
=Dix+
-----END PGP SIGNATURE-----

--kuy7kx2fwmh26lek--

