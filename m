Return-Path: <linux-man+bounces-5533-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDFDOvDjCGp6+AMAu9opvQ
	(envelope-from <linux-man+bounces-5533-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 23:38:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E1155DEDB
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 23:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E8D463013A45
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 21:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BB6329C57;
	Sat, 16 May 2026 21:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxTynwN+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216B1F30A4
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 21:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778967532; cv=none; b=HePD52gvOi8b+66VAZWXX8wDm9oyFV1iIWmkw+40htmtcanxmoPaAfXvrgQ+viV186P9Oi5JjuV+shcRXEm4TctycfV1TOSE2kdK6JFVVJFHUhnS4A6iYXhBFo80rISpVeveumipyfotKa1oAZppiGQ+iSHntVNCeT8qVSq8yRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778967532; c=relaxed/simple;
	bh=1rq0fH24AB/7H9N4TeiSTH8dQFMD7jAvR24a6g89k54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=imDKLtnwM9LTSVg0h9tnyAsYAwX0t0ntqigY12cKfGJpgCObATWSn3e7HGx+gtXZGtZY5B4WqAyet839tst2cWT3bdko8A0xOtd5YHbARo/P3u7/n/1pkE/8vmE4pyeU33NcYfvXL/70YUzZejM/Hz3fn4e+4yWXQ75wZbu1Mjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxTynwN+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26B63C19425;
	Sat, 16 May 2026 21:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778967532;
	bh=1rq0fH24AB/7H9N4TeiSTH8dQFMD7jAvR24a6g89k54=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jxTynwN+DiYWp9ExIvjmzzi/syGRby4c2DVFQv9tgcWg6cSbJk5f7+d4/8bT+54/s
	 1n4wl2JWr2R0aGWJe8GH60BACsQnJw/efx4yi54J9Na+5W+U5lUEkuiwKHYAv0/1Nr
	 XLnQeGBwNPh+sI+f6dXasC7iJeT61ZKim0hlSXnhVR/XAsCUQh7ieJYTFwBVWbvdnS
	 1QK0lcpOp29R4I9wSE4Sd8wtudXXVS1MjuwyvepRZgmkOp404YxyeuKyheF2TTb9wP
	 +I7tyk1GoWxSrjQbKhUeV0AVqkYftaj/If4jQTBZ2ssNlCUxA1IAKoXv5HqZHWfQpt
	 rO97T4fQWm9rw==
Date: Sat, 16 May 2026 23:38:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
Message-ID: <agjag_tIzuKpME-B@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ofio5bdii437yeve"
Content-Disposition: inline
In-Reply-To: <agjZM97qL3w4JZBX@nix-mail>
X-Rspamd-Queue-Id: 51E1155DEDB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5533-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--ofio5bdii437yeve
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
Message-ID: <agjag_tIzuKpME-B@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
MIME-Version: 1.0
In-Reply-To: <agjZM97qL3w4JZBX@nix-mail>

Hi,

On 2026-05-16T21:53:17+0100, funsafemath wrote:
> Document SECCOMP_FILTER_FLAG_TSYNC_ESRCH flag, which allows to
> use SECCOMP_FILTER_FLAG_TSYNC and SECCOMP_FILTER_FLAG_NEW_LISTENER
> flags together by returning ESRCH on synchronization error instead
> of the thread ID.
>=20
> <https://lore.kernel.org/r/20200304180517.23867-1-tycho@tycho.ws>
> ---

Would you mind signing the patch?

>  man/man2/seccomp.2 | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
> index 75c7b2d58..0729a653c 100644
> --- a/man/man2/seccomp.2
> +++ b/man/man2/seccomp.2
> @@ -241,6 +241,21 @@ .SH DESCRIPTION
>  .B SECCOMP_MODE_STRICT
>  or if it has attached new seccomp filters to itself,
>  diverging from the calling thread's filter tree.
> +.TP
> +.BR SECCOMP_FILTER_FLAG_TSYNC_ESRCH " (since Linux 5.7)"
> +.\" commit 51891498f2da78ee64dfad88fa53c9e85fb50abf
> +Return
> +.B ESRCH

I expect that in user space, we'll see -1 in the return value, and ESRCH
in errno, right?  If so, we should say "Fail with ESRCH ...".

> +instead of the thread ID on synchronization failure if
> +.B  SECCOMP_FILTER_FLAG_TSYNC

Spurious double space.  s/  / /


Have a lovely day!
Alex

> +was specified.
> +.IP
> +If this flag is not set, using
> +.B SECCOMP_FILTER_FLAG_NEW_LISTENER
> +and
> +.B SECCOMP_FILTER_FLAG_TSYNC
> +flags together results in
> +.BR EINVAL .
>  .RE
>  .TP
>  .BR SECCOMP_GET_ACTION_AVAIL " (since Linux 4.14)"
> --=20
> 2.52.0
>=20



--=20
<https://www.alejandro-colomar.es>

--ofio5bdii437yeve
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoI4+IACgkQ64mZXMKQ
wqmeqw//TjzVnYpQlX4HYN842DIxjAl/OAEZEg3hvD1rvY6GGGheJUsAHO1FC8QM
WiG4JqYqCqZ+1M2c2kmFQlDBHK6nyxwpr2QXIgwfDeesxYI27L0Nf832eBo4ZuTI
QGTL4fMFl9PobR/OVJ1IMg/24dtb7rAQCFDKaGmmNiNPD7tERyGmsfEYy9l8YxW3
OiL4pheZwLaX3WntcfZa3zyI5f9YRzA1anm4pFWbzIczZmd+aqT+uMhI+Yf9IAEY
trJVXBzuIRPBkafgta9q6cvPbsCCEU6gN3TALqnhumAuKfbhL6krzMU9G4VGUr4N
VLyFEH9j1idiY9sl60B2ogKc3NHPuS5bJhw0e393JTFXKhWj0dTL12u53O+WrJn5
yrNfBzTZAH82ZMZq93tVPAobWZMjC5oPHzPqKK14VbhhQHk413fg4ITlJhOayhgF
5+JNo3lPvEK7hhm4PJwx+C4zpqHfTx1ihflAD46W8JenS4EIu05OIxZbjWZdb/3W
uQg4OAEHxR38+u51U8yLrT3Gu0tbeJDhxVEhnKYCynF6MPvqh6186dcrLNbLBwyF
0CDDvFWSwWXAwbaE3ZR/C+3iD24Cfd5ecpMPsvMrlPRI4uSZRgD5XcrLQdYIB5vu
u3tOilE5MHMSDwElKkSGI3JNlvCxVDCuXqYKFjOqx16UeA/pDAE=
=VUAo
-----END PGP SIGNATURE-----

--ofio5bdii437yeve--

