Return-Path: <linux-man+bounces-1382-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 961B792B3D1
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 11:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03E4DB22AF6
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 09:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09041155351;
	Tue,  9 Jul 2024 09:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKzNBGwe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1E1154BE0
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 09:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720517191; cv=none; b=PmwOX3HOMq2hk8nBrzQUfA1BAVdgvgHzv5PFs1M5vBzeXKvUmenXhge+4j/Af3S6tRfr13TLK4os05nc87C5LEZXR6+g5koHF1xrWX8Pwyj3+R1grwytQ5pS2ATOgLxK5hOyJt3+HrMhosuOP2fEFMjO2Zd33vFJBCJ2fA7+/Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720517191; c=relaxed/simple;
	bh=rbsZnwpEsG9bZBCeAMclCJx56tjVmyRxRIN9zqJQU8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WmWYLNigWTCy0pKJD73X1/TqGY4H6Gml4KBJJCUd8bW893VyQw2kLBTsySrLn+4gDI5tBAKVI5R+TMeq5Zhy0LLgQWzdjH3v10+ahF6EQgtX+ss8XlNfKI8bK6n1nwOjcNyt+w2DngjcAcIzg5GKqwmVduJQSPdKNNhpzFwZ/Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKzNBGwe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A42AFC3277B;
	Tue,  9 Jul 2024 09:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720517191;
	bh=rbsZnwpEsG9bZBCeAMclCJx56tjVmyRxRIN9zqJQU8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hKzNBGwe3RXT8zFH4YXqpIt6D7knv3SfdAd9pOoTKfJnTTYQfC0SN5wARb0iPx3ui
	 CZBHsIY38JXC9wocFFxu4VJhC1zV9PI1cBN1a2UAT9kJABCYq433SXB+9e7yJ6NWnZ
	 7cK/VfqsrikHT0p6CHzsxW2GMzGhM+0zf+bmcYU+TNGjzJCZvM2qCYDR8VGJ8P2IjM
	 ygZACi4tXAXnMEH7PiXcu1R93TNN3REcfVOlzEspQwiTQhK9EnB3pVLfvfuAG8YXzt
	 RTTPUgyccNtxv4zh61aloESYx4v+mo2fyy2W6oWHaGIsyxaQfoHkfY4yTxoHtKuu3O
	 DoqCql9+uT+Uw==
Date: Tue, 9 Jul 2024 11:26:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <rpgd7ms2jupo6r6nqy57tsfofpvnlh6oqu5wtpqcrhajf5ym6t@td4tli4sivdq>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
 <yfzhg4mfjxf3bpvgamsgibaqj3npwofon33dorkgs643ttgxks@ujcklvwsph4v>
 <a461e1766a197ff3e2bc1939c1ea5aec43d740d1.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="suso7frrf7uqyhtz"
Content-Disposition: inline
In-Reply-To: <a461e1766a197ff3e2bc1939c1ea5aec43d740d1.camel@gwdg.de>


--suso7frrf7uqyhtz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
 <yfzhg4mfjxf3bpvgamsgibaqj3npwofon33dorkgs643ttgxks@ujcklvwsph4v>
 <a461e1766a197ff3e2bc1939c1ea5aec43d740d1.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <a461e1766a197ff3e2bc1939c1ea5aec43d740d1.camel@gwdg.de>

Hi Martin,

On Tue, Jul 09, 2024 at 07:58:40AM GMT, Martin Uecker wrote:
> Am Montag, dem 08.07.2024 um 22:17 +0200 schrieb Alejandro Colomar:
> > Hi Martin,
> >=20
> > On Mon, Jul 08, 2024 at 06:05:08PM GMT, Martin Uecker wrote:
> > > Am Montag, dem 08.07.2024 um 17:01 +0200 schrieb Alejandro Colomar:
> > > > On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:
> > >=20
> > > ...
> > > > And then have it mean something strict, such as: The object pointed=
 to
