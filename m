Return-Path: <linux-man+bounces-5100-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EApNL/m2i2kpZAAAu9opvQ
	(envelope-from <linux-man+bounces-5100-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:53:45 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A4311FD83
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C2013040AA4
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448E730FC1C;
	Tue, 10 Feb 2026 22:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HD3DvNjC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076E72FE579
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 22:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770763988; cv=none; b=HzDlti7QdkgPU4itLuc83x8zD4XolRQQCb0DjjYhyHtudda1QJFQ7OYyvnWTHXRs9KOvPRg+c2hdQkoZLQN4J+1JP8GdGGCHAPbsheEM+dhB+H3s669lLNXBX9G52BS9yKWXbeIMrPyfVjnF4PpgkAOOxGDSHQvtQ3mCKkVYgW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770763988; c=relaxed/simple;
	bh=5QbQ6EJ5FKLNftSsKnHYwSXJOMWV0zB6eS63DDdt78k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gaUvysUxQ8/3rU2yjJ8tjtlN6mVjtIJgDL67oOsrgLLdQUlpLxKmKeELMhnIkM7jtsABcmKiOSuOPttlxAlBUAAXfX8uVp026MabcsC4709qwiROkLBWtSD09PFNNe4FloBsGm9Wdv916/POMueLqJn14C0bAVid6OkglS+Xv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HD3DvNjC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E94BDC116C6;
	Tue, 10 Feb 2026 22:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770763987;
	bh=5QbQ6EJ5FKLNftSsKnHYwSXJOMWV0zB6eS63DDdt78k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HD3DvNjCbkMJp/wPpYfBwgcAcV6ET/0PUO5k6QFzq1Bu9GtMyD3PHFk4s1tSZVLAv
	 b37rzWrbSVNJVHhTnU1l9uV+lBdfRxIrpQwI+bm+O+sjXrrtq/A6m2ROmqSQ85CGOq
	 g8xuUv6QP7ESi+oqPNLAgKGJy5AANPKAKhbzvR8AkoKOYUHdIoUfhqK7ahT90Ua1gr
	 jvoC3k1lk9dHFIxISD9hy0DwmoyJnrGecm3xHa8rp7FLI7c/OBW0zDLQitJD+C1sXs
	 XPWIvKi0HDJp/Fh6Ucp+yHC9v3FMB05fn3jZwLTNu9frgECkJKuwzhme0LnD3JbnXI
	 0YxfjVI2dW1mw==
Date: Tue, 10 Feb 2026 23:53:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/timespec_get.3: Refactor to prepare for
 new time bases
Message-ID: <aYu2wsnzbtqfXxsm@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2cjes7lrcvn7mja"
Content-Disposition: inline
In-Reply-To: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5100-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 25A4311FD83
X-Rspamd-Action: no action


--q2cjes7lrcvn7mja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/timespec_get.3: Refactor to prepare for
 new time bases
Message-ID: <aYu2wsnzbtqfXxsm@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>

On 2026-01-29T08:52:23-0800, Mark Harris wrote:
> Add Feature Test Macro Requirements to document functions and macros
> that require ISO C11 or C23, and arrange supported time bases as a list.
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Patch applied; thanks!


Cheers,
Alex

> ---
> v3: Use .TQ for time bases in STANDARDS and HISTORY
> v2: Split into two patches, add time bases to History section
>=20
>  man/man3/timespec_get.3 | 25 ++++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> index 79bb82226..67da4858c 100644
> --- a/man/man3/timespec_get.3
> +++ b/man/man3/timespec_get.3
> @@ -17,6 +17,22 @@ .SH SYNOPSIS
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
> +.BR timespec_getres ():
> +.nf
> +    _ISOC23_SOURCE
> +.fi
>  .SH DESCRIPTION
>  The
>  .BR timespec_get ()
> @@ -39,16 +55,18 @@ .SH DESCRIPTION
>  For a particular time base,
>  the resolution is constant for the lifetime of the calling process.
>  .P
> +The time base
> +.I base
> +is one of the following:
> +.TP
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
>  .SH RETURN VALUE
>  .BR timespec_get ()
>  returns the nonzero
> @@ -78,6 +96,7 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  .TP
>  .BR timespec_get ()
> +C23, POSIX.1-2024.
>  .TQ
>  .B TIME_UTC
>  C23 (though ISO C doesn't specify the time epoch),
> --=20
> 2.52.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--q2cjes7lrcvn7mja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLttAACgkQ64mZXMKQ
wqmzZBAAol3IP0+wMmnNQdUhQxO2LDrcCq93CXeVbsKawjFkf8FCATVpxYgr9Skf
Vpi8kPPvIPYEmjv1NVPffMY19oJmGohAEkovdm66+xoQUdJAB+evscWAKoYCdfyi
2Go2/k6KFpzLXy8pppPUMneyyX+9cr14ZQ61lhPxK2v3uXmWpVnLWyohmQauNrtk
gBg08jeIy/4JKZzll0WWj+XNcQgz717jQ6qaRc4jyQKab3nxFs0RR2oUnpeAMoI0
qRgPn89SePout1GzFbJDYZY/6z3PWxmMLzSub5Ro2ovMdNCRD3mhnsDI+dfkJbtZ
PU2rb0tx9JXJG0aeNUQ0+dag37WOMexYomKJTglVvETKy1dWenvMauITjigt1vGW
5R+3c6gV+KE/+ABuMkOAF0E7qWXtPyW97+FZTu2bzcI86e2m6ZzBonxlkwXcHrGW
0zJOn3s8u2CsQMg8AkDlNfBFP8O00IHkNC2ZoWTutROeoJQ1sRTOAV5TnLcqafOA
9C5nAnZtyfH3oleo7Q8XUYAaquHRzW39CXeH0RiId6z5TBOOCGCBC7IpnNIGckie
FIDsRnc2xLBOARZ6cG1KhE95446znkdUNTLFXzn3J9GLRIcysiqHjGBWraSjPYzz
Acr/FwueN5ZPfkJqQbkyipPmsKFTPm+I2Fw0Y8vxjuAZ+4eGByk=
=DiHQ
-----END PGP SIGNATURE-----

--q2cjes7lrcvn7mja--

