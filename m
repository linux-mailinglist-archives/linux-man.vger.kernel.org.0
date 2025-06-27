Return-Path: <linux-man+bounces-3221-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F918AEADC9
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 06:23:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E50841C216B1
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 04:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9551BE871;
	Fri, 27 Jun 2025 04:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S95c5P3Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1F412E7E;
	Fri, 27 Jun 2025 04:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750998219; cv=none; b=OPyfqzSGD0hJkOevIEaVVVxCP0J6pQNFhXROfpYiziNMNN0EUqwTYHdDi7vFHJvY684AdHlxET2shLAmtQYYUJJ/qIx/6z69Ye1Bv2c+9kV1oAcirgvSaZ5+XYA1ajdF7hDzm1YGJSwuaR2xM3s5/7wj/MEGTl3rgjctJXkek/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750998219; c=relaxed/simple;
	bh=jy2eZg+uXPJrBRxAvyi26d2byWjavPhu3O44lmmHi+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=anr6AEmdezUjUHfeUCGC8ZEJJ7EKQgZr2J+ABp5Z9JfoXVLnvVv8PS1nPoJecQZz2mSG5FJeZRaSoUVRbij344nSj4nVGnoBFYgjWZ94uqzw7m/OrHquN5WT2Vkio4vX7AvZTEfxMdsmJ7fCJeWWVFxPQ5wizO+WCegGGOrSla8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S95c5P3Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7440C4CEE3;
	Fri, 27 Jun 2025 04:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750998218;
	bh=jy2eZg+uXPJrBRxAvyi26d2byWjavPhu3O44lmmHi+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S95c5P3Y4LCtfalo5wbu1pHmxS4VgQhtSApY6Mb8ZWi/Qk5VBLeN+vULpuCGC38H8
	 7t3HFlj2oT8HJgY4AamVvtdaNx/sTz1Ox3Oyh3WefjjdYo4v7/eqwGg9ndVrEmR/Bw
	 qv+ns/DRuezEDrICnebBQMQ6l4xMRdZwadduHXvNYT3wq536rtFPYx3OD2b34+RJ8i
	 O/b9NyWRw0wcgEEt1sFUBMM+Et0GlDXKhZeCYkp0fObcfqFbeciizh+tAkXgCs80eP
	 VkAPGETOB+EAWbRAEqHXyPwWAoRwvoIFnAYIT3JE9fgnV9HOSQKu9dTrrY6VC5iEv0
	 042RaGxznd2lw==
Date: Fri, 27 Jun 2025 06:23:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com
Cc: Carlos O'Donell <carlos@redhat.com>, "Andries E. Brouwer" <aeb@cwi.nl>, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <wwtmtg6ar6gfxvezbcendmcuo3zzgferrmqvhvutos7vp3er2q@xljv6kkogidj>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <20250627002011.GA431181@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eeajxjql6wn5j7ej"
Content-Disposition: inline
In-Reply-To: <20250627002011.GA431181@qaa.vinc17.org>


--eeajxjql6wn5j7ej
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, 
	Jilayne Lovejoy <opensource@jilayne.com>, seabass-labrax@gmx.com
Cc: Carlos O'Donell <carlos@redhat.com>, "Andries E. Brouwer" <aeb@cwi.nl>, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <20250627002011.GA431181@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250627002011.GA431181@qaa.vinc17.org>

Hi,

TO +=3D Jilayne, Sebastian

On Fri, Jun 27, 2025 at 02:20:11AM +0200, Vincent Lefevre wrote:
> On 2025-06-26 19:01:24 -0400, Carlos O'Donell wrote:
> > On 6/26/25 5:04 PM, Alejandro Colomar wrote:
> > > The thing is, as someone else mentioned, removals happen also implici=
tly
>=20
> This was me, there:
>=20
> https://lore.kernel.org/linux-man/u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lix=
eidezdw34dg@nvn64na3cptt/T/#me71349fc15520d5c183311dfaf85667903c07d9d

Thanks!

> > > by moving text from one page to another and not copying copyright
> > > notices, so how much does it matter an intentional rewrite of the
> > > copyright notices into a different form (but which keeps their
> > > copyright, as part of the AUTHORS file), compared to an unintentional
> > > removal of copyright by moving the text (these do actually remove
> > > copyright, so these are the problematic ones).
> >=20
> > Both are legally mistakes.
>=20
> Mistakes, yes (as long as copyright notices are per-file).
> But legally? Why?
>=20
> I've always heard that a copyright notice was optional and only
> informative (so, in particular, there are no requirements to have
> per-file copyright notices instead of a single one for the work).

I tend to agree with you.  I'll invoke some SPDX people, which might
clarify our legal doubts.  I suspect they're lawyers or have contact
with lawyers.

For context to the SPDX people, we're discussing if the following is
valid or not:

There were a lot of old copyright notices, each with its own format,
some more formal, some less...

That was a huge mess, and the copyright notices were not always
respected: for example, in cases code has been moved from one file to
another, and the copyright notices weren't carried over.  In other
cases, some people (including myself) significantly modified some files,
but forgot to add a copyright notice for themselves.

So, I eventually decided to unify the copyright notices for the entire
project, so that the copyright notices would look like

	Copyright, the authors of the Linux man-pages project

And then a top-level AUTHORS file would list every author.  This is
quite more accurate than the previous copyright notices.  However, some
contributors are concerned that it might be illegal to modify those
copyright notices without express written permission.

I've sent email to everyone whose copyright notice has been modified,
and I got around a third of explicit approvals, but the other two thirds
remained silent (in some cases, the emails probably don't exist, the
people are dead, or they don't read the email anymore).  Notably, nobody
has explicitly said no.

What do you think?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--eeajxjql6wn5j7ej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmheHLcACgkQ64mZXMKQ
wqmfGQ/4ohky6UbzcAPoYFmiSOQAl+mBDRvRMmlkMSqKDYMaz9iNeYdxUj60egGn
MDNSm4HvTr3WW7DajQ9gNTwTJT+oKCRUFeQVyRZJcygsKyFKHPdjq0ZissHCgiqo
wlRnzVv1NVJ3ufMXkn+XSXHMHpDaXz0CUtBTWOGThR5k/vt6cuCacm/yVGWD3VcO
xkaZrynldPw9B/T7NPk5z3GItTgcXR85aIJlBjog9h7uPJ4NBll1a/b7SR4vlcpP
ANzk+J1AzpLhQ5Tn2SiEfOTxe5ekzHHUzoK7hm72oqREWDnNfEvm06AEhB6gEmsW
K6PkMPfmIad/AT/M3gGNqfHfnQmMfW9S4hCN5eLVOvoswchgeWN6EQo9KmIwi+SL
Fx1O5fUjxb+fofSWMj1TqufD8CcAy6ogBYLChk2CSF+iUEMICzOHhaKMXRyxnTpP
JWPtUpyVDEMF3Go5tRCMZcmvxH0hkFWyhdPQAYPSrkGA2kFD2KYwtaqBG41HyAmU
LuKGDrZ5SbLbET+Iz8kG+jzyfSO3ii2V0b+QtPAJz6Zl6vPiy+j22eI8gsee5Dhs
A1mIQoPhO2TiuJKHzTJtFomozDZVeoekq57OLzcB5UYKmKQKxp+iE4qQ1CjtU/ZD
ecIKjFhuFZ6wkj69FO28neYJky4fQuA1KzppQSlggbjX//0fPg==
=XJVW
-----END PGP SIGNATURE-----

--eeajxjql6wn5j7ej--

