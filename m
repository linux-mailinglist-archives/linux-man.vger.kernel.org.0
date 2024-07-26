Return-Path: <linux-man+bounces-1533-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFE893DA45
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 23:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F17821C2335F
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 21:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 188BD13A40B;
	Fri, 26 Jul 2024 21:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fd448i7v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B2D28DCC
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 21:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722030586; cv=none; b=F/W06P3Rny7gm8ULgyOS/oIIZzGiiQ3R9hVxsH+F3DhGY9asZ7L2iEMNO6T7Bq/jvx9vTWqOmeu/9iev5BKtPXxifxKNAuWwfRbPpkuErBQlvkn0z4vHbf5rfnvqc/6EIxohsM28/mVnoauYlMb0dsepXiQ0bBfrNUKhNmloz0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722030586; c=relaxed/simple;
	bh=28rGbs5gnCOPb7NeVvOelfTeFOamz5WX/A2wdCOXmhg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jRvhLcrQak2EYB+yN6ozwL7Fwlb6ujJEVqh3eY+vkEI6JTyAYR5BXx/cxvo9YlZOJGv4ClPiHVjTCT6lntSuf1/GRLj/4qMLzuD1PJi45VynvP6acvo9mvN578hOgTPz80s8CANSl5OSb4NaCcKlqBfARTGMh3j6+zx0wC4Eo2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fd448i7v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4896C32782;
	Fri, 26 Jul 2024 21:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722030585;
	bh=28rGbs5gnCOPb7NeVvOelfTeFOamz5WX/A2wdCOXmhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fd448i7vnjpbvrHOYOqqSzj7EeWXCIEIHQNMc24Rl1cOz9iB6BOda7wtPn24KsloE
	 hM/Jh6+D3o49XkeU0hm0H7BS8GdPDbQiUVKUF0sy092ZdLAw3DjkazmZob3+MrlvP3
	 PB6q1BJnuye6/8px6PZoHppZTWFNHLrXvKYI2BLTtDPFiseS6AexmB95t3dTHtkGXB
	 2h6hhTy6/gKqDTFnpR8Tav7IFknx379MieJkUpZTyiB6i521FdvvCdM7gL0cWMLJqK
	 lVL1wTVcYYnC0TJrapyh7eo+ZQvD8v7r/7ogXBTS5C9eeAGqz94gPxgZ1BCAru9d1H
	 ffDqyQQugMgzQ==
Date: Fri, 26 Jul 2024 23:49:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fy3xhuoez2ve6nls"
Content-Disposition: inline
In-Reply-To: <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>


--fy3xhuoez2ve6nls
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
MIME-Version: 1.0
In-Reply-To: <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>

On Fri, Jul 26, 2024 at 09:22:42PM GMT, Joseph Myers wrote:
> On Fri, 26 Jul 2024, Alejandro Colomar via Gcc wrote:
>=20
> > > See reflector message SC22WG14.18575, 17 Nov 2020 (the former conveno=
r=20
> > > replying when I asked about just that paper).
> >=20
> > Where can I find reflector messages?
>=20
> https://www.open-std.org/jtc1/sc22/wg14/18575

Thanks!

>=20
> > And another one to propose that [n] means the same as [static n] except
> > for the nonnull property of static.
>=20
> I'm not convinced that introducing extra undefined behavior for things=20
> that have been valid since C89 (which would be the effect of such a chang=
e=20
> for any code that passes a smaller array) is a good idea - the general=20
> mood is to *reduce* undefined behavior.

While [n] has always _officially_ meant the same as [], it has never
made any sense to write code like that.  Unofficially, it has always
meant the obvious thing.

Maybe if GNU C compilers (GCC and Clang) add it first as an extension,
adding diagnostics, it would help.

Does anyone know of any existing code that uses [n] for meaning anything
other than "n elements are available to the function"?

Functions that specify [n] most likely (definitely?) already mean that
n elements are accessed, and thus passing something different than n
elements results in UB one way or another.  Having the compiler enforce
that via diagnostics and UB is probably an improvement.

Cheers,
Alex

>=20
> --=20
> Joseph S. Myers
> josmyers@redhat.com
>=20

--=20
<https://www.alejandro-colomar.es/>

--fy3xhuoez2ve6nls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmakGfQACgkQnowa+77/
2zLNLBAAgeijgSiL5oLidzBYrDvGcamdX/3LzEKZj1rck3DlzFD03YPvkXkQMVoC
x9IvzcIB1wkH41F1MVuGFphFMK+aOYtePkWBEsI1kK78yXpY9zmXJbOzlrGo0iKB
DG7gV6A0/VW6rGDXOYD3sR0Vrexw0YkxZixp3mQVZR7cddEhBj97XtKn0nEc8ltC
Y1CUVZ62m6bD3uQ06Yp8RT9obpjQo6ps5j9j1sWsRb+pNA6kx2/tRH9/EDVsiBoi
55fAGh7v6mwuVgvT3SOGk6YvuBmz9DkQYobzw5jD+FNlsCjYWqGcKkeQa2g4FmPn
nQlOIh5lyfAuuOibWBZqJEwwnneJ1DNhv9mUtogackKA7AtwPpBHzNM50/v8Ex4b
DNHmFjJZK4s8Bml1nSWD4BYPw4fagZX91xV6+ts++bc5/uYGOYGBuJcuCAX8yK0S
5Tt//+p8r7t1WO6GdXYU4+xS+AsUn6wTnWiI7i13K27XYAneghHpMWmaouec5xab
QF8kdIsyeHcnT6g49jb/9ph5zOVxdeI0aXCYjl6uQziFyJ9zoFtzB2Z9aiAUIv5o
CniJAOxQ+SDVQWziF/0h+eBE1xHyTboc9GhJrz3QW6nsBGbvyvJZ3YYb2JBXcMRG
dQCLUNh52NylNdeIileGx8vPR6KShSnx4NMriMNRqdLVYlndduM=
=XKuc
-----END PGP SIGNATURE-----

--fy3xhuoez2ve6nls--

