Return-Path: <linux-man+bounces-1917-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD9F9C8FE7
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 17:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C507D281F84
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2024 16:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A46F717BEB7;
	Thu, 14 Nov 2024 16:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4m3j0lQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D1617A5A4
	for <linux-man@vger.kernel.org>; Thu, 14 Nov 2024 16:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731602163; cv=none; b=YFOIahxVemcJp0LGX1XiF/oy7ZhbkTASvhearl4pQayI83iWgi0hr3XHdj6GxS/vA0vYqPYIpOhCGrTNwPnuX2/B767OM8rxl5W81JScNY8TWT/5fO44d98chjEumr1x+jvpYWgBSyM0WvNuRmKNwsH9WhXi1Y2TbG2a63IqpQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731602163; c=relaxed/simple;
	bh=7m+E7FybdbHmANXZO5pr+f7b88c7Ne47NbEBYBiCM6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PNM8o/8cH9p8Bt4qDa2XAIO98rsl1PahbW+oQl9VHJzHRAlMhXIL1kTSEaltaWJmi5apfvjDU4zCcAB5j0oNFVFAwStdUllYUE/1WYOJG0bmhyUqGnJI/MlaPYHve5j0YcmzXVooVR7eyrF5E2TEhmHuRi8DHt1s1lNd/aY3+mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4m3j0lQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3203FC4CED7;
	Thu, 14 Nov 2024 16:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731602163;
	bh=7m+E7FybdbHmANXZO5pr+f7b88c7Ne47NbEBYBiCM6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S4m3j0lQGOiVLLVCwPB0uP7Hq5GOFyN9v6sFiipchAQD/BrROhJE/r2lvJwcpvwFi
	 3d9Lt9LoCBdJMn5HX7gaT5iEndyMDibu5v+Ab7qUHBpmNgFGqZeOLH2dzPPUuOfTZM
	 fcrkHrNlxJoxSvJiEX78sP1Y9RTMpAjIRfkDo28zFPdhX59KTKaMNcdC/LPMwA/xGn
	 oz0sypUBtGr8/bf2ySoGE66cq43o41bB4EqTEdw9ZFWdQU1U5ZZM7NCGYLQI/+IheK
	 A6VQIP7jtutejHp26+ICD+HUW3fKrmb0hgbaC75Tyzat/gKI0RBtD4b53xrSXyczfD
	 KdbWmmElfXq/g==
Date: Thu, 14 Nov 2024 17:36:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Gabriel Ravier <gabravier@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: lfind(3) $3 type should be const
Message-ID: <fghvmxn7opm2l46rcsk2hue2cdez4wugcl2ftbr3sb7unhztuw@7rh5yq4qqtn6>
References: <dhl6sjfzoeezrefjsjt4igcn3jlqxvvbrz5uozxjmmmskxse6l@qtfpmwhgfiod>
 <7e0401be-0435-4c76-a987-0ef833483cbe@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="35rl5bzbcgsmibno"
Content-Disposition: inline
In-Reply-To: <7e0401be-0435-4c76-a987-0ef833483cbe@gmail.com>


--35rl5bzbcgsmibno
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Gabriel Ravier <gabravier@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: lfind(3) $3 type should be const
References: <dhl6sjfzoeezrefjsjt4igcn3jlqxvvbrz5uozxjmmmskxse6l@qtfpmwhgfiod>
 <7e0401be-0435-4c76-a987-0ef833483cbe@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7e0401be-0435-4c76-a987-0ef833483cbe@gmail.com>

Hi Gabriel,

On Thu, Nov 14, 2024 at 05:24:36PM GMT, Gabriel Ravier wrote:
> On 11/14/24 3:38 PM, Alejandro Colomar wrote:
> > Hi!
> >=20
> > lfind(3) does not modify its third argument, *nmemb.
> >=20
> > It's already suspicious that it takes a pointer, but I guess it's due to
> > historic reasons, and that's already set in stone.
> >=20
> > However, I don't see why we should not make it 'const'.  The function
> > doesn't use it as an output pointer.  Should I sent a patch for
> > constifying it?
>=20
>=20
> I believe the reason is that it aims to mirror lsearch, and to be able to=
 be
> used with it interchangeably as a function with the same type - doesn't
> `const` make the pointer types distinct and incompatible ?

Hmmm.  That makes sense.

Thanks!
Alex

>=20
> I'd imagine it's not even used much at all elsewhere given how simple it =
is
> and how cumbersome it is to use compared to an directly inlined
> implementation. That is, I think making it non-const might just happen to
> break a majority of uses of it.
>=20
> The only way to plausibly rectify this, I think, would be to make the
> compatibility implicit in the standard for any similar function (in the s=
ame
> way one might like to make it standard to e.g. pass a pointer to a pointer
> to const char to strtol).

--=20
<https://www.alejandro-colomar.es/>

--35rl5bzbcgsmibno
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc2JuYACgkQnowa+77/
2zKDdQ/9HF/fpLoU8PEAMQOlW00jqSFttmQU4/jLcEwrr4Z/2j7u0134vjj5Ra0N
UKTQ0QGXFbYu+89hM/KTAXoCAewj2YMY0tAdKdHI1yxk50CWPmNmGFU9J4VIb39l
BTwG0Wol4VtyVcMaGsdvMo/jpft5QqLQy2oxCfW8uWEaHeNVnQujSPb0YOBrZHt4
euvY/PG+8VPNmjaTCmCwGD3aDlPAz9w1eEOaIQgDT6ZZEbkZVn5fPRDh5IRvfhoq
ePon3EWPsM6pkd5N0v2HBx6fyIGIYaonDBxucCOMFgx2m78xNCsclz9HMmEma1dI
kxEzXlF4jJOOc8p2VUtiBprOvl3oFS9Crij9Zzc2W8glwXsTht6SEBZ6qCS8nxAr
rKJ3kjD4bSOF6XFnkIh1Lklaz3LvJBb0hYZmVQgKrKvjTLcrDVrpHDShjlIpYmK0
2fDfgogqPglu9Gsa75ya8PvEGFTfgamolFMO0DhA2C90zcqCLpehQN8RW+0iVCje
1XVwVpNjEzmzPnpMUySN/Ci1ZaMpEk4prZc3j+wDha6ZXZlZJymUJHRSZVtD21jA
2fI7Ja6nsQg5/3KlgT10u01luHqi4h05OnCTlig4dSzNXdQ98S2Idz3AZ+OgTgUU
jMFjHb2j7B/BsLJ/PZV9pWgfGA7KyUfXKIULZHvr6HPViTlwafk=
=gks1
-----END PGP SIGNATURE-----

--35rl5bzbcgsmibno--

