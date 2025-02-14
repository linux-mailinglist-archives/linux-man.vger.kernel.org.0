Return-Path: <linux-man+bounces-2445-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DFBA36725
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 21:58:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D5673A9FF5
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 20:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A461C8613;
	Fri, 14 Feb 2025 20:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngquobnQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45AE18BBBB
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739566698; cv=none; b=fWihA2YorQts308ElxH36tqJJ2Sg+yrV7rd0Es9FwxEMjO4CM3iJsh1obcDiEs6XKqKWBy4KFFdRP17F06KQFLPNFeoOwI8wShv/Ddlxmzes53GsgY73Eh4r43EHK9exBlFrC5GrPL8kkoKtuwZYblW9fxrgsowcj9yqqIWxaZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739566698; c=relaxed/simple;
	bh=qx3xgk1CobG2BqmsEEoTzTup5LF0V33lUFMt8quUPxA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gTsXEOiAXOV2OInX/WZuR2oNdEK9us9xpT6zLuFq32mG4Dpw1rOAyxee7NitewLZBUHCeI8DsWpK0795rht7hHXM+V0rBFb58fyt7doE0D3oPF3BO5Fz+srEFBBpDjuOiSGWkmS07OLzcQDlOUohGznofvErx8RY9c1yQ74G6i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngquobnQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBAD6C4CED1;
	Fri, 14 Feb 2025 20:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739566696;
	bh=qx3xgk1CobG2BqmsEEoTzTup5LF0V33lUFMt8quUPxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ngquobnQz4zLxouuhehebAKfb2B76ol4HPSz23hoA+qOxCnDJhbLN8waQinQ7Sk0i
	 coedxtenduR7uAfY2FNEN3jp8Pm74vAe6CKEJG9weOjoo1hE3o+vqhFZ0iUeiSVlTU
	 80vIvJiaGPUGCL+s1W+5ab5Dy2YvmntIIOLjAgpofSM/GVHfpEHCI+SIyso0GufGI5
	 w0l3BpxRbp30N30paLZS0F5YxqpfwEiboJGpPMaJDzO5yctPO6i40exeB1WnSqTQL2
	 bi1Qj+JdRJPE60H1pMDFjBoQf9BA2LXeOr3/0knWBwEgQ5OrY7RJPVm5BNYJPwHB7C
	 /OPetW6BvCYnA==
Date: Fri, 14 Feb 2025 21:58:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup(1) signature verification
Message-ID: <unyzsepdosmnkzalnyllbh2zriw2xcjc5yzxmtiral7bk2eihg@7dzucbgfilql>
References: <tl6xmfafcnklhjp5xxjzrfigfptjx6gmlmgffg647urbdvsmpu@r6x2tdpxefl4>
 <20250214-fortunate-succinct-hyrax-a47bea@lemur>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vmdnopmcp75gef2m"
Content-Disposition: inline
In-Reply-To: <20250214-fortunate-succinct-hyrax-a47bea@lemur>


--vmdnopmcp75gef2m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup(1) signature verification
References: <tl6xmfafcnklhjp5xxjzrfigfptjx6gmlmgffg647urbdvsmpu@r6x2tdpxefl4>
 <20250214-fortunate-succinct-hyrax-a47bea@lemur>
MIME-Version: 1.0
In-Reply-To: <20250214-fortunate-succinct-hyrax-a47bea@lemur>

Hi K,

On Fri, Feb 14, 2025 at 03:29:49PM -0500, Konstantin Ryabitsev wrote:
> Key updates are not automatic, because the keyring has to carry my signat=
ure
> (or, rather, a signature from someone whose key is directly signed by Lin=
us).
> I've pulled in your key updates, but if you would like it to be more
> streamlined, please send in the key updates following the procedure descr=
ibed
> here:
>=20
> https://korg.docs.kernel.org/pgpkeys.html#submitting-keys-to-the-keyring

Ahhh, makes sense.  Thanks for the link!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--vmdnopmcp75gef2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmevrogACgkQ64mZXMKQ
wqlYmg//e1425mSpPcJbs6iAu7+hxrq+fL/XM8sY52xvPuuY22tDvFm+P+/Mcgqi
kjoG7491b6tGdjAmRwDZIYp20zhhhSEC26uN65RlCChw5GmTsndBsd3l+eas1W0T
6wtGwy1Wvci5JvGkmCUI++la/+GyzFPsTXxqkHETikqvg/I5NGuKNVN8IyhcdQYw
1kmWedk5H1KHuOIZb7sEnxx3b9UKowZ42KSuwb7tK70FH+w46cbYlE3o9WS9aByR
e2MT0KalNYkJdCh8CxkDkcPhq4sQFqwwkpimfpcP3EqtCdJ4cCMI/ke5hAa8YxTu
VIHLKEIZ5pwXzQiqFThvjwqeTDEHry0k4HBsmbKckHcuMzGJ1xXtcU7TrMpbbyRC
qwY4ia0/ciblIVQmXIweg/mLHvtQL6SXPcJvf050O6+5popDgkvT0mceQ6h4Rqmw
cnuJNTcMjexa0fmscM5trM84bfxpmgW/XOXbD8FhhOE8vThCB9d9DJWK4iH0ZNnp
lOljHtXIdFA2peqdldHqhKyivSv6Orqtss4JDY6BaIuLVc/0yGkOXv+n62XzGHhp
biks3Jmiqst8nWtdo0HE/t/HinR82LOeSEGRlO6yce7DwzNoXH2sV5mdC4rG22bz
98IX1GHP7uWkL9Qi1BC2yU5fV+LMypGNAyixhrC31AKGDxni5JI=
=7JJ4
-----END PGP SIGNATURE-----

--vmdnopmcp75gef2m--

