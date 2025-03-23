Return-Path: <linux-man+bounces-2640-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB0DA6CF87
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 15:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B6F616E2DE
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 14:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A18628E7;
	Sun, 23 Mar 2025 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eeq1stwp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC9F2E3367
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 14:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742738423; cv=none; b=RPZeeeFSc1jcGz8jvE1MbdYyJlmcI1KB9Kd3ipJcIfHymeLRYBURyQi9sngambxx1ds1uwj/5VhbGt9d8tsR5P7s1vNFGfiJ3jiq6OSVMumuCFwyoV0zjH9bWiBV/TEM7i818qw1hZMzM7XeITh387WppvqywFrt72Tm9cPBAP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742738423; c=relaxed/simple;
	bh=dFrWHtStorBs4uIP4pNjO6dDmAyn9XQMlcSG0yMX/jI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D08ua2eX8Si8kvq9B1c7TPgCPsyQDuKiTiXcXZ+IJi+jpAY/1dgZwbyltue4OPXt5uTziklP5Sl4MLpXqxNcXLEOY6wFruvy8hXQj/7YTy8fkztbB2o6R5mjg4t46EzbjYMkANNk7KiDxFbU5ek8ACDf1cLZhraoCsg26QYJkjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eeq1stwp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A1DC4CEE2;
	Sun, 23 Mar 2025 14:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742738422;
	bh=dFrWHtStorBs4uIP4pNjO6dDmAyn9XQMlcSG0yMX/jI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eeq1stwps1R+65GvBIvk+pJKz+br+DwsrKK0dgi3snposlJlOVEph16/2WE5bS9kP
	 bB7X61w0PILR4yYi3p9L1Bnug9DaIIKxG0BE55Dv5lEjcRVNqIJV4kH9tOskn0mJkm
	 L4tFYy9UPm97OiCgYMW/ZwgYUp78UF6X+diaqimYA1jj29cghq+HxleIKddf0kw9Le
	 7mmmfnoAwQSR3hwHJb7agmDI3KgDgqjwbtXTRdb2htMHWM1QjLY6Py0yKdAswnZWPC
	 HfXhvn9wiMevlh+BWDuUlMDll0zu9+xk2NHFtKQee0RP/HeAfLsN0A6Hldr+zrvMIX
	 65CBBRTsT8HGw==
Date: Sun, 23 Mar 2025 15:00:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
 <4a1de398dce8303ce6a3d729f8afcf73fb487e5f.1742730109.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="knmjlzrzohfomt6q"
Content-Disposition: inline
In-Reply-To: <29050551.czjnFlTdjD@nimes>


--knmjlzrzohfomt6q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <cover.1742730109.git.alx@kernel.org>
 <4a1de398dce8303ce6a3d729f8afcf73fb487e5f.1742730109.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
MIME-Version: 1.0
In-Reply-To: <29050551.czjnFlTdjD@nimes>

Hi Bruno,

On Sun, Mar 23, 2025 at 02:20:28PM +0100, Bruno Haible wrote:
> Looks all good to me.
>=20
> Signed-off-by: Bruno Haible <bruno@clisp.org>

Thanks!  I've applied this patch:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dcbcf76d19f864da8c54e41b600ff5661b195b58e>

Is patch 2/2 also good to you?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--knmjlzrzohfomt6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgE/MACgkQ64mZXMKQ
wqmh9BAAlDPHuBKbhTxZlHff4eKSZsWPmnoqcNsLPxfY+EaHJ4JMjR0IEFLP99of
eQtiGcjodvTe5HXx2VZAE+Nmw+jbXImkm5Bf/CBPJPCWURBVN62X0w6hxWm6+Lik
1sIXBhNm1lGkHDSUt8XBt2R0FVcK5Y+g6l1FOfb6kPyOpiqu1lJgQ2oSadR1szgn
KuK8+vQCOr5QI12WteYzIMwtoKMkU3HPIpKiKDI+haFBERn7vAM1gTdiVoHAkqLM
oap57jwedRmP+vPajLuQ3h0Zglf6DFDPirGim25a3lDtm2eh4v6B3FUjqXkbW7uE
Ldku8/1HpUV6LoTbP2IL15xghZc57vXye8uHVL87wEYDhIWGwlZsIOdH/fUqPpLa
J0OtBblYRRDAYk3zTfCIe8R6Xx7IJGm6z16c+iFIjrhl//2fUqxVv1it50DdlXZ6
PI83qYiSVs7SdXZy8tS7aZKD5xs/Ha08nAktyjpDtYStJXb7hm8y6VMyS8sjvJGp
c78/c9QPi7jYvjZOYP5xDpIlleF5FOWy4O/OWXiut5r1/YJozqwIxSGYtADZQqjR
mWd3/z0DlvQlFlXpZvjqjrwntdz9CdwjzeUuXct9XcljUYU/7cT4OKr1TxVOVLP0
0DWJaEJsbKqhD+d448ur45xS9PTg8+Z76uM3IYn5EjDX7lER7do=
=RXCp
-----END PGP SIGNATURE-----

--knmjlzrzohfomt6q--

