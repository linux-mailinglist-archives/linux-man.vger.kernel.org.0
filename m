Return-Path: <linux-man+bounces-5468-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEuJMFb9/Gk9WQAAu9opvQ
	(envelope-from <linux-man+bounces-5468-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:00:06 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AEF4EF12C
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:00:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 18C363001A7B
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 21:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C232EACF2;
	Thu,  7 May 2026 20:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRgxPpLL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2830433D4E4
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 20:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778187598; cv=none; b=dAgEvBZ04LYqKMeOqB5BDvD7sBp423fSCNxFTbbqsZ4xvGexR0KFLhdrnz3JrhrLv5u+juHvWAOPlZwh9dTvEHls+bZJi3+/IDDEdPcJ1ojUaTkTPyod4YA7cb6cNdeXIWBZi8/RxfR/Ti36n19tzHCeBEm2Qt4ELzjn6kKt52o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778187598; c=relaxed/simple;
	bh=0lFkTxWJswSCuwAcCo6T+EZzo1fmjAMUm6mhX4xJOXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dUz3szbK31gFJSKIKeyliT4wUJ23AQwl3UyjLVqwCwHGb5aZSgXAyFU0Rjk9sY+ozeHbg8151te7x/ElPtQWSm0GO/4ocxe70DTOQhV+35ACT23x4csQzPyVhojjI7rjJFNh5tOoJdx50SMrHSz6WWF0/T6naDNFwYdSrUfwSUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRgxPpLL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B645C2BCB2;
	Thu,  7 May 2026 20:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778187597;
	bh=0lFkTxWJswSCuwAcCo6T+EZzo1fmjAMUm6mhX4xJOXs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DRgxPpLLSdGrf0l+ZwDA/iNGKigw4X1mKSmfFCL8RDDWD80BHlpV/CmjJU3QtKSH8
	 n1BtmUoySxWR18wxZMpq1mH3aCIzCPnVh6PYn/1Ou5PTQR5LDRQMTFcQRD3uyl4zao
	 sSWkM9jHxrk7QOQ3B2aesyB0xN+gDFCv827zRxFDnzH7dDhJhWOxjeozN/BmQeD0+o
	 eg/DBmXqK8V2D5omJT7pH7iestplAeyNHW4yXHxRdmncO5qejYW4FHkFKVuZrkTshA
	 ELvjlcVfpmvQ61A98/vYepyMFWxQZ4Xp+iSTAROwsVi+Qr5IYgsvNHaVnWuQIa3p5q
	 UHVMWTFrJnYDQ==
Date: Thu, 7 May 2026 22:59:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Patsy Griffin <patsy@redhat.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 1/2] man/man7/suffixes.7: Add .zst suffix
Message-ID: <afz9Lp13u_hYm5xR@devuan>
References: <20260507190508.386186-1-patsy@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gj6c367qdm7fnepe"
Content-Disposition: inline
In-Reply-To: <20260507190508.386186-1-patsy@redhat.com>
X-Rspamd-Queue-Id: E7AEF4EF12C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5468-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--gj6c367qdm7fnepe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Patsy Griffin <patsy@redhat.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 1/2] man/man7/suffixes.7: Add .zst suffix
Message-ID: <afz9Lp13u_hYm5xR@devuan>
References: <20260507190508.386186-1-patsy@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260507190508.386186-1-patsy@redhat.com>

Hi Patsy,

On 2026-05-07T15:05:07-0400, Patsy Griffin wrote:
> Signed-off-by: Patsy Griffin <patsy@redhat.com>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man7/suffixes.7 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
> index e21ac3ab8..3e17afc77 100644
> --- a/man/man7/suffixes.7
> +++ b/man/man7/suffixes.7
> @@ -255,6 +255,11 @@ File compressed using
>  T}
>  \&.zip	\f[B]zip\f[](1) archive
>  \&.zoo	\f[B]zoo\f[](1) archive
> +\&.zst	T{
> +File compressed using
> +.BR zstd (1)
> +format
> +T}
>  \&\[ti]	Emacs or \f[B]patch\f[](1) backup file
>  \&rc	startup (`run control') file, e.g., \f[I].newsrc\f[]
>  .TE
> --=20
> 2.51.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--gj6c367qdm7fnepe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn8/UoACgkQ64mZXMKQ
wqm1cA/+OEc9NfOgktLQ1/1tqyt0Ae90Ksgyq9pg3vme4OwPkdNPvqfxoheWjUKQ
wbXc/ZWSU/lrkUZTf3IbWDTUsVcdwdOATlS/Ex2hNLGw9vRkT7T808+vm3rKz74r
xtjTBHIewegg+qBBWBr0yGdb9qRlD0vGqlW/QbYHihRKjr6o85pOeTouoY6/YmTN
tD/BH23cLqoKwbNBgPIMxcEuVfSi/Smz120RqwMaEyI1jDKuYfKlMD1ug8CrTC0g
o6ix7FDzZYM/iXXRcTaTnWXGwPi/3E0OQzn4JCIDn4V4lifDQ2CwfJWtLcTwPRp6
KG9U4U8zTnSsrivnBRb92GSJ7cVQR2B9N31CLDVFuKGU5kA9MFdWMQf99UYIDGSw
r+QiI4Fg0M4PvX24mRYbjUiT1DZm3+t7lTusRwHkTtQzHBSpjMTwvHaiE+XUb7wV
hU8XNQ/mqDduVQSqlYhLYEwBaBxvUaiVpg9gnHrPMVFGJpOVG8P/1jaOrvEH2NgZ
0uP/GhHxr74JHbYGZClgcnrZBy4ws3wRotWCH9okakd9OU4DccuVygrE1zIdb402
c78FJJmlxjEw/EDqlVIXlq6yFzBt50HHyg6ijpQAgtps2xjz/LDlYWS46vhVzHnJ
JCQTcyqIoNgVWpIBWGfj5IJEiPyn8oT27+EkGXSslp4nyH4Zdq0=
=+rs7
-----END PGP SIGNATURE-----

--gj6c367qdm7fnepe--

