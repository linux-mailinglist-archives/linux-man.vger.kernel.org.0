Return-Path: <linux-man+bounces-4272-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEE3C43F56
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 14:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 61BB7188B319
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 13:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0662F746C;
	Sun,  9 Nov 2025 13:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKS7oCcb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0B41CFBA
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 13:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762696692; cv=none; b=l/BsMEmK+iv4UHZwZJA3bab38kgxBS0X6klkYvvSN16y1HNXQ0Oo5E6JPY3Q0yt5PBFn3k0dBLiTIuXJMCp3hzOoC+kmeAmMl2vAMGI2hOcbRzApl4B7I6DzkO9VeLrSVd781os+283GDgGoApn3h2z0+lCEkjuCfOl2Zr4xamk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762696692; c=relaxed/simple;
	bh=T/smGdhTfM8LEb2MBQa+yjrZerUmAeErK4x5Q/iXEwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SwXsyc1gTEAXOuQDoTIQTJpQRX7bAkHUM5ElWgm31lHkoqA55kpA9+r9utj4pMESOSR2Tu+kFhtyJVVZ8U4ldWj65UHpV9Zv496ttjcyBX8q2fEAmXIdPcbLolEXih8Gt+T+m8jSDE3TwtwOxKoCrsfFszotjOf8Zi9/Z74ZDqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKS7oCcb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29A6DC19421;
	Sun,  9 Nov 2025 13:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762696691;
	bh=T/smGdhTfM8LEb2MBQa+yjrZerUmAeErK4x5Q/iXEwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EKS7oCcbkFj1IU0o0dowFTesNAnjxZbCojTrFH79w/JoZuh/Z77DTKFGrp0eFUvnx
	 USjPxN7sCEgQBUNM9VfzaIpnIHI3816A76dDL0i1gZyz/3YLN/4bzMRLD5i3GPJOzs
	 1hq5/6lfuUQvqLSmyIiMIVBJjW8jeMUP4evH7mrIohs2QGggMo3mK49v/auTWFO5mF
	 /u7zCUy52uJHL2sxjQkzfX+H5rYnKo95dNk29PUgF+nspq92G/AQ3AWvKqM9murJAM
	 vonk62Wb2TXBQWs02lNyzU642nQXOBnVNAGw1xb2fUWJECvp9HXfP3GNgSGT7b4OMD
	 2YUmeUejwZfOg==
Date: Sun, 9 Nov 2025 14:58:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Monakov <amonakov@ispras.ru>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/flock.2: Mention non-atomicity w.r.t close
Message-ID: <5ab4n7dz2ubs2otbcf66vjfajsak3hdemn7mf44v4iksiihguj@7ovvz2gum6uh>
References: <181d561860e52955b29fe388ad089bde4f67241a.1760627023.git.amonakov@ispras.ru>
 <xvwzokj7inyw4x2brbuprosk5i2w53p3qjerkcjfsy6lg43krm@gp65tt2tg4kw>
 <u3b2gz7gc4iwrwomngg2gioxscu6lwucwl4egdhovh52u7dakb@knipbilujfex>
 <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gso4a2ypzr5hstvc"
Content-Disposition: inline
In-Reply-To: <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>


--gso4a2ypzr5hstvc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Monakov <amonakov@ispras.ru>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/flock.2: Mention non-atomicity w.r.t close
Message-ID: <5ab4n7dz2ubs2otbcf66vjfajsak3hdemn7mf44v4iksiihguj@7ovvz2gum6uh>
References: <181d561860e52955b29fe388ad089bde4f67241a.1760627023.git.amonakov@ispras.ru>
 <xvwzokj7inyw4x2brbuprosk5i2w53p3qjerkcjfsy6lg43krm@gp65tt2tg4kw>
 <u3b2gz7gc4iwrwomngg2gioxscu6lwucwl4egdhovh52u7dakb@knipbilujfex>
 <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>
MIME-Version: 1.0
In-Reply-To: <4a73d260-9d4c-4f0e-477e-59c621b8a8e5@ispras.ru>

Hi Alexander,

On Sun, Nov 09, 2025 at 03:38:53PM +0300, Alexander Monakov wrote:
> (dropping Jan and linux-fsdevel from CC)
>=20
> On Sun, 9 Nov 2025, Alejandro Colomar wrote:
>=20
> > Thanks!  I've applied the patch, and appended the tag.
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3Dafdd0a64c5bad49d6030ddc488951aeb50f0b88e>
>=20
> I've noticed that the last sentence had 'the file is still open' changed =
to
> 'the file were still open', is mixing plural 'were' with singular 'file'
> intentional? I'm not sure about the past tense either.

As Branden quickly pointed out, it's subjunctive, which can be
surprising.

A well known example is Beyonce's song "If I were a boy".
<https://www.youtube.com/watch?v=3DAWpsOqh8q0M>
(That's the example we used in high school to learn this.)

> (and thanks for fixing semantic newlines for me, I managed to do that
> in the first sentence, but as I was fine-tuning the second sentence
> it completely slipped my mind)

You're welcome!  :)


Cheers,
Alex

>=20
> Alexander
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--gso4a2ypzr5hstvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQnesACgkQ64mZXMKQ
wqnZCA/+NW5b/jIXN1JYGRam5futQgXuPz9etAwKyrRq5WYVKUNn+8rywMI0EU5m
6e6HUlN7aEMG8P9XKqDekkV05A3m3tHgTHRt2VFH6bOtLCNg6apXaWlh/csM6qCI
eRi+M994dVMcUbJttbLSGADXNZrI90NjjC1os9PmNSYClmWBYC8r9ni9fiMz4T7d
JULmo58YQOSil+yN6wKQS647208Agioi98ZPALhQe0g11FXdF9nwwRvNSaNmAc2i
7ZrTutot+mk37EIYoHzlvzpRiMxbkwpknaYhFww2kh2NQappVUk98YOSY+ZoI8bS
IytFRz0si1lPCPSCboAKw8qLH1JN74SfKF1t+VOikd87y86an+nOtRe/ZDsoFLt9
uEzOUWuMlzGymCh8ptEtNOXno2AunYLcfB7h0dd/8qeDqyEah47latsgZlM/9F8B
kAcZR5MsfNIwfn57oZfXEV6/WYEaddQoZV7ir/Zm6aWCdArvY9acJoHpMCEpE15x
moN7oqCklh+pOjikbjkZV9JGFhSMkJPqd+MbDmiwFcSLZi6xAL3YvgrhyFVtaIwC
KWcMXO1J0zlegRQzh/mWXoz6HBAJhzjdsfBWvkyN+7jJ6yu3JOo9n8OzCEEnbkcF
Y8CZEkpx9qlSqpWdA6ZA8XgZiAc2AR+b6XrbDyIx/esJNZJ7HHY=
=GI5F
-----END PGP SIGNATURE-----

--gso4a2ypzr5hstvc--

