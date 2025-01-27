Return-Path: <linux-man+bounces-2310-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AABA201E4
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 00:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 127CA7A29C0
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 23:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9C81DEFE0;
	Mon, 27 Jan 2025 23:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFlSL1Vv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6A31DF969
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 23:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738021773; cv=none; b=m5n8zpuYoB/4Zs4BJOR5DgcYE273J8cUiNBDEWtEPJ1ulIGwCBTsDuICYkPbkTZuLRZhfrpi97q3XA6NbOAaRQR86weMoZb7h4L3BtAhyNhwj1oAskUnJWatghdboV5vcTeyenwbEMKxEokxmm/W5CvhXeuKFAKP5z5DRD7WHkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738021773; c=relaxed/simple;
	bh=LdR8KALAya6l3ENrVgVEMLIq2npMe/c65h3ZcmQlwMo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BSMffu7mPlyS3JUhWTY5QvCLkVRaxAel8KYkXUOsZDRcLAj5kmwOJAHq7e5Ze/1GEEd9e1mFFaGJmDSQ+hvsmBQIbcE7OJBoyv7nKd14m3xAvD3NVIrBu8NWLfzwkVd3ZsSvCYpnqkZlDghu6Y0eWkg7xs0b6YmsWjEPn67gFGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFlSL1Vv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EC70C4CEE2;
	Mon, 27 Jan 2025 23:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738021772;
	bh=LdR8KALAya6l3ENrVgVEMLIq2npMe/c65h3ZcmQlwMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iFlSL1Vv7IZHxnjI/+zDJZcYMAMWBHPFZOxacgzqh4fKzMTEvr0C6LbyUAuRcBeKL
	 TvhNL1BpGQSSw2l4u7EAmX+mBNX8x3w26g9j6dxy01Aa94i8xV/MTS7JUwWX5U/mJp
	 UHmjvdYNafnFlbSJSreRmVOSnlPLEYXEAKqwTxn/W9JbSLVT78Uwm1noNlFJcGnYID
	 zyFD1D/D43izRY/mqdGSznbNMwBp+B0D06m/fHcrAktdjBckVpBgCW1Qrshx/2smch
	 gHgI9GiyEuxEe6c/3eeOQ6Q5UGK5d0J5162Gt4lBqIFc+ZJTMJ7TC2tyCtKMAhALvf
	 F4ZuTs6oswbQA==
Date: Tue, 28 Jan 2025 00:49:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>,
	"G. Branden Robinson" <branden@debian.org>,
	?????? <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <20250127234929.wbpd43qg2g65dlru@devuan>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
 <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="23vhj56tg5wsn5xe"
Content-Disposition: inline
In-Reply-To: <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>


--23vhj56tg5wsn5xe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
MIME-Version: 1.0

Hi Jason,

On Mon, Jan 27, 2025 at 06:07:30PM -0500, Jason Yundt wrote:
> > I would do in a GUI exactly the same as what command-line programs do:
> > pass the raw string to whatever API prints them.  If the string makes
> > sense in the current locale, it will be shown nicely.  If it doesn't
> > make sense, it will display weird characters, but that's not a terrible
> > issue.  Just run again with the appropriate locale.
>=20
> OK, but how does that API figure out what characters to display?  What
> character encoding should that API use when drawing the characters?  I
> think that it???s OK to replace the current recommendation, but
> pathname(7) should really explain how such an API would figure out what
> characters need to be drawn on the screen.

That's not a pathname issue anymore.  It's just the issue of printing
bytes to a user.  I don't think pathname(7) should talk about how bytes
are shown to a user.

That wouldn't affect at all how applications handle files.

For example, I have just installed my new laptop (with the C locale),
and nab's name shows as ??????.  I expect a Japanese filename to be
shown similarly, although that depends on what each application wants to
do.  It doesn't really matter, since it's just a cosmetic issue.  The
string still contains the appropriate bytes, even if I can't read them
properly.  If I had a file called nab in cyrillic, I would expect ls(1)
to similarly show ??????, but internally just handle it well, because it
doesn't even look at the bytes; it just passes them through.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--23vhj56tg5wsn5xe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeYG4kACgkQnowa+77/
2zKZFg/+ISdb/V+HLz/mmZBWMsjeFFG7m3ja1weC0nA+xvboh40zj8b12d5stSX2
5NkuyAqjMnxPZCzf42ShywjK8eFk4hhayIPcHIL+9JgVATzB2SzceZ8qRcvA2Kt8
6OhSIzije4RnIg64xw121MH8ssCeZtJbo/62BSnaW1KmVHBa7Q8uFm4QbS65KczL
XtKWSSI3IURnJyap3eAKAsL1saLk2Y6GyipTJAOq0rGIc4l5iescPwgnsvQCuGTl
DfUBiPezhKD6ZAxj3cth1DKblY8p7rVwMuSLiAoRfKg5aLEJmQDZFtwmdL301h18
QdSwKvR6d10cFcGnxzcVuvFsq7DpqQ5oc58OsU5kprVoa7howi54btfGkGKCtHjx
tgNnn8RuxCM0bEoSncwVjHimVsl8gcSj6rh926LIakhVnnSoairc3WJsvqBTdvSz
S7aBXv+uDZ758sE2DBHEdkm74JpNZcRzYAOTaCVswRZ/YHHa/QkOiHbzh9jImbx2
E8cZ+0WNGNeX0UqNcMJI5nDrmbKThIjxqZQ818QPh+KBuf382tD+EVs0ojroTAUW
YUY/sSR+w6RT7J26zRYp8o6i089X/lac/7YEnvmIr5ym8itySknSntcfRCO91JUh
Acy/mMVrf73eaiq/h35AhCbFXysjANHEEHeQWR6LOhV/8okjZYE=
=xB2x
-----END PGP SIGNATURE-----

--23vhj56tg5wsn5xe--