> > > > by the pointer is not pointed to by any other pointer; period.
> > > >=20
> > > > This definition is already what -Wrestrict seems to understand.
> > >=20
> > > One of the main uses of restrict is scientific computing. In this
> > > context such a definition of "restrict" would not work for many=C2=A0
> > > important use cases. But I agree that for warning purposes the
> > > definition of "restrict" in ISO C is not helpful.
> >=20
> > Do you have some examples of functions where this matters and is
> > important?  I'm curious to see them.  Maybe we find some alternative.
>=20
> In many numerical algorithms you want to operate on
> different parts of the same array object.  E.g. for matrix
> decompositions you want to take a row / column and add it=C2=A0
> to another. Other examples are algorithms that decompose
> some input (.e.g. high and low band in a wavelet transform)
> and store it into the same output array, etc.
>=20
> Without new notation for strided array slicing, one

I'll have to remove dust from my old proposal of [.nmemb]?  :)

> fundamentally needs the flexibility of restrict that
> only guarantuees that actual accesses do not conflict.

I guess a combination of [.nmemb] (or the third argument of
[[gnu::access()]] and [[alx::noalias]] could be good enough for such a
use case?

	[[alx::noalias(1)]] [[alx::noalias(2)]]
	void add(int a[.n], const int b[.n], n);

	//or

	[[alx::noalias(1)]] [[alx::noalias(2)]]
	[[gnu::access(read_write, 1, 3)]] [[gnu::access(read_only, 2, 3)]]
	void add(int a[], const int b[], n);

	mad(&arr[0], &arr[50], 50);

The caller should be able to know that while the pointers can alias
within the caller, they don't alias within the callee, since the callee
has no right to access past the specified bound*.

*  The standard would have to tighten bounds in function interfaces,
   since right now, the value is just ignored if it doesn't come with
   'static' (which I never understood), and if specified with 'static',
   it's just a lower bound not a strict bound.  I would propose changing
   the meaning of [N] in a function prototype to mean a strict bound.

Does that make sense?

Have a lovely day!
Alex

> But this then implies that one can not use restrict as a
> contract specification on function prototypes, but has
> to analyze the implementation of a function to see if
> it is used correctly.  But I would not see it as a design=C2=A0
> problem of restrict. It was simply not the intended use=C2=A0
> case when originally designed.=20

--=20
<https://www.alejandro-colomar.es/>

--suso7frrf7uqyhtz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNAjwACgkQnowa+77/
2zJ6+BAAhUPsc5ek352J6AUuBRYcEveozRzTuANkBMWWpYcqjfuASyxSB+7uCstl
maM8/K1upxDH4xDKuyG/wyVk9YGWSV56il92nfxr2ymPa1LskYujQ/EyhXZIyUiz
7sKvoBwLZsnZvNOkYMfdg1t54k/KGkwIzCjRmdqt4xQpq/RwcC11ZLcU/WYq+602
qEfIseOVblm/U56oox0Eo6tTXo2eHtWDgRiVlKe1qfMbUqDhdbq1p3NYywRc6/J8
CxzI/SewgO3O+lV2RwuPZYWcguQdqf9OcLWkoizD0JK183XrKXI3sciCMVAx28pp
fgrdqR1FB0hzh2Bu3vvONx2DOi73H9v7zitXAJrCQmT4VTa6c66dQS3AiHfEDKBd
e9j2F2XuAPMiDP7121JkQAvXFtMQKWqvbEpkDMmnlQ046YcYHqDCAxfEsYoIfK1U
/CWcY/XDZhA0JKm1mjosPH+LvlLWnc5jp0eJtSYlRbbi027p0pIUlNClQIv6Sf7L
O0rycRY82QN111E3n4uAWeeIxF9aasq0uXpdzgzYWCG93AxYmkqi3H1oIbYN3oXP
MmMXsavquO6wcRYN7jqz97a/X2CsoTb1hj1BOT0O57WrdWZF1vXsRBVn4Th2/MW1
ncJioEQAsWvND76Noh7KggM/WOAAJmzWhrCqZEmTQdjCv4dSRn0=
=Ye6B
-----END PGP SIGNATURE-----

--suso7frrf7uqyhtz--

