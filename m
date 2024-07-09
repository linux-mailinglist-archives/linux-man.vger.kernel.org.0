Return-Path: <linux-man+bounces-1386-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BD192B7DD
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 13:28:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 772CA2854D5
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 11:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33924146D53;
	Tue,  9 Jul 2024 11:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGp8pLCu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E923F27713
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 11:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720524488; cv=none; b=AxWZUM63eJz73qqmTe9V6CJqI+3FwlJtb4UBSgX5yUAIde6f5YFgE4CujVi8kHpaMcUU02ADFAbkTm5oW0AhG6GNhU3HdTA4CL3XQZl65Rx243hVjlzXOaPOAFKcRgQgbqQ6dEOMrbIfPpbFG288LkuQ7J+duUu4cw2IDkf3GMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720524488; c=relaxed/simple;
	bh=jXzUAoTZERWgxb7gJ8W/IcS9v0UKCapQQ8hGPh1+dL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+/KGoZlVRte3fqrLtBaQHcRQwilORwkjGoiLzGDHIHAGZlUhUo2MUGgnCGAdcLs2bg9KMqitBaOJJOCMhq43FV5I3/nZxaFW2KlRdbPFU6mTNygFZqW2rnYn4A6i9KIXE8ml5VcuxPtQpuoSsshdJ31HVMnd3YDOWgeh8AQqw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGp8pLCu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C997C3277B;
	Tue,  9 Jul 2024 11:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720524487;
	bh=jXzUAoTZERWgxb7gJ8W/IcS9v0UKCapQQ8hGPh1+dL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FGp8pLCuDjb30J+N5c7ZaMhO110C3zyvamJ/JBcNakwkUI/P2z64GvDVSEY+0z1qB
	 TwqcwG2oaJG8PuuY7cvg+4xAvCZVtRWIJO+TZospLc0cYo6b1YF1vEEAqx6KH/qXoN
	 Nk9guE5qTjyXr7SVZ6hNSr8CwUNNBqL23SIFmroz/FaeRgpaaEDhGxzckIW/f/2adi
	 OBkLRKRKt4XEzpP0g5ms+H1m3E6r6DnGv5t5U9C38a+Xiu8zaTB2zjbzx6y9xN+C9g
	 0dUsvnQ2znBImIMwkCmrOBf3V37Dx8Gl3U1P7pXzKF/LSeyaDkWuOvsbIssAHFowwy
	 7623MZAjYgL/A==
Date: Tue, 9 Jul 2024 13:28:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Jelinek <jakub@redhat.com>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <ay7gaojppezwn5ezuwxljwbu72jg7uatglf33menlkzrlwjqwm@fursc5irytit>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
 <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
 <Zo0AU/3YFNIeEELE@tucnak>
 <blfqp47wjycet3bwsisallosmkzfvp4tvcr3udpyne4dsjbw7x@ysheym7kkowr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qtqlnxlzrwpi25ih"
Content-Disposition: inline
In-Reply-To: <blfqp47wjycet3bwsisallosmkzfvp4tvcr3udpyne4dsjbw7x@ysheym7kkowr>


--qtqlnxlzrwpi25ih
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Jelinek <jakub@redhat.com>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
 <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
 <Zo0AU/3YFNIeEELE@tucnak>
 <blfqp47wjycet3bwsisallosmkzfvp4tvcr3udpyne4dsjbw7x@ysheym7kkowr>
MIME-Version: 1.0
In-Reply-To: <blfqp47wjycet3bwsisallosmkzfvp4tvcr3udpyne4dsjbw7x@ysheym7kkowr>

