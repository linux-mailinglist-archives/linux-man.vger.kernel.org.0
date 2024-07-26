Return-Path: <linux-man+bounces-1529-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EF093D992
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 22:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 425EF1F23729
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 20:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D911448CDD;
	Fri, 26 Jul 2024 20:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpRs5baz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BDA1F5E6
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 20:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722024665; cv=none; b=q/4xTHwUw274XIOLKB81feqljDhKjpXNxbQ85mf/KcP2uozy4O60KaRG+o+p9D/9M7pgjRux6VqXQ4SMP4zbbrozgRg8jZ0wA4K+BoEYvROgAZuUoL75pHam9G86aOGUwVvbXt7TZqxI+/oJRpiHgubjYRY20q7//A/IgsxcEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722024665; c=relaxed/simple;
	bh=qo1ZNEb5CasR1F/DYL2I/tkqXA91kaPlrHl3fFwWfOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmol+J5itpoE8puMJej9h49SrUln62bMYL17zJQoPNDelHqetBPZJK8lc35i3fS+XzlfoE3Xt49TUHs0kOvFyfAiattiefWGwNWsMEt6hA9VvZKqdkItOjPA+57pBIo+vv4XB4HHG4HY/GrqOTcaJ8Jp+2pj7oSQui8VVOU1+rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpRs5baz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42E95C32782;
	Fri, 26 Jul 2024 20:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722024665;
	bh=qo1ZNEb5CasR1F/DYL2I/tkqXA91kaPlrHl3fFwWfOc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YpRs5bazZeRZjfuHB4M9bTgD0obQmtb+ZfjcMj8a3+2nJtT4D7jn5OK9nt0YUzHph
	 QuHZaGytsy/EDmHcpZsluYNG3lUk0MWbIekEn3wArho4OTyqPkhQG/2vYimlE5xFGT
	 aJWodVEV+W/ClmkD/IjB58Gd4jW/w46ivNX3QKK2Vw0LMfA+ehos+o+rQTXCUYRI7h
	 AfioW496Vd8MTwlQNwFbTmKUryYlcej2HGlOEpqcvzxeJDwwv4gRza46Es+PkK0dh0
	 61yJdUCvnwhBLlcCgo0secik/wDI9puakcUADdMZyxQ0xJpsNa4dgNs8lUj0evhvOZ
	 FJfzwS8iSuh4g==
Date: Fri, 26 Jul 2024 22:11:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7qsc4thbraqogxrs"
Content-Disposition: inline
In-Reply-To: <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>


--7qsc4thbraqogxrs
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
MIME-Version: 1.0
In-Reply-To: <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>

Hi Joseph,

On Fri, Jul 26, 2024 at 04:24:14PM GMT, Joseph Myers wrote:
> On Wed, 10 Jul 2024, Alejandro Colomar via Gcc wrote:
>=20
> >    6.7.13.x The restrict function attribute
> >      Constraints
> >             The restrict attribute shall be applied to a function.
> >=20
> >             A 1=E2=80=90based index can be specified in an  attribute  =
argument
> >             clause,  to  associate the attribute with the corresponding
> >             parameter of the function, which must be of a pointer type.
>=20
> It's more appropriate to say "shall", and you need a requirement for the=
=20
> pointer to be a pointer to a complete object type (it makes no sense with=
=20
> function pointers, or void).

I don't see why it should not apply to void*.  memcpy(3) should get this
attribute:

	[[alx::restrict(1)]]
	[[alx::restrict(2)]]
	void *memcpy(void *dst, const void *src, size_t n);

The index to which the text above refers is that '(1)' and '(2)'.

>  That is, something like "If an attribute=20
> argument clause is present, it shall have the form:
>=20
>   ( constant-expression )
>=20
> The constant expression shall be an integer constant expression with=20
> positive value.  It shall be the index, counting starting from 1, of a=20
> function parameter whose type is a pointer to a complete object type.".
>=20
> (That might not quite be sufficient - there are the usual questions of=20
> exactly *when* the type needs to be complete, if it's completed part way=
=20
> through the function definition, but the standard already doesn't tend to=
=20
> specify such things very precisely.)
>=20
> >             (Optional.)   The argument attribute clause may be omitted,
> >             which is equivalent to specifying the  attribute  once  for
> >             each parameter that is a pointer.
>=20
> For each parameter that is a pointer to a complete object type, or should=
=20
> there be a constraint violation in this case if some are pointers to such=
=20
> types and some are pointers to other types?
>=20
> >             If the number of elements is specified with array  notation
> >             (or  a compiler=E2=80=90specific attribute), the array obje=
ct to be
> >             considered for aliasing is a sub=E2=80=90object of the orig=
inal ar=E2=80=90
> >             ray object, limited by the number  of  elements  specifiedr
> >             [1].
>=20
> This is semantically problematic in the absence of something like N2906=
=20
> (different declarations could use different numbers of elements),

