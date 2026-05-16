Return-Path: <linux-man+bounces-5534-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKdFGizlCGpb+QMAu9opvQ
	(envelope-from <linux-man+bounces-5534-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 23:44:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C1A55DEF7
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 23:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F1E7300F52E
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 21:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE91270540;
	Sat, 16 May 2026 21:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcp/ahhT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDD230C16B
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 21:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778967848; cv=none; b=kVXA5bGcVIbv91EA6WyUKdL4z0gJCDOktDImK81Zr7bzQVBaYFHUjAFkwyTWJ7EObZrJSSZ8mUAnpt4TfuFmJcak967A9cBe6c6Eckch0kr5C6W/yj/qMWD/6AthYaAXD+u0EUeR6MnX1R20DTtemsYuM0BlJnwkkeop/5/bzIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778967848; c=relaxed/simple;
	bh=HsiET3xJH0m+R8TLBs9H5iXN72JNBTvIJEvOHfYdUsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qy9fLds83LCZNKzuXO+unsCL7U7sMIGqE06YGdZv+/K1/hOzBZX+nWS2azRX0wpEaJZUeeVSYwf3PRduZXieU+E7leC1FmZyQYHF1yVGETuOiZSn18ZYaeEAXWZfieyHwEZhcd/JfE7JOpJxijd9fwIM20+an9WpVOFqoPOaHpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcp/ahhT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34F6EC19425;
	Sat, 16 May 2026 21:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778967847;
	bh=HsiET3xJH0m+R8TLBs9H5iXN72JNBTvIJEvOHfYdUsc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fcp/ahhTHUQQ4icrRDb7tMmBVbHyrdGjWJ96TFBfHk2gIwzq7KSbPld04PgDVZP/Q
	 0wLDUv7fq2bf4PHbPFl+X3w8mXFCLd7A8lYNSgy4FXn58SfJwio68ffc/n/7s2FK8j
	 k1LiS1VwHVBifcTaNl+hGtV8J63Sj+3hDpTsNJy0evjXT4wEqrUIGVEEc7l87vcY3A
	 Ls7V8nyCk1Hy6pAKRcGBclaPxtf3LESg7vJ/qUCn38MUuR2j7q295E/yfKf2GvZuji
	 AcT+bqOr81FY+tyvFAEtfRbkAJ5aGmlgetpb8DzqRk6X24PC3j4rhqM0DiABMjtMTb
	 myWIsApGQQ2Xg==
Date: Sat, 16 May 2026 23:44:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: agjZM97qL3w4JZBX@nix-mail.smtp.subspace.kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV
Message-ID: <agjkHcnGw1jFDYrX@devuan>
References: <agjZR_2uzuZCeMPs@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hjvhokmjkg4jpcp2"
Content-Disposition: inline
In-Reply-To: <agjZR_2uzuZCeMPs@nix-mail>
X-Rspamd-Queue-Id: A1C1A55DEF7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5534-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--hjvhokmjkg4jpcp2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: agjZM97qL3w4JZBX@nix-mail.smtp.subspace.kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV
Message-ID: <agjkHcnGw1jFDYrX@devuan>
References: <agjZR_2uzuZCeMPs@nix-mail>
MIME-Version: 1.0
In-Reply-To: <agjZR_2uzuZCeMPs@nix-mail>

Hi,

> Subject: Re: [PATCH 2/2] man/man2/seccomp.2: Document SECCOMP_FILTER_FLAG=
_WAIT_KILLABLE_RECV

Please use the In-Reply-To email header field so that related patches
are part of the same thread.

On 2026-05-16T21:55:29+0100, funsafemath wrote:
> Document the SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV flag,
> which makes the process ignore non-fatal signals until the supervisor sen=
ds a response.
>=20
> Relevant kernel documentation: <Documentation/userspace-api/seccomp_filte=
r.rst>

Please sign the patch.

> ---
>  man/man2/seccomp.2 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
> index 0729a653c..5dd2675fc 100644
> --- a/man/man2/seccomp.2
> +++ b/man/man2/seccomp.2
> @@ -256,6 +256,13 @@ .SH DESCRIPTION
>  .B SECCOMP_FILTER_FLAG_TSYNC
>  flags together results in
>  .BR EINVAL .
> +.TP
> +.BR SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV " (since Linux 5.19)"
> +.\" commit c2aa2dfef243efe213a480a1ee8566507a5152f4
> +Ignore non-fatal signals until the supervisor sends a response.
> +.IP
> +.B SECCOMP_FILTER_FLAG_NEW_LISTENER
> +flag must be set.

This sentence is incomplete.  A correct English sentence would have to
be on of these:

-  The XXX flag must be set.
-  XXX must be set.


Have a lovely night!
Alex

>  .RE
>  .TP
>  .BR SECCOMP_GET_ACTION_AVAIL " (since Linux 4.14)"
> --=20
> 2.52.0
>=20



--=20
<https://www.alejandro-colomar.es>

--hjvhokmjkg4jpcp2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoI5SQACgkQ64mZXMKQ
wqkxGA/+IWW6yGpOIzyElswt+YUedBQV4wAKK+4JTCJENUN18Y1qcUiZArwhE7jj
HbMX+EjZYcQss9Evdcm8Xn+MijFIjakwfocIbHF6CWbNWhsbjibGC41rgUYMxKhn
SIOIJiGXZVZRgI7cjq7G+PSqHjtKSMVJIfDFXyfEBDBDTDnrjuBHbnH79r0iBZCw
vJPa1ydZxBi4wjU5zIKWY+niYzf4A+rlJfHvCYksHlARpY1Q09NCVqsGqwPvRfin
/rNP2VDj1JLhwhekXsHy+a/9ESJhaUIx/5Uw1pxTj0B7N8rNu0c9SjLbOoXn7YTc
IsMBdCgExgwQUaD1KgKVt/BhzUx1Z/UnFmZDvEzRd46fu9XV4iFqsfOAc+8pCYCB
hwdrcn1q4P5QdrmiqPIniul7kU+OejZYaeFpNk5ewutgYaKsuBsgj1nxmE3aoEtY
kO8lFDaKPntIdjKx+cF8bRLPnUr+jSuX14X3FSvi+aUshqQZrHbSYvbEYtnGlH1P
LT5DfpAExEFcRDz67KBq5KHKznEZFpU419qoNU+2G9gYK+p7mM6vpNQIeXxUBvhL
iZDSyH29g997oEbYsBUjrU9u/yl1CNyRWVP3lHs/9DBAvgSGS50WWnpgbahqSqip
gJ5VkQ3+dB5c3pBWCfxIsifF3tgdmNHfwI92vyLgehY/gRG3DTw=
=CP9c
-----END PGP SIGNATURE-----

--hjvhokmjkg4jpcp2--

