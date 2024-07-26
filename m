Return-Path: <linux-man+bounces-1531-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBF693DA1A
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 23:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F986B220A5
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 21:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E6B5674E;
	Fri, 26 Jul 2024 21:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur7kUsbF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA7E111A1
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 21:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722028497; cv=none; b=sGRofYNC+zN3Dx/syLGStNrBga9BLlLfjxZSrrjI464ufXuBBB1PWX09J9bPFEg7Hp0sbLrkWzH36xN+3bDfxxwjK8WHzxGlfkcMDRyl/864JRhMEO9+CiCGKRkr0UQdvmjsaTtistlqJvJcY18oApi4PDA17A1Kkp82GBfQlhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722028497; c=relaxed/simple;
	bh=OinK/FqxBYmlYPivYVanUpBFV/MPvdKcZt8ZpGZJm8o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WQHM23xLVjfle06wnebQdJAcUyU/FlNC5z50oe8+ce289D3OO6lVQ4xtPQmGQ+dE85k8DLKkVpOJmFnN6ZiGsqpLOTf4bptw/1122eyTKKWBl/AsWaOYA1pe73JCgGqkNcUu9sOSk62r2OLWfEuGeM1ySfcPEfCoRz913ifmVH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur7kUsbF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8567FC32782;
	Fri, 26 Jul 2024 21:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722028497;
	bh=OinK/FqxBYmlYPivYVanUpBFV/MPvdKcZt8ZpGZJm8o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ur7kUsbFimPsEveAH0gMIhCIN/TNogAMyMSM5dh7CH8LV6xZ7o055NWpmhXXIQHbt
	 TH9UbosfzcgeBekl717uNu06dq/30GxVUpNcJXfNTY5zXvKTjZEMxB/PSLxnHDjoLy
	 mdttDD0dot1e0wxcMFaQjCheexgorpd60Didq77uoQKeeQuP9rBQy8nZKZypIK2RwH
	 XTuLeUzIYi0aHBsnVffHwa4bFsxwPYTNIbsnEDRB9Hu5X4dP3L9VNOw7LBdkXTsPAU
	 REyykyrqZqLw6PB8YoBMhuCRXclqsTpjCy9+3xpp19s0fEWHWIwDDAM4+s13/8KCTU
	 iH/Vv7d4QiSbA==
Date: Fri, 26 Jul 2024 23:14:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, uecker@tugraz.at, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fs7ii5hyicoxvrqx"
Content-Disposition: inline
In-Reply-To: <48bf010-43ec-6761-13b1-55864296a90@redhat.com>


--fs7ii5hyicoxvrqx
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
MIME-Version: 1.0
In-Reply-To: <48bf010-43ec-6761-13b1-55864296a90@redhat.com>

Hi Joseph,

On Fri, Jul 26, 2024 at 08:30:33PM GMT, Joseph Myers wrote:
> On Fri, 26 Jul 2024, Alejandro Colomar via Gcc wrote:
>=20
> > I don't see why it should not apply to void*.  memcpy(3) should get this
> > attribute:
> >=20
> > 	[[alx::restrict(1)]]
> > 	[[alx::restrict(2)]]
> > 	void *memcpy(void *dst, const void *src, size_t n);
>=20
> That would disallow copying between disjoint subarrays within the same=20
> toplevel object (and there's no way to specify an array size for void *),=
=20
> which hardly seems right.

Hmmm, I sometimes forget that ISO C is so painful about void.

Has WG14 discussed in the past about the GNU extension that defines
sizeof(void) =3D=3D 1?

Maybe wording that also considers compiler-specific attributes and
extensions would allow for the following:

	[[gnu::access(write_only, 1, 3)]]
	[[gnu::access(read_only, 2, 3)]]
	[[alx::restrict(1)]]
	[[alx::restrict(2)]]
	void *memcpy(void *dst, const void *src, size_t n);

The GNU attribute specifies the number of elements of the subarrays, and
the GNU extension sizeof(void)=3D=3D1 specifies the size of each element.
That gives us the size of the subarrays to be considered for the
restrictness.

So, ISO C wouldn't be allowed to mark malloc(3) as [[alx::restrict]]
(unless they add these GNU extensions), but GNU C could.

> > BTW, the author of n2529 didn't follow up, right?  I'd like that in, so
> > I'll prepare something after n2906 is merged.  Martin, would you mind
> > pinging me about it?
>=20
> See reflector message SC22WG14.18575, 17 Nov 2020 (the former convenor=20
> replying when I asked about just that paper).

Where can I find reflector messages?

>  As far as I know the author=20
> has not yet provided an updated version / asked for it to be added to a=
=20
> meeting agenda.

I think you mentioned that to me some time ago.  I guess I'll take over
then.  I'll ask for a number to propose _Nitems().

And another one to propose that [n] means the same as [static n] except
for the nonnull property of static.

Have a lovely night!
Alex

>=20
> --=20
> Joseph S. Myers
> josmyers@redhat.com
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--fs7ii5hyicoxvrqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmakEcYACgkQnowa+77/
2zJPbQ//a3CKWNGaSXxfyATxQ0DCPeGvlU+MnFuC0vAOeCJeNfI0pW1q+lX1FZgy
pr/mKIaDwkj53+r0PgXcC5Dx8dxK3jkV5EXD5e9ZpkLzZn7hFHsxYQ68FgfcYtwl
klsCO3wg1bsaRbfwhzY9OQZ4ruUcOzgbCZvpcmWBk9puMItGhRmRb9/cV6/hppm5
Zgi32fKiVIuV8mXz2iLIrAnUr9zvYMm43L6Ac/Vs0qxx4dEl2GOmZqegxkvR3nAP
Elpuuq37NjHKoA8X6NqTFAVDORObMo2dN2bfBfAfQINqmTV3MmBo486CtuDAfM7A
vheNu02Ba8MnSAGJqMMOWXZgSKdgCRpFbfSbZnmD3o3aHLVIwabQmym/gewdD4G4
S8l71vXZ7+rbXlhYibCZoxPZdTYImphtjDuobE6PxaAOTv/dDC6286478s1MyDp3
CbcBvhYNt7DGGFaNAvwHkY9IygdijskrRBAAKI/3B2Iv9JfR1cy4letvyIUcA5FS
HkafEeMa5+4J1mNjRWzqHxGxMYONxprAR2zzaFpt8tuzL5ZFGHW2m8J1NQ2ghzaS
XUWAVjxcFiZoU+YqEUQ9G4ov1rsSLjW+urPt8Mv2tOqW8oN4q8w3i6gt7CRBPjpa
mUOopXuGIcniOsUPTrkF4HbvFcQegh5jcwB6itBhl6tnF+0ISbM=
=uKpR
-----END PGP SIGNATURE-----

--fs7ii5hyicoxvrqx--

