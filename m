Return-Path: <linux-man+bounces-1908-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 749149C6E74
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 12:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AF9D1F218BB
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FBD206E99;
	Wed, 13 Nov 2024 11:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmmOZD/D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452E620101D
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 11:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731498831; cv=none; b=H80KEE2K7gtsX8tkYgWZrzlcg4HW060G6DyXPv/6vR1/7SGN3S6YDawpju7EIUJJfW7RZmU0AJkjxU080aeqw2OBhwO/jDlsnQIrita47uAdbu+yG8lYcelCiZ9imYhbQeWEzJDsW4pmZdQ/wHGoho0swE/iHGFs1bWCosrNREU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731498831; c=relaxed/simple;
	bh=PtwMvPWOshP7ZNMCKJcn4Eywdh+N0WdfpYUVg3fLsEM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uaKZBThZbQWnE77np4GZVvnPfSp0TE7l1TmJ7D90qKnEGDD9ZEcxAakNthrzkNO+xF8+hCxIWt6G/JjDq3ZhqY9bHKZUt8I3y/ZUWLuce4DrbCXu9W/fF6ncRoqxvkJ2iWeqQrr3AsOx+xHQv0bPcWqupuyIgSm7C56FOuSSEUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmmOZD/D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01943C4CECD;
	Wed, 13 Nov 2024 11:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731498830;
	bh=PtwMvPWOshP7ZNMCKJcn4Eywdh+N0WdfpYUVg3fLsEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CmmOZD/D9VtdJ5QaIw4zNuZ8FdjIZTYpc5l6zsm7eJh3Ih6F2xtJbFUrvZBDU1iFf
	 IZh47Y9JM8Bjhagjq4lk7VTZpC55fpK64NoMBcIN3Eb73E4Tv1SkDr6lIYoZV5wCoY
	 kJC7ZYikJG0yQKH1ucDRaaJ5CgPxd1Ih1yyFKaljXEXMAqmqVEaDUr6JzBHHHEA91i
	 qaSAp8bOXNusrkuLEGvBWlDVbZlgXNCU6wWyaH8xk2KLllSw8aVWsLYn0KjE9J6+vN
	 8+pTOr6QxqT/xl7pQo520OU1Gu9rY2O1aeAKQjKWrbCB41Kh1P6ZtwVpZsbISgIgMq
	 /n2GO2EpDsscA==
Date: Wed, 13 Nov 2024 12:53:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: Ken Pizzini <ken@gnu.org>, linux-man@vger.kernel.org
Subject: Re: improve description of %a in printf(3)
Message-ID: <icc6mfp47bltwotgdlm7qswmfdmrqleywtkm6ck5jqlkmigupi@pr3vejopizve>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <CACb0b4k2Yi6onFEHJOtE=puYNf0P_cUx=mi16oRQG=3oukROsA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2aruhcb2clk35jz"
Content-Disposition: inline
In-Reply-To: <CACb0b4k2Yi6onFEHJOtE=puYNf0P_cUx=mi16oRQG=3oukROsA@mail.gmail.com>


--b2aruhcb2clk35jz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: Ken Pizzini <ken@gnu.org>, linux-man@vger.kernel.org
Subject: Re: improve description of %a in printf(3)
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <CACb0b4k2Yi6onFEHJOtE=puYNf0P_cUx=mi16oRQG=3oukROsA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACb0b4k2Yi6onFEHJOtE=puYNf0P_cUx=mi16oRQG=3oukROsA@mail.gmail.com>

Hi Jonathan,

On Wed, Nov 13, 2024 at 11:47:14AM GMT, Jonathan Wakely wrote:
> On Wed, 13 Nov 2024 at 11:38, Alejandro Colomar <alx@kernel.org> wrote:
> > On Wed, Nov 13, 2024 at 02:11:52AM GMT, Ken Pizzini wrote:
> > > -The digit before the decimal point is unspecified for nonnormalized
> > > +The digit before the radix point is unspecified for nonnormalized
> > >  numbers, and nonzero but otherwise unspecified for normalized number=
s.
> > > -The exponent always contains at least one
> > > +The exponent
> > > +.IR d ,
>=20
> If there's a comma after d then shouldn't there be one before it too?

Agree.  Thanks!

>=20
> So either "The exponent, d, is ..." or just "The exponent d is ..."
>=20
> But not "The exponent d, is ..."

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--b2aruhcb2clk35jz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc0k0sACgkQnowa+77/
2zLn5Q//cVw1P5bVZJySkVh2H7cgVJF47GlszErS4nWqixRzu+4yp9iGMcJfkiex
1kWG04CXoSkS7VC3EsFFixImsgoThg17To3cS7tQ4DHWJDz7iG7Bj+IfPwTBeckr
ww1tp75YUNMTDYRJjlvmHOCGbmX9VRVXrQMQci0hIeCVW4lIUb66qF4ehbIcsds7
Zq3f13K5QuVrHgWFwbeja5OUM5pFqz2vImbXVA+hTsthjUeZlyKVQGq+Y+Lb99Do
3B7xeeEw+MHIuv6wKf7JgdOyFLgeDVtktNwH1alDS4Jot0dxGKoxi42iRwUJQALZ
/42GNiJZB0VgSs8MQmIe8SnnhXu8364mel1fWFbGz9SnAcnmrqhZBwtX2VabRi6V
3q7yBBrWzHomyzauHvvH85thdv5/QqdlcUk5JbQBGUumxuQL3DfHq+Op7rOLHG+A
mEp30Oy9bEpLNW9HMqy/3ZGfkfyP3t0/p7cwXN0rI4y904fdhTLPyfJkljSvTCyx
yqI3bDr6S62ThR2DSeLrlARNhgqBl4HSd4Eaqg1Rm38Z4tFBLN4eIFjnAVJ/UWVo
YhKbXKiEmLgRgxr7+KxlOS6bKXU22yM6gUU858QDktD4amoJ38gp+Zdk7tNkVfiE
EZy1iJssqoXQ740+gjDUDvNnPdeN50X7YgHE5hrnzAyPs8tK4TI=
=9zTk
-----END PGP SIGNATURE-----

--b2aruhcb2clk35jz--

