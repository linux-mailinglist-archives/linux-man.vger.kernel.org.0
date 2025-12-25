Return-Path: <linux-man+bounces-4548-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BB0CDDD37
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D81473026A9C
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575D4308F3B;
	Thu, 25 Dec 2025 13:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccSeHG+O"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8EF2F12AE
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669418; cv=none; b=jIEtIdeTFyC2XhF3SLmxpRWMD9HMUqIqXeFTxvDxILc5EEZCJi/ElOlKxoRD+HER633EBXHTFwIoZ5u5kVitKagm5Z1pNPZn7noaYmUWFbBvhCCIjDEoRZvODTOvk40YFx6wBmTP3wLYrFP7h/bDSivHubCWBR6T9TJoUC9t3ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669418; c=relaxed/simple;
	bh=coow19lYd3DMVnNhKo49h84dAPU+7HG9rgGvBCdaxC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QnkPQR8ZwBK1HxPa/3vlXDh+WynkNKBSIVMGyjBAFhVxU991Hr+Ms92z0T3FNm6V6D1Z688tY24QQZTFUokMVTtT/6xi+ICVj+dEVpE0mfVNYfO/YRJRL9qZx0eJpTphx80Z5yhHFrIIXH5NHm4WtmYULm+RV5h0VQlY4VYRcwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccSeHG+O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FA83C4CEF1;
	Thu, 25 Dec 2025 13:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669417;
	bh=coow19lYd3DMVnNhKo49h84dAPU+7HG9rgGvBCdaxC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ccSeHG+Ocevr4tm7utckvPxU/TEB+1U9Wj0PloSO0hvW2TskTHBaODLwdmrSSFFBa
	 z6lDnqRw8adMm2R9LixweRaw5uVSbog3FGajBJdKuKTGXwzfAE5zbTAl3+FszdlLZ+
	 jw8eyd4EUKWg4gWxkzS4jnzsbtOBxHeT+jNrDDhTee6YsGH0NnzWb+gsd5W5mnrwWA
	 IOtJX9ItYCVcCaMW0cgtqcsHiLq/P76/XC0o79XS4eR7vnPEob248tHM+tyYpzB3+r
	 i3PN1oRrLowBdhDayCClWEXEqf40GOOc59Sy7Uo7Z2avGBWmAE/Pj3wX2E+hOBAy6K
	 FBAut71sTzoSA==
Date: Thu, 25 Dec 2025 14:30:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
Message-ID: <aU08X_PAWYkXkSpF@devuan>
References: <aUv64dL4Nw-pcSp_@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="26cf6veqyqxzotib"
Content-Disposition: inline
In-Reply-To: <aUv64dL4Nw-pcSp_@meinfjell.helgefjelltest.de>


--26cf6veqyqxzotib
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
Message-ID: <aU08X_PAWYkXkSpF@devuan>
References: <aUv64dL4Nw-pcSp_@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64dL4Nw-pcSp_@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:25PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<vttest> =E2=86=92 B<vttest>(1)
>=20
> "The I<vttest> program"

Thanks!  Fixed.

--=20
<https://www.alejandro-colomar.es>

--26cf6veqyqxzotib
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNPGYACgkQ64mZXMKQ
wqku9xAAhsNZ/stpshVxB0GrQXLbx7vnWVkdLvN7s9KdbknhcvXyZ5DtpF4l+UhE
5xZNHR3jWjTbFgY1hRhvy15Lw+Pnz27Vhm8+7m7IWhzbrTch2eHlICsnD0+hC1aD
lda5xcOLi736xSWwtpyVmDkfl1/agx8DNJmBzKNmKUaoZ5xY+ajGmQE+wEiOySTH
3Ry5VUSpWkkhLu2T9GbkgDxb+mmyJSlR7beM+mO86yMnc9ESK8C0D0N+RxI6RrNU
+/kaPy5W29BWxwI+F0w8zs/jJwG87lrZx70wbntd9avibTpVLoZeWBcAcIuzX3RU
4KmvJVPBKYJ5apY4ZCqe2eN24HJ8dNvjUNi3QGlEULOIb7k9AkPvyxpsK5CQtSLK
9quioMsgqPWbGAFfwKjgNJeecneqQv+MKmmk7/Sp+eAKUiqQOifadrjOqkUf5nm6
iSxG0D3ux2TEdju6+87HHyeRyN6pDwDYXpSp5FXnmfpRwtBzE8PZt/DJpeHYbyU1
jdit/HQezJx2EjJfniamBIMW8Bf0la1Pb+GOu1mFX+4Ati5/QfdVIMuKegwlqGxd
MlHiS+Uzperp5A/I7dKOUPDgmTU7f2wdhveEX5uJU/uSO4VQNemXdeV5h6+iesaw
RhLnfdpPKMwsfhssDVnFvtp1w0KHHtZOixotbLEpOyjxWE3PuXg=
=pRDN
-----END PGP SIGNATURE-----

--26cf6veqyqxzotib--

