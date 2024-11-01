Return-Path: <linux-man+bounces-1805-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B257E9B914A
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 49C7CB20B91
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 12:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD2D420B22;
	Fri,  1 Nov 2024 12:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Juhv3Erf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA7AF9D9
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 12:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730465325; cv=none; b=ur9+qc1Lot56yZwfbE57Wdoaf+nbT+OAvFvsds/DCYvRTdcB3X5io+xBkEom2cCXGEjpFMmtNZJjVYISkgZXWIcK+xGH7+iqvXjsxlFNRkzCF9FL1/E9N97BtTWUNlZS0WYjHrMSxXfy+Y81NjfEQteAeekyXyaRxM6VDdOhTsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730465325; c=relaxed/simple;
	bh=OBnb6sk07Jxcje65Xzu1pW8pMGIvq3KqnaryDuFNLD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UW2+y/gNBmXmDqxjObIiT15UA7ZHgPbliwW4LjRf7KPd05WaxmI2gx6siSTWLRFPaANZQIoCKPBKErAQ4MKjLrZfnrI9nUQT6Q74z9Tb9hDGVAN/s9WsSzorvLCT8bbsN+OPWFKSRqPjnT5fL/hXKLA68DRz5WzHlx6gtgjOBgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Juhv3Erf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 510D0C4CECD;
	Fri,  1 Nov 2024 12:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730465325;
	bh=OBnb6sk07Jxcje65Xzu1pW8pMGIvq3KqnaryDuFNLD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Juhv3ErfCr++sGjIEgqmVB/vT8UmkY0Vt7c0Cpk00J4bA0QU16pm3ufiELnBfUaax
	 nmaLOFT3AHCvtPzCDVEgUpl++89fP5sj/Pxc/DKUGltJieDG1zE6BJ5KnFtFtVrTjd
	 Ou75JgtYcHuZ6YtGLEwbXkKSiBSLQr6xTNXfLiqQWFyYz2j1jSohnOaJO4JuXYg3Yc
	 qnjHdzWyQvEHEPcWYyHmBgv/Js12kldLYW52cGmiL+Mu9pQALM8Oa6XtnmclRckoks
	 THb6IDiTkig5w1yf/V33lOrV70fMsbHjpNkbuIGRcSTunzIDOWYIl9A87BVHCKD+ua
	 L8kV2Zbl4Mp5g==
Date: Fri, 1 Nov 2024 13:48:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
Message-ID: <20241101124840.icu2zoyzbmfnzckd@devuan>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="23swpow4twe5p7qs"
Content-Disposition: inline
In-Reply-To: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>


--23swpow4twe5p7qs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: bind EADDRNOTAVAIL at wrong postition
MIME-Version: 1.0

Hi Philipp,

On Sun, Oct 06, 2024 at 03:17:48AM +0200, Philipp Takacs wrote:
> Hi
>=20
> In bind(2) there are general errors and errors specific for AF_UNIX. The
> EADDRNOTAVAIL error is sorted at the AF_UNIX specific errors. But in
> posix[0] EADDRNOTAVAIL is a normal error.

Do you know any system under which it happens with a socket other than
AF_UNIX?  It would be interesting to know if that's just a POSIX thing,
or if actual systems do have that.

Have a lovely day!
Alex

>=20
> Philipp
>=20
> [0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind.html

--=20
<https://www.alejandro-colomar.es/>

--23swpow4twe5p7qs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmckzicACgkQnowa+77/
2zItMw/+K38wuFQm++QU7fyykclzlzKc5SVzKp1XqFgsa8N89qS/yyuYePaoMZjx
bkJZW/1luiekMF9IJ1Qsw/sy9gHW8rSqBQ0DyS3FbuIbS6RqB1bUHpkxnPAcG0cc
+DA/FYikDFU8ntOExb41QuQxuRlVLg+l6qU8Ia7XPJDQcncQ8RWYW6hJ52+P9Z6n
u4V1focNhng8SdZjNoG/gFGYKzOIULhrwthreCQdMOw92VdfchDIkylE3ryNr239
s+VvaLlSV26ep+V5Fx77PKhef6ZyARLvP2kV6Lqru0L9gboIm8EHO4QwYxiKqVA8
I3GKze7EkCQHOoabCBQfH0h/3f0XHxJaohVQAJSvmE8J18PgcjihPlH1snA+lgeb
Rj5j2HXh1LvmWmkNpmXvbLByqBW/y7yd46ffv4sFkbnGoYzh1RnmHpcYdi7WIPX5
RLlz9utDPS3royu2MbYxgptOP8lZ01eDweuFNUC10IeyYCoQZ5X/uv485C5Usxe9
Jpu3emmUDkEzqHbfLDdqWXldhqeFtH5izyxDwU5UgklA3gpRE2MJaysjuQ+kfL3+
rmupLNsFVTYUrWOVePN9PxjLxt0pVNjMTzi8CekS0IuN0cW/aJTyY/yAMbZz92t9
CkY8yYoeAKt8nfT0i/awOUCqUtqmdIfSDlmMylZKtE5P7TkvhAM=
=EDLH
-----END PGP SIGNATURE-----

--23swpow4twe5p7qs--

