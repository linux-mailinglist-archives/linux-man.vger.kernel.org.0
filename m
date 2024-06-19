Return-Path: <linux-man+bounces-1250-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC590F75F
	for <lists+linux-man@lfdr.de>; Wed, 19 Jun 2024 22:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFFF51C20DFD
	for <lists+linux-man@lfdr.de>; Wed, 19 Jun 2024 20:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2173480BF0;
	Wed, 19 Jun 2024 20:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blYg3l8J"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D612722EED
	for <linux-man@vger.kernel.org>; Wed, 19 Jun 2024 20:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718827619; cv=none; b=Y0gKWzN5p3vwAdL1mMUAihPX61PmdAer7gbxG9NeqdEfBiV+29aSwwpoIC9fNEc1rRarRzw1O8Et7X91u2cGpIMS4SUnl+AhwtiBQrriGNBMZUnEBCdaYnXDXTSkEArxQOk9R0Djl3hn3I5/d806kFG0SoV+eoMjWs6pUYcnfnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718827619; c=relaxed/simple;
	bh=hU955DZ9Y28sY5SjUp7REKaK4+pkPU3cWp6iAG+62xM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EewRQJOh/aRob3RMc9YEjrb9lwlagUdaTTFkc3UCYMBne5NZpEy60p0QohA/e1q87k+xNB5hAz8C/YQngr5Dgw3UmLr9yEvs/N4Ymn4dyCAQTInUWGtXp0DipKFcl55ibXVsOWoz4mS3o+kxWXnNZydeOkkNz7gyX9zLvgtgKXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blYg3l8J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D95C2BBFC;
	Wed, 19 Jun 2024 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718827619;
	bh=hU955DZ9Y28sY5SjUp7REKaK4+pkPU3cWp6iAG+62xM=;
	h=Date:From:To:Subject:From;
	b=blYg3l8Jiq6/R4vDr3KJGvPpSpAQy5jt3zrN9S8f32PXquPytIl5N/w7rNR4FMgD8
	 Coc/6tGI9L0Ww1efW86VLfr3M2T5kEUJ3k3FQjucaLyCp5qhh5+WYgEPhpv9ko+twD
	 LV0xpc7UR186vGvGLeRogkmLRBIcWTEswa3uVKaq3y2wMojoKibe9NRSLWhkGNcyYI
	 byouwQTtVyE8HHybs9lWR/sk5m3eNK7ExbEvORfnu3Sb/Rjq0KVaPujZX4Gz10UK/3
	 B9bSznkk9iGO3gTkVrhpcjf8iu/DWK8XHICwCZIpKlOrA3GGMD2Hj4u5wVnHE6uPBd
	 gL+bqg9hhNDBQ==
Date: Wed, 19 Jun 2024 22:06:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Subject: Dash in name of a manual page
Message-ID: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oq4u3444kikylofm"
Content-Disposition: inline


--oq4u3444kikylofm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Subject: Dash in name of a manual page
MIME-Version: 1.0

Hi Branden,

Let's say I write the manual page for git-diff(1).
The file name is <man1/git-diff.1>.

In TH, should I use \- or just -?

	.TH git\-diff 1 2024-06-19 git
	.TH git-diff 1 2024-06-19 git

How about SH Name?

	.SH Name
	git\-diff \- Show changes between commits, commit and working tree, etc

	.SH Name
	git-diff \- Show changes between commits, commit and working tree, etc

I'm worried especially about the Name section, in case that \-
interferes with man-db.

Cheers,
Alex=09

--=20
<https://www.alejandro-colomar.es/>

--oq4u3444kikylofm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZzOmAACgkQnowa+77/
2zLgqQ/8D9viwuEtsAf8H39LAslM8CjTW88R599ttl7RWtkcOatDe2WhU1ynfBaK
oQbJlvxbEczKug+C1hrhCtECqBlz8yMgU3bZ/kvOdB/sW5N9Q3NHSETQjOmuXzn0
J/BdosOCNZknAGJ6uDXKRGQxC9GgzonnONW+tEWl4W8pXmmBBFl7fLh2RUDOB3E/
e6nHcJpITn5gM2evL+CYo/qbWIEpSfL0b4x9ZZFUv7bm6MQ4cH7swjQBKK5Or08e
WorCSzcqewVINw6JUF9tPXAXLAdWgWWP/GaCryx7AtGMEr/q3ecyclphPhrEMROb
xTtCGVwL4IagraEEy75GMYFTLDlgArgJrWTZEeKiPyOir2CJZUND/REzN1GDJPDs
KSJ6G+kJ/K/56BpdpyswulTGm2CLGUce6V/mqiBZC0uS7FIcbmHVSPfl1WKaeCNb
jXY5+tevuyHf/3wFRxthgsPtq2t4VGrU+jmOibwhnLEM28YUq/ux7Nw+0OtVnTwq
jk0/K7zMnRwxFvvLMC8sXPFYL93Kt+o3xZ76hsriEOMabhmshFBLmLrcpzD/Or0y
VQSCVtfndG3WKH9E7L0DJ5p7NznrrcJp5SYDur2sXa4YkE5ni7vinffsOfXXVO7H
bdlh8M+KNwxzRV/DKjn19nibc0JLefmgE7gVt58zG8SMrz/1SnM=
=Niyx
-----END PGP SIGNATURE-----

--oq4u3444kikylofm--

