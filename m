Return-Path: <linux-man+bounces-1013-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDEB8D1A5F
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 13:55:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2947C1F22A61
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 11:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40FA16C84C;
	Tue, 28 May 2024 11:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDGQ7csl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751DA4C97
	for <linux-man@vger.kernel.org>; Tue, 28 May 2024 11:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716897342; cv=none; b=aXT30SWV3FbSu8YeJrWTUhf6TH0JzcYpK5TsYHRk1PTyfIUAX3HEiRRCylrZsGba4NRLt/8tvx99za10Y5ulZEcS3YzIwKkFoR4yodPVxDXEZ6UfU/suZGZiSFL4fvqGYCorCJOALcBgjO7YKXMRgQtxRGRwYcPuXADY8C3B1tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716897342; c=relaxed/simple;
	bh=5Gbj/VbKtUyBax+aYGXKoM6euAJyruIk4L3B8N87Y4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V3jkMTUxZuzpfPxpdDPWv25o+wLBiuOEU0EGXMeYlUl5oe8Y12vj7Nd9bQAXLzAas6GOFV5blmKsQIGgM9riVpUrmbpvYxGgJFE2nc0hzbDIOpfb866yWPHmORG0CmMyJ19LR0EW2+b1wkPELsre28zcMsPUUG2c9QIGHbnOJyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDGQ7csl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4F51C3277B;
	Tue, 28 May 2024 11:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716897342;
	bh=5Gbj/VbKtUyBax+aYGXKoM6euAJyruIk4L3B8N87Y4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gDGQ7cslBDybUe8DpBQ5ItyaRhq/0/WtTh4W0ZLRpxsXmj9wsMZ3USZHvlawpJZZg
	 hOCawiOUaBBIJrBdh6NlmR8aaEl0JiOfiBuMcSOM3uji1YJrjTQYxh7wDTcp2Qc1kG
	 tqAZbUqR2se77cUXHQXZtqRAZ73S64PDsxNGXJkGtAr4H/o/C7qMpEo39BW3SlucoM
	 hsi7fiOTkrDu9HmR16fPTysHJVy8mm9EmRtk6Khx5n6RTWCtLihtogk77sxYqOm+fL
	 1Fg6OSzv3suyTrppfdx2QetMY7m8krYoLNXMqwphaahEObS/mdOLNF7RJq7jKjzGth
	 zqS0OutJ1dL4Q==
Date: Tue, 28 May 2024 13:55:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] write.2: Fix a typo within the `ssize_t write` function
 argument
Message-ID: <egr4d53yiuysqbiown6bjy6utm5w7xwyfviujyjfbhgzkw466t@3knpj4x57l43>
References: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>
 <rmoa5iy7ymnouqwnsve66vdzdtnqs7f22ov74w3zoobwc7jjcl@qlgoartjtqjw>
 <CAK719L1739DpTiGQi7rfJDCQ+bHjUjJYup5jCmNWwkoyDUMKvA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nuda2nt3uhixffup"
Content-Disposition: inline
In-Reply-To: <CAK719L1739DpTiGQi7rfJDCQ+bHjUjJYup5jCmNWwkoyDUMKvA@mail.gmail.com>


--nuda2nt3uhixffup
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] write.2: Fix a typo within the `ssize_t write` function
 argument
References: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>
 <rmoa5iy7ymnouqwnsve66vdzdtnqs7f22ov74w3zoobwc7jjcl@qlgoartjtqjw>
 <CAK719L1739DpTiGQi7rfJDCQ+bHjUjJYup5jCmNWwkoyDUMKvA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK719L1739DpTiGQi7rfJDCQ+bHjUjJYup5jCmNWwkoyDUMKvA@mail.gmail.com>

On Tue, May 28, 2024 at 01:09:15PM GMT, Lukas Javorsky wrote:
> My bad, thank you for pointing that out.
>=20
> I totally missed the square brackets. The current synopsis is correct.

No problem.  BTW, please use <alx@kernel.org>; I'm deprecating my gmail
address.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nuda2nt3uhixffup
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZVxjoACgkQnowa+77/
2zKmoRAAjEICMaEHoi/yfS2Tl+MlecGqH739MnqmnIQgcrwrdIXQ5C+kb5V/y5In
5yVDWhHww0eDYlpXjl2RuX+j18ixmxecZlokDGdRmCldWtSIaG3NsC829qNWRDtD
RkmOpf+LIJYPMBjQxl0A4P67NG4WxCAabEXb/dAcDuNhJaWod2X9DFq14bMLSM2B
/9Jjc32rfIS9A02AiFM5aDF2riGVGVZUDn0+jAzW4ehYYbk28EvzzZ33Gk2r6hm/
8bxq4GuyAY9Ijo2rD5rEk6Jo4J+2+jUjwDu53+Mwk3L7g5i70edgFbMZsOQ5++KD
IaE1UPr1Tz6P4mpj5Tt2RQRccAiEiF+VADSoF1Txh3ZbkKaX9zRDJzHzOIq+nJzY
r0r7zDUJ+U4c3KYBtyf6cpSTW77Ud3SgSoF2mJ2Z9FNqIAZjCSASM8qvt4Doz1qQ
MfT+bo724Q/CiRv9aj2JIhivY4DksEoO25B+f/e1aTYq+IvggEuR6BEI2cfuIliH
NgN6E7rmiSpUUTmr7CqMwQJ6z/tz7mlu/iJFzrE2xE/JrDhi9BQk09raBs9R7zAF
hmu2s4VpQ0Ly2gpaqsLqsmPUNw3eD8aKW8mqjbTs+hHZf8OcDic76u1HlvbluU9C
ladt/2twen4sMKx8FfYQbIbH3NdKW5gf5bLQPChDn4avijMWxuU=
=dpAn
-----END PGP SIGNATURE-----

--nuda2nt3uhixffup--

