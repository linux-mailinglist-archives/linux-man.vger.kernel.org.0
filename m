Return-Path: <linux-man+bounces-1979-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC69D034B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99C782839F5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9A4B146D40;
	Sun, 17 Nov 2024 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnPRY1H9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99699126BF7
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843266; cv=none; b=WKwli6dVm/toAv+OdVdMZpf0DLCwjB/29PhiM6PVtfLVQietCygdhkbqdSFX5oDgatSjKlUfehAfknXHvYjAOLp8/2utV/e3OWr+QbkA7D8QIfTcF/8tdNf/frepkXzidFZ3RngG75/QoUC1+D4HzXn6KpusRqK4QC5pg+wdT08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843266; c=relaxed/simple;
	bh=+vlVtsAuNUDim0vdXUX8JswaDOCudkIPI3K4KKQBwOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kASEwPUBtuCDHZIAMSzdRJiBVZyedxBKqowc+Ijdmbmf8MdxltaqSJP32oEd+577vXs76Gy0koNFuoQQvhDHDb5nT+HnONNqAqPwH5ZIktG6sfm3mD717O0cHcuuNvazQXc4/NecsmHA7117CJYd6d5eM+/Jgl6vHPgvqCHvSOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnPRY1H9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D797C4CECD;
	Sun, 17 Nov 2024 11:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843266;
	bh=+vlVtsAuNUDim0vdXUX8JswaDOCudkIPI3K4KKQBwOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rnPRY1H9m0SGLf5HFI3ag4bJLLeO852iuuslse9Tax6bFkB3YnUrEb4YZlHBkSonc
	 Amlw4naKvIlF3OYywHaMWN8sGMGN+1VqSRF0eAfrSMJITvf/w3nHvfSCPY2dnTnuhv
	 T1FIk5wuhpyupBUwYdLUD+JKCMfdGhRmpH+R0+CcCHsVi6CUTY4wPP7GxHgn8DxIA2
	 PxMyX49mZDyu1qkl6tsqmXsKQuRUDshSsQYzC312zTCD58zLE2kIQ1AjFDKJJWJCgh
	 DtZu9ZN7ZdFFbRqmoroPRqc2UaHDo0y5VXrN+Na2MyXX5Y+84uL58PkXsl8ppHsDe4
	 m24QB7bBG8BbA==
Date: Sun, 17 Nov 2024 12:34:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page scanf.3
Message-ID: <h6riz5e3yhfpbdmnnlr2ahwnuvqvcgnakhew7qigfa25otl6p3@b3m3fix2nrdw>
References: <ZznJf7-yGeL_6I1p@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bn6ikmlrllqut3x6"
Content-Disposition: inline
In-Reply-To: <ZznJf7-yGeL_6I1p@meinfjell.helgefjelltest.de>


--bn6ikmlrllqut3x6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page scanf.3
References: <ZznJf7-yGeL_6I1p@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJf7-yGeL_6I1p@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    space, =E2=86=92 space.

Fixed.  Thanks!

Cheers,
Alex

>=20
> "These functions make it difficult to distinguish newlines from other whi=
te "
> "space, This is especially problematic with line-buffered input, like the=
 "
> "standard input stream."

--=20
<https://www.alejandro-colomar.es/>

--bn6ikmlrllqut3x6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc51L4ACgkQnowa+77/
2zKXmA/8DU8xpTu8/wWokXi9d0WDTCwHIuJTY498v1RKLqYyf7pJaV+V5szVKza8
sI3TQL6QOKj9AeYKjQKiVEX8KeakSHb1q1VDSOPw8CUqfkPBPWurEGAPP5Of0PBM
YisuRi8YLqt09qeJ4wvSQSdEgfFj3cEE9vTWEnXyD+IiqHJimBMgL65G/3wojodz
QslMqkV2i11FKWxEjosFD28uTc+yK0lq4YvHRDcbvGl4ntxqT0Gw39W4BwWUyTyv
oOkE5JWZTQtRg5cw3phE1Yhif+fBICie+GU3HW7a/EfnXyi1iGuE7gSxMFz7nios
4zbZy1s51lB4zW7XXZh++22kqZAZ+uRGlqvLcW3rrVcm8MlpiTL75/Jp8BqE3ygq
rH0Nu3CavmdHoxZkIvDqDi0gEcthMKswWQ8vfp2aM3OmrqdqX1k0I91a5/R1DFei
fBPRIeB8ADb1dcvgnNKPgYrhS+yAjnac2GniD8aMrEHI9ngemZsPvFqPOQ2ZokWa
AXLgAHaULLQkD5Ra0ludmf/gEKlAkL8XurKsrcR9TnPdW11pyH65yR3i0wyiVmsj
G0QOnXxCV19/obDpqPxSkHilKebc2quHb9fsD6sqYL3aQaJ902F3H9WwhcMfv5YA
R5anWSqP/rmwR9D7KBpQgFGHbCJ1KHkIt9tMavcDRy2t6QY7Reg=
=1diE
-----END PGP SIGNATURE-----

--bn6ikmlrllqut3x6--

