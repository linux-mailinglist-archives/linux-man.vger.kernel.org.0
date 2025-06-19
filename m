Return-Path: <linux-man+bounces-3177-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B73AE0691
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 15:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB7EB3A0349
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 13:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E44242D6B;
	Thu, 19 Jun 2025 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS41Hy06"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C5D78F4A
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750338706; cv=none; b=BD9S6Gfhn2JH510I2LJgdojsa9X3Mw9qPuAALFKtmM8AwsPEdL0fH44hKYmmqa1GsSk4Doa2B1gb9hIlaaHAEr4MH6bv++779jK1xpC4kFM32p+POnOoew8s55UEBfpxSntszHwYAhm3rUqJWOFasDgCRf4Uw0xf6bIKWxxSta4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750338706; c=relaxed/simple;
	bh=c8CZuhlvjYCFkN2uwkMbD+p7MJP4y5y+NCHjXpWtccM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VXhgbhzGbVnrgb1Im2akKHkYVjWUq6DHKEGt1fwnhZXEWVwrQdW8uUUf2Q0BAH8LXBDKY5LvvX408JaSCMWIU6WYYdegzhGisC2DWTNuK5xMZLBoQQstZBpaRpj9+CWSrt78+mvQ8hwkcX4sAhyEJL9aO1bkLC1la2maNHxqn9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS41Hy06; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EDB4C4CEEA;
	Thu, 19 Jun 2025 13:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750338706;
	bh=c8CZuhlvjYCFkN2uwkMbD+p7MJP4y5y+NCHjXpWtccM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gS41Hy06DeN3SOGSg5YtXJVtQ2FrHxGzfatgI6vNBZrwCXMMh56Cmdk8D3rBO0C5Z
	 bkDM6ZasTDDB5ufW0IaNXd1hl2vKPXbK13ih7AlsRW1Uj8DtIksJ/7nfwLEPyzveEL
	 ++KiwVeZTDi2kTeeq+k5npoKATBjGlc3bsEXceHhh7HZwNFOooSeRT8O9o8GtgeQQd
	 k3mZnBPKXUogksZkIneLwy8Gkm1qiZzeKJ9x1502hJLnzjPkLzZUev9R43lsTvOWL4
	 kb2p39EhHIgjO1kSnDroIuPOIcOzR0QkKecTFbKbKL2F1Dc3koOUks3AEGEwhddK/0
	 BF25mKkHVSiHA==
Date: Thu, 19 Jun 2025 15:11:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	musl@lists.openwall.com, libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <lb4cnscy5ftoxegnxzyeuceh7js2vi3nxqm5lx76jvj2ekuupl@lw7jtghjyfqy>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
 <jf5jralawp5lmjqcdfqf2jblg2z43vjbkdx3eapjumjsccw6yv@pzm2cxgfnpw3>
 <20250619130449.GF1827@brightrain.aerifal.cx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zf67g3rrmem7gq4b"
Content-Disposition: inline
In-Reply-To: <20250619130449.GF1827@brightrain.aerifal.cx>


--zf67g3rrmem7gq4b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	musl@lists.openwall.com, libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
 <jf5jralawp5lmjqcdfqf2jblg2z43vjbkdx3eapjumjsccw6yv@pzm2cxgfnpw3>
 <20250619130449.GF1827@brightrain.aerifal.cx>
MIME-Version: 1.0
In-Reply-To: <20250619130449.GF1827@brightrain.aerifal.cx>

Hi Rich,

On Thu, Jun 19, 2025 at 09:04:51AM -0400, Rich Felker wrote:
> > > n?:1 is a GNU extension:
> > >=20
> > > warning: ISO C forbids omitting the middle term of a =E2=80=98?:=E2=
=80=99 expression [-Wpedantic]
> > >=20
> > > with gcc -pedantic -std=3Dc23, and such code should not be given in
> > > examples (as a workaround should still be valid for portable code).
> >=20
> > Hmmm, I guess I can write it as n?n:1.
> >=20
> > I'll write a proposal to standardize ?: in ISO C too.
>=20
> That still doesn't make it appropriate to recommend in a man page for
> people who will be writing code mostly to non bleeding edge (some even
> C89) versions of the standard.
>=20
> Examples and proscriptions should be minimally fancy, not using new or
> clever things unnecessarily in ways that could break or just not
> immediately be understood by the reader.

Yep, I meant that as a side note to address the fact that this is non-
standard.

I've changed this patch to use n?n:1 as said above.


Have a lovely day!
Alex

>=20
> Rich
>=20

--=20
<https://www.alejandro-colomar.es/>

--zf67g3rrmem7gq4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUDIgACgkQ64mZXMKQ
wqmaDBAAi2icMeUEh5f4wQ265ikw896rTrL6taY+ScONxzf8rO8RuOw/y62dC+2t
uBgeIkZumD51djgW8K7zg5BCIFyf0X4EvIt9uocVDcXryLBTQvi4tYTtrjTTn/kD
NfKjnS2xxkE1msAq/figNhS7paEhmtZ/nt2EE1hrtdym5rJLxQnUR1VYF7ezUf2P
a4/FT/K5mbej2/BL7Kkle4NC4oapMjuLIhGLtXmHpc1YhWN7cBomjvuUJFTGY2rm
1opwfvADjUCLCiVqhD7UP3gBs1horvudWfWjpZRdYk0Fk++0y9nUFbi4G9Lp5poU
GCqgyyNmCsGoXHms11mVJxVac1z+/GECGmKuGMZIBOK1WL3+mXLaUjTqdztMa33B
EdQcO38bwNd9Gp32ggkKvZUB7YtkK2nFTitqBCXxXn3LVtAN+uGUdeLoXhWp+O3y
p6PXF0JdRBPtJk0K3oEuJo21MjuIOerAEiiqagJCj7nPPJi6tKgwvD0cxeSHsSS3
9EbZ6RfS7Ctb2gEslo/LTAF1E00np042gwP1X7Yb1/esd8lLEnfdWD8AFYnusG7v
QaiWcartXFpXWYpl2Bk0Cc0cg1hpc1Yv+XR556Gyb0tehhrvtlQ5NZOuzRTIwrBT
5qJPStd3FNjHYhfDgi+3MOaSlXFx4lfWP666MU5wOkEOlHP0E8Y=
=2UTg
-----END PGP SIGNATURE-----

--zf67g3rrmem7gq4b--

