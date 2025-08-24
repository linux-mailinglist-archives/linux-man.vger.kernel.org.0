Return-Path: <linux-man+bounces-3686-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44427B33158
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:08:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA0CD7A2363
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFAA275865;
	Sun, 24 Aug 2025 16:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqGMyAAk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE9D19C556
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 16:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756051716; cv=none; b=CZIaSgVS5h6ZeZvi09D+mv6x1GvX0BtIMakRgZKEYbpCb5//fajF2WP/crmxeW64NncgXR6C34JJ9B9oHtxOukH+Ovk0dw0aYsh11CU7EgcPIMfVlovFMKGwAGS7JEdPvRfySgxAnVP6IFgdMs2LGDElOPxBxH4wfW8I1nR3MBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756051716; c=relaxed/simple;
	bh=/n62pbggOnReOuRQdfUmL8ATRQvqmxTvESHEBLn/QRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WF6AoM3fHNPqsGEn8sR6JlRknXh3VQMkSfVfv+EORg5WZoDhurF2IszJsjMtAxSBEkdROxNpNSvi2Wf1tnw/Rd1wIaBVRlAnk95odgrWatATvEx3RRCSmk2AWCaZbbIMpq/Eds3HjLV2UEhsmWNknVxUcpGAbUTULpE3IoKIbjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqGMyAAk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 008B5C4CEEB;
	Sun, 24 Aug 2025 16:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756051715;
	bh=/n62pbggOnReOuRQdfUmL8ATRQvqmxTvESHEBLn/QRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UqGMyAAk+oThRI62X8xNJ1+xDHoQxPvhVE0sdYUITcz9WdUzWh3I/kjbPXPTte/1b
	 hlc1M9aYowDCn9KZ8nyoEz1PjTOjV3iUSEBFnxIymVwEvlqhs5nuQNSzPWZVCitFhp
	 /xqtr5YGHsII9dQnL5oS/88LC7zqjV/HSWeXRfxHZdLLPnogKi+pBQBw4TpVJLlR6Z
	 oIwG3c8fUyzKd8LywQ2d0FWNvBTBGhVawjSKbCLY5EY3RPVyR12LEHi0x2MUaVLW8l
	 Gqn1isnP3xiRIaLpC5yTSEvBN7WT56lS98gkMbH1cZWBqPnmAnQYB2wBhJjOEtpDuH
	 yCb3GoAJWuHrQ==
Date: Sun, 24 Aug 2025 18:08:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page random_r.3
Message-ID: <px2rcf5nqghsei4szytgl6cpipcdptlltjlxciohcwpcud2lgv@kevsg5j5qigi>
References: <aKsmUfiIuJ6lehrG@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hfnck53f6fizf574"
Content-Disposition: inline
In-Reply-To: <aKsmUfiIuJ6lehrG@meinfjell.helgefjelltest.de>


--hfnck53f6fizf574
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page random_r.3
References: <aKsmUfiIuJ6lehrG@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUfiIuJ6lehrG@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:49PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    comma after B<initstate>(3) as in previous paragraph?

Thanks!  I've applied a fix.


Cheers,
Alex

>=20
> "The B<initstate_r>()  function is like B<initstate>(3)  except that it "
> "initializes the state in the object pointed to by I<buf>, rather than "
> "initializing the global state variable.  Before calling this function, t=
he "
> "I<buf.state> field must be initialized to NULL.  The B<initstate_r>()  "
> "function records a pointer to the I<statebuf> argument inside the struct=
ure "
> "pointed to by I<buf>.  Thus, I<statebuf> should not be deallocated so lo=
ng "
> "as I<buf> is still in use.  (So, I<statebuf> should typically be allocat=
ed "
> "as a static variable, or allocated on the heap using B<malloc>(3)  or "
> "similar.)"

--=20
<https://www.alejandro-colomar.es/>

--hfnck53f6fizf574
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirOP0ACgkQ64mZXMKQ
wqlH1Q/9GjtR5oWY9cL6fmIAx+zAfIPwjFAjfs4bSq4LR4+dWIOrSijmXtFm6Pvf
+X9ebC8Pm66/x3JEerwDqZLWZFpty6TOLAxmdUkgwxSo3/CPF6ywt9rG3KB2orVE
Zvt1O3CpFnZpk1g1ZgpmOxHwYQQB+YxBsSOn5mdhGgQYVjnvxB/Rw7JDwXCSHVWd
RBJy9ryCN9m86Z2XXVGiRwLQNguApmWjUvHphM+UgRZKAypmf59mB5QhRlfnF8c2
bezWRRtz4jColPqeTUcDIRNjrwWkqa4BaKaf/aU89xpbUjfx/iVtCfk26j8aGGIZ
en65XhZLqiRmVqDCs6UPJzJlZFJyUUEm7S5EUeRPE8M+GqoTQ8pcZJl3uLOIwIgo
7cGluBZPuyn3if7gIv8sb+PYjsv6O9kDQsrp7hal6t/JBBsnxz0ynHkQQssl6Ka5
XS7yqK5svZ5vfxegD3UtjG1SAlPqopJSVG7CTKYprzOa+ThpxKKe/UDEeZhGSt8R
M+CDkaxb/J08CBdMz3Ux/mcPrWUSYJ5uLEuPz/fLnYKullA7AYRJhYWpe631qoVd
RayeRbIR6cC9j4dOUzQvqYvzNi5ifLsUZTsnsaQicyTLR3CcI6hUTWFaw3dM/BmH
CacYCw8WVnplEv0goaAQH/uU3vDsSmcV1CafQRZw/u+VkIXAzIw=
=oDRD
-----END PGP SIGNATURE-----

--hfnck53f6fizf574--