On Tue, Jul 09, 2024 at 12:28:18PM GMT, Alejandro Colomar wrote:
> Hi Jakub,
>=20
> On Tue, Jul 09, 2024 at 11:18:11AM GMT, Jakub Jelinek wrote:
> > On Tue, Jul 09, 2024 at 11:07:59AM +0200, Alejandro Colomar wrote:
> > > Yup, I was thinking that maybe noalias is a better name.
> >=20
> > Name is one thing, but you'd also need to clearly define what it means.
> > When restrict is access based, it is clear what it means.
> >=20
> > If you want something else which is not based on accesses and which sho=
uld
> > allow warnings in the callers, I suppose you need to specify not just t=
he
> > pointer but the extent as well (and maybe stride) or that it is an '\0'
>=20
> Agree.  Here's how I'd define it as an attribute:
>=20
> noalias
>=20
> 	The noalias function attribute specifies that the pointer to
> 	which it applies is the only reference to the array object that
> 	it points to (except that a pointer to one past the last
> 	element may overlap another object).
>=20
> 	If the number of elements is specified with array notation, the
> 	array object to be considered is a subobject of the original
> 	array object, which is limited to the number of elements
> 	specified in the function prototype.
>=20
> 	Example:
>=20
> 	[[alx::noalias(1)]] [[alx::noalias(2)]]
> 	[[gnu::access(read_write, 1)]] [[gnu::access(read_only, 2)]]
> 	void add_inplace(int a[n], const int b[n], size_t n);

Ooops, I meant 'n' to be the first parameter.

>=20
> 	char arr[100] =3D ...;
>=20
> 	add_inplace(arr, arr + 50, 50);
>=20
> 	In the example above, the parameters a and b don't alias inside
> 	the function, since the subobjects of 50 elements do not overlap
> 	eachother, even though they are one single array object to the
> 	outer function.
>=20
> It may need some adjustment, to avoid conflicts with other parts of
> ISO C, but this is the idea I have in mind.
>=20
> > terminated string, because if you want to say that for
> > void foo (char *, const char *, int);
> > the 2 pointers don't really alias, the size information is missing.  So,
> > shall the new warning warn on
> > struct S { char a[1024]; char b[1024]; } s;
> > foo (s.a, s.b, 512);
>=20
> This does not need clarification of bounds.  You're passing separate
> objects, and thus cannot alias (except that maybe you're able to cast
> to the struct type, and then access s.b from a pointer derived from
> s.a; I never know that rule too well).
>=20
> > or not?  Or foo (s.a, s.a + 512, 512);
>=20
> According to the definition I provide in this email, the above is just
> fine.
>=20
> Thanks!
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > 	Jakub
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--qtqlnxlzrwpi25ih
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNHsIACgkQnowa+77/
2zLu9A/+Kk0pFs6PImEUf3SRGrBdIfr5isBZaj/JPBNvZRrW3RS28zHKrliySFOb
KFKOw7+TG1fMu3zz0vdZVAe/CQ/dZDu57NgvPhiw6adWHWP4g5Zxp91lSaC6V+Yn
Shkxpj1rq2RLc6Czi0gXfaZWpf/WxzZC9N9TTBTQxKvGHPVMo22zIKZWYAI349n0
bwH0xuAQay+OkAW5ucXV6lJgt5b9llWXnvqyLyXzhhav95OKW149irivFKzm8uK+
cax4gDv8p+IjZfhnrnadsSAuYJezr5e6/91ZvgyZ4PKQTg++KlF2ozmmfMKmZoym
la7vf29SuVYCnyVjdj0KerFKCgflO/TmSPoxDvPhQvX9FdH6wT60jEXDvtWQ1Afb
KRS16+9qvPwWzbCjZowpo5iBS8Tnu/8Pkrea4EeiotAVM7AGWmdVsef+/2sa9BTr
AmuM/9i3qnsRfzLwwQWvoS6hF0qqsXY8Uktn5t6Jx82nZ7oqiDDEUC6X2wTyQX7M
hUQJRi//s1gu/RLM42PxzwME4XMppmoNudtT89HGMi6AGJsEXCmJq+JM4WxHODYz
I0hRRkn/qr54rRB80W9d9e4MoV62WecB0Y80+BNFgxbLhoe5yPe+tU7Dqo9buSzb
WlIVAKDQziI0uacLqaktAAwvFiLk+wjOsFHns69hIx3BpVFIURk=
=vnRi
-----END PGP SIGNATURE-----

--qtqlnxlzrwpi25ih--

