Return-Path: <linux-man+bounces-1348-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4E9928F2A
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 00:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BEEA1F23BBD
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B51713F432;
	Fri,  5 Jul 2024 22:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNdMqb8v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9121F61C
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 22:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720217080; cv=none; b=VoH78s8pue7FPK8yOAopLqISST2cIgd1r1lC+m0w/1OBziICVTjlLSIRVbXKsfeq7MnMk00FrcrJ1XJmlkkOhszy4ye+J/xDzzzGEGbQ9bsDElMXa9zwDxftstMCUkXHbxR3TrT4+1IqYrgJwvzv3b2BtTqI9DEEWssNg3YivOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720217080; c=relaxed/simple;
	bh=IANTMWPi6+pparVFV31B13CG4uqU4Pbru7jXFbqG8QE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8HRlGXKIxdCKtJjtQgJUfxRDMJbXjkJ/ihktTyhHSRV031eGQM5QBfZ2Eb+AksDF1HXqcjp/I3zff59qm25Qyo1RZlrg8NmhsEm3CrldPHNr9wTKVUpDObbXQhwOuT/1V6qaQF25BvexQthK30dgoBSzagiCxLWWzYOonXA5uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNdMqb8v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D015C116B1;
	Fri,  5 Jul 2024 22:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720217079;
	bh=IANTMWPi6+pparVFV31B13CG4uqU4Pbru7jXFbqG8QE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PNdMqb8vXYUCBXx4g1cbNJn/6wPAsskKdo5oNfnSfD2Ch6l0jCyxh5TKPv6WPmAOY
	 YVk7fH/e+xwQHA7N++G4vXfs2YjjLb0IRZ08lZ0wrdCimFe0VbJSWKPP53XkVnVlvO
	 wvFJH8mw2YXwRgxSE0Cx9yCG1K0bW344xTtOTMKvHC245rgtGixdJ+QoA3qPrvJ35Y
	 g9O5OUlON9qZxyppRwEetFvUpWtvNVaRzD9VZ8jhZcwMKImvokcfAAuCgewEa79BHr
	 VuS3RiaUfNXoddO34AzOLEKyNbjjlplvI2yw93m1BDSQzAKoMLcKSxKdnWNkRGA6/E
	 iYL7ZW7u753Dg==
Date: Sat, 6 Jul 2024 00:04:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <klukbcgpq4cp4gec3xovfsetdfczpiouhwmbwcnsn7m4hygvns@vk6gjfv53wks>
References: <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zquapd4xkuhzhch3"
Content-Disposition: inline
In-Reply-To: <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>


--zquapd4xkuhzhch3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
MIME-Version: 1.0
In-Reply-To: <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>

