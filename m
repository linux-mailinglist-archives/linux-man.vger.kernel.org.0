Return-Path: <linux-man+bounces-769-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 391E38A7602
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 22:57:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1719B21E4B
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 20:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94A14642B;
	Tue, 16 Apr 2024 20:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnVpQMnf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BFC44C6B
	for <linux-man@vger.kernel.org>; Tue, 16 Apr 2024 20:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713301064; cv=none; b=L5iTZWQc86ejFeBULDczuqV4jYn+sREWKa/yWCtaXgJrKYA6mO59mRxowihJAvCBoCNAIsetAOdLQhoUp1lG0/OvCgqX/wWBD8jxhJT7pQ4/CaZlnN1mCU557fOtUKkQwQ4N7WE0PT8+DkKGtY+UrXBKagSe6pvlwbeo28m7Ifw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713301064; c=relaxed/simple;
	bh=pMoJ0UFqnxNOYa6zxYTkTerB4CYBocTshz34mpF7HoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lZPgodi59U7/4HEYvYqobNXYPHyq0p7VIP+on4ckrgazLEl2erNy4ZWs0GWZlzVYzNvzEF2EBVFyQ9bORGIhC7zH9zQUYW1GxS0mnlIlve1lEgnwWdSMC3eglt1T1m2mV8kQJnvBq//1vPegKJiLc1BoKg234JUIVwHcY5nlwes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnVpQMnf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93954C113CE;
	Tue, 16 Apr 2024 20:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713301064;
	bh=pMoJ0UFqnxNOYa6zxYTkTerB4CYBocTshz34mpF7HoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TnVpQMnfnu3lZFJp/5rETsa16fJHHNmbeVjB7stxIvzPOjsiS59BUuEOw+PP3gnMr
	 bUEb1JiRB9/uQV4dVFqIZGxYvrkuHptgvtu/OLOZ4Xv3jmTCKVnxBjDgbAsOfaFiCr
	 JH/H2NdTbmlQldvs/yCaqBcHbV2Kmo0R4x1sKsTl8h8W0LwnDFUqPsfIrv6JXJcFaa
	 agRLPqu7b4WTF8tsyQ7oQdMMOJ2GNr5p/5RSjpJb/RsKftpuIHoMU5az1ZwCZHLSb8
	 l2y2wSn7Uc3yntK5+2PJTP2sWWc+m74P1kyPMLOkxMahmaEgeyjZ/fq4fmZUbcm2N4
	 M8Q7aB6G90B0Q==
Date: Tue, 16 Apr 2024 22:57:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh7mRYSj-st4i0z-@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
 <ZhvLPvqHzpw2Jl3o@debian>
 <3935722.768hzMJKAL@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tA4aR/2M2wLkVh2f"
Content-Disposition: inline
In-Reply-To: <3935722.768hzMJKAL@pip>


--tA4aR/2M2wLkVh2f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Apr 2024 22:57:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Deri,

On Tue, Apr 16, 2024 at 01:14:12AM +0100, Deri wrote:
> I don't understand what your doing with the font, why convert to .pfa, wh=
y=20
> move it - if you have the font just put texlive path into the download fi=
le in=20
> .tmp/font/devpdf with TINOSR.

Something is inconsistent here.  The file is named TINOR, not TINOSR.
Was that a typo?  Should I rename it?  I've moved it to .../devpdf and
added the download file, and it still doesn't work.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dd8d06c9c66bf32fb88e860219bd66149e5813948>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--tA4aR/2M2wLkVh2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYe5kUACgkQnowa+77/
2zJkSw/8CFszQLPGBrmDMq8/Sj9SUm8jyZDpSwBVLIMzNFaQDjwfIs5LY/5FaS1y
FZ7R7oUgufhwvKzKTjUcKOtBSPHnNe9zYtC1q0jHhGjsl4PlahEkgZNuIv81lNKo
SEclmb6yWeV33qwN8/cUH2RXF6WSkIt6QqXBc/ixDGnPvoVpytLeh5eEPtNPjgl4
V0RoB2oep9w3YP39LmXaT8eaX1NyH4pPrFtMuICNXLCVRwyJJtzDK9iB/JYi/X+c
9Dnh1L0k5RtCTrK7lF/e62JsxnIQWIelfuJ6RaVL6KuN692oI2UQwjysrPuGlST9
p6BsRvQ5X7xMYl570zj0sLdDnwGYqZHlSUBzdtBDVfZpwBN6whYuvX2fhVkqxMr8
WOaAqJtoDfoQyUruOBUYUb5ps1B0S5xdf8cUrVvwWgOL5GCT5attvk8JrXSFrs3h
UXrMqcgTuWZ/gEg7fqDi+Ds0useEOOpSUmkGy6VAqBe/dxcUS+allx9FcOyVrEuU
LKYLXmZc5fVtVGxrCPcmb3GEcQ+jdb2BI7h+SgMqAKihBQenoXd2cSSsiWsqjIwO
jGJ3QTgIUndFSlqVpNP9JETyinUgqmaXMivdUOLJn4o7sX5CDvL7ap244AjakwhF
2uGWzikivzPw+THGKE6I44BoHTYyQmSGUMSjaxq1ro1aQjVXt1g=
=RPnL
-----END PGP SIGNATURE-----

--tA4aR/2M2wLkVh2f--

