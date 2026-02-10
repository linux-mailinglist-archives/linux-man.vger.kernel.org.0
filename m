Return-Path: <linux-man+bounces-5087-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FZ+AXeLi2mkVwAAu9opvQ
	(envelope-from <linux-man+bounces-5087-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 20:48:07 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A8E11ECBC
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 20:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F6F4300E58F
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 19:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969BD2C11EF;
	Tue, 10 Feb 2026 19:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/bFoMja"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A91926E710
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 19:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752882; cv=none; b=hGxILyiqNgdDOccMOWCgpv5lXC+SjJOKrws5Z8se2gp5dsGmjlt68z4WDIwRhdGQtsV2T6gnTcNk6P76m0Od38iC4fk7P37HivxZPxxqdXpUypMKjL8M5+IGLP2YL5TLP7ek/JbDWvdebeUUK1zudzydfm+w4HR+wtFOHrwsblM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752882; c=relaxed/simple;
	bh=N/B2VYbTDeTKignQr0pl9ftqKX4H/zcu+eTvEg6oVak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OzzXAWt1pGvScve9PHDhPtF5nukZTmrqGdER+GQpLYcWe50duF52CvCVXgRcfXrct5UoZeLTkSb4cz1l80mdTox7MxvMFkWgbXJ1Nz6K2T7HhuoyvK6s0Y+WN3wgu/hUgAzPPmFFxo2x0Rn8JLQpn3IphAmtV0D3PCkSpj/7PzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/bFoMja; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B969C116C6;
	Tue, 10 Feb 2026 19:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770752881;
	bh=N/B2VYbTDeTKignQr0pl9ftqKX4H/zcu+eTvEg6oVak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c/bFoMjadB6BE7IU63e6n2qSnSoy8/VkLmnB1/2wgOcjF1/v4d3JUG86HvfnxiW6i
	 kunVRRrkh0TxBkWClT+JYIrnoz/i017JnvMWni7cIdtuuA5PJoUNKRqZbhxskvMp+d
	 IJ373cidKB+Xk+DWztwhCpNkcx6j7K7pqds06GGL5as+gHnxqeTPA+Cq+9hzQcyM/Y
	 0bSFE74YjxqhW+4615gr/Md+2ZVHORACE8zQkZpTKQwfh2pOBiTY/okNpG2bqSxHVh
	 6R2Gn0odWVGbOlwQkZBb6Xlbz+D8L6hmLYbgQC5oKEjtg9u1Osmk4zVlnz7U3Y90m1
	 EB9Z+KCoMMX9w==
Date: Tue, 10 Feb 2026 20:47:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYuLWrE2BtIpB-0L@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bfvyedl34vzqkv66"
Content-Disposition: inline
In-Reply-To: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5087-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url,nabijaczleweli.xyz:email]
X-Rspamd-Queue-Id: 95A8E11ECBC
X-Rspamd-Action: no action


--bfvyedl34vzqkv66
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYuLWrE2BtIpB-0L@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-07T20:18:38+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man2const/FUTEX_WAIT.2const            | 10 +---------
>  man/man2const/FUTEX_WAIT_BITSET.2const     | 10 +---------
>  man/man2const/FUTEX_WAIT_REQUEUE_PI.2const | 10 +---------
>  3 files changed, 3 insertions(+), 27 deletions(-)
>=20
> diff --git man/man2const/FUTEX_WAIT.2const man/man2const/FUTEX_WAIT.2const
> index 7d6681c1c..94cf4a997 100644
> --- man/man2const/FUTEX_WAIT.2const
> +++ man/man2const/FUTEX_WAIT.2const
> @@ -102,20 +102,12 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I timeout
> diff --git man/man2const/FUTEX_WAIT_BITSET.2const man/man2const/FUTEX_WAI=
T_BITSET.2const
> index be40d57c6..5f165adb4 100644
> --- man/man2const/FUTEX_WAIT_BITSET.2const
> +++ man/man2const/FUTEX_WAIT_BITSET.2const
> @@ -147,21 +147,13 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  .RB ( FUTEX_WAIT_BITSET )
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I timeout
> diff --git man/man2const/FUTEX_WAIT_REQUEUE_PI.2const man/man2const/FUTEX=
_WAIT_REQUEUE_PI.2const
> index 0ac1cebe5..4fa1520f6 100644
> --- man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> +++ man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> @@ -72,20 +72,12 @@ .SH ERRORS
>  See
>  .BR futex (2).
>  .TP
> -.B EAGAIN
> +.BR EAGAIN " or " EWOULDBLOCK
>  The value pointed to by
>  .I uaddr
>  was not equal to the expected value
>  .I val
>  at the time of the call.
> -.IP
> -.BR Note :
> -on Linux, the symbolic names
> -.B EAGAIN
> -and
> -.B EWOULDBLOCK
> -(both of which appear in different parts of the kernel futex code)
> -have the same value.
>  .TP
>  .B EFAULT
>  .I uaddr2
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>

--bfvyedl34vzqkv66
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLi24ACgkQ64mZXMKQ
wqm1pg//ZVDjjf8RKziYRu7WuicfZq1fouBT3IAWXCjkdAEEoCQbKDsxdHrnS2tE
Tq9DTq5fE2MqRjpzn99dD65OrGkHjBfSbnMPafEH1VrYHclKB7qom3GjwoWVgTe4
H8RzeLYDSuwqWbiKkVMHzinKUWHCowJKWUFkDlrL+1UY9a6ulpilr/DFR84hrm0X
q5sOjGcU6CLDppkEq92v7lNUyFEbRAcbDesbab73XpnXVH60STXB04rwqMuEaoOJ
QIHLYEoYTlYaZMV1Jsj84YquCgMpS+QE86nNpcu/Np8yaRPJYuruTVLG+/dRcXzt
2QSo5a5XaCB+Ge67eE+j//aJghiISmAJ1YLKbuAdmz5hFtluJRt8xH7h8z8s/zlp
9EFh5lbhupDEwb3fRZxVYo3/gCgtxvf2gSg3tBaGUyLoeifnjk8aoUs6UvLCyYDr
J3aLR1IYheLos+iyrhZRzt42Wstsi4gNbO/p5oabUDR9+fehgV7AduHLx5fsFUIK
SfOIdLT1ypYsvQQ24HyMsTRYR66xSaqblVYIMyWgP5CNTEB+nJpxeR95wCAeadAz
9R4EO1nOSw8wmdKGN2YY+j6UQfHWCYSdL9rjE/3h0/JEZmHZq87yYTnnmM45IKjl
ceNwXhbs8jHK27tAs7hJWda8dMVJXn6BV3uqQdmKEKj05bdIROM=
=YvQW
-----END PGP SIGNATURE-----

--bfvyedl34vzqkv66--

