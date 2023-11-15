Return-Path: <linux-man+bounces-81-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C403E7ED842
	for <lists+linux-man@lfdr.de>; Thu, 16 Nov 2023 00:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D17521C20915
	for <lists+linux-man@lfdr.de>; Wed, 15 Nov 2023 23:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 695D53A8FE;
	Wed, 15 Nov 2023 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od78WApT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA343153
	for <linux-man@vger.kernel.org>; Wed, 15 Nov 2023 23:35:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80E96C433C8;
	Wed, 15 Nov 2023 23:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700091352;
	bh=nQWFRdTRCl35ugF4vZvg0FzQUeRFb+vBLEoFx3sKhd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=od78WApTaNpacJFI4AcaXURxHkPu8c4Vjws3Xl8z3cXIDKk8+qhAx5JtawsG7MR9x
	 mR35sGNExgHlb1ekf07AcjC7+zvBKcjTXZVD1yv+xsFXRcYJ6gYPiKEpyu5iCLedJe
	 XH4GEjrwA/6ZrDnfvHKk73r+71F9Ld/BXbyE+0yRcUXsuH0KNzn/wOg0Tpwnkufull
	 0cKqGrXCiJ68AbpJPqlhSIRfF4NNlBAlUaktBU4uB3icun2AHPvSv3x9D5zxT3qFrg
	 sX6bbupvDIg4d6Zyl6oip+0tnVvw6CjzlpnewHxumC+fv17d3kResXxaoVusYWDDfp
	 p6uhOagSzGG0g==
Date: Thu, 16 Nov 2023 00:39:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Signing all patches and email to this list
Message-ID: <ZVVWmz1Lfh3wplBE@devuan>
References: <20231115212015.6446-1-alx@kernel.org>
 <20231115232848.693843-1-mattlloydhouse@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5OkM+QYj0kVpHQs"
Content-Disposition: inline
In-Reply-To: <20231115232848.693843-1-mattlloydhouse@gmail.com>


--p5OkM+QYj0kVpHQs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Nov 2023 00:39:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Signing all patches and email to this list

Hi Matthew,

On Wed, Nov 15, 2023 at 06:28:42PM -0500, Matthew House wrote:
> > +       Sign your emails with PGP
> > +             Please sign all of your emails sent to the mailing list,
> > +             including your emails containing patches, with your PGP
> > +             key.  This helps establish trust between you and other
> > +             contributors of this project, and prevent others
> > +             impersonating you.
>=20
> If this is meant to be a suggestion rather than an obligation, then I'd
> prefer if it had an explicit statement to the effect that it is (strongly=
?)
> encouraged but not mandatory. If I were reading CONTRIBUTING for the first
> time, I'd be inclined to read the bare imperative "Please sign all of your
> emails" as a hard requirement, and be scared off on account of not even
> having a PGP key.

Yep, I was worried I would scare off those who don't even have one.
Thanks for the suggestion; will update accordingly.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--p5OkM+QYj0kVpHQs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVVVpsACgkQnowa+77/
2zJzaxAApLXfS+W920E0A+NXwtnTzZWpN6aSyiCWxvfhMKNwb4dfaSh6BsPQqjbm
MYUaypBxmU2dLeCHSxxpRKnosGPX3RMNdvKg+02TSW6MqQ2ZsNQKmww3ahVm87Yr
q+s3WhrdJgyS1mxVV3rb5r6iFRVJOo/08HQUJrcQQADQmcR772q5JGdE5AAO6H11
l47/oWNlsoDna1A/7/SbdoaT1mC1Ujm1BCVQTmQbr68GeLqz7aBNND+xkw+ZzoCs
s1YCatDOeAV423Ol6PUST4WG6XZqGZjYEJyDz/vag2nW1hoEzxkuL9aDhw1UsQYN
3jb+K2HMKIDdJfGN0TFYXUzlZZofYWW1IsGcQqDQQX6Irax9T6GHFjgEDnFybSX6
hjrkHatj4OI2Gg6PqlRKIy6+IRjUQto6mnqLMOVrNUlx6sPzs7T/nR3ZsCb9JFms
KwbRBnExMm4kG0H60RoedU0W62/78wql8HpJnaX6xxMDtVaRCKKfySeLIwpswX20
4ESriRRdroQ61gHUGwfm0dAyMVRyVOyuzA1MC0VKnRC8FC6qFRbiZHhevkdpMq7O
ndj98XBLqltS2msuouD6x1/9hmNzBdjHVbt7lb2GgqdfzrAj3nUfVMSY8a3fk/2n
j+oaLTzExtIJGjrHtijoL8n0PNC9yHgfmdD5zVfMBa+JHgR9PEI=
=wueK
-----END PGP SIGNATURE-----

--p5OkM+QYj0kVpHQs--

