Return-Path: <linux-man+bounces-1056-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A61E090172D
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 19:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FA0E1C20837
	for <lists+linux-man@lfdr.de>; Sun,  9 Jun 2024 17:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFCBF4653C;
	Sun,  9 Jun 2024 17:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbOVZ/rO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712361DDCE
	for <linux-man@vger.kernel.org>; Sun,  9 Jun 2024 17:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717954172; cv=none; b=n22dDyP/qvFunjj9PprmDDhU5GKxRICYsigYXOO43Vglu/GwSC7ZGyxfCpv2zy3fu30lPJbq7Htdq+G/jqKNA/7CtiFWE1dYktFaPTRei/ySDQrXSbbqrIKplWYGnG33123npy66AvoSCSlSQXN5F5G14NM4sHfdOz/Ojr/M8dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717954172; c=relaxed/simple;
	bh=dg+iDZnr1vs05OTeSr9gLkbMu4wVCh/enIRa0zYf0is=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjORqU9W2HQeXgjayrevmxTFon0xO6+9gLZxsC43gPsuORy2yYRFtZeQIzvvqDGd35KyE42ObGiMMWpYltKy8cWVSTEgcIvUCXKTzej3NN30Rrc0ON6Y1psPnuqKRHT01LTVIIsnrO9dLZixYozTWPWnsAyljPt8lqjD1P+SwaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbOVZ/rO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28A2EC2BD10;
	Sun,  9 Jun 2024 17:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717954172;
	bh=dg+iDZnr1vs05OTeSr9gLkbMu4wVCh/enIRa0zYf0is=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fbOVZ/rOM+rdKpP4QR/fwf5lHuBVcsFQZmNQIF000txzVwp8f7NSGlUhjsmTGgyWa
	 YQLPumrAafQdgbk43V9qO079CCPT/uz/M1rKiB0JnZ0eXpHbJGh3+ViS7239vFzbO5
	 VVAu75nSqzTkeH6zRGFkZZA3fRaxGyUpElP52E/6DkVZraLTDEB3oqr6CWkrllY3g/
	 IJEI+uewC1CCRW1gQbXqlY6DHWYrWd+t93LMyaTNajqY6jR26Izsxu040MZjPel63E
	 mLk3DbQKYY1MI/HkNq5VKYHWSwyyQGumHkL+QCkZUrI5EGswlU7u2DXV/fiuzhoChP
	 fcYPtxld4NQeA==
Date: Sun, 9 Jun 2024 19:29:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <dv4tgs6h56q6ia2ybccvg42n3ihf5ise4jfxx7v6cmpjev67az@feiba5l2at4z>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="elz4i4eaq2nqd2tm"
Content-Disposition: inline
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>


--elz4i4eaq2nqd2tm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
MIME-Version: 1.0
In-Reply-To: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>

On Sat, Jun 08, 2024 at 12:23:11AM GMT, ellie wrote:
> Dear Alejandro Colomar,
>=20
> I finally wrote a patch against the latest man pages, see file attached.
> Hopefully this is in a format that allows you to integrate it well.
>=20
> Some quick notes:
>=20
> 1. The "make" process aborted with an error, I couldn't use it to verify.
> However, pandoc seems to think my formatting is correct.
>=20
> 2. I still don't know if open("/proc/self/exe") has any internal race
> conditions on rename, like any more regular symlink. My text simply assum=
es
> it doesn't. Maybe some expert might want to double-check?
>=20
> 3. You can freely use my patch, no attribution needed. However, if source
> info is desired, you can supply "Ellie <el@horse64.org>" for that.

Also, please send the patch inline.  Otherwise, I have a hard time quote
replying to it.

>=20
> Regards,
>=20
> Ellie
>=20
> PS: The error that "make" gave me was this one, in case anybody finds this
> useful: "TROFF .tmp/man/man2/s390_sthyi.2.cat.set
> troff:.tmp/man/man2/s390_sthyi.2:124: warning [p 2, 1.8i]: cannot adjust
> line"
>=20
> On 12/12/23 9:47 AM, ellie wrote:
> > Dear Alejandro Colomar,
> >=20
> > I hope I'm emailing this to the correct place, I found this contact
> > information on https://man7.org/mtk/contact.html regarding man page
> > feedback:
> >=20
> > I'm suggesting that the "man 5 proc" page is expanded with a section
> > clarifying /proc/[pid]/self race conditions, I described details and
> > even made a text suggestion here:
> >=20
> > https://bugzilla.suse.com/show_bug.cgi?id=3D1216352
> >=20
> > (The text suggestion might be wrong, however, since I don't actually
> > know what the exact technical state of this is.)
> >=20
> > Regards,
> >=20
> > ellie



--=20
<https://www.alejandro-colomar.es/>

--elz4i4eaq2nqd2tm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZl5ngACgkQnowa+77/
2zJnow//RnP/AY2DOlcWbvCqS2D7+ySWX3266DoCmjblgS4ii3a7ZkZ/ClpJCPxD
kKaRuhsfTjMpoV5p14Pz7aJD5u6pyMOtfMUpITD8ezc6Wx+Bgnt+tj+EoA2OAnp1
cvWWoQiW0WfJ7cj9ra71H43MZRaw3L+wqchebtJNb6IPoGruAOVy+7qFGnWdqAX+
tllmbcj0eonhevbVoR7EfAFg93+XTM0sCFPPaeY3tYNGb3T5jEJanHOUexp041Sp
7SLJONGw/NzRnqMo03KcdkI2B9kRzfbVriUSFDrYdnCUn3r+D9aJPy95Uh2stunP
fBEbp0tUfg0n49sSqHt0LcFCwPC31MGDVT9GsQRLmfqknwn7dl7uyR/RX/WYy3jI
LPrB9RPy6kOTrAdtcLxHoUYNYiXFoYkANSzkdWnj/rDufiTCGDgkeWyQtbFU5KPx
JZxharXnbJWeOQWXzyozAD4dgtYiSbWGwihoRmfGefAItZrgl9Vgc52164VogdFI
RyG2PQCKgAHnuSETN93Am1/xxG5Hc4yi1hU+tWWrFGr/sjoJ2k59NMJCgy8GEDPt
hkGor14rYx9sT/pIxf+0xeERaHrxm1ZJqE7rNr6X0OSi8R9Aqjib/gb8cNANQ4SW
Qei8YyeC0sbu22zvg3CEcSMX7GxfPEpJf2b+wh0UYv5uMZg/W28=
=U1KW
-----END PGP SIGNATURE-----

--elz4i4eaq2nqd2tm--

