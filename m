Return-Path: <linux-man+bounces-5490-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNE9JEMCAWrePgEAu9opvQ
	(envelope-from <linux-man+bounces-5490-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2026 00:10:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5707506A15
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2026 00:10:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 963DD300D142
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 22:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C41130EF95;
	Sun, 10 May 2026 22:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIe+gyu0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF96A26738B
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 22:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778451009; cv=none; b=jtOEzpyjPRiirrp3ytLSW4BSq0mdv3uX2BTWKeX16ZEGPVyyTFeoA47CZwF148mquVcb8VzEAh2r9SqFFPaWbIUSI9sWd2eqL/i79x2JK7tDaVcjzlhDacblqzRebYB/Ir/ht/CD8S78y5vps4GPldTdTzcSuWKOrbc647N14nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778451009; c=relaxed/simple;
	bh=SPKrtMwY8Pb8AN3QUWqaTvmKELsC4oNv7r0vL3aa1rM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=guv5OCB94o0+kxgcsm6DesZOKu5cWhGMFG1YUfeIyOvGNwqnELzakpE8m9Nt3I3RBgqrhBFhM2I/NVA2EATGi6N1Dsnn81zbTMXwEPWfheQWdMl29pvo1Botj4f81r5mdOPKRPXZyiQHxJ8t67TaLmfEpR8Xk/p0IawM7C1Ovzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIe+gyu0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A3D6C2BCB8;
	Sun, 10 May 2026 22:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778451008;
	bh=SPKrtMwY8Pb8AN3QUWqaTvmKELsC4oNv7r0vL3aa1rM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kIe+gyu0xmbXCeUi5U90QNpOL92i85m3kydAs1it/yjMM9wZGVMsc+IlOUZlcYLPX
	 FjCkxg8rsszpiSA7ZsC0AWyu0/jH6BMHvsxrVXqx1TBfRcWqE0C615V6I//O2dGqH1
	 rYPszmIVuCsGEW5sC0nECKI3eALXHEETF8deq6ojGAIamcNTQ5zRtQXSnJRCZUAY7g
	 hB4dY0HmXsEndoD+JGueAwsQRvx5k9IFofvcux4SFufhq1hAUb8/UcvZfJ8q5RKvoE
	 vXfCMLu6BZTst/L2Yar2pi1YvE4+onb0Rok3TlY969KB1wxOvWvP4HDObI+WYNhSrh
	 gkT4lpH+mXq6w==
Date: Mon, 11 May 2026 00:10:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man7/suffixes.7: Clarify Debian artifacts
 description
Message-ID: <agECCxJPoa4zXefb@devuan>
References: <20260509185022.289672-1-guillem@debian.org>
 <20260509185022.289672-4-guillem@debian.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="thk4hl5w4cryr3is"
Content-Disposition: inline
In-Reply-To: <20260509185022.289672-4-guillem@debian.org>
X-Rspamd-Queue-Id: E5707506A15
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5490-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--thk4hl5w4cryr3is
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man/man7/suffixes.7: Clarify Debian artifacts
 description
Message-ID: <agECCxJPoa4zXefb@devuan>
References: <20260509185022.289672-1-guillem@debian.org>
 <20260509185022.289672-4-guillem@debian.org>
MIME-Version: 1.0
In-Reply-To: <20260509185022.289672-4-guillem@debian.org>

Hi Guillem,

On 2026-05-09T20:50:22+0200, Guillem Jover wrote:
> From: Guillem Jover <guillem@hadrons.org>
>=20
> The terminology for these artifacts was "recently" updated to make
> them consistent and more clear, where both dpkg and the Debian Policy
> now have matching terminology. Refer to the dpkg man pages for further

I've changed inter-sentence space to 2.

> information and format description.
>=20
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man7/suffixes.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/suffixes.7 b/man/man7/suffixes.7
> index 8487bb5a1..8408aaadd 100644
> --- a/man/man7/suffixes.7
> +++ b/man/man7/suffixes.7
> @@ -79,7 +79,7 @@ Suffix	File type
>  \&.csh	\f[B]csh\f[](1) shell script
>  \&.cxx	equivalent to \f[I].cc\f[]
>  \&.dat	data file
> -\&.deb	Debian software package
> +\&.deb	Debian binary package (\f[B]deb\f[](5))
>  \&.def	Modula-2 source for definition modules
>  \&.def	other definition files
>  \&.desc	initial part of mail message unpacked with
> @@ -91,7 +91,7 @@ command output)
>  T}
>  \&.dir	dbm data base directory file
>  \&.doc	documentation file
> -\&.dsc	Debian Source Control (source package)
> +\&.dsc	Debian source package control file (\f[B]dsc\f[](5))
>  \&.dtx	LaTeX package source file
>  \&.dvi	TeX's device independent output
>  \&.el	Emacs-Lisp source
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--thk4hl5w4cryr3is
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoBAj0ACgkQ64mZXMKQ
wqlEEA//b2aY0ah6YM/g+xmeKPg4bk3apZCq4CKnBPuuNrTvZqU99l73z4RlGF8/
fG8hebsW5bQ0lQIz1wQZyRF9MI5ELocHstp+C9abWuLXw3nBSxKdT3WIIDAuvwuZ
/CKM0lAx39j0VhvH3ndEmnSDHb+NO5Zg49R8siBUiuUEFOVfs3hr5LVPXrlZJQcT
j2VZjk4ZAVKqdP45p3E2JbKisBwbWcySr0y7RTGXI7FizJhbAyZdcRoUTdFK0GaP
8i6riHNDS7WvgVIK05s8nnlkAdtJcZiBUCchnivVYSQD7VPIx3Tchp4iXNEqGc1i
XhT/K6/ICDq+2R0OrnSKnR2bGPCUbb+J8H1GoGICq3Y5CVh7RzNrEjKLhHDtumlO
B9mdLt1pgcdEuBO/oDMpO0EYzg/tE4ZXQkUD3hEy/qjNy7w/ywyvQDUk/GXO2RVI
1zeedhZXtIQUNgD3T8uQSparuiuu4nL2wLS8jQ+RdgCcrUE5u5zW5qMdEPq75VSv
yt8rHxhWbH8IGM8hqEDEdm4exHwK82+eYQmX2vz5XauvZVCI+jWugQS96npv/ZJd
4MPKvz3ECSXytqe2DjzGNKSVqoqXlP5QvAsvv/jqoxyOdSdi7lzC4iNDcEnDAZhE
wPUAPZfjaKmq1BENfCkH1O1e2GSV6V+vsE9Bl2Nxydfv2NvPLK8=
=dm0j
-----END PGP SIGNATURE-----

--thk4hl5w4cryr3is--

