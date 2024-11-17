Return-Path: <linux-man+bounces-2026-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB8C9D047E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 271DE2823BD
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C57A1D6DB0;
	Sun, 17 Nov 2024 15:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVgCFoMH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1B1C2ED
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731857332; cv=none; b=hF0J9UAC5Ym1nfG+1cwvFiOJxe63UzSMpv2zdvGQjPdrgaCUGzbBP8n20eKvgcks6mN4U62WkDniwc9XR3EcEAbo5lhxQUWxjHaks38aJGx4pT4zMrzvadImRbDryDPXiOmOjKLU2xxEvbL+XU8j1zr0Md+62kKS2Tkg5Md5QgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731857332; c=relaxed/simple;
	bh=M3J8Z3gkrnlaethjh2dMCAGTkwzpk/3EVSgcUzzdY7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EAzMGq1KbfHum8FcQpB4qZ9qk10sFKUe2d7UpN7gYAEbGcnzP8elN0vlSuypIS1Edc4GYe1BuFZL++zcJz8n4/+82texegSFR8O+JFKm2W431nR82nfyhrp3eZ2SIdd3P+Fk1H1QgEvV40cDM4tSEfVTYm3m9wHHK4BYvv8XK2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVgCFoMH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E5FC4CECD;
	Sun, 17 Nov 2024 15:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731857331;
	bh=M3J8Z3gkrnlaethjh2dMCAGTkwzpk/3EVSgcUzzdY7c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVgCFoMHAk0Gc8JijvAjUfqUfusdSw39ORq298VMF3di6+hbLLspzaF3V7eE1Dkbu
	 W+wEE4YH1SjUMH89BcBBwb71zTgarDMS7SQSAIzrz+cCvW32duC74O/TO4+UC1lbSa
	 AzeZFc8ZNCAKaRGrPtovvwNaS3WC9lH73DWaHFhgO73oHrCS7vwSLLE9F0fft/KuQ1
	 GlTL06geDylYV2OMLboft+WylsEKt847JC2DrfXLkj9ldG76y1JEL90/bRGgTp5tpd
	 0Qw9UQg/UqypE1jqN0PoVbO7FH1h3SsU5O7y+q7NqyKRKZqcibQgebnY2h8BotFPsG
	 /3ZUJVy1nxVcw==
Date: Sun, 17 Nov 2024 16:28:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, libc-help@sourceware.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1
Message-ID: <gw7clyuc4epzqrpzcgdi5hne2frh4dd54l56la7qashxi6bmc2@srcedbws66fe>
References: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bpmwrzhw5iulelio"
Content-Disposition: inline
In-Reply-To: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>


--bpmwrzhw5iulelio
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>, libc-help@sourceware.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1
References: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>

[Adding libc-help@]

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:26AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    No "in succession" here on purpose?
>=20
> "When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
> "B<endhostent>(3)  to enumerate the hosts database.  When one or more I<k=
ey> "
> "arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
> "B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
> "indicates that the I<key> is an IPv6 or IPv4 address or not, and display=
 the "
> "result."
>=20
> =E2=80=A6 and in many other paragraphs (I can provide you the full list).=
 Last
> time you said, that this is under review with glibc - are there any
> results on this?

They didn't respond.  I've added libc-help@ now.

For context for anyone from libc-help@:
<https://lore.kernel.org/linux-man/ZUJaYgd8DCnFdm1V@meinfjell.helgefjelltes=
t.de/T/#u>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--bpmwrzhw5iulelio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6C7AACgkQnowa+77/
2zKEaQ//eoOT4/3xBls1uNrD2cATtAotsq6qYD6s9MQIBke2mlyIxgJ6o+SbwUr2
358QNCHMgl+XYeJDHyS1YFwnl2Dh4/Jc0RIQrvvVmgA9W9LU07vYOHRNLEPuevLo
Oc+j3EXEMPJriJVwBviDOTaoRk/9Wo9gJc04fuOlSxwC6hpYAf9tqsMY7MoFCUsv
HQp/5sxsIj4MvOvBdCIkRIw3CogHzzj19vvLEw3J9LY8xI71RieXP0iYzjku7xtg
x5pGxZZMx410D4dejaG0/RG0g/5cMG5HdLO9dEC2/SSLaxU72Fe9HWjEy+yKt6ub
rKMBdJx9jX+H3mkFypoVeC9nirI+MmKH60cL3ZwG8r0AThMmAOjqjn7c4VEBBJSX
loTjmOdiiVdkECMNZPEriYDp6c0fYaspzGTmiGwoAAPoZqSIznygYNEpmlfxnPTr
Yq3ZtXdLIl4nsZXCrWiy96yQDDYS/+Hf1SjbqvQbyTOpIQ4X/Kos2G1beM+20VL2
IWfe+0RK9lkTz+sZsZBux0EefbfypRxXjEMemicdPb1p/dFaqGQHO2iUpjM7KLex
arVT6/7tW3Bz87Bl5emsN6Q4jAu0/CpgUZazP2a4OUxEa0rD+ANmajGhWurdqjSn
TlJk2sk8MUMEAOWkdVSVD9S1GC/owuyuVRQ5F2NDjSvf+yHfE8Q=
=ouWX
-----END PGP SIGNATURE-----

--bpmwrzhw5iulelio--

