Return-Path: <linux-man+bounces-2213-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0AFA08336
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 00:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F00D188BB86
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 23:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097D01A707A;
	Thu,  9 Jan 2025 23:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDF0Q/8V"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC22E171658
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 23:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736463753; cv=none; b=eKCPNqStf7ANsOkoXSNVgfRgHHGChM7NtWrGfYcxxt51sOA9zovC1YA9tlz4FxdWNKxIhNtVnqj4oFlOxJAd3imM7OJQyKbJGhWF6NxLKQGlHAhtYDHlrxeQM91EuzxojGZyznWsjJVhhkQhYqP20ePpYFQK+MIx87iRBujDv78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736463753; c=relaxed/simple;
	bh=OSDct+A6U3Q6PEqtawPhjpt0EadNKyfK8YWiVZsNIgs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PiRdX4ocmtHyCbzVji+Be35szfgHcJrPAHjVvLvJBRAKKOYXi8Lp7FJpY5Q8B4vz5IWEnojZTSpOCIh4ph8jKVS7jQEwj0S3SAF22G4cT7rKYdeajK5yQPMtzRBmXda4nHp1Rt2E8YvtvwVS38ues2z0bjJ6ZEJqmdEW+EczNWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDF0Q/8V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8858BC4CED2;
	Thu,  9 Jan 2025 23:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736463753;
	bh=OSDct+A6U3Q6PEqtawPhjpt0EadNKyfK8YWiVZsNIgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aDF0Q/8V6aatz2bN7AHct1ro76kuFV4anmwQl74585QEEEcRaiFC44pzCVgNdYTtl
	 4Zb7bft1sOvk9bpNI6U4XMeXbfk6UvCC2ns+eSJ6ulJ6QnpIWP65lybMT+zdGI4MuB
	 ZdZL7mzaYcTY0OiYOF5GFzGdq8MAykH/FrN65PVy0hBAex2uhbvp/h5rsAQYfMMLX+
	 8SYvc2LH8/mftnJgAC+xx8btbXYPX5tZ7FyvqGQfR8mlqHpO0pQCerZbKqgGFQq2JG
	 ScTD5fehyyP83ucyUp3ikMRTJ8yxcwFwOFrINJYOGxtajTMh/mKNsyEgUn+QsC5CkM
	 8SpwEWTHiUa/Q==
Date: Fri, 10 Jan 2025 00:02:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Stepchenko <geochip@altlinux.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/user_namespaces.7: tfix
Message-ID: <ouve4dcwfcsfzhzaqe23onzflg2meen33hbmj3w5oohmnz6wj7@5juh6pbcsvxc>
References: <bc17315eff26eb31ecc78a2c44b89dfb077813df.1736444255.git.geochip@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sawb3bslhtkt62fl"
Content-Disposition: inline
In-Reply-To: <bc17315eff26eb31ecc78a2c44b89dfb077813df.1736444255.git.geochip@altlinux.org>


--sawb3bslhtkt62fl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Stepchenko <geochip@altlinux.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/user_namespaces.7: tfix
References: <bc17315eff26eb31ecc78a2c44b89dfb077813df.1736444255.git.geochip@altlinux.org>
MIME-Version: 1.0
In-Reply-To: <bc17315eff26eb31ecc78a2c44b89dfb077813df.1736444255.git.geochip@altlinux.org>

Hi Alexander,

On Thu, Jan 09, 2025 at 09:06:32PM +0300, Alexander Stepchenko wrote:
> Fixes: 8c74a1cea495 ("user_namespaces.7: Clarify details of CAP_SYS_ADMIN=
 and cgroup v1 mounts")
> Signed-off-by: Alexander Stepchenko <geochip@altlinux.org>

Patch applied.  Thanks!

Have a lovely night!
Alex

> ---
>  man/man7/user_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man7/user_namespaces.7 b/man/man7/user_namespaces.7
> index 40a2a53634dc..eec29c2434ce 100644
> --- a/man/man7/user_namespaces.7
> +++ b/man/man7/user_namespaces.7
> @@ -286,7 +286,7 @@ .SS Effect of capabilities within a user namespace
>  .B CAP_SYS_ADMIN
>  within the user namespace that owns a process's cgroup namespace
>  allows (since Linux 4.6)
> -that process to the mount the cgroup version 2 filesystem and
> +that process to mount the cgroup version 2 filesystem and
>  cgroup version 1 named hierarchies
>  (i.e., cgroup filesystems mounted with the
>  .I \[dq]none,name=3D\[dq]
>=20
> base-commit: 48618d7701d55ca9401b259bb4e6200d841df6d0
> --=20
> 2.42.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--sawb3bslhtkt62fl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeAVYwACgkQnowa+77/
2zLKKA//fvjAB5871ipgfRLe7BhoFtIdv6EufxW0vYEDZFcHx/uoYWWL0UeRm+Ak
E4AHtjcGofVL62JwpN8nR/XXeh/EeT7NQi61YOVt2ApwCv4NHpOZSQL+mUxuRmQC
LrReiLT6jYblFzjSX27lFn827TwigEkHAP/zO/AUkPi0bJPZXoqRo98Ps/jlr9dm
fyZoEs5BiUUcNVHFlvJmVWNIIOMKZT52SApSkvpfr9mnTjtgCaWCFba71HsbZmHu
wqhoFkzesGu7M2BQNmeOHyepjiMSR7Mf2qL+qt7tQ0IwvJTH4+E50nPHaXgDpzEY
dHDURG/ySnq6hCXyqcWyJh3ev4JSxFzPMzZPSZXa7qurEyaBLVcjJEChpSZ3IVPJ
1QfggupQcA0MkBItSJAUTRmPFWrx4vxmCcaDRrFnrD5lGUxdJFqAiWuO+foKFnqG
a2doXskpXSFdbgY8hIEoyeErDe4thwmsh1sNAf/VfnDly/RFLRQAXLcVQxXJmvfn
rQTAxz33OqXJmeQJd7/M/Y0aw5EsyH2yHD3WFm/knrJJTZQhMw5b+alu/fX9knwD
5fGmpSjAPD+vYOwt12ovd+6w+iFfMMMQrmesifJ9Z/tQ2MMcCHf6CmNIhSVcx9wR
yu4aNacEdEvhAh+M5R8Dn8hYa5sos05/6sHPS742N8AbgWp7atc=
=F+mX
-----END PGP SIGNATURE-----

--sawb3bslhtkt62fl--

