Return-Path: <linux-man+bounces-851-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECB28B9BB8
	for <lists+linux-man@lfdr.de>; Thu,  2 May 2024 15:37:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AD03284281
	for <lists+linux-man@lfdr.de>; Thu,  2 May 2024 13:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD2A713C661;
	Thu,  2 May 2024 13:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy5eeks1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2C17580A
	for <linux-man@vger.kernel.org>; Thu,  2 May 2024 13:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714657017; cv=none; b=TOfS50Zo0xlSUQvphri7NEB/KxGJCeTvMDX/vonUX3DoVYD82Ap4pla7cIvwcH9I53+WCskiiZ2yFHjGXAndXiOJk9OTQHr4EE8ee71/vdEoJ6X4b07+mL1Mno25im+E6T946mjJyLulUCf4XjMjAia2TTxp5WZUX2EYSnQ5TZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714657017; c=relaxed/simple;
	bh=y+qzOwKlXgjGmMGtA5rMz8gZ031YpMhN1opIke4PBDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rQ63n6iY/jQKA0Wq6ozK67vFDOzdz6HlWqNqVEVwcFClLiVjWrxIkuJwybB7YMhzmNvZVDlf4gbJRpoHKzvn/ddqNCOBaVLEz7gFTBMTN6FPoZwalQ2tt7gVcNk3JFy5R8xQ1LFE1q1jUpzx60JcYJxpVGNKihOU4GnPyqSgdKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy5eeks1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F731C113CC;
	Thu,  2 May 2024 13:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714657017;
	bh=y+qzOwKlXgjGmMGtA5rMz8gZ031YpMhN1opIke4PBDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zy5eeks1F3tsv01IemHF8afYwuSRnMCofPgmKVdjXnD/o9fscFVD6sYmpEeXM6im8
	 0LVedcBRlxd2EEuifYpDYEWL9zp1VX6YIAj/YApGEGbCyB0bXYVWh74lpwC+rADacK
	 jcJ7qujd35xPKrEpCnOgBeS4kd3OWtiFAtbZ9VZbP4f0xLXLLdM5Zrb2aBf2hJONOR
	 1MpwGLPty1nDBztg6jm6uwC7EUMb/rgE9yS7uNjAOC3xCXUdgfpDpu8YFHdCkIrlQP
	 9lNKrxX7P9MRd9TvHO0PMpllEiJ/bcF9+bieP0YsBGaeWC5DoxKsJJtlZyFcg7JvMr
	 Y9uU0sBTrLVmw==
Date: Thu, 2 May 2024 15:36:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5YeE5Li06Zuo?= <superzmy@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: =?utf-8?B?5Zue5aSN77yaIEZlZWRiYWM=?= =?utf-8?Q?k?= on Linux
 Manual Website - Translation Feature Compatibility
Message-ID: <ZjOW9mJlb2bh-VRI@debian>
References: <tencent_B0B00C911A5C95BC9167B6D4E5BEF4251006@qq.com>
 <ZjIV5KYc21zdl4eG@debian>
 <tencent_DF1DC856C6460DACEAC98821BBE7524FBA05@qq.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xBPqtpjRCysgO5Bt"
Content-Disposition: inline
In-Reply-To: <tencent_DF1DC856C6460DACEAC98821BBE7524FBA05@qq.com>


--xBPqtpjRCysgO5Bt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 2 May 2024 15:36:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?5YeE5Li06Zuo?= <superzmy@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: =?utf-8?B?5Zue5aSN77yaIEZlZWRiYWM=?= =?utf-8?Q?k?= on Linux
 Manual Website - Translation Feature Compatibility

Hi,

On Thu, May 02, 2024 at 07:58:17PM +0800, =E5=87=84=E4=B8=B4=E9=9B=A8 wrote:
> The web page I am referring to is located at:
> <https://www.man7.org/linux/man-pages/man1/man.1.html>, but perhaps
> this site is not maintained by you? I am not sure whom to address my
> comments to.

That website is maintained by Michael Kerrisk, the previous maintainer
of the project.  It is not part of the Linux man-pages project.

If you want to read translated manual pages, I suggest you look at
Debian's manpages:

<https://manpages.debian.org/bookworm/man-db/man.1.en.html>

It has links to many translations.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xBPqtpjRCysgO5Bt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYzlvYACgkQnowa+77/
2zK+JxAApLWY0PIT3dWm7kP4mtQXngDx2O0aU6Uk1RgUXmeUmMryNPl+hPrlh6G0
Deqfab7+eLtFmHr0w8pAq/faj5bxBi+42yk8hludwIKPdizil2sNVNEepOV+7i3C
Q0+edwFm4wNNaqA3LW5BytXCva55OKzjAldzAx6ZLEuizEtCnaOcp5gWaa7GXYyZ
wnZIjyiiQ0V3tSTyVLiSLjcT/ahmP/2rEoxnT9J35lqN5foJpscLKUf/250OC/Kx
iTzHksrV3M0XzqHKyX3boZ2icvufr24NXj7yKrRC4eetgjFcJ2xidSdmLfEn2TlF
Y/kgoDvMxGQBAgJpvLV8phj/1BtKd1CJQWitjjt4oFNsUA0LPvQnK8dr8zo3qdYA
C7u1gf68rpDwzWy/usVL0ny4hSaDc6f02D36M4V0E+5x1Usq3e4K2cCPH3RAAO1/
cg8gqlBnd6ktiAKC+evmlmu/AIQTOiy91GMWJZXl0zQNyuefOJOCQteVstlxbj72
uKRu/DM7RlzyA2u027mKB2fl4Gcp0696nEpC31X/0ZhVp0P4nvU7eEfURfPLQ2QY
M2b/Trj69l/VsoFSS2qsrXVZgXV6hsrP7sfucC7jgcNN+2S3DgY5DK1kLqAZWFwi
vOopDfuEGrmn3d+TtpZ1e4hmyAFtSxgZuAYgSKV+nR1+gfr+ac4=
=Xf7+
-----END PGP SIGNATURE-----

--xBPqtpjRCysgO5Bt--