On Sat, Jul 06, 2024 at 12:02:06AM GMT, Alejandro Colomar wrote:
> Hi Jonathan,
>=20
> On Fri, Jul 05, 2024 at 10:39:52PM GMT, Jonathan Wakely wrote:
> > On Fri, 5 Jul 2024 at 21:55, Alejandro Colomar <alx@kernel.org> wrote:
> > >
> > > On Fri, Jul 05, 2024 at 09:28:46PM GMT, Jonathan Wakely wrote:
> > > > > If we marked endptr as "write_only" (which it might already
> > > > > be) then a future warning mechanism for -Wrestrict could
> > > > > ignore the content of *endptr.
> > > >
> > > >
> > > > That seems more useful. Add semantic information instead of taking =
it
> > > > away. If the concern is a hypothetical future compiler warning that
> > > > would give false positives for perfectly valid uses of strtol, then
> > > > the problem is the compiler warning, not strtol. If additional
> > > > information can be added to avoid the false positives (and also
> > > > possibly optimize the code better), then that wouldn't require a
> > > > change to the standard motivated by a hypothetical compiler warning.
> > >
> > > Let me be a little bit sarcastic.
> > >
> > > If so, let's take down -Wrestrict at all, because it triggers false
> > > positives at the same rate.  How is it even in -Wall and not just
> > > -Wextra?
> > >
> > > Here's a false positive:
> > >
> > >         $ cat d.c
> > >         int is_same_pointer(const char *restrict ca, char *restrict a)
> > >         {
> > >                 return ca =3D=3D a;
> >=20
> > This is a strawman argument, because all your example functions have
> > been pretty useless and/or not good uses of restrict.
> >=20
> > Yes, if you put restrict on functions where you don't ever access any
> > objects through the pointers, the restrict qualifiers are misleading
>=20
> That's precisely the case with strtol(3): it doesn't access any objects
> through *endptr, and so that pointer need not be restrict.
>=20
> Then, nptr is a read-only pointer, so is doesn't matter either if it's
> accessed or not.
>=20
> Let's say we add as many attributes as possible to strtol(3):
>=20
> [[gnu::access(read_only, 1)]]
> [[gnu::access(write_only, 1)]]

s/1/2/

> [[gnu::leaf]]
> [[gnu::nothrow]]
> [[gnu::null_terminated_string_arg(1)]]
>  // [[gnu::access(none, *1)]]

s/*1/*2/

> long
> alx_strtol(const char *nptr, char **_Nullable restrict endp, int base);
>=20
> Let's say we could mark *endptr as a 'access(none)' pointer, since it's
> not accessed.  Let's say we do that with [[gnu::access(none, *1)]].

s/*1/*2/

> Then, do you think the information of that prototype is any different
> than a prototype with restrict on the remaining pointers?
>=20
> [[gnu::access(read_only, 1)]]
> [[gnu::access(write_only, 1)]]

s/1/2/

> [[gnu::leaf]]
> [[gnu::nothrow]]
> [[gnu::null_terminated_string_arg(1)]]
>  // [[gnu::access(none, *1)]]

s/*1/*2/

> long
> alx_strtol(const char *restrict nptr,
>            char *restrict *_Nullable restrict endp, int base);
>=20
> I don't think so.  Since *endptr is access(none), it certainly cannot
> access nptr, and thus the qualifier on nptr is superfluous.
>=20
> And even without the hypothetical [[gnu::access(none, *1)]]:

s/*1/*2/

>=20
> -  The callee doesn't care about restrict, because it doesn't access
>    any objects via *endptr, so it certainly knows that nptr can be read
>    without any concerns about optimization.
>=20
> -  The caller can't know if strtol(3) accesses *endptr, or nptr, and so
>    it can't optimize.  Unless it passes an uninitialized value in
>    *endptr, which means the caller knows for sure that nptr won't be
>    written, regardless of restrict on it or not.
>=20
> Please, describe what's the information you think is being added by
> having restrict on nptr, on how it would be lost if we remove it.
>=20
> Cheers,
> Alex
>=20
> > and so compilers might give bad warnings for your bad API.
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--zquapd4xkuhzhch3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaIbfMACgkQnowa+77/
2zJACw//Wdu+7h3izizmBkW17mpeUkuVqAG3IStLcgxwm7FZOw2gHvmjNhnZgRoI
awpNhPwMODMTH9Y/Blvik1f6G4TZcaIbMwwcAr10wZUIl+zuYu7+jXrYsA5RRjx/
Pk/dFm9PzPC4/bMhDZqrIWy0NSKvkHCq4Eo0Ww1IAD3LSnLlFaUb2K4XMmxD0xBg
MomANmkigtMtE4pAk/nB6WMdlMt0+PNaAI2LCjYXlCpNvL9BZsgEHqoaVIROrW23
8DkVjmG0IVCU1UWXmYSiRwzAF6ZFMx7E7ZS0cUrUiMFBAZUI9tkCPtQSd4Bwzsmi
lc4D4h7cXJ/0wjbrznmMNeGH4+3CRLdlFEzbyeQBtGeFu8p4nPiI4JpWwZqwS5J7
Qf9Fw+cYlwFyDl3e3MdGYC8jGP6q9aUyg4k9U+vF6zkWaPxUiR99t6qOO3864crX
iJvGB/cBlhccg4sRz3Fj7dUTe4VCaL6ryWeO9MHfRgLg0AmN1eV8udNZEr/m7k7d
HI2SDmJ1EKyD+Vk6LXHTEAZ24VDkI7uW4fErf4UDDZaXpjtM2qDDBrIw7rLONepx
+05hGca93Coke+qvxUMo20kgWzvij1UeeJy60m7QQIG5ACtxpUyLkV7xZXKS/dQe
vCb9wReiW8cFxE+Ehl2X9wx/6AsEIk7bK4h24zPBmImGx3KdytI=
=Y7yv
-----END PGP SIGNATURE-----

--zquapd4xkuhzhch3--

