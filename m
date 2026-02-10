Return-Path: <linux-man+bounces-5101-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHK0BgK5i2kUZwAAu9opvQ
	(envelope-from <linux-man+bounces-5101-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:02:26 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C12911FDFB
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C18833014648
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60313148A7;
	Tue, 10 Feb 2026 23:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+8gfWKM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8071C8EB
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 23:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770764512; cv=none; b=HYV02GjD7yjy0wLIm8XeTHQj28STqRJg8Hv1gFaeT204bQmNeJnbVF4NnHEdLyH0Vr3scQ8JWpmm85WO2Ijw9HNaJLxLlR34nHA6WdJNc9k6osWvjMD30aRs2JxgykRLvTDmkLq4xsXQPuF23lcMuj4W6CPeRnnkMKl2qcNru6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770764512; c=relaxed/simple;
	bh=Ma9fuw9/WsRRYLUcZnWaZZvto/f1o+OtbCOIl7SHl1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vb2fvVkrxU3jZjEzTcj+0Tv/aJeqK8EVRwG9dumrxNjngQI9L1wKB7717oACwncfsG50CPx0zQ7/fO7+IoLnOamgJmQnQIGrqc6WFdr9UC7TAA+XVforXpwUyJuufK0XuPSWHojy6tmAHXACp2VcnQRnf4p/5Xz+wlhVH0EsjZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+8gfWKM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DA41C116C6;
	Tue, 10 Feb 2026 23:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770764512;
	bh=Ma9fuw9/WsRRYLUcZnWaZZvto/f1o+OtbCOIl7SHl1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t+8gfWKMuFe2/MpWnQdQ8Odz/qUsqmWgcFqccBoIOA+Ic3wCrG30WzQHwCWXcS96F
	 +hwYh5buj5ogIHe3iDYvAJaxPQhnb+UJIWn9RlJD1k99ODnv2vDAetg5Jb2kfuxAN8
	 7le4CDSbAgwW4rELUz/wMyTWX3o+OLHL9od/gg9gGAwTmomxWOl4TARGMzDjS4B8ir
	 HtEyLuitfAAZ3YeYXNZeHewsq8SIsNsPpaw0Xi7C4CRDP+RkBwlR1lGhI8hJl2SoPY
	 9mT5VoNrnCr+hRZaAAryCjXp88P6NDDDgLKu94+e8hsFfRzho8gedsqQGMap+TXbK/
	 S55PnmUtG7xww==
Date: Wed, 11 Feb 2026 00:01:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v3 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
Message-ID: <aYu3tjoB57cJHBxe@devuan>
References: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
 <1955d9507d6ab4e482f92a4d7717872c98f39f8a.1769705123.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pedlbpxx3orvol7s"
Content-Disposition: inline
In-Reply-To: <1955d9507d6ab4e482f92a4d7717872c98f39f8a.1769705123.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5101-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sourceware.org:url]
X-Rspamd-Queue-Id: 6C12911FDFB
X-Rspamd-Action: no action


--pedlbpxx3orvol7s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v3 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
Message-ID: <aYu3tjoB57cJHBxe@devuan>
References: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
 <1955d9507d6ab4e482f92a4d7717872c98f39f8a.1769705123.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1955d9507d6ab4e482f92a4d7717872c98f39f8a.1769705123.git.mark.hsj@gmail.com>

Hi Mark,

On 2026-01-29T08:52:24-0800, Mark Harris wrote:
> Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
> TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
> glibc 2.43.[1]
>=20
> [1] <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3Df28a11e43f4=
0>
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Thanks!  I've applied the patch.

> ---
> v3: Use .TQ for time bases in STANDARDS and HISTORY
> v2: Split into two patches, add time bases to History section
>=20
>  man/man3/timespec_get.3 | 49 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 48 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> index 67da4858c..4f0fe1a96 100644
> --- a/man/man3/timespec_get.3
> +++ b/man/man3/timespec_get.3
> @@ -29,7 +29,10 @@ .SH SYNOPSIS
>      _ISOC11_SOURCE
>  .fi
>  .P
> -.BR timespec_getres ():
> +.BR timespec_getres (),
> +.BR TIME_MONOTONIC ,
> +.BR TIME_ACTIVE ,
> +.BR TIME_THREAD_ACTIVE :
>  .nf
>      _ISOC23_SOURCE
>  .fi
> @@ -67,6 +70,37 @@ .SH DESCRIPTION
>  and
>  .IR clock_getres(CLOCK_REALTIME,\~tp) ,
>  respectively.
> +.TP
> +.BR TIME_MONOTONIC " (since glibc 2.43)"

I've removed the "(since..." part, as it's redundant with HISTORY, and
I prefer the HISTORY section.


Have a lovely night!
Alex

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
> @@ -103,6 +137,12 @@ .SH STANDARDS
>  POSIX.1-2024.
>  .TP
>  .BR timespec_getres ()
> +.TQ
> +.B TIME_MONOTONIC
> +.TQ
> +.B TIME_ACTIVE
> +.TQ
> +.B TIME_THREAD_ACTIVE
>  C23.
>  .SH HISTORY
>  .TP
> @@ -113,6 +153,13 @@ .SH HISTORY
>  .TP
>  .BR timespec_getres ()
>  C23, glibc 2.34.
> +.TP
> +.B TIME_MONOTONIC
> +.TQ
> +.B TIME_ACTIVE
> +.TQ
> +.B TIME_THREAD_ACTIVE
> +C23, glibc 2.43.
>  .SH SEE ALSO
>  .BR clock_gettime (2),
>  .BR clock_getres (2)
> --=20
> 2.52.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--pedlbpxx3orvol7s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLuNwACgkQ64mZXMKQ
wqmAihAAocHvSsRNjau2yI0VL+lI6yNu4urq1HFPbrO/CLQTvLzyybvZvxpdOLM9
hLKj7A6tlfXEqdcmxC6hpjs87rMSDnUG0YwA6xEvZXxh9+1aPk07F5iLbPmxKROC
TmAVOrTm2dnYfJXfUJhR6ye4PbpgmNmGF/Qo5BQ0Lj83KRQeh455VctzBohJzvNa
QSBSfpYuOTurfXwCNCB/01xBxMF00pPy53PUBaOpxqc9tp2msVmz5pMd56tMMXux
htBsvditUOY0XSsHmHsPxAbDBt4c/yrkHCk8cfYPdxcjo3okKsF2lbpSz36efHJe
F1XDgt4JIoa7LDOsGy6+JhT0UDmpr9aEI+piJTQl1y91NjEeBC8Uf3fADrVYUM7O
C6jjgGcRTr/xkXijimYrzuqAz5W3wvBaQpe0JfHtX/vk7M0S8R3qamytZ/U0GLoV
RIwHyVfkizYV3DPeNAz9VCnbqy/MyajPkaXB+pkKf5hH659UoSGpLHPCVTfLce3P
+NnA/elq+LXeN+W9awx0J4Cz68d0j4FwO0Q5qVSXzDz3fB8yGXeISOQrYdq5UNTQ
BvzSTq4x//3Q5GIlw3bBQIcTTkwqH6HBZc51t5fexC9oo529u7As0ny2gYYaPhFt
P4ohcqIv8LGfX8pZRAxrYPT8c1Zkjj2WtX6jZhisvA7M3lPzGLo=
=AUxY
-----END PGP SIGNATURE-----

--pedlbpxx3orvol7s--

