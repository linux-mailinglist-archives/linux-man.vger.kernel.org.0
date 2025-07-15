Return-Path: <linux-man+bounces-3269-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A1AB0681E
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 22:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F4931AA2848
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 20:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A3E2BE7B5;
	Tue, 15 Jul 2025 20:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKqZyEZ1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53801286D61
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 20:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612625; cv=none; b=c+CN0GHqQ8izESxzFEuY2Trx9G2LJO0cXsqPfREVjJmmWqhqTnzAbCEttef9OR03x5mFvnywnjo4+AO6Lg7mSqrtcCg5hqyJKCU7DNUNstPH7P/PEpKcrxpf/PMfSxEH7ef2nuw5v5mfgYVimSGRXbxg1iQjtXtW+bz1TEo9EIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612625; c=relaxed/simple;
	bh=UfjsrWanDI3iw4fBzPwBKMJVIx0NszrvbrcCuRnUdD8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RWnqWXo+HmGQgltWku4N/ASTQ+8TFSXGYG9vMbM7iEZUvqb+i5HFZsJt0YeC6axeOkDdygLJdPECFMcUmLUfXh06Dx9gJqiS3x1N1hfdSIqSDX7lZPY6LoEFvmcliwklmfiIDf02L4oWi3cgFShtnBwl8hh6kKTxBRLaMZWA3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKqZyEZ1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F89C4CEE3;
	Tue, 15 Jul 2025 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752612623;
	bh=UfjsrWanDI3iw4fBzPwBKMJVIx0NszrvbrcCuRnUdD8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aKqZyEZ1MhXcKSUPVBrUi9BveuqulmnSJ66O0WIfktWtvX4ELGfVsfAgtW5umZQu9
	 l+qhE+NiK1YiCpML2wFEvcGKL1xSPPmpWOQZye0PeMada/qUejQBoZzl4zXPfT2TMs
	 tIv+dvnLOgQseY5XdL3+ByliHPVHYKkehiia6Aa40VA0YkmSdsmx3CA5tP9+b1KE1r
	 NqH3d9LFn4NDg2Nvn3eWnm3HP9TQzKDg7yJqjfBCdMxwCvH2jDOfMu9E6NI1zfoofr
	 SlRpf75yVEt8/jXauWninrsHFoAPn1lg3Cj8H4qLgWbWPIqi39LV57/vLWsIjCtjEn
	 s1BBWbidONtTQ==
Date: Tue, 15 Jul 2025 22:50:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
Message-ID: <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5q5v3nb6xod5aym"
Content-Disposition: inline
In-Reply-To: <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>


--u5q5v3nb6xod5aym
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
MIME-Version: 1.0
In-Reply-To: <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>

On Tue, Jul 15, 2025 at 09:48:50PM +0200, Alejandro Colomar wrote:
> Hi Elliott,
>=20
> On Tue, Jul 15, 2025 at 02:50:06PM -0400, enh wrote:
> > Unclear to me whether it would be useful to explicitly mention that it's
> > _not_ available on iOS/macOS and the BSDs, since that's the caveat I
> > usually give when recommending %m to people.
>=20
> We can omit that for now, but please not it in the commit message.

s/not/note/

>=20
> >=20
> > Technically this is available on Android from API level 29, if we wanted
> > to be more specific.
>=20
> Yep, that might be useful.
>=20
> Thanks!
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > ---
> >  man/man3/printf.3 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--u5q5v3nb6xod5aym
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh2vwYACgkQ64mZXMKQ
wqls2Q/9GYpCixjoC7Hp2iVMG1CwOqK5Hio/BI6P12Kvkfe3xRhPQNthhBmV3ggi
SW3u+IMaVTgHFBvkHt2d5CMIyJMpP+pcVCf5IeGeXJoJF7qrUzSNKzhCpUkpUeCf
51Ego0QmwDFpqyrmSrn3jKKGClLyPlZDfYgzPYlUJ2PMFzsM0UMKJI7DNf8+eH3B
zfUlrITNsNbsjXEkILrHRWc6PKvNaA+HM8441VkfA1Cl+SGhzwBBEFeBpDjqrFZU
Jn3JRFRxjmxCf6DpBjHzxOLpRg6aU2ssO+1P1SNufgyo0xXTpJ1Qu0iUD5ATgol+
EiRxkxiL6fqFMZCo+3tr0ekd2eh+KH8m2xVQFgDba6EaNO29wA77x1OwpOWlQ6sc
SnnmslVMM4EQjTpeoH1xjDs5VileMOqFV2GO/n/bDxkkhbfaJvq+ZBdzbwYsD3nx
iejjSCS9khhKbTWDhi6fHxZrKUXDNTN9Teg+Ph4XPjm/WCg6gvlUtP4qRPS0Ep3J
+RqJiZeJq9XHkuttNbpeKqTAJyHccfF7cNwI0LffeH7Z/7diWjWYiFHjbVAyuQoe
KkEqHiTebpEI89n1+PWMVqNpeCsGXgXF4ShcLg6A0Bo8LxT4Dv+kVrW1Ck/WNUqr
t6GFpGo4/KEqyWzJFsCcDqzOVqWq03PB6u1Dfj+Y3HodBEHWJ+Q=
=OE2u
-----END PGP SIGNATURE-----

--u5q5v3nb6xod5aym--