Agree.  I think arrays should be fixed in C.  n2906 is a good step
towards that.  Thanks Martin!  :)

BTW, the author of n2529 didn't follow up, right?  I'd like that in, so
I'll prepare something after n2906 is merged.  Martin, would you mind
pinging me about it?

For what this [[alx::restrict]] proposal is concerned, I'd wait after
n2906 is merged for proposing that extension.

> and even=20
> N2906 wouldn't help for the VLA case.

I'd basically propose that [3] or [n] means the same as [static 3] and
[static n], except for the nonnull implications of static.  Is there any
such paper?  I'm interested in presenting one for that.

Maybe it would also be interesting to wait after n2906 for that too.

> >      [1]  For the following prototype:
> >=20
> >                  [[restrict(1)]] [[restrict(2)]]
> >                  void f(size_t n, int a[n], const int b[n]);
>=20
> That declaration currently means
>=20
>   void f(size_t n, int a[*], const int b[*]);

Yeah, that should be fixed in the standard.

I'll keep that extension of restrict out of a proposal until array
parameters are fixed in that regard.

> (that is, the expression giving a VLA size is ignored).  It's equivalent=
=20
> to e.g.
>=20
>   void f(size_t n, int a[n + foo()], const int b[n + bar()]);
>=20
> where because the size expressions are never evaluated and there's no tim=
e=20
> defined for evaluation, it's far from clear what anything talking about=
=20
> them giving an array size would even mean.

Yup.

> I know that "noalias" was included in some C89 drafts but removed from th=
e=20
> final standard after objections.  Maybe someone who was around then could=
=20
> explain what "noalias" was, what the problems with it were and how it=20
> differs from "restrict", so we can make sure that any new proposals in=20
> this area don't suffer from whatever the perceived deficiencies of=20
> "noalias" were?

As I said in reply to Branden's response, it seems Dennis's concern was
that the noalias proposal was a qualifier, which admittedly makes little
sense (very much like the problems restrict has, but applied to the
pointee, which makes them much worse).

That in fact led me recently to think that an _Optional qualifier
(similar to Clang's _Nullable) as is being proposed at the moment in
n3222 is similarly DOA.  Those qualities of pointers are attributes,
which cannot be specified in the type system.

Have a lovely night!
Alex


>=20
> --=20
> Joseph S. Myers
> josmyers@redhat.com


--=20
<https://www.alejandro-colomar.es/>

--7qsc4thbraqogxrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmakAs4ACgkQnowa+77/
2zJDuA/7BVWnM668KlL3CdCE5g+zJKcAgHzR1cupQC84QvnnZHG7oXSx90zmvTeX
x5LD2m/lRPNV40DQB4YyyZQdvWpKx6goE1N9Ls/Ben0eqkzxYfQ8CL+cusqCpM65
KhKb5p1s3bmsr38tq3yH+0hBXfPxFQMcWq2EShAy6OhoQTmRRve7Y0eAiHUsZS5p
O9pDieRy4yYlmTtjLV//hIpKKXKQDQ/MKdmaNdK4xAx6d3A1aot4LSeTO6l9qyks
+g3pPButJpSKJ915gttnttYIctts0NferLw0DEFUIIe5MfYKfqjbO81TXUlqMe4r
qYBSUf4yaKlRQH9tGp5+LCzI8nW3853u6PrHyR31W1a0A1BJZlRvm5fytZEAk3hx
i3c0e7Ex/R3BJmxRGzMWb1Qm/gjysIIOR7T0scygPV5pWph0MRvkZYQk1JX/AnYU
HKdfcjBZydpX3pvwsfJ0wdnryMYnZKqCSJ4g1gk0aVvQKStN1/EyQtxTJP2GZxMM
zYvQ0YmD35Phg2AROLbIIEt/VgerpeizG0mb+8+ILN6m95wwGFMFKo1j+wfX9aJK
MSkhtzZoTvg38nBKyYmKjdZirZWVQDwSrJ1IHB1mJ7lYh2kDOUOi39xKH5q2mVmd
EdGrSJtGm5bCqlz0ZzRmzu3NEKtEj+2oRLje+HMtbXZR9W7ck80=
=uKyy
-----END PGP SIGNATURE-----

--7qsc4thbraqogxrs--

