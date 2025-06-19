Return-Path: <linux-man+bounces-3191-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6E0AE0F8B
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 00:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEDB03B7A50
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 22:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6CA21E0B7;
	Thu, 19 Jun 2025 22:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFWoO/TY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5972B30E833
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 22:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750371631; cv=none; b=f8CfhDtb7FSIMZYR2zry7H4EFET/vE8VEENVOfESnFCXBcgeCAG9VHxzwfq700YUWk0V6bghDlOLkImPq2G2lZfaY8P19W1Eka+Y2hMopskBk2borub5Zkit/x9rm1HT3Z3L7RpgUjX8flIL8KJgrYNDhRhIAk+dZoRj/RGjd7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750371631; c=relaxed/simple;
	bh=Kez8SPq4ptc+DyD863xp4oln1fumL6EvS7i98owUsus=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VcmMY/ENoGLfc/o9BZRPaIICdbLqhr5BV6JP9TToBdjNATdxfPb3jISvgIzVASLrV1j+ALuYWsXoCy66IzUfHGNyd2diyker2WNCtf0YQmsKujehrblSdZ0OtWmlo6p12gFMDMjvrU2X4V7jkZCx72UZyMVeLGiSGE3xVmN8Yko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFWoO/TY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99BAFC4CEEA;
	Thu, 19 Jun 2025 22:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750371630;
	bh=Kez8SPq4ptc+DyD863xp4oln1fumL6EvS7i98owUsus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CFWoO/TY5aW9V6kUkG+gIXDflxJpyAQTq4CIatcClmPJgMKDD1P3Z/IjhRgRj5bt6
	 UcBF/sHT++x+IRGBXBK/LGfjyiDzC3dyKzVH0XCmVjybkina7zJOEW7StEF3K98L4K
	 2kV6y2JPCmRuJbvN5spBWEMdkAv/addNE23lV1GU9lh6LHmS7vbdAuZhR4wFHgt+F6
	 amxpiP0Zjunt+BsL5Hp/rXsiMImDY+XHCzumuIAeW+s5MS9RVNE/EczAyMEHYH1rlT
	 ALyUj8crgceDawqyz5kOJyyXG3V1XYqKGUhgMV/zxelXiDbwYTAnOamBm+4VVsBKOT
	 Fz1p6FDLrEaCA==
Date: Fri, 20 Jun 2025 00:20:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
Message-ID: <c5sve7xkoc6cjs62dgevxqr2snxbmyehomtqvyxeetbpu4uipg@34i47s3a5adb>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
 <877c17liqv.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g2db4sokhu5pb3k4"
Content-Disposition: inline
In-Reply-To: <877c17liqv.fsf@gmail.com>


--g2db4sokhu5pb3k4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
 <tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
 <877c17liqv.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <877c17liqv.fsf@gmail.com>

Hi Collin,

On Thu, Jun 19, 2025 at 10:54:32AM -0700, Collin Funk wrote:
> Hi Alex,
>=20
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> >> -.BI "int gettimeofday(struct timeval *restrict " tv ,
> >> -.BI "                 struct timezone *_Nullable restrict " tz );
> >> +.BI "[[deprecated]] int gettimeofday(struct timeval *restrict " tv ,
> >
> > Please put the attribute in a separate line, to avoid bad alignment.
>=20
> I thought my patch had lines that were too long, but I wasn't sure of a
> better way to format it. If I understand correctly, you suggest:
>=20
>     .BI "[[deprecated]]"
>     .BI "int gettimeofday(struct timeval *restrict " tv ,
>     .BI "                 struct timezone *_Nullable restrict " tz );
>=20
> But I think the [[deprecated]] looks a bit strange alone on that line.

No, we already have several pages with that style; usually with
functions with a long name.

> Maybe the return type 'int' should be placed on the line with it. What
> do you think?

No, I don't like that.  The type on its own line is fine IMO, but in the
same line as the attribute looks weird.

To me, OK:

	[[attr]] int foo(void);

	[[attr]]
	int foo(void);

	[[attr]]
	int
	foo(void); // I use this style when writing function definitions

To me, not OK:

	[[attr]] int
	foo(void);

> >>  .BI "int settimeofday(const struct timeval *" tv ,
> >>  .BI "                 const struct timezone *_Nullable " tz );
> >
> > Should settimeofday(2) be considered deprecated too, even if it was
> > never standard?  It doesn't seem to make much sense to keep it intact if
> > the get*() one is deprecated.
>=20
> Sure, it seems pretty uncontroversial to deprecate it ourselves. In V2 I
> can also add the [[deprecated]] there and recommend 'clock_settime'
> instead in HISTORY.

Thanks!  It might be good to CC libc-alpha@ and linux-api@ in such a
patch.  Or maybe it's overkill.


Have a lovely day!
Alex

>=20
> I will wait for your input on the declaration formatting first though.
>=20
> Collin



--=20
<https://www.alejandro-colomar.es/>

--g2db4sokhu5pb3k4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUjSYACgkQ64mZXMKQ
wqnw8Q/+IINy/iILYl8E4uaR5aA3nDKCBBWYHjjQ1uAQOq7ce2PVYiryk5iol2NY
sNcMqn9AiVlJnpOXH9v3RmmWx6H3GFPLvrrKBGQEeS3LWNY3I3iEnnzqhOEKM8Gs
f8+ZHEAD+cKZcTXT7fAPOK1HZlCDBSfZebu0SVVur2GtqDrpEdLpBDKtCODiFcZH
cTk8M/wuxz3QkYl+B5GVkhg0WsuvoLdyEbHxWmIAvDq2o/UaV5i2Be+ZyGunx01g
mP3AUlWj4S9ZjIfykUQJlyxvTYaluuLwO8fPQ5bQS7jEEpl1hRLwwhpJgAYUrlUw
yxlR7POrMNwZr2g2619ZTRKuO58RipGDi2L8bN7mpkXNxOarfUKFzhbc7pWzXVS+
R081GdPGNZ22FwnkXHrVdeWdmng3tAJutQzodeszsiUHvqOuofn9b9TCSY60VrvB
nEzJX3tJFZXpehDOlCdIdBBac/9wcBx7ogzcOhg0uopxYLt5niUUG3dh3y9N8eVt
yqfdbP/aHKnslPeO8mCGe1YoBjxR+YtLfPACeIw3IP/3e37vkYN1ZCCym/JHaOO4
KH77GocX0UG/cjpdz20Ys32QZA2VCVs/ApYNgzSYsBKAwYwnc+jw3f9HaMOdatjp
FbLkFHXa13jz+lvvbUBKleiNr4mp7bW8pJLU/SVZsqqJToYQups=
=mSQZ
-----END PGP SIGNATURE-----

--g2db4sokhu5pb3k4--

