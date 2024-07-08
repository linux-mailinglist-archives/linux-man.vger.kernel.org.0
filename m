Return-Path: <linux-man+bounces-1370-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7E092A553
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 17:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79ADA2828A0
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 15:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE951422B8;
	Mon,  8 Jul 2024 15:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rh91gZLs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA3B13C3F7
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 15:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720450881; cv=none; b=DrmejhZHRhB8YifMeZgewwaFLtzb26Ef4WoT9A60KFtUE/uZWGvxKZJUchSqDEE3C0RrucxnO48NeJqsTGevVBVTb5ePakl6A1h6njnNvbMAhKAT6M7zw68tCIVipYEAfQtjhLnxQCkoywxw0op9IlIcT6EG8dxmWdNae0TMDGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720450881; c=relaxed/simple;
	bh=doIXHF8cl+ntM+O/fHeg0QK4pkEHybUbfSkt5ieRvqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YIEJgiSPRb5uUjvX/KgSbLuBN4GkXjSXgs0W86rOcXlbV8y+73moq3Qir7pQVMeAp6NeSugoZsQMu7Pdp+zqvMrZ4L/ErsL0c4bflJfs0aODrWIvR7pNIBqUdG8ey97wqbgDvG81kcfsfKkukAHJuGkre//JyA9YDqbSGT9uNXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rh91gZLs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0B3AC116B1;
	Mon,  8 Jul 2024 15:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720450881;
	bh=doIXHF8cl+ntM+O/fHeg0QK4pkEHybUbfSkt5ieRvqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rh91gZLsC6yL2+pjzgAVGl3L4b9WbUTfqattwqZqB0WJOGsEzOwgHy69aVIWM2sUN
	 IRCfFw6AXl02qwtydR/HYJyOtrg8L5WeOpYNvrmN1SdV501QOkFWDdXRYqqpO4ZUVe
	 3J7gP7fDSfWl3yim1ufZA0o0SvGqkT5in+FFkmRvSa6mSSOtL3huFa0lGvIpBXl6nN
	 MGQ0ykWAPMwImIH2pmt7NfTLlUBoPBnsvRZp5dp2mYMtVu2LCDd7OryCN7dNjtgk9x
	 JS2rLgv5Byz8b2OwOr3Hm+JHVRpknQ1JYSBSpl1ugYrpJ7Vj/Egfo7UB9vSmI5j+Tv
	 K+A8y0hd0vqkg==
Date: Mon, 8 Jul 2024 17:01:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: David Malcolm <dmalcolm@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, gcc@gcc.gnu.org, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rb7et2h5mipnm4q5"
Content-Disposition: inline
In-Reply-To: <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>


--rb7et2h5mipnm4q5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: David Malcolm <dmalcolm@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, gcc@gcc.gnu.org, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>

On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:
> > > Why is this change worth
> > > making? Real-world programs do not make calls like that.
> >=20
> > Because it makes analysis of 'restrict' more consistent.=C2=A0 The obvi=
ous
> > improvement of GCC's analyzer to catch restrict violations will
> > trigger
> > false positives in normal uses of strtol(3).
>=20
> Hi Alejandro

Hi Dave,

> I'm author/maintainer of GCC's -fanalyzer option, which is presumably
> why you CCed me on this.

Yup.

> One of my GSoC 2022 students (Tim Lange)
> looked at making use of 'restrict' in -fanalyzer, see e.g.=20
> https://lists.gnu.org/archive/html/bug-gnulib/2022-07/msg00062.html
>=20
> Based on Paul's comment here:
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D99860#c2 (and its
> references) I came to the conclusion at the time that we should work on
> something else, as the meaning of 'restrict' is too ambiguous.

restrict, as of the formal definition of ISO C is useless crap.  The
more I read it, the more I agree.

restrict, as of what -Wrestrict warns about, seems a reasonable thing.

How about a [[gnu::restrict()]] attribute, similar to [[gnu::access()]],
which is simpler than the qualifier?  Since restrict is only meaningful
in function boundaries, it would make sense to have a function
attribute.  We don't want a qualifier that must follow discarding rules.

And then have it mean something strict, such as: The object pointed to
by the pointer is not pointed to by any other pointer; period.

This definition is already what -Wrestrict seems to understand.

> Later, I added a new -Wanalyzer-overlapping-buffers warning in GCC 14,
> which simply has a hardcoded set of standard library functions that it
> "knows" to warn about.

Hmmm, so it doesn't help at all for anything other than libc.  Ok.

> Has the C standard clarified the meaning of 'restrict' since that
> discussion?  Without that, I wasn't planning to touch 'restrict' in
> GCC's -fanalyzer.

Meh; no they didn't.  I understand.  That's why I don't like innovations
in ISO C, and prefer that implementations innovate with real stuff.

> Sorry if I'm missing anything here; I confess I've skimmed through
> parts of this thread.

Nope; all's good.

>=20
> Dave

--=20
<https://www.alejandro-colomar.es/>

--rb7et2h5mipnm4q5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaL/zYACgkQnowa+77/
2zIyVQ//euLZr4q9z+XSg7bBVMtUfNQpM6RDj2EoVO15jqKB8U/QmqcZaDFOgipA
P61O9R19lzRf04IsK0uRKm0Fuf6jNwHGFuqq5njrIIcq2hN5I9k+0oz3NeXg2tmO
Nl7Y4heOzuRqA5qDzVskvCuXJApSVC1hFX0r3lA/kVZh9Jn2t7x5tYxebPc7QA45
ygwWlSWRAVOo0ntiJENtIbecaWGLNuiGuWYrTLOCAh7Ztn1wxhPT4sOyqLDaOwyA
vlxkQjzlQZCXJ2cAL5QTzasa994BN87qHQB9YJkZn8/GLZY0C8Di/kr5DTjgXIvu
0cPaeLXoRZlSJ1M8AI7e1dRSnwDmd/H5k+nhAPx54bNW6IQcwhcsj8Z25BCES5Sg
QJxuBhRUC8/Ist1nqn/MFpKP2DDgttQwTUmT/tciZkjof+D4eugvlaiXqwpsFmAA
iieqd4OSxnwe/HmDYVjycNTWSzCKXbQo6ztAZCxdCJ9egDCsuP4fPzjkUnSvUgDy
izo2X/pQiLkQQ6m0TFs+srR9cPJB3RmpiSe6Cus5jBdoKgyZhStrylBr/H9bFV6h
FggKd5DrVQesLY0le5rX7Hi7Ktb/XVZLDoHLzYcJANCjemx+BGZaa6UkD0xcIEzZ
nix+dvnTdK/PJiD6x0DdUOFwz10HHyJZKlTz6bGsEBEiFi1tMwg=
=XOvf
-----END PGP SIGNATURE-----

--rb7et2h5mipnm4q5--

