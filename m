Return-Path: <linux-man+bounces-4895-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNkiCur8cGmgbAAAu9opvQ
	(envelope-from <linux-man+bounces-4895-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:20:58 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D5159CF6
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 17:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5D38474A2C6
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 15:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283583ACF05;
	Wed, 21 Jan 2026 15:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLbkch24"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C536022FE0A
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 15:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769010568; cv=none; b=bk0Mo4vH9mJssTCSkoG3xoBWmVzKXJz/m5VUS/LaGHVjimhyVRVWjqVVTGtBVWBbX/K+mhZgKhCGd4HBL6YbwVtz3Om8OuyjfyzBXsn9kFgm1abG+dMzGoePvwOA+vX1O5y18dBLM2rKwOHS2dKYF9DxFCFH6pYMr0PUxKJmTHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769010568; c=relaxed/simple;
	bh=UQjeT+FN86+6s2PjxpFFkrPqrg0Oba/gjbfdjzCEysg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PXONOxR4SnSTNExqLzkou5YyV+d3PllY5iDmjKPI3FIK42xmsElCAadXLrIEoxDR8Mafrw5dqzNzeOViIdhxDLDUj89OIdn0v6va0jD0DaDd/eP0MbiIHusab7kh7Lk4yZeQFEtKT0HaqNL6KmoIsPjWAYTHbm/CwT7eaSlB4Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLbkch24; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C36C4CEF1;
	Wed, 21 Jan 2026 15:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769010568;
	bh=UQjeT+FN86+6s2PjxpFFkrPqrg0Oba/gjbfdjzCEysg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RLbkch24iXs6sNB/XTNd4UdbJvsXfvnHj0ULy0bj02tDo6VmbacWGk/imySp7wNm1
	 S4JgvO/kFtoC6reu1dz/nlPHZP3/OP939KL96AcqG2VEYaPdK5IlUjQNmJwT3Li2QC
	 75SmDuS93nkbnOYxd2nGMKSilQs7o82J2aSIsj74uaRmdRXXyYOAl4hRt1K9e6JQUO
	 gPa89dTbHshXmkRF+deLag6y2UjQ4g2+WRuX1ioo9i78Z4k4jEkSCZcQWR5U/bu8Qn
	 3+7mu2npzwrxC/FCpN9SgR3ai9fD6v6K4/627sfEhPEm26tf91ZqAxIycz5GLi9pXU
	 lC6jQmH6gvJ9Q==
Date: Wed, 21 Jan 2026 16:49:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXD1GRoxwzGA5Gsn@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l47gicmw4r3en2qt"
Content-Disposition: inline
In-Reply-To: <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4895-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: C3D5159CF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l47gicmw4r3en2qt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXD1GRoxwzGA5Gsn@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me>

Hi Seth,

On Wed, Jan 21, 2026 at 12:06:57PM +0000, Seth McDonald wrote:
> clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> redundant.

Are you sure SUSv2 incorporates POSIX.1-1996?  Could you please show
sources for that?


Cheers,
Alex

>=20
> [1] ISO/IEC 9945-1:1996, Section 14.2.1 "Clocks".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/clock_getres.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
> index 5f8ed14f1555..1a486c886229 100644
> --- a/man/man2/clock_getres.2
> +++ b/man/man2/clock_getres.2
> @@ -369,7 +369,7 @@ .SS C library/kernel differences
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001, SUSv2.
> +POSIX.1-1996,
>  Linux 2.6.
>  .P
>  On POSIX systems on which these functions are available, the symbol
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--l47gicmw4r3en2qt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlw9YUACgkQ64mZXMKQ
wqnVfBAAi9/4zDKTMI0bVMjck9e/qmoiMBRQckGD63Vibq8rMf/O/iusdopvsYsG
QC2XpeefOmwHXF2z534SCm4k9iMUxET0hO9rt5WV+4fndOLdtmPXTh6/F1CB2yJ6
EE9gpSg9Fd3kXRG/LXBxYbetntv+OrAGnNLuztgDEc9bwtfj6ZCmx8FQY40xxVAs
XZU3pvrL5kTFoYBpVrmsXzj8QbufPhXUORdME0drTcx44MgZO08EMybiSuQVKydz
Ea2+Y98wxUGjm9m/tB6G3NCXqlTn7wlN3utrX4H0M0xSX6Ft1yGyrhLWD5Krnkc5
E3WsB23fZkxlKcIKMVe/zwZvr/2ajnJE2V2yFXbyzpBbvVAVd92jfCvtdSk6zBxm
bYyAzG63frzb6l5QOt6q9h1RBQjd5aRI1D4/Vk29rcnJG1J2iCyOOqfbSPB3qnw9
c/23MfoOcZSG0sm9GsAk7uB54DEvPNwj9RCiMAQ/Zub6urHQuKdgP1kF2+WK12EQ
xtZdIeF8DDSkud76Qj962rISxkookrm4Q3dmwDz97ZBg1p7hwdLKesX9nOgPAkU7
mM699nACsa5pNiU3d+KiJyEo/SECxMUAVYblNbMDEreh52UfkKOlHG5/kOP5LHQ5
Fd/U02mRaaai7YBH84Bk2szjX8hF/4BI5W490Ij/F8+FIP1OIJ4=
=BXx2
-----END PGP SIGNATURE-----

--l47gicmw4r3en2qt--

