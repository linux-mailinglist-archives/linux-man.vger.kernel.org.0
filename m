Return-Path: <linux-man+bounces-3218-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3B1AEABD7
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 02:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0B0C1C409A8
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 00:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F276E2F1FE6;
	Fri, 27 Jun 2025 00:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxHaxNfk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3412F1FC1;
	Fri, 27 Jun 2025 00:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750985147; cv=none; b=ShXtQKtJWGV4dFaojba8hFRqsK5bpylw4dMTlAW1F/swH855Od9rgup1k64KMlTWDBkqhpSclwyH7YHo8gGelYN7uRVo6gMlFPJEDhzvJ2pxBu7QzqBTdtggGqvJdpKK9HRWxxR8qiHtmHHUwrcWXRXoWqYGcu00tMmqltgOx2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750985147; c=relaxed/simple;
	bh=0d7zSdiWDxj52Khjnl8t4cnST6/6FsP5+bkMDLS95zw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T7zF68lsxS31rDaUk09uS6Oj2nA9HtrWmRiG5Buyk+g8Qt2eCxK+n/+bt/tvWK/nobFkvS5nXc9AmuTzuMThOIikg5PPMXXU5QgzyzampcS/XoDQuhWdGz7e/QoUJx689N6p28WDSxijzALEBGBjlTusAFdhcxulnJ5sT4tI7iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxHaxNfk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE8FC4CEEB;
	Fri, 27 Jun 2025 00:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750985147;
	bh=0d7zSdiWDxj52Khjnl8t4cnST6/6FsP5+bkMDLS95zw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pxHaxNfks8Z01xdx5Xz26Bt+5sz1nIRT2lwRxMOeG2h9qfpatlTxZI6eDX0Sqpc43
	 6XXXEbhV0h4HpDQPgxavpBIgUbCfzg5QUQ2Z+Xb99sBPezxbtW5jIdffly0ZHmhHTI
	 g2qo5H6MDavv4ZAThH3nYqUV9TiokSX1leUfdEm8JCx0fXzFhB2pgpLFMv/MiRWlto
	 TFneY4AYJcYpskrgGRpRL3mt8Hu9EdghyWxeYQghqqIITOTa6YFoH0B6cOkJFXrtdF
	 HRWjtRxRICRVErf4gaYJLqz/sqLZd/em09FaMBdQ6mr0hDAuH2c0bgv/7H4EaC2CX7
	 IOwxj7ftyNlUQ==
Date: Fri, 27 Jun 2025 02:45:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <7jhaxqzku6dy3fnhvpyfihp6t7fis33xqv2oibprtqlvqeppcq@xiwwfl3jm65h>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
 <20250627000811.GB1598947@if>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2sazc2dqtikszgx3"
Content-Disposition: inline
In-Reply-To: <20250627000811.GB1598947@if>


--2sazc2dqtikszgx3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
 <20250627000811.GB1598947@if>
MIME-Version: 1.0
In-Reply-To: <20250627000811.GB1598947@if>

Hi Andries,

On Fri, Jun 27, 2025 at 02:08:11AM +0200, Andries E. Brouwer wrote:
> I think you are too sloppy.

Anyone's welcome to send a patch if they have more time for that.  I'm
rather busy, and don't think this is priority #1.  It is important, I
don't say it's not; I've taken a long time to make the change, indeed;
I need a long time to partially revert it too.

> Do you not recall the SCO saga?
> There a big legal conflict arose over copyright ownership.
> Something is still visible on https://en.wikipedia.org/wiki/SCO=E2=80=93L=
inux_disputes
> Maybe this ancient matter has still not been completely settled.
>=20
> Copyright is a legal matter, not something where convenience plays a role.
> In principle you need permission of everyone involved, and not only that,
> but you must be able to prove in court that everyone did give this permis=
sion.
> So one needs written permission.

I do have written permission from around a third of the contributors.
Of course, I'll ask Michael to reply in written too.

> (And in what jurisdiction? Copyright details differ between countries.)
> Some original copyright holders are no longer alive, and the rights
> have been inherited.
> Life is much easier if you regard those copyright sentences as fossils
> carried over from earlier to later versions. And leave them verbatim.

Well, hopefully we can minimize the amount of fossils.  Which I've
achieved, as I managed to get written permission from about a third of
the contributors.  So, I'm happy about the results.  Even if some of
those fossil lines will be put back, I've removed a large part of them
forever.

>=20
> Andries

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2sazc2dqtikszgx3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhd6agACgkQ64mZXMKQ
wqlDHw/9EHDWCpawhuk4L5r81EEyGEu3hrPaSr1TjEFgkWH8EaJzP/PkmB8pIjLz
p8x4AO8vptPVG8VSJp5Nc9lyRx+1lEeqoL3okFaSwTLm1WmOGgwVgXpyeMhXZM/c
LHXIcFr9fDrfTe7S8qF0QjHMIq1Qc8kZs79GoVcSgCT75PTi3DViGT36TM4yVJZl
gWy/zXfhYEPxD2t0D5kisPq9kPT0CRoNYuo3jsVEyuuDqxJXPHXc3IfO7xdkSvOn
YBykjAbURW/H4gJONA8AljR37NINVWq4Nz27Snci8XwiwBiXzoRa4zANsbpAEl8K
RzFnJTjW90K2Uvse9xY6wc6XG3Wmlpyl6LOk3ZXATKXKFY6ACpcB7uN09JwvQPvv
9NJ9p62t7dWXaqCGYI6Id/rR1pfUI08fJP5GLDH8VTuu77VgnlF8xRPwAK0psUxY
0ojd5zakQHexYiXIO1pOEOd+aMVmZ8Uz+StUe5br4B0mmwwl8WBxOaR7Oy+KCouI
0+UcHLgnnSdB5gVXdromMx3QRqIHMbUbXybsBuwHVRowt70KEPtVdPws9YTMe2XR
HgWTttJJbrhDDlm3gaKDSWP8Xf6p2TJRayOXlwT6XSPij5EIBzRXsaDTdDuteTn9
LESRQ7nY3GpMZc5F30PFG2XdImKZNu54obFWwZ9l20ciUUHtNQU=
=EC1A
-----END PGP SIGNATURE-----

--2sazc2dqtikszgx3--

