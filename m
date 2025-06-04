Return-Path: <linux-man+bounces-3099-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 307CCACDDE1
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 14:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31CA27AACD7
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 12:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE8AA28EA69;
	Wed,  4 Jun 2025 12:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjaVqsSg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D04B79F2
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 12:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749040060; cv=none; b=axdsp1nbxhF5wuuvevkagTGD1Jt2X72zfri9poybYR4UfydXq3ZHY/ePhu5LBn7+HwLIH4mXmTnCJbwrf6trUbqDusqR+c3m+UEdi4Ig4f3DFL/kfIRnDe+cWdqr08IwWdmYeQZY39zRMTLDO/s8hDjfotAXkT794vnZQHi73as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749040060; c=relaxed/simple;
	bh=4ogxaH9vao6RgA6sMh1GiwyVpHH7pNPCtiUH+H21rPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PzCiIgBTPhrhCzpLIHTOUntH6inN5U8If6NfRMFsqwQ8eFx5YTMArb0pOKPrU8QIrDuw1kUBjyjK7gGQ8h0x2rvdbljwfmwY6mMmta6sQJcGQn7YzejL6Q0h3UwH27DAETpi/hnUIbK9ayvo24tSw6+D/tPOxZb7Wtuxin9rWYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjaVqsSg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01F6CC4CEE7;
	Wed,  4 Jun 2025 12:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749040060;
	bh=4ogxaH9vao6RgA6sMh1GiwyVpHH7pNPCtiUH+H21rPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fjaVqsSgKWeXyzEnqobh9JkEqgSROzYJBoktt1mTjl+B0mMUesl6V7wphOLhN3aR9
	 cOOfQ2huYezYIK8tiL7k62N6PUOQwMgMstchXTmRu73NLrWF5RPn4CIhRTkPKaQCny
	 4eui+IntQCYyWFAWrCOdhQ7WHZVLOsoVbEiEaqfcRfcQIoeenR9q9XbMqCeRqLvZzG
	 ILD4DjQB5c1/7mPM0qFx4kxPd01Tgzi2orLNN02AgWBXW9TV28ilMr/v061gyHtX2Z
	 rVq8Vq77JQWu8YQmUuElXOjNK+tFW96b/cgCjprSSBAjDlome3zcVU7r6mwCkoAKaD
	 zt2H91oO0kRuA==
Date: Wed, 4 Jun 2025 14:27:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <qdtjnelanivspudqx6v2nl7bkt5msfqrgknslvorb37yewhohc@qma7osxmqiot>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD-F8QnX3d8Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vuwwnlabtr4bz4sw"
Content-Disposition: inline
In-Reply-To: <CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD-F8QnX3d8Q@mail.gmail.com>


--vuwwnlabtr4bz4sw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD-F8QnX3d8Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD-F8QnX3d8Q@mail.gmail.com>

Hi Mark,

On Wed, Jun 04, 2025 at 01:00:16PM +0100, Mark Naughton wrote:
> Looks like someone else thought this was a bug:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220192
>=20
>=20
> As the new man pages rolls out to more distros, I believe these bug
> reports will keep coming due to the confusing nature of the change.

Yep, I'm taking this as a clear sign that I need to do something.  I've
put this as my priority for now.  I still need to finish some other
thing that I'm doing at the moment, as it will make it easier to fix
this too.  So, expect this to be fixed in a couple of weeks.


Have a lovely day!
Alex

>=20
> Mark
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--vuwwnlabtr4bz4sw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhAO7gACgkQ64mZXMKQ
wqkbog/+PK1D/9VZPF4iIPAJ69ESgHzQ4pSdnfu9y1+f5DawNWIabB91w/X81Yr3
nnX1wvRkJ0kRQzd8bo31WbU0i5Pv35ThJQ4fd8lnTY7ormfdOMev0bX6PP9oCefp
jLSuLCYwX8XK+HTSZJj3Qm2Ryu7vI0OxRkwgOrb6u7SAn1c3jPg0CtKCa3rK1OJd
geS7YnfjUn9xr4JYbNUt/AdjyJXoWmD7eYdVM9lRBA9yecIqBLYezfAeuD61Mi6G
sRVJVlvtusQVg6y5snq4RrzoxubkSmcZCEhJOI3Lp24oOxXSkPc1zzsaK1GsO+Sk
cCldiOEKJkBpiQy3qSnpTmSRHkKQdiIxaKuAYd2PwG0VpZ+70GlH3tpn5SQEJODA
PivKbE+IU7aIes2V9yInnnbPzxd0EJ1L5vg2pYlIofYjNgkLSWHinn69YZwko9dJ
6Xf06EIiwsOb9xFRqfLsSHJzsd3XvB7GiVCvDvozLQB6GOsDTTyniNQF7vD2vs8F
V1SUSYk1pqgFKCmVt0vU4bPwZS1QS02oKmO8Avq9Jp9LfBsF9ZJNsLbd3+3Bqnq5
SYqLSxZVbrGmjCm3v926vnneNf+X7mh1ySvdQppO1j2yP51ZsHKu1bzQdllGCKNZ
VjCLMh5sNzfJqKXXOpKHaZyg6wcoGlkDTDpUrfDNA2v8M2HDKC0=
=e6mw
-----END PGP SIGNATURE-----

--vuwwnlabtr4bz4sw--

