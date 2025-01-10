Return-Path: <linux-man+bounces-2215-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE87A08B51
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 10:20:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42238188D141
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2025 09:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB6C61E2614;
	Fri, 10 Jan 2025 09:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw6u9fC4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E43D2054E2
	for <linux-man@vger.kernel.org>; Fri, 10 Jan 2025 09:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736500668; cv=none; b=K/hDDaE4bubJUBagPNf/GGETqTtP5S2nNNeGl7paavUwl35gRynoRuqH/QryFLF8MwZVjUf415qOvepxhvP0JXKk+UokLoLle3le3aJ2Lt4ct7+6MwgHPFhEFr16QPBUpcrVANUIdIHOl5RNyeX2hN0GaH6Ki7+Jb5wCcfdm9Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736500668; c=relaxed/simple;
	bh=IlEYu5uNYSX1yyXEOMz9dlUlerW9zIF1hTDqSa8uT70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LjPeVyq/dOaTRaoiVoYcLWdB9QyZeZWqTN9aJYExGMI1VwNguIOFH+h5erhDHc6BxPqzMvUdHDPGxBUvyzVuQ01VWbOmQv2hEngA74K0KWZjlGwX5FlX/bnm86klzaGDskNhhPnh8NP2hpPa3r6+N2pB5mJDIIIixKKFwtw9uh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dw6u9fC4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547F6C4CED6;
	Fri, 10 Jan 2025 09:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736500668;
	bh=IlEYu5uNYSX1yyXEOMz9dlUlerW9zIF1hTDqSa8uT70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dw6u9fC4RuGWfVQpmowinilOMnErFUOAIIgUKEy0QN9xYKwuICVw3NVe4ZY9ael//
	 49x9MfFQQo6mG7VmSm6nroIjxJ0XSc1bfB7/J/x6bNkQMrKXS1nH/8KlQjHJO1bxFR
	 NonimGAO0J/e7YRtlONz0zpQao+eSKbGVJ7BJ3SAcZmMP326Bf7Jd0Gs6pTGlcl84v
	 v4M/W0mm7Syly9nSkuntb9MSfPmHQmHbMDQWKC4EWEa42RYI8OCuFHIbHmqHG1LHP6
	 29Pq3X1ybxA1Uic1LWuQbsRZyu9QSK5Stj+T9jtwkhx88LpswWgT3I4yQI13DLl75F
	 9ZyodQiCP2cLg==
Date: Fri, 10 Jan 2025 10:17:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: onf <onf@disroot.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: duffman(1) (was: diffman(1))
Message-ID: <zaxoqz44o6z73zkxxahynszgl4rzop3ek5send2kl4f4oyvlnd@s6j33yfj4ois>
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
 <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>
 <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2tezdc3tbtfxrhy5"
Content-Disposition: inline
In-Reply-To: <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>


--2tezdc3tbtfxrhy5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: onf <onf@disroot.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: duffman(1) (was: diffman(1))
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
 <20241125163421.f37ftfuxq33bax2v@devuan>
 <64nwglzgyqvdpkruvwnp53gd35nzib7xjbluvph7mqg75cjtn6@fm4ckauriwfi>
 <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>
MIME-Version: 1.0
In-Reply-To: <D6Y40GJFESLL.DMBT4LN9UI54@disroot.org>

Hi onf,

On Fri, Jan 10, 2025 at 05:30:59AM +0100, onf wrote:
> Hi Alex,
>=20
> On Thu Jan 9, 2025 at 2:59 PM CET, Alejandro Colomar wrote:
> > I have added a duffman(1) program (script) to the Linux man-pages repo.
> > It is similar to diffman(1), but it diffs the git working directory (or
> > a commit, if specified).
> >
> > [...]
> >
> > I found this very useful for reviewing changes.  Maybe you do too.  :)
>=20
> Where? I don't see it here:
> https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tr=
ee/scripts
> nor here:
> https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tr=
ee/src/bin
> nor here:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/scripts
> or here:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/src/bin

It's on the contrib branch still.  I haven't pushed to main yet.

I renamed it to diffman-git yesterday, BTW.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tre=
e/src/bin/diffman-git?h=3Dcontrib>
Plain text:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/pla=
in/src/bin/diffman-git?h=3Dcontrib>


Have a lovely day!
Alex

>=20
> ~ onf

--=20
<https://www.alejandro-colomar.es/>

--2tezdc3tbtfxrhy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeA5cAACgkQnowa+77/
2zL8kQ/+PEchLMESBcc/8kYzHJoskwWvAiyI9FF8vSrtaY4LupH0vkBYQ+kfr8vL
SrKmXdqe2lvGcrzyu1ufgEd1h9RzdlrLR3mpPgQATPGijZyg4rvOohQLbpybBOuc
EsKVf+aUwYkAFi6S3S4ibronGCHE6yUANMe4Z8jdXJ9/3e/1gMY/vDxAKQeoJUeU
G6Y1zeXn9xD2dny3GIP+w79ykIQoxSjOWgABbXMFBGTwJCDsJFyLc7Jxkg0Kmq13
zZib/qtw2vi5LssEKxsritqeVznGW3H51zTf5Kjtuq6jKNaXtEw8zZVSG0GTrMHH
0t3v4s+cRRlQ3A1Ol1xtpZLMK1EhYpIlZkShtfN+mYI6j3dW44s8pVsxx0gRzm2L
l6BzDTlwwpq7AfKATkCGp3A9BJZOg2GNLG/rJl/mfGjjYcpTNCAhoTkvSii/2r+q
82C+70XRBI9I3xdJAaaJ/GpNzM0WtnoJk7ULgrwyZiu+Cfnwo7NVbM+PYJgG7UeG
DV/TuS8H2Vtr+f8ivAxdcXCKOJfuG6nhisVL4akMubS5wwuPR0xzQLM8SLlqdLa2
Uj7EQ1XuU0uAq7qNMXPtKdHSbyZb5qzI3rUSnzimt0/e6LWuMf2ZPz3YBnBK4Pba
HyzRL9QwavXWXBDQlVsyuTtKN483yNwvReIofsQZv6YKRwx//08=
=Ml8x
-----END PGP SIGNATURE-----

--2tezdc3tbtfxrhy5--

