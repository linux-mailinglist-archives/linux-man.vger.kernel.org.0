Return-Path: <linux-man+bounces-3687-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AE6B33166
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDFE3165DBB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1235B239570;
	Sun, 24 Aug 2025 16:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKwlCGij"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA25514A8B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 16:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756052076; cv=none; b=mcLKdic066Ut5IS1ny973LyrJrtuerOmqf98eJM8DJTYPQfazES8XL6vOuO3d5VeF2NsCFeGZfj53R8XcaslMZe6EF4bR2010V54SL68YTW5c4WDfAIYEK0otWU9lMsHq3G4B3w+5h/cr7S8MDwYwxwxs172aetfZS2VSzliXpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756052076; c=relaxed/simple;
	bh=Go7FC1qa5NigQK97NNa1quiZ59W1TWrWG+Ss7vh7928=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkHyTJ/yNEle5CRzt9f1hDfeF4URBy0J1ynhSaEQIqztUyVr965pRJ/OANwowjN0QxrJI8+v0JW/v7ip+iauk2LyUk/ErVW5hfMvPK0EKaqBzewDxfUSJoP6/Vz4qBtZinsOho/cMSmFpsVn19LfQUq2pEjpItEXrxZ05KN8wIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKwlCGij; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9902C4CEEB;
	Sun, 24 Aug 2025 16:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756052076;
	bh=Go7FC1qa5NigQK97NNa1quiZ59W1TWrWG+Ss7vh7928=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WKwlCGijrM4nJxntPe04Kfrnl/DMl6VyABxmNkU1uzEEMEczH2KgNHDbdLae4KOr4
	 rM2Wh8fDzPp1aDl8T3IVFVjhSkEwu1WUJ48HDt3bv2BjlCiQKkAQf3YtnXLTk3Z5rz
	 aYKThLyU75+AvISD8HeIBIC1ku5bDskMhz0ZUC0cz3nYwq1Eo9GSqJ/8WwUOd438sQ
	 4K170TdEhF7jbmXMlOdHVCNmHYQosb+juYPs4b2lq/AbUsuvpFPDqgFTPYVisf35gX
	 LUqRlifq5vgu120oedqK20K1UqxllCYKRekgEQ497RAyj/XE4SczwpBFaH+axC1f1i
	 9ACkObbNiNbkg==
Date: Sun, 24 Aug 2025 18:14:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_mutexattr_getpshared.3
Message-ID: <nfop2ecxaej5m4mwfkvpf22kjtnbka262lwo747ge5gjqkkclq@qgcx6v4asoyv>
References: <aKsmUOXEcLwVhC0D@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tyrpoovt6nml4tu3"
Content-Disposition: inline
In-Reply-To: <aKsmUOXEcLwVhC0D@meinfjell.helgefjelltest.de>


--tyrpoovt6nml4tu3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_mutexattr_getpshared.3
References: <aKsmUOXEcLwVhC0D@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUOXEcLwVhC0D@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<pshared is> =E2=86=92 I<pshared> is

Thanks!  Fixed.


Cheers,
Alex

>=20
> "I<pshared is> B<PTHREAD_PROCESS_SHARED> but the implementation does not "
> "support process-shared mutexes."
>=20

--=20
<https://www.alejandro-colomar.es/>

--tyrpoovt6nml4tu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirOmcACgkQ64mZXMKQ
wqnp7hAAk4jBwhzE/7NpkofB6L1wFDDmcu0Qi6pfxhB9x39h9tPbE2HQmnXurygX
yTOj0lAtLIIGxvS9tIl9g+Gn6aONiwRD6lfYt/Dl2nVY0qy8vgTKvCkByTjpEmJI
HurZKcLF/Qlvs4GQ2hMeiRqZNCeabtneO2TaN7kgeuJEsO7j5OMqBRHgjd7Fyues
sxkgD/EwQqf5PJIFMfrgnTbN5S89k54xsUnr+emAm76FYfEI4XntQsByC6DPYInP
8RTqaE/Puzru5n9Y6fsohKwKlW1rC6JB3xTGqHa77ZR4xr6f94m6c8hi5j0xPk4p
Ki4dLlPMnUQEam19xjeE0PkO0Wsvk8DGKa3HNpMbkoUH9IbXLMxNjmXCVq9PxUV4
ObbNQkVmIGZw5GOvsSixnL4sYPnM62D5We4g86lwab3r+CU6ldlw6sdpIkwFMpHT
FRMPJxb6Mb4fPpMDJCPDQhcChNkykdxUnxWaIWEhgbQqc3/dJNlb+vrbaNPRzKxx
zwRF0hSmhRuuLBOGcNsIYP8J+BAV079HR4Wvv1IEswIuMl62bV3OVn+PNVjtXMiS
c7wR/tLkofDQwGlgtnjGSW/+y/9XnNCZCVw9jMU5DdipLz+bXZldIHX28s3/70fU
EVSjqi6Eh+e32ocARBUuaBIMI3ecmDhalFxzP9xZ1IMSkseJ46c=
=9XK9
-----END PGP SIGNATURE-----

--tyrpoovt6nml4tu3--

