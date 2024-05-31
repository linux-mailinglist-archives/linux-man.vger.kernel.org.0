Return-Path: <linux-man+bounces-1019-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 637398D6925
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 20:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9065DB236BB
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 18:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E4077E0FC;
	Fri, 31 May 2024 18:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAUCY1rG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D01044C6C
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 18:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717181094; cv=none; b=gziR3BNa6nGaNkkvc3MKsaRBBfzbeLenlPnkQTeRwN2ieknFJetuPlxBcBJo3EGL0CtdhUJtE8APhPzjZ98L3h2l84OEnjS2zqae6vRFhk8iAmysoBpU9+5AzROe2kmI7GH3J0kK+nvqnnG1JnBsNkYOZWeu/vaRIwrUnZBKqEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717181094; c=relaxed/simple;
	bh=I5hzIptEw8z/hG9F1bxeXt6w//X4Llss63qrY50u6RM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdS4pFAV0SQKKuni6M0cY7OKVUFwoHv5vyyhltV3Zb+Y7MKyIfy7A2KF7Hx2hYal0iN3CLuRup0xEBCsxi1i7qdI+yT3OZm7RhR7QpujkJgglUhktjv/e3rAwmJ3JtbeBw5wG8RoOKHuSlhLLhKzAkrSEs8tpvscsb1/HmCuCqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAUCY1rG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54700C116B1;
	Fri, 31 May 2024 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717181094;
	bh=I5hzIptEw8z/hG9F1bxeXt6w//X4Llss63qrY50u6RM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eAUCY1rGSVC7tB8drIX24F0XcR0LjIAx9U2B0OLay47RLHLORbHexbkCXYEuKzFoK
	 FGaVdYfMdoBg4mGXXxpHsVVP+TMUazDGMfwNvSNaCJbq1vTp4ZRAHBi8i+tPWFXxkE
	 xbrHkNiQMHRDdHAh7gBNqWRAMVkBs2pWHgY0T+pbUo9fYSf99CTXXGxZBb6RwfqwNG
	 jWhPb+YjE1F0gPTCCfyCChITQ9xsN175/3UvuQzs+7Yls1YWyshykDnlGmMo53yN/8
	 Afx6yvQDJ0qahJrPVbUuBkS/o48pugworA5XOsTyBa9mKDfvDSIoT80L4a5LcdvNUg
	 A7rPSmStMgJew==
Date: Fri, 31 May 2024 20:44:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on
 directories
Message-ID: <6vlgyxzh5taukldnkp7ubdb2zfla3m7ebx67qayyyoyyx5wi52@gownac2gauj2>
References: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="msmb36jyb57q5eyl"
Content-Disposition: inline
In-Reply-To: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>


--msmb36jyb57q5eyl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on
 directories
References: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1!

On Fri, May 31, 2024 at 08:11:17PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> For some reason, neither chattr(1) nor this page document it;
> ext4 supports this (tmpfs and ZFS don't, didn't test more).

By "supports this" do you mean FS_APPEND_FL at all, or its behavior with
dirs?

Have a lovely day!
Alex

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man2/ioctl_iflags.2 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man2/ioctl_iflags.2 b/man/man2/ioctl_iflags.2
> index 0f4c533bc..fb7036cc4 100644
> --- a/man/man2/ioctl_iflags.2
> +++ b/man/man2/ioctl_iflags.2
> @@ -44,6 +44,8 @@ .SH DESCRIPTION
>  The file can be opened only with the
>  .B O_APPEND
>  flag.
> +If applied to a directory, forbids removing files from the directory
> +.RB "(via " unlink "(), " rename "(), and the like)."
>  (This restriction applies even to the superuser.)
>  Only a privileged process
>  .RB ( CAP_LINUX_IMMUTABLE )
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--msmb36jyb57q5eyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZaGoQACgkQnowa+77/
2zLv2g//VRn4Yve4/dielB2lXP7ZT0tjC/koQXD1gyGydA/YPXWrsFv1PG69eSYJ
B9ems4t4Gdhv0nfp7v4UfJ+ysHBM6jEPk1h1oksvHzYgRNLIG2a5U9avHQwOYFiG
2k4er9NE+PNSze9AToLMdat+dlVbGcB7M5puA2x0X91QboejduHk/9x2Wf1Og/sj
23OLgbKMr0hh2yyDmy28zdQyWuyKdBs/9t8sHwTYe9i9Kt16qT4raa9AHwVW//UL
k/Kc8g3UnyvZGEeBaLeEE50bA2FFxfT3oPAF95/mz0WGCU9/zm1/3sogHnUtmg4a
B35G25pP+VtwFxxhsPLbMHQT3J6buFWcLeUmanqjZ2VD20M2afwzqaWVRHJJJWN1
FpDsZDDsCU4YdASTmAdq7SpDbWdiGl/Bg6MePS95Pvd8RcNeSpQgziVOSpOLOfpl
VkHu9msOronmEa0rrRF2PvJGRo6qGp4SURd33qH0PIv411iI66YvpyNk5QDTi4wq
8iFLqKOnAfTd24AHfu77xu2Lks5d9Ib3pfUDmkMoDyR+RmwANKZBKKzoYIQ2fGS1
LXbMScpElpOWIe6NnzYfMi9Eoa+wRgIbsHBEOkoDskb3D5bRwZOB7vbSj9ekRr/T
p+DUOWklsPJkzn5XCDy3LJUoUMIe0v9CZ8aeQYl5S/tL/Q/K5UE=
=D6H3
-----END PGP SIGNATURE-----

--msmb36jyb57q5eyl--

