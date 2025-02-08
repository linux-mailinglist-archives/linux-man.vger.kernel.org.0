Return-Path: <linux-man+bounces-2363-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B963FA2D972
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 508DF1632AB
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 22:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4D5243364;
	Sat,  8 Feb 2025 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR+UDv3U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E606243360
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 22:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739055393; cv=none; b=GHdVKiIK0c1fVQx3ArhSJ9pOY2bQPF6bU3tzrnG7waoXrboGiuLZdk9mC3BgmKMXq6eOZbaSaP0nk6SRRBa16vFRfcOuaLSUm3r/XWI1g+wSdBJLY0KbJ2VMRCgGdQlsNgNUSW7tUkA1Ptu2buWEpfLqiOFXd742Qr20oXSG8mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739055393; c=relaxed/simple;
	bh=18mIYTPBImv3TXcUcfX95OCdgaj0SzuTiyVb1J7g1c4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FlOGCsj3JRn1+Y2kj17sYK/jdKSc2RxdGDZpWZWp6WpJ3n9JXcQDdqoVSGMsGIAlNGS3C23N0Yusz1gQtEF1PITdC1UuRYHeLTPXGH5oLHIyr1UkMAoLHJG20NSKRCBObCrAF+932RUjg5LdMBTVI92j17x3rYNFqIXeSgf8UrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR+UDv3U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE5DFC4CED6;
	Sat,  8 Feb 2025 22:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739055392;
	bh=18mIYTPBImv3TXcUcfX95OCdgaj0SzuTiyVb1J7g1c4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rR+UDv3U/zLVxlVUdBLvMwQcAHiiIp0cFOO1E8plqh8GAXup8tr06seCMg+oLfMZp
	 hgYUlmaaFscPvG9lbRfSLLpjj+5DQjRojNQewbHwkx/iX7iX4gmVU1bQnxq0FrZnO9
	 7V2bCwR08V9uPOjDQAMTq0O4LeXf1H8cdL9Xa6z/1GqgLUaZrhDlkr21imloHRwiYC
	 9VqLCB1HDnYe60vnCNKy0tuiU2pRmBQ1c/Xv63OLrLqfxmSrGvEqQT0s+I2u0bBVTE
	 hefXgHIOdgyhmDk9LjxauNicUydvxkjovvwFYXHxrKyKszk2wokfPNaPGxvtbognpj
	 qJSVyR4J+80mA==
Date: Sat, 8 Feb 2025 23:57:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Cc: Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hn2uqtv5rdxotszj"
Content-Disposition: inline
In-Reply-To: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>


--hn2uqtv5rdxotszj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Cc: Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>

Hi Branden,

On Sat, Feb 08, 2025 at 11:44:43PM +0100, Alejandro Colomar wrote:
> Personally, I prefer tabs for actual programming.  But for manual pages,
> we can live with 4 spaces for $reasons.
>=20

[...]

> +Description
> +    Indentation
> +	Use 4 spaces.  Ideally, tabs would be preferred; however, they
> +	cause 5 spaces in manual pages, which is weird, so we use 4
> +	spaces.

On a side note, Branden, I've considered changing the manual pages'
EXAMPLES' source code to use tabs, and let the formatter do whatever it
wants.  Do you have any opinion on that?


Cheers,
Alex

> +
> +		if (foo)
> +		    bar();

--=20
<https://www.alejandro-colomar.es/>

--hn2uqtv5rdxotszj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmen4T0ACgkQnowa+77/
2zKSiRAAlMfw+reel4C4bHTcuyoco9saMk5zB1q5YjQQizKmRpszHKrHCuNPpJSr
jM3d+oPRF5eg16mAm3vnfHIUC7wDgQ6Ru816tpWE8MtyCYHvGjuXGfn+5l8Gh62P
Kq94aqYDri/RY5FqwkykZw9ixqF6Vlvp+vRZuAFkYZw9JSihV0QtAVyXN/Ih2U7a
DsQKROYsqWFbbj81jusw2h53sFvspskbLGXmQyBei+f8J6Pryx0pYfuxaQ0XeqNQ
+hZMx7QIiYEkQFShzVffuLY2tVbjf4xDSBoYwDm+fqaUq53nQKa8S8vezGtlMgSU
1P60tvX5yt0iMhPeEUVrXp4S1NoZALset48wHkXXyvcV9iH3x4RZv4iKEgRhWd4A
69CsPAunLPYcpBB/BEiedRoHeZHUsDWkliWv+SK75OJQHXoUMud3aZie5YLMMDEx
TZvBhDlMaZnqzFcETaFD/+xBQ70IV5ECKeN0439eF+gm2ZGWfr6V52I9m5ZOkxbe
mbW/pTGr9xONCMvr0JMs5F2cjOstTfrLtXvX07pBPWSbyWjQ1mByxgL+SKxRA7ph
T/bG2K02V7gxXD6EM2ReKV/3Ui+Pz59asK0ahXCWlfdsZYO6xB++6192VV9q4Ymg
Hc2qpPddqe4z3w+OwtUsdcg9UpOvkKKR1G1pLiVVrPMXNcX3F74=
=z9Ge
-----END PGP SIGNATURE-----

--hn2uqtv5rdxotszj--

