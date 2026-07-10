Return-Path: <linux-man+bounces-5732-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QV8XHt4hUWr3/gIAu9opvQ
	(envelope-from <linux-man+bounces-5732-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 18:46:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C70273CAE6
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 18:46:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oM7EU5jX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5732-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5732-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7944F30087DD
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8C41D5CFB;
	Fri, 10 Jul 2026 16:46:18 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C2361DA9
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 16:46:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701978; cv=none; b=VIUvwi0evVXmMZbhA4Mh2s0rrf45m+o/urv7ESHBuMBwDjwJYt9I16gsM1R7NiSqdTbMTh2g07ZyiFdSmYUIPm58V0oBRxz4OZwzFQE/PskK9qPFyBartmrAinszs1/nofvV7BrFmXkD6E3LR55MUMgkzIn6jkVy4CIAyNJJqR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701978; c=relaxed/simple;
	bh=3y5l1Grcsi5HJTu64YXBYj1MaJho1lhI1iO3POlCJXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uo9rPxPg0cQPKe0kmapLlB13ENUwyedD8ga3ZLeV+2xmkJFTKfWkb8FDaNN1gCF+sM0BLMLVGLTXllT6Lz1ugxarhILdeO/HFrqOSV3ZbGLf2vBaYiF0j5uanaWbDYP0k1aJ7g/NoRsKBHSSDZC8Ijv7jr/OFIbGCXjb3bOnOyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM7EU5jX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BA031F000E9;
	Fri, 10 Jul 2026 16:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783701976;
	bh=NzxWWhvr8QUxfQ2YZrymqjmno1YBh528tGx77V8YEyM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oM7EU5jXH8e7rfqc1XPw/WP3jW67bDfx1YNGWU3fJBe3bNcmr5/tnszf+Nf8fcAT7
	 nxFeRfRIFVyPrGKdAG38Os99R03NUjdUylyuA3cdbsE+ld4Dy061TeobwZQI5Oargt
	 ZHoBwDa6de3Ai/mNvtoWEQcMaLWXENuS+u8Pv6IyvQbweysWUg8I6t0dS3KY1leGpR
	 Msl9KPkVsvm+XXHQwlVqaL9hxHuH/3YyfXoLY4S5ZLrKTgT+AYilCTjnDzv6UIhTYb
	 xFlsDte2l3CLMwl+aM2hCwYQHkrHrEl+eQlZXEW8dQ+wG6GTZScGSWWC/M5uXqjhUo
	 c7MeOMbsxmklA==
Date: Fri, 10 Jul 2026 18:46:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man7/pipe.7: Note kernel commit of the soft
 limit triggered cap increase
Message-ID: <alEhps4v8E9XHWZy@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net>
 <20260709153422.210312-2-stepnem@smrk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wm3zqrd5jj4mc6ni"
Content-Disposition: inline
In-Reply-To: <20260709153422.210312-2-stepnem@smrk.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stepnem@smrk.net,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5732-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smrk.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C70273CAE6


--wm3zqrd5jj4mc6ni
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man7/pipe.7: Note kernel commit of the soft
 limit triggered cap increase
Message-ID: <alEhps4v8E9XHWZy@devuan>
References: <20260709153422.210312-1-stepnem@smrk.net>
 <20260709153422.210312-2-stepnem@smrk.net>
MIME-Version: 1.0
In-Reply-To: <20260709153422.210312-2-stepnem@smrk.net>

Hi,

On 2026-07-09T17:34:21+0200, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
> 7543e84442d7 did reference the kernel commit in its commit
> message, but the convention to include it in the man page
> source as well is helpful to wider audience.
>=20
> Fixes: 7543e84442d7 ("pipe.7: Document change to default pipe size when s=
oft limit is exceeded")
> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@smrk.net>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man7/pipe.7 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
> index 8641bcf4d807..d5744c2186b8 100644
> --- a/man/man7/pipe.7
> +++ b/man/man7/pipe.7
> @@ -229,6 +229,7 @@ .SS /proc files
>  So long as the total number of pages allocated to pipe buffers
>  for this user is at this limit,
>  individual pipes created by a user will be
> +.\" commit 46c4c9d1beb7f5b4cec4dd90e7728720583ee348
>  limited to two pages
>  (one page before Linux 5.14),
>  and attempts to increase a pipe's capacity will be denied.
> --=20
> 2.55.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--wm3zqrd5jj4mc6ni
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRIdUACgkQ64mZXMKQ
wqk/zRAAuiJF2sRBVw3/NdI/eIrq4ScvJTPB8iduGCP4u8O8jzTRJZMv2acwW0o0
Ot1WJEVP1FnIXhvTq8cL5q1gHZraXP/WOcxExnABYqeFslPN5iuwnoXthEPCXEOt
EddyH8epeEMRwmQDe8HoXng3ZzDlcotTc4rglFaW4hWzp4BkbWUp5DIP833TTnwv
e7qxDRkI6hcA1ludB9rCaGGy/Q/DSA7IwRF8pBkj7D/0EEfUm6E+gMwgecnA9YIp
TKVAU/xJIr7JnfEqYytgqEhqufSx+LxFUn4xKZ2S1flz6Ju6Upe8j/UUVUrOPndo
egtWhyx6NaeOH5V8OyHsd6yGkJfq0costEbKHFhzCcSjjGk3Z0UO5S3jJ7yqVG+E
+G589VdfCINCZv+njdHjb3seRmL2FsY+UYgrcoKLihsqO4oDiXdTeEgzAvEJW3TM
nV+yc4kAoz0NSvmwKd1GKJZfuUqeEv728IRoB1huiYAfpTLT2QgmnMXPdkFWIlRw
gykuEH3m/9OBU8Dd3q2GuLsyEvi7HQyzMizXE9sY08ZiJVCAFPz5r0rtJbIySh9F
4yPyeSr2syxxhfetcwYpyDOPvKiZFGvncgjn2/WlRONh3YFApEfHvoER7grMjluK
/L8+SI8QO6DpEKlkkIamTlukZqE2ULbFjwg2j0viO3/nwDe4QOc=
=OvBx
-----END PGP SIGNATURE-----

--wm3zqrd5jj4mc6ni--

