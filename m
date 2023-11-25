Return-Path: <linux-man+bounces-164-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BB87F89E6
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 11:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57E591C20B9C
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 10:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EFA8CA43;
	Sat, 25 Nov 2023 10:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUUSP5N1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390ACC146
	for <linux-man@vger.kernel.org>; Sat, 25 Nov 2023 10:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A56D2C433C7;
	Sat, 25 Nov 2023 10:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700907749;
	bh=Qr2CZUXSBTm21f3eCpB3R78zWilFImpehjdiIZnINlE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FUUSP5N1TLkidBjFfRUu8pdf8QYWaLR1Cv0kxY0wtU1kNy04q8C2pLxWQkaSCJhqP
	 cwEIpPR95prt0Lpx3JtS3wfyYiY9OF/RgG+JO+0kz6waO5KsyIEHFiu53hljWosOf3
	 bS/0ZXNwGKAc1fHsCM0bCEtyUEmTXGN+hWzerxxA8m2zX7Uv47AGhI7OyTdGk2T/z+
	 k6aC0yjsfO3FKDBH3tLtvTK2A5E4TcwgCDMG3705Qao576sXo6khooak3lD5GZpGtx
	 Rrbv2+zar+ScOGb8TXnpkf3Fy2SuSJNfImP77a39T+ArhA0DSNJfqxpkPjzSJHpgM8
	 l9lIHvhCduQqQ==
Date: Sat, 25 Nov 2023 11:22:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Online PDF of the Linux man-pages @ git HEAD
Message-ID: <ZWHK4gzRtFguVNOY@debian>
References: <ZWDZTY-jjJg9wkCw@debian>
 <dc2fd7ae-d702-417a-a1b4-b81c63e53152@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FTHmOMKHPpIqSf5E"
Content-Disposition: inline
In-Reply-To: <dc2fd7ae-d702-417a-a1b4-b81c63e53152@jguk.org>


--FTHmOMKHPpIqSf5E
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 25 Nov 2023 11:22:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Online PDF of the Linux man-pages @ git HEAD

Hi Jonny,

On Sat, Nov 25, 2023 at 12:47:51AM +0000, Jonny Grant wrote:
> > You can find the book here:
> >=20
> > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pag=
es-HEAD.pdf>
>=20
> That's great, will be very handy to have that to see the git version pres=
ented as a PDF.
>=20
> Chrome said the connection is not secure, probably "Let's Encrypt" would =
give a free SSL certificate for your server.

That's expected.  I documented it here:
<https://www.alejandro-colomar.es/ssl>

> With kind regards, Jonny

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--FTHmOMKHPpIqSf5E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVhyuIACgkQnowa+77/
2zLyFg//cUapwVQ7yii6yXzxYsQ4/P9Pv+gki8N+d4dfe4fJoIBynfSEO0DRnceT
ZXp08IWeDegePCefF+Aka8OVoIrVlzy5fNzSVVQqFYQ9fwIICBIaPTpFeta9hRin
u6x9HrVzbhWuwu9j5famEQhz9oSBSugkgieCIDbSxmWvJkhpv3WSRJwGUqu6OUkw
QvNbmJ0B4IKtaU1/pS/OVZJD9e8OAO5zi9/Mnn2IBNzEa44CWedTlRZXa1WcjCwt
kYReCrPvKttqexbcDRAde9g+jdMJYn9OJKLAKZjPJvpLDIF7Sbd4CYgGV5Br6j6s
bekIMH4CHQd0A52ahfqLxfIWY09GxI+i4zYX2znwkdk2ovQLMG4YzgQpMm+cWS0r
x0apWoCsUevzpA5Is+dcht93j5qXoSnbTjLErI73nvaKby2nRmMl6aRO2icBvl4z
deEbANTaTspFet83J5lzyThi52I1jXIW4KkoKJBymeICBA5Lw1R0WYTDwf+mOM+1
4wNVEapOzZZo0JFQJzQzKEiXFJSDxETEg4YkHEpGtMQ/6F4VXecE89clVlLPrMDo
JpfdLMo3t10kTgnltYhovWxLlMACYI8RNPv5bwOupXXnQJy9TmS9HAIH+dZICws1
QyU5E9bo1v+jVb7zJMUmZLv0ee8wF//ITfcd06f/9hCB6upUa9E=
=r0Q+
-----END PGP SIGNATURE-----

--FTHmOMKHPpIqSf5E--

