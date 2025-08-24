Return-Path: <linux-man+bounces-3693-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F13CEB3324B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:15:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1283E7A855C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21267194C96;
	Sun, 24 Aug 2025 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuPUYfaK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D0D14AD2D
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756062932; cv=none; b=rSYIx9MAxU/ARkep82OZNN//8ose4YZDcfehaNlJQEjX/Vi8nkheC0r/WKEdQ/Bn4fu4RCFY9CdJHrFkMWzuDyDllFBhQruNLLBPpJI39j93H1HRBLe55efI+nFbl6RqNRLLd0htzSsJVG4GY/DJl5Csn7DXEikFItGPNSj+oKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756062932; c=relaxed/simple;
	bh=AiBiHRD/FIcD9AEQ3XjEFJvSZ5GFkNF7FpQQ7jOA/Vw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jm8MzCrE2ZN+I2FYe28rtcbQQjHcCeRvgSEQE17SEdeQ0Z9QNSZPdloBe6GO8zpaxUOl9jT9GLHreBE0ac6w4KkjqOZHabvEWZ0PP00Hd3rdM1Rm4ggVFJxu2aFk32yRWMJn+5tzcXJgv4zoiEmXQboWDaGFtrXBvS1lwQXKzyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuPUYfaK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFE6BC4CEEB;
	Sun, 24 Aug 2025 19:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756062932;
	bh=AiBiHRD/FIcD9AEQ3XjEFJvSZ5GFkNF7FpQQ7jOA/Vw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nuPUYfaKdf+Vd/K6iNUQz0JwaR7IdbeokpFpzJTC8E2DHO7SokiKz6z45EnLMPuGn
	 +RrcnEHsD7AX/7PSqylG4CGYVNw3MladSuV9aLjedQ7QNx0NXjjt2iV3ujRijvVhb9
	 8OO5ShDW6Lpqc9aOEVQN1s3HY7JZvVmjvrl31HrsG+p7uHJeeuiK7EFIDnuPxFGW5d
	 znsgESploNEjwM+q3EA/gh92bYIJ/xQIi8ibfh39scKr3Avpo9rQwUxyMpPTUITBqK
	 QHd+mgY40gtTDPymOEEF1XWIOMSDDLhVmEjv5cgT93SyAj3Ygrh/p/nf/o1Wh+3Wm9
	 HflV/9F5/CmZw==
Date: Sun, 24 Aug 2025 21:15:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pxreqfdbnjo6h63z"
Content-Disposition: inline
In-Reply-To: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>


--pxreqfdbnjo6h63z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    inherit-scheduler =E2=86=92 inherit scheduler

I think this is correct.

I think it's this:
<https://www.grammar-monster.com/lessons/hyphens_in_compound_adjectives.htm>


Cheers,
Alex

> "In order for the policy setting made by B<pthread_attr_setschedpolicy>()=
  to "
> "have effect when calling B<pthread_create>(3), the caller must use "
> "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attribu=
te "
> "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."
>=20

--=20
<https://www.alejandro-colomar.es/>

--pxreqfdbnjo6h63z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZM8ACgkQ64mZXMKQ
wqmPBg//XX96DdKXQf0V0KAJc4a60FM54vDN+uGqJw5n1ZhAsgkQKuqcUy9qZwlS
1AzP4GPYgN3pAMmjB8hMEKxxAPVgpCMG8mSneiRXAkHN71Lly63YvSnTdIkGIhUD
3bVmozBZn9COED1F1HhhdBDPky1DmaDVbTSxDgXIPxRRhlfU5lTAjo56rFuANxwk
1424zkr/qVATE1Dp93LdTUKJAzAycr+BUbJ3eCm1ptD6myHl8yVg1ENNw0uFI3Vm
JO+r9yQbXMhmpURBFUwP5DrqWF/8NcWBO5kJZwK4FffAAcdZyvx9ZGDEChazBOd2
hN6vY5N1qafBQX0dpQRUCrCfTigbh8kZI1+XyGdzLOSN883L1ol6abWTasLJ83Su
1WsdMm+vADeut5Iu4rR1G67QQTfciRy/7UizVyTM2IyxNSk41imJ0YqBVm7X8dhJ
0b24WhwhsY50RburAOKFX0z3jsBxGFTAGMR4DrGZarKdRb/8wL0GYDtNrmoYvx7l
BuqpnoHqQTSbybKPfsUX8/rbTtw/4yfqBhFuVoRUnMRuxGPko20fNStAztiHwkLl
d4FGYQRf4LvDDaDVtA8aGSoUuzxAut+H1QRFR8MLQVMB8mrMjPgvapaqDjtzEQfX
xeM02fY9PGI0fm20YQG8Z23gKWPwMWvmVuRG6qXcauyIVlxowg0=
=eltU
-----END PGP SIGNATURE-----

--pxreqfdbnjo6h63z--

