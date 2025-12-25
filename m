Return-Path: <linux-man+bounces-4563-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6A9CDE191
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:57:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4FC83008F83
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE86128D850;
	Thu, 25 Dec 2025 20:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVbOWRgr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1E028C864
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696217; cv=none; b=uMnPy3zr379rYWkrz+dtE9nPvT9R2Bj9rYFkcxpKBqCgiPu8TGBLzNs0/v5rwy0XQeVajcc8RsEqA7CgmCUxwUpi9AhiMLCnbFkCr66I53buhf/u5se8TS53HIqG8thxF7Ut/9WwPn6MBC9xYoOAtACqX5TiHgI2VuH/8LhlYfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696217; c=relaxed/simple;
	bh=D5LjB8yFlE2ucTqd3LyQ0qju9TjdHPyer5/wf2RfKUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nvu1lIWNFPdTTE4PlPLgLDqT7nnIo1NSaBdtLvpPW7SNCuljdelzOZY9w85cWnbNkViEPu+1ChBiGujxK5aEyNiaymFvmh6SS2NSsdA/LE84qPgjMi9nK/dGs3Vp0nmZ8RW2Kvm9mp3EbxYnWIvbJruQmWX0Aqyxq4v3lDq0+GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVbOWRgr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 273C6C4CEF1;
	Thu, 25 Dec 2025 20:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696217;
	bh=D5LjB8yFlE2ucTqd3LyQ0qju9TjdHPyer5/wf2RfKUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HVbOWRgrx46gthjUV8X9oojzL1Cbarr8G9pHxoTIq6s7rzFerGpqp6S3dbozCSZey
	 mFwclMtQ/TgNCsccTdcspw/c8VV8ZQHWNIV8Uks/kwwJDUlHAA/Cpci8/02VRTCSMM
	 SLhUPtvS/l5nB2qqqO9fJF5JbK4hc2RaFKkolM4yGJqamyhAl1FKl6qTFIpmaMeEXS
	 GOJYiIuR2en6D/x/rQ1grbzdGYERKN8UViwewvmD77tJfLkh4rUCVB5i45xKqaawZq
	 DVPtPRaqnkGQ11bFXb6fPNAmBvcLr2BtJJnTEa5ido43n1n+YTAxW9PWYjex4XIrhr
	 AmGOSkgwfhySQ==
Date: Thu, 25 Dec 2025 21:56:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU2k4yUr_qRrB7CW@devuan>
References: <aUv63xJI6tagZGQB@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3h53w3kzjh2ya5zb"
Content-Disposition: inline
In-Reply-To: <aUv63xJI6tagZGQB@meinfjell.helgefjelltest.de>


--3h53w3kzjh2ya5zb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU2k4yUr_qRrB7CW@devuan>
References: <aUv63xJI6tagZGQB@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63xJI6tagZGQB@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     Is this the opposite to "enables" above? This is past tense, o=
n purpose?
>=20
> "Use FPEXC for FP exceptions disabled."

I have no idea.  Some FP expert should come and review this text.
I don't know any.  If anyone is an FP expert and is reading this, please
review.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--3h53w3kzjh2ya5zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNpRUACgkQ64mZXMKQ
wqkPEg/8CNl46hPTtCwynWJOleoqkY4cVDJVgusWkCwEDyn2HAynGxrOrVWONaI+
gkbl+Spxu1CDS8/i1g4xdMT9MebFsKCItJ8Z7NKPk0xlXpWqs9aSNLWzO+ruAwVH
YzIrdHyc9rQEP+ziFZIGhrSNa5+GDIAJDxPb5Fxndiitn3EOhQzUemM5F5tufI2q
7xgs8LwSH4D32hGgsnuQD0SgOrDNpe2N94rSEV6RfG+OLujvwD7fsHj0Aj4DPZwN
z/Q+GQzwyL2BliK3TKtwaIJBTST8cHiioGg6gceV1Us2xZk5mGjJZdWjQMdGuEWx
p3EdChxOWkh+PAGx1/FCMVbe//zux++2ITCeH2H6FLyKTnKYsvVaTBShnTBkDo4k
TL2FBFJioxaWMPm6hjTs7c2WED3QjZ17wUMccHLQwacs6LUTO/f/iktyn2alIuL4
5IWWLYcFRHyWnLE1+SS/fPpvO386kLWExv1SOn4cEfEM6wjcIP994syaurAdAw63
qGo/U5WgcyvlbiUNT9VE3924fGOL+6pwvu+3ZI/ZNb2FhlJwPfxLzw0e/LVKOhTY
W6m0l2hfxsHzT0H0nInZXwCAsCLrIIp9o8gXBzdevLvPQ7rYe3jaF8QWfSJxa2Z7
IyPhOoPFLTKdKOgs0Rw7ePtrLj5GQL2Q+0jn5TTVfKC3uTeffQU=
=xaUc
-----END PGP SIGNATURE-----

--3h53w3kzjh2ya5zb--

