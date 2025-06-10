Return-Path: <linux-man+bounces-3119-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A41AAD4627
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 00:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C1143A3E73
	for <lists+linux-man@lfdr.de>; Tue, 10 Jun 2025 22:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D7A248F74;
	Tue, 10 Jun 2025 22:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2asayRa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38C078F34
	for <linux-man@vger.kernel.org>; Tue, 10 Jun 2025 22:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749596227; cv=none; b=IzUniJVQL1YjGVJ+4z5Nqs32YoEgmdgiKvXjhkOxNCBhuc2JooXp/TrTC3tMNgD2WK/+jqqMbYuPLjsED+nhg9nHfHaTdbA05TTQB2kvT7Caiy4C0eHg/sogXMbjO4cxaBUC5w8b53QNIvLzv+OqJyqGhuimThIrXXpWcRG0/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749596227; c=relaxed/simple;
	bh=DHhnC+mXP/mHf+E/4tOO+X8rCo8m1TYKLTJk4oiO0+U=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WzKxIbT7us7CzqoGp5nc+X7qj4gf/7B5ogJpfFFdHo0cKGPEAFO2HP+PwLNhqHCBv/KKh72gyGg/RrQi3Vlc2l24a/yP8SRuBz7RpxSgnVr/cigPV3e25ALXZLSzqEAzI4IH78667Elntp2QVjPywPK/h+eg+S2PkRp8ixcOgWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2asayRa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B37D0C4CEED
	for <linux-man@vger.kernel.org>; Tue, 10 Jun 2025 22:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749596227;
	bh=DHhnC+mXP/mHf+E/4tOO+X8rCo8m1TYKLTJk4oiO0+U=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=f2asayRaz463LP31fVSMYJn1GcrszR75MUOjFgahq01nLjLP6uu+RObN13xnmuDyL
	 HPQfJi5nCOPkpt34oLzXipoWaLKoqVM+gWapfo2fK775/N04j+SNzfp04RLtasI2pz
	 QWzSHrCEqnx5iurP0JAxVJ07LoLFFsoElwr98V7oUoxPO4IlBwdyyGL+DSE/SmbaxL
	 HFbGM7EL4AEhJjrejCvd9LqBnByUZQWUfAo2htaHamrvOGckpziCuBxiM2YpFnBQRP
	 bDn7ZGLLjwEiVnb9u+02imJGpy0Cq/mIDTXGGUq19IebFqQ1e8nt0eLa37oby7Gd5P
	 wAy1AvQlyKfrw==
Date: Wed, 11 Jun 2025 00:57:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: OSS NA 2025 - Unconference session
Message-ID: <qzyk4zayjeqfikp43y3ojow2lnlsfd2opogliiloiv6gmvj277@nwiajqle3xcm>
References: <CAHihL+410WXHU6jhPnHFNOiZMgUCdZp9-whJiQyJ4w3Qi4ya9A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nszd3i3dozhdozkm"
Content-Disposition: inline
In-Reply-To: <CAHihL+410WXHU6jhPnHFNOiZMgUCdZp9-whJiQyJ4w3Qi4ya9A@mail.gmail.com>


--nszd3i3dozhdozkm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: OSS NA 2025 - Unconference session
References: <CAHihL+410WXHU6jhPnHFNOiZMgUCdZp9-whJiQyJ4w3Qi4ya9A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHihL+410WXHU6jhPnHFNOiZMgUCdZp9-whJiQyJ4w3Qi4ya9A@mail.gmail.com>

Hi,

I'll be in the Open Source Summit and Linux Security Summit in Denver
later this month.  If anyone wants to meet me there, I'll be around.
I have reserved an "unconference session" for talking about writing
manual pages and documentation in general, on Monday 23, at 11:20 until
12:00 (local time).  It will be in the Bluebird Ballroom 2H.

<https://ossna2025.sched.com/event/264rQ?iframe=3Dno>


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nszd3i3dozhdozkm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhIuDkACgkQ64mZXMKQ
wqlsBhAAkqNWXjPohc6pwxnJGinoXulceB0PbX3HXHQpHZchFgNLWLv9sfLvE32+
PC729UeYSgX0ixcLL5LRp3yywQju1uwwnzDCeROTt+wZkBFulfwtNdKaCvovsM4F
g4aBjfukBlvJi6roVsXC1T8IRJoVhzIO30bVaTOEtGk6lydq584TmyrsokXadwtX
weJl1YWH6tWEbnOUdBrYlnqdr8T8DV7xunA/Dgk1h7y7EDhT//NMHlc1hxnba80a
uoQtqL24I66mqftACyIsrdgYeWhvimR43GYJe27MbAHOOn9ohhI5XJhloSfU8msz
u+i3WPT5crsdeyFgfseRGRCxcfo5oRT69HFiRRMbTiSwSdLj/mR/FA4lboe1FMsf
4B4keECTxCN0YD3ssthO/69pmMe3AZrTdcyegqOU7zbMQNnp1WtER/fGZwcmn7S9
yTmGW8aEmHJmQEUxFafxHWWMfSZpnDqkMEi1DxEwolWjogCRKmR5PN0nfKRjF3V/
4pAjzk0gqZLt0QKE3QE8GkF/0MPLlAQLpk8BzB7TGwr0WZQg6zehMnYU3NTVVCb7
2cfSxHxpdcb6RlX9iydI2qfiXA4MxMEOQxAVncARnNeyb8r0QS3kAdDouJwLsJDu
CH9LwnNIZBikWjDKPUnU+it2UbAJuvxv5NEPYhMrHKLzhy/+1TI=
=/MKj
-----END PGP SIGNATURE-----

--nszd3i3dozhdozkm--

