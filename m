Return-Path: <linux-man+bounces-4394-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2380ACB390A
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 18:12:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A5AA3009C0F
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 17:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7383101C4;
	Wed, 10 Dec 2025 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knyE7ayN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C14276020
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 17:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765386742; cv=none; b=qubuIPBSlJ50gAaZXny29MegjQ/NDpxvQFMYvojqrDCZEMgzz8KKW0qvIt6WUkG8yeuD+NjDY53G2LdDj4DijOBOn+HAwMGlbMtmQLnzv1o5UrQC+tp9bkSZBUS6HDvPyLpO5oK5JwbPtCdcS3JqfdkNaOFQJOK9/8I8+nZzU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765386742; c=relaxed/simple;
	bh=5vtnDLVoPpniZ8GLulXzQD8VCzK+yUNVqTE+/5DMTvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U2RB018Yob4qJh438BTvL74RLnkyTmp26u2vBPXmyH9l8kaqxNUPCF5HnOSXXSjEIbsi9nHkuWj+dUx63lzdSUuBNT9ATqY8O18IIu4qawTZnInaKNJBGmw6QzSEhdQ/G/C7mL/GsJkjLCXnfEQNnnlIG2gOXc0tYDn2yHXXIoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knyE7ayN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1AEDC19421;
	Wed, 10 Dec 2025 17:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765386741;
	bh=5vtnDLVoPpniZ8GLulXzQD8VCzK+yUNVqTE+/5DMTvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knyE7ayNB5hGzgpQrjueCZwTCskkFzJJcoYgzNqSLoOanXjbEgRkIFTfLv2F02IUL
	 DeBhf8G/sLCCMyqG4Bnb/O8lahksxReEU5h4YYn9TsMf/w4DkDYj6Dg6ui4LITYrv7
	 lbAvC3j91dYgxXcPNYRc/PX8iOqlVb8cnPZsTEr9zpHs0LNRyIfu07yD/mA6Id+quh
	 L493B1wdEDd1ZIjh9JwFyRNaZnA+MfMK+SyBcz5aG1Bf2h0xsoiqCa84mtrHThXwXN
	 WuDIGyOwsAxUAZltj/mpgY1w5KRGSgKRxCwrY5T8l+qoK5c7MrBWdY1PzbVrxqanqP
	 mBMeZRISDAWBQ==
Date: Wed, 10 Dec 2025 18:12:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nmppfatyatcu5lgo"
Content-Disposition: inline
In-Reply-To: <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>


--nmppfatyatcu5lgo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>

Hi Eugene,

On Wed, Dec 10, 2025 at 05:29:39PM +0100, Eugene Syromyatnikov wrote:
> On Wed, Dec 10, 2025 at 1:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> > From all of these functions, ISO C's aligned_alloc(3) is the only one
> > that programmers should be using.
>=20
> I strongly disagree with this assessment; moreover,  I'd argue that
> this is the function that people should avoid, due to its
> inconsistent;y defined behavior in various versions of the standard,

The only standard that was different was C11, but C17 --which is a bug
fix, and thus, the same standard-- fixed that, and the standard has been
consistent ever since.

All known implementations conform to C17 and C23.

posix_memalign(3) is terrible, because it takes a void**, which requires
a cast.

memalign(3) is okay, except that it need not report invalid alignments.

> and due to its limitation of size being multiple of alignment, that
> renders it useless for the vast majority of use cases.

That limitation doesn't exist.  It was a bug in C11.

Both musl and glibc seem okay:

	alx@devuan:~$ grepc -tfd aligned_alloc ~/src/gnu/glibc/master/
	/home/alx/src/gnu/glibc/master/malloc/malloc.c:void *
	weak_function
	aligned_alloc (size_t alignment, size_t bytes)
	{
	/* Similar to memalign, but starting with ISO C17 the standard
	   requires an error for alignments that are not supported by the
	   implementation.  Valid alignments for the current implementation
	   are non-negative powers of two.  */
	  if (!powerof2 (alignment) || alignment =3D=3D 0)
	    {
	      __set_errno (EINVAL);
	      return NULL;
	    }

	  return _mid_memalign (alignment, bytes);
	}
	alx@devuan:~$ grepc -tfd memalign ~/src/musl/libc/master/
	/home/alx/src/musl/libc/master/src/malloc/memalign.c:void *memalign(size_t=
 align, size_t len)
	{
		return aligned_alloc(align, len);
	}

Prior to that implementation, glibc had aligned_alloc(3) as an alias for
memalign(3).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--nmppfatyatcu5lgo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk5qfEACgkQ64mZXMKQ
wqmKsw/+P6Ktr3dxzaS+kqHLnkiTjIJjl8eyzqCaEITmU/KTKtq8JDr7+5EO0xBB
j1QVMX8tQRrDhqnw3o77XtwjL74bHSOFO+ON0zQ2p0UdudhO7CGJkjbQ2YLzMR1X
HwERcXVGfb6DFh9i+JpO+GKXhzDnrvXiYwIqlVNLF8BVH4e/SjXgcDWoMyjj5The
yV0R+mrRubpZUWSBS6WIZOoG3k5XXBR80nhDzEjjsk/6HJ6Lz7QCN99WNryUjgKv
QSWnJyrDgf3RxLoKeOEqSPea9MJ/uIgjlOvfQi4SZpmwQjtC1Jg4lNgt2d/5gdOU
G8a26nJmoOASjwIF7SASNJjwud3ZjFGDQj7i1kOwgzIRIexV7f6eOTjEzV4pV0Qt
EmSzWdvYRjeDqCilq7U0AkuH7KyL52uNbl4sYXV+3UH9VVrhv12kwyYrIk0Opyzk
th5lDE+JC9vHzjhh2tU3KQ5ue14F8/DenNJvK5VDT71AZ6t3V9kdALJ+sF2W+AFv
7yrTXfXhIpi0/6RBzXwYaMuX/P3cALXxc3ANnnFc2HiCLAyFd3aSdk+sdOHt1ieO
2ffaD7T/olM/qcf8CSMeo4jYsSGkzqAGhZh3C9SziiUJ74HiwDAsee7hGubBA3rj
vQWy77WL1/cZdkGX9W/4ofcFevHgXcTgtzzNdVnamvTAw6s+BnY=
=BmLb
-----END PGP SIGNATURE-----

--nmppfatyatcu5lgo--

