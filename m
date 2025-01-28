Return-Path: <linux-man+bounces-2312-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7154FA2085B
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 11:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9DF7C7A5444
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 10:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CDC19ABBB;
	Tue, 28 Jan 2025 10:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCTUa7UH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1968CD51C
	for <linux-man@vger.kernel.org>; Tue, 28 Jan 2025 10:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738059483; cv=none; b=bUh7Qga5vmy/G1H1UlILYszh/DsospQEo32WgBuk/W8yP5KW1F8yO1VEhFmzeKQk4uNkKcfVDuiESThv4JJGMzh5uIWEdcfhJRRCnv3nu4G/VrT9JZh+4uu7YcAPA1wrZPtnrWWUTCEbdgtLOYiYgItgR3i36vGfxO03+uyB2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738059483; c=relaxed/simple;
	bh=hDvJ5zYmydWGgFg6lEZRQnaak5HZ86jwUZ1PRmshDcc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IUOrIzWRw96n0Cd0gUVh1qoUHcsNUnYEFi+HMtu5rfpG2cnEQYbpzI17ajxJ8jeiTb4bgKy+frKI10QI+0adXv4S1bTBx3+45vrmTxN1GXkTs9ziPQm8xUdjCvsBM+K+64Yw4FOpDs28syharwrmietB8DddVlEMsLFjBQuSFNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCTUa7UH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B0A9C4CED3;
	Tue, 28 Jan 2025 10:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738059482;
	bh=hDvJ5zYmydWGgFg6lEZRQnaak5HZ86jwUZ1PRmshDcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CCTUa7UHdTYWDPX3APrhHKk/dPm5U4bYmNzeQXSaMq6K8QD2ty6YDe/onSt5F2XnX
	 mtx2WrGlgfyiyE32eIz7v8E/CqqXAiexm5tUTowimuitgJ1/5u3u2dM+XVaUq96R9t
	 DY7uGZHxfVUDfx/bSJOzKBiLUsdKfAzqNVQ7bMfixtVIhqWJmlEF+HeKOFvLpFDSHl
	 6IQQEefoHqn6H8LFO/DUKb2GWmOaahM50nf/vTxD2d0r1vaWt4oIxK/+VWsOwa9hCH
	 OGSQngatfPDZHh9oUV8UZXCghDjaE7ZGpEXcZF2865ZlRMPCPuWyWtxlQ39KujLOJ1
	 CabrKrL2UDPyQ==
Date: Tue, 28 Jan 2025 11:17:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>,
	"G. Branden Robinson" <branden@debian.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>,
	?????? <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <20250128101759.klrigsk6sutzphta@devuan>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
 <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>
 <20250127234929.wbpd43qg2g65dlru@devuan>
 <3dc6wukwdyustkxjs4k5yclwbtdukqsjmh7b3jntt7fzovjof4@g4ww7njxyue5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ax4o54lurkb7q6zy"
Content-Disposition: inline
In-Reply-To: <3dc6wukwdyustkxjs4k5yclwbtdukqsjmh7b3jntt7fzovjof4@g4ww7njxyue5>


--ax4o54lurkb7q6zy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
MIME-Version: 1.0

Hi Jason, Branden,

On Mon, Jan 27, 2025 at 10:06:52PM -0500, Jason Yundt wrote:
> > On Mon, Jan 27, 2025 at 06:07:30PM -0500, Jason Yundt wrote:
> > > > I would do in a GUI exactly the same as what command-line programs =
do:
> > > > pass the raw string to whatever API prints them.  If the string mak=
es
> > > > sense in the current locale, it will be shown nicely.  If it doesn't
> > > > make sense, it will display weird characters, but that's not a terr=
ible
> > > > issue.  Just run again with the appropriate locale.
> > >=20
> > > OK, but how does that API figure out what characters to display?  What
> > > character encoding should that API use when drawing the characters?  I
> > > think that it???s OK to replace the current recommendation, but
> > > pathname(7) should really explain how such an API would figure out wh=
at
> > > characters need to be drawn on the screen.
> >=20
> > That's not a pathname issue anymore.  It's just the issue of printing
> > bytes to a user.  I don't think pathname(7) should talk about how bytes
> > are shown to a user.
>=20
> Where should it be documented, then?

I don't know.  Maybe Branden knows?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ax4o54lurkb7q6zy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeYrs0ACgkQnowa+77/
2zKpIw/+J9ZglUgZaw/FF1/9smUxeRbgXgDP5/Zt1r8WE1vFNLR/eGduG2JelfRH
/HTG1XtiuTTVwGNTf2DStwtOEkZpd3FA424QMOeKzmp90RpW7Vnlc2e5vDp2Yqyk
mbUbX+RHwLchwces8mRnfQbRHAEp+mEBzJgFalFHZOnilcAxYcNkmUpQk46GfJGa
ISSPmFbyR2dW3B/YzXIKg05cBV71YM56jNHwF18yUXmuhLQGVo1I8PRujbsFk9An
Cu6M8zAFFAdRBPTWPxalV0+TMyV18hJpsXxDQPr4C2oG0y7xWjQLOGGiE6g0Q2f3
OJXes4vtQB1QN0L2r1SWkgR1zYkvlMllxn5Y6ArCR8uEXy/SD3wR1p93N/+6Wz2y
ONHxvKEi7xRBx3MzlTR9qMYNfWMHi6NcxsoNjX275lOjvtqQFmCx/iinwLNAoNCm
yxI5l53oQJXm77FVIJv9i97RqfSLPNIWoWbGMgPORSDhBWRti17kRmowi0JfutT0
+6DnkoiHQ39yjCEk9+B5gnTzRutRgwqV3O6R6G1h2kiBb4ep6q7JoQBTA+4Qz3LZ
CIDVoS1pnHNeQHOelDbV+EHfHC1utjk27JHeZAayaFsbOpzpxVExzmfugJ3paLXs
hhXnXjZPQBMiWrqUnU6jLU8Gzq0534Zh7ja6/L3INs/akh6ZVCQ=
=PzMG
-----END PGP SIGNATURE-----

--ax4o54lurkb7q6zy--

