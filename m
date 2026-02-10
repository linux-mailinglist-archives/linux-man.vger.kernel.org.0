Return-Path: <linux-man+bounces-5099-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLNsD3O2i2kKZAAAu9opvQ
	(envelope-from <linux-man+bounces-5099-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:51:31 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA0811FD59
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9108130093B8
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 22:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8145B30BF69;
	Tue, 10 Feb 2026 22:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shuf+hgZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452B8248F7C
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 22:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770763885; cv=none; b=Q/HOkf8/SX8CqKWNMghTQiANJMgHXPEoGwddgs5ebq9ufhI4S5X3s7bnTiNErjLic/k2W8mdPS/7IawS4Lwxtqjn5HTGmnBXR9IdIKt8FQC0QBAyK1x9nOh9yjk+mtAzQwxGJ58Mipiw9/LPMHqfW2EO7Su2t60ENUtk5pfEmTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770763885; c=relaxed/simple;
	bh=a5iU6D3zlhrDGlPYulz/m5aOxB6wan8bzzFG+zklsxE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WxoKfE2LYo4O68MPAO6nYk99OsRm/WeMCipeO4s1+jU3SJ+R6KIAdWogs1Cem2t08yoozaZA0/pRhgYenaKbJ0Ea6UWpAbBf1FMLxf5Auk6lzmXdrAuMiQ7+gn1JPtF3+pI8Mm33T9bgcZGL4j4hOdJpDUU2U2e5s3INIL88F7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shuf+hgZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E91FC116C6;
	Tue, 10 Feb 2026 22:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770763884;
	bh=a5iU6D3zlhrDGlPYulz/m5aOxB6wan8bzzFG+zklsxE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Shuf+hgZv96V6nrw/c5Ct9tsx+bRcCGu29XYPqwL+YQAuGRbt5PBLrXpc7qkzbMW7
	 oB2mJ13EKUEVLAKMCSZGfQqgy5qYL5VlUSwv6Uazb1VfuTI1exALxj2K0z3oc9eaaP
	 E0EP7iurAOST8uw7+b4e27w7dkjqB0OQm0eWOS24iPMFCG7AmngnIhzuSgeNyGZ4Nj
	 +By2qGb17Jl4rhAqPmTwSN6esAg2J5kmAgQPWaU1EVWXBqGe/LOEP+CLjkQEn2+f6N
	 0rxJ0eOiGeb5VFtSVi9rKCMt7d8/2V0+aFety9nkf8bOZftUjLHE6VIWkSR13+dDdG
	 4pJILaW7HGYlA==
Date: Tue, 10 Feb 2026 23:51:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man7/feature_test_macros.7: Drop _ISOC9X_SOURCE
Message-ID: <aYu2XkytqqujP4Th@devuan>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
 <bf785830f727b9fd7a40001b861b743f88fe2a7a.1769581651.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z52okkbn2ekuzuwc"
Content-Disposition: inline
In-Reply-To: <bf785830f727b9fd7a40001b861b743f88fe2a7a.1769581651.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5099-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sourceware.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5EA0811FD59
X-Rspamd-Action: no action


--z52okkbn2ekuzuwc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man7/feature_test_macros.7: Drop _ISOC9X_SOURCE
Message-ID: <aYu2XkytqqujP4Th@devuan>
References: <c52b599edf72f3e536ff6a5b846232ab15bc83d7.1769581650.git.mark.hsj@gmail.com>
 <bf785830f727b9fd7a40001b861b743f88fe2a7a.1769581651.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <bf785830f727b9fd7a40001b861b743f88fe2a7a.1769581651.git.mark.hsj@gmail.com>

On 2026-01-27T22:46:24-0800, Mark Harris wrote:
> _ISOC9X_SOURCE was a temporary macro for use before the final name
> of the standard was known.  It became obsolete when _ISOC99_SOURCE
> was added in glibc 2.1.3 (1999), and has not been recognized since
> _ISOC11_SOURCE was added in glibc 2.16 (2012).[1]
>=20
> [1] <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dd780990=
52b6b>
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>

Patch applied.  Thanks!

Cheers,
Alex

> ---
>  man/man7/feature_test_macros.7 | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
>=20
> diff --git a/man/man7/feature_test_macros.7 b/man/man7/feature_test_macro=
s.7
> index a0c97f2c5..76d6e44cd 100644
> --- a/man/man7/feature_test_macros.7
> +++ b/man/man7/feature_test_macros.7
> @@ -333,16 +333,7 @@ .SS Feature test macros understood by glibc
>  .TP
>  .BR _ISOC99_SOURCE " (since glibc 2.1.3)"
>  Exposes declarations consistent with the ISO C99 standard.
> -.IP
> -Earlier glibc 2.1.x versions recognized an equivalent macro named
> -.B _ISOC9X_SOURCE
> -(because the C99 standard had not then been finalized).
> -Although the use of this macro is obsolete, glibc continues
> -to recognize it for backward compatibility.
> -.IP
> -Defining
> -.B _ISOC99_SOURCE
> -also exposes ISO C (1990) Amendment 1 ("C95") definitions.
> +Defining this macro also exposes ISO C (1990) Amendment 1 ("C95") defini=
tions.
>  (The primary change in C95 was support for international character sets.)
>  .IP
>  Invoking the C compiler with the option
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--z52okkbn2ekuzuwc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLtmkACgkQ64mZXMKQ
wqkOpw/9FObArP2TDZyF9nhV+kZPVN3/O4n5IYki19wlHcEcWYB1zWWo7pyuyC6p
az626VCqsjarpYODfXSXZXsROtvRB4uX5wooVoKr7w8JITzdCUcXx8atEoafXlvw
/cogxxHQKVhTAcTnoOLOqS0bEfqofnQxfDcAj2+X5ss7z70z7R0FVMqau9AELw6m
C6o1XbvPtxpqlebbQ7P8bg86fAwzvZSxltjPxKLWBc4u77decikk7s0RHrXgEOKh
ujzl7GFO5q4dfGZ7av6s9sSwcosxzzEn+nsSxEeoeI4VZNMcQ3V5bYKOTC60VOw7
Kk/6EwSM3sL260QQjgpYoOVyBFaz5oZ5bLYVP9O+BUbkLoFsw3T+bz18lGNe87MD
s0btlmLi8ziQPZzogf5UV2N33+82saK2dCFUtR+YmsR9/4juCMbbZEyPkyZQBide
Ui8qYtwNBuLu0GcyOjR3WYJOpFU/2SarkTx0DpcbRzJCShbIZIO/YKOsHSPEz3EQ
hWSyIWawgBELk3mU2GgddbZHN6wEeO3aMLsu3SuvWm9HlLKlwUN/hTlh2u/dXN13
WAqnN+fhEdsgCWj/Gw2/D7nD9s8A7Vp9Wfpia/TEk/g+6W1lQF9WNCMz1bH6V+5Y
72ps4JzIpJKMfUn7i9PDOXpJGa3MJpTEZw5zBQzFGKTHjDssdu8=
=HK1c
-----END PGP SIGNATURE-----

--z52okkbn2ekuzuwc--

