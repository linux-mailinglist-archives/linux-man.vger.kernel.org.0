Return-Path: <linux-man+bounces-2268-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E261CA16D54
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 14:25:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 627C31885D38
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 13:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2841DF98A;
	Mon, 20 Jan 2025 13:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UV21Owqx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C29C1B5EBC
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737379506; cv=none; b=HLRY/QtezVYUZEQ/CAWgg4TR5jXXpz6n31CPFy+rt+JJzjwC8qGUAWpGdAh1Rke4tcwh8mT7YbcupW4WPcUPsPv2e9VJ3jluP8oyFxtVvnsBu9p5lqqX/rNgKh/o58ilghpGy1kaIkCEm8SANnjf9OmNEfhY6ozDvbl7WvxgPFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737379506; c=relaxed/simple;
	bh=hf4wc2+pLyWDOD9Il1/2GVDSeudIb5LvU8KI38tCT/Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oxsNusEZJTvSGicg+TCW8zkS4hvEfusr30JTcbVM/DwO15vt3IknP7HyciL2jmfzG1Z00Zd9PctXXa7b+DDGsXv71Vn1Qid+MX1yW5Q0pQj1Lq3aXPip4lSKIFZkz0r1odrHaCcSOLL41dgE0jXCMqoGQpN8QpFTz8d+Jo6o3nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UV21Owqx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0D62C4CEDD;
	Mon, 20 Jan 2025 13:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737379505;
	bh=hf4wc2+pLyWDOD9Il1/2GVDSeudIb5LvU8KI38tCT/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UV21Owqxk81Ho/pKbtv/TEtmkD9O8gPLf0NJletNwJ6PnWL133gSuCSurDc8RA8Np
	 1qLquqCakv3lF1ACXL9v4hOG0gC8Hx8qUVa/dUDB38od+ZcD9vRq5gFKJ652wM34hg
	 qeXg+lG+0EvakbhfebsF6SJF4IeWfI/21f8jszM5hZzFtD6UvAu+ai6MKFgzLa0L4k
	 GdOtmsL2EHun4gPQEvdCSOaj+NaAl47fA4H9qNPwWhJwCgKVy2GdFPZnp1/oC9cOpG
	 J1J6Gf33gCaMCw7yNNs3ex6p1wwV3PvlcS6WeFeu39HCptcPcTyX8Dzk0OVCyPNdq5
	 OvukrSYTj6btQ==
Date: Mon, 20 Jan 2025 14:25:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <fzca5b4fj2f4huzmc4pzvffk6hjdt4qy4ou6lgsezoa65t2c5n@k2awqwj7clx2>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
 <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
 <877c6pew1g.fsf@oldenburg.str.redhat.com>
 <247qglmeqmdb2mlb5ydyml64w5nthcej5mtuatzblng6wyy257@b44py2sqfhyt>
 <uny7uqsnkq4fem6yjsmfk2qqxox4suctzf7gclubf6ndynbkpo@tbu7jnxw5gq4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dfhj4b3esfgeqmcl"
Content-Disposition: inline
In-Reply-To: <uny7uqsnkq4fem6yjsmfk2qqxox4suctzf7gclubf6ndynbkpo@tbu7jnxw5gq4>


--dfhj4b3esfgeqmcl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
 <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
 <877c6pew1g.fsf@oldenburg.str.redhat.com>
 <247qglmeqmdb2mlb5ydyml64w5nthcej5mtuatzblng6wyy257@b44py2sqfhyt>
 <uny7uqsnkq4fem6yjsmfk2qqxox4suctzf7gclubf6ndynbkpo@tbu7jnxw5gq4>
MIME-Version: 1.0
In-Reply-To: <uny7uqsnkq4fem6yjsmfk2qqxox4suctzf7gclubf6ndynbkpo@tbu7jnxw5gq4>

On Mon, Jan 20, 2025 at 08:17:00AM -0500, Jason Yundt wrote:
> On Mon, Jan 20, 2025 at 12:14:42PM +0100, Alejandro Colomar wrote:
> > Hi Florian, Jason,
> >=20
> > On Mon, Jan 20, 2025 at 09:20:27AM +0100, Florian Weimer wrote:
> > > Character sets used by glibc locales must be mostly ASCII-transparent.
> > > This includes the mapping of the null byte.  It is possible to create
> > > locales that do not follow these rules, but they tend to introduce
> > > security vulnerabilities, particularly if shell metacharacters are
> > > mapped differently.
> >=20
> > Thanks!  Then, Jason, please use terminated strings in the example, and
> > assume a glibc locale.
>=20
> OK.  I=E2=80=99ll submit a new version of the patch that does that.
>=20
> > If one uses a locale that doesn't work like this, they'll have the call
> > fail because the converted null character won't fit, so the program
> > would still be safe.
>=20
> I disagree.  I don=E2=80=99t think that the code would necessarily be saf=
e if
> someone uses such a locale.

D'oh!  Agree, I was wrong.  Anyway, if one creates an unsafe locale,
let's say the warranty is void.  :-)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--dfhj4b3esfgeqmcl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOTrcACgkQnowa+77/
2zJ+Wg/9G+fQQu4TnNEWnj35ytQ1MHgezBS6jBrxruHNUjtpgKTB1rdLktp2EVI/
4HvfJL8ZOIgw99gwj6Sikmg9O4BCp4KfJLY1vTQ3e0yHAbAo21HAFW9EyDzH6fSU
CdqaRnzr/gzqnWXcwBvFcslutbJd43pkpFQoPDwA7EDxtcZiq1xKUaoAFlzqc/lP
3je3F/LmkEwc4VKlp5OPoTn9VGc+WXipMQqOQ8/PElPBW8RpXh8ZFJTWiPM0LuHQ
6Unc9xh1DKzsxPZVBcztUTXzfA7OqV23ZvGsLw9sI9FimoU4TJyHV0W0n4S76uZA
CUb3OUcV2uBj4ZA1x/ToRVsbOLVHJCtJ1e7Sz2PFP/AV22D2lNXYgHH5EdLnMuOs
61WPMyR9yBdn+si+6/Qkyx+xHRofKtCWbcW/Ofvo5QGXt9iupcAFzc13sq4ks13Y
bq81pgz8vPN0Joj0tWUnP0uTYDsQ38RAdx+EMWJQfYh17zNqlV8OyWmiLuDxmWxY
O5KpgtUp7woYlzdy9SLOTnr0xmxhuO9iNwu+O6R0CakCh3rnYcTptWRQzmX0/qex
Hk1T6JEBAiXsxq7VrJ1qWcpMstHJLWZpy8kuc8mQ3Vs2OgF+zjA0Bk/M5ssHD00q
Jln5kcGsDBQwV7xZ1VXR0BT4fohSul1knz5gzB6pHQgqldM3d4A=
=Is+a
-----END PGP SIGNATURE-----

--dfhj4b3esfgeqmcl--

