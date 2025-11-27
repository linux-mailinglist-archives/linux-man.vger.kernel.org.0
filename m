Return-Path: <linux-man+bounces-4335-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F912C8DEAC
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 12:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C5AE3B0579
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 11:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA44D32AADA;
	Thu, 27 Nov 2025 11:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2FtUAWk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98182E7BAA
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 11:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764242082; cv=none; b=YqAujSbALqask4UdXbH5TlEU0nU86t2QyJNH+pue6x9bXm2Qn0//2Rzat9lnLWqi9cdv1Ody3o6IPn2eE4ShCF0AgbO/DKIooIJWDu7jMb0fxs6+fRSk22jfv5Uz7N9HzPKNVeP0kkJe9E1VkPNeYHklG7zN8OfyCvC5gnbwKhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764242082; c=relaxed/simple;
	bh=WidrzGIJuwX3tCK6e1dSnGjZxaUwx3pg59Hms5qSkX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N4vwlw0/bXil8MZQt///bqdrMXpw1zyfEmIZ8K6icYlyBLzpZgwqbfJO5ThOkJYA4jmjeyaeWCOULx2hcmRMRgXHgQi9yeZOBbs2Bg8SsXtjfMiqtkhDxNOoDlGRt4x7qMYv7rCXXzr2nyLlmEOKBSZZ1Ka+fJY25B0ZGpPNBgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2FtUAWk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BD20C4CEF8;
	Thu, 27 Nov 2025 11:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764242082;
	bh=WidrzGIJuwX3tCK6e1dSnGjZxaUwx3pg59Hms5qSkX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m2FtUAWkED/xXUW2q8CLPgI1fsBEIu3tUvQPfJYLHK6hDnTx/FXyAbhatgwKZgun+
	 dkU1fWGTfvqXPxV9H3bwx8cAGX9IDMVWJWd2kboCc7+fguLSRECpHlVRlwWtN2Tafn
	 iGOwCOfqN2UdMkd431XNvOQuHttg223GfVSYNlzkiK9PZuBkFLoIhFOWgd7JP+93jb
	 oMWiLRnQheXuA4bRBs8xt4k1OL/vclPSSkSp9ggK0IfEannJv/mpmZvZk9Rnan8XMR
	 TGwvmx/nQw7/u3QuXBl2P11epBK7gazmwJb7seA5wNhSRzS9AsJcB7L7x+Uq28iRjc
	 P+waGCwAc1qyQ==
Date: Thu, 27 Nov 2025 12:14:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Simon Essien <champbreed1@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH 0/2] man3/getgrnam: fixes for ATTRIBUTES and ERRORS
 sections
Message-ID: <ztyzlpiog3ktw56namipeewkcahegfal2by2mrzsroinwu2lew@fkoopdecfivx>
References: <BYAPR10MB33665B84E703359D38E21F84AEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ygnm4aezikobddvr"
Content-Disposition: inline
In-Reply-To: <BYAPR10MB33665B84E703359D38E21F84AEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>


--ygnm4aezikobddvr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Simon Essien <champbreed1@gmail.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH 0/2] man3/getgrnam: fixes for ATTRIBUTES and ERRORS
 sections
Message-ID: <ztyzlpiog3ktw56namipeewkcahegfal2by2mrzsroinwu2lew@fkoopdecfivx>
References: <BYAPR10MB33665B84E703359D38E21F84AEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BYAPR10MB33665B84E703359D38E21F84AEDFA@BYAPR10MB3366.namprd10.prod.outlook.com>

Hi Simon,

On Thu, Nov 27, 2025 at 01:12:15AM +0000, Simon Essien wrote:
> Sir,
>=20
>   These two patches implement the requested documentation fixes for the g=
etgrnam(3) man page.
>  1. The first patch updates the ATTRIBUTES table to correctly include the=
 thread safety status of the getgrnam_r() and getgrgid_r() functions (MT-Sa=
fe locale).
> 2. The second patch clarifies the ERRORS section for the non-reentrant fu=
nctions (getgrnam and getgrgid) to explain the different errno values (0, E=
NOENT, ESRCH, etc.) that may be returned when a matching group entry is not=
 found, referencing POSIX behavior.
>  Please let me know if any further changes are required.
>  Thank you,

Please revise the patches.  They include a lot of bogus whitespace
changes.


Have a lovely day!
Alex

>=20
> Simon Essien
>=20




--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ygnm4aezikobddvr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkoMp4ACgkQ64mZXMKQ
wqkNtg//SUwak+SKY+hdBwjRhfni44OcXmkcKwrgaD3ZTcXWA6pv8p+8vZr9+jRc
0mQxhLWEMRLenDxw2FFZyHTTGylUi8uJI5o0nTm/TVJeV9/v7v4lWTTGBOsGPyY/
/3S0iL33PiB6Z7Rg+BnsliOdy58lRGn47QvmGsmC9HMRWAC7CcY3WIPhwvl1klzk
NqdlMLLARWOcYpT5iTfOyKemKuNDTpC1vMwQHz0Bc7+GY1E5ciM1CQqfodTlc0+E
q6tGh7kwmfX5NSTLvFhUkPkB7xbYagMybdjmR5QjFOaTsF5LQFAzSrR/10aQzp0P
yzs4+9d+6RHdeU2HVyOYAAzzyKTZALsq4NSWQMeAId+d22TQirwTTlMm/QR/o+gj
Ef+X5RF/eHC7ItLj6dVsKu3BtwDZ2rPQpPM3sLkMMwiBaGcktNH3866E9/TbeJk7
kPDPw9o2mD7VAs1BzJ9Fmit2o+PAFK99jW96gPN6e2k04tBdsiBiTwKKAuoQCm4u
QCZOpn1WnMGj4O3LJS3vdn/WFbpRt9XURZ60YFM3h3q7H2isj0fFZJKNZAYmcwXA
/c0PswnlAVjFgrJbRKQTOlRpZzhBIb+c63tKCvHrmNsIuaxOy2G2kjE9l+TfOjQj
6r38nK6bkgT8sO5u8CH0wt3Wo8g2RGIvb19ibZ7b6VUSuJLJV7A=
=9dve
-----END PGP SIGNATURE-----

--ygnm4aezikobddvr--

