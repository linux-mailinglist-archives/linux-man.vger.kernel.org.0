Return-Path: <linux-man+bounces-771-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C91298A8029
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 11:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57061B20C72
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 09:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC897E590;
	Wed, 17 Apr 2024 09:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnbh+8qX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50033F516
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 09:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347665; cv=none; b=a6ewtkOLg7fnwcwSxqmcRBXoUbManc/iHkz3OEYsGWL67lSE8tKD9DmIgSVDq9++sT9TSiAx7tbx7YfKhIuUF9TuIW0l58YMHfUgTd7Ftr8GMD4zPgWGoy3uaja9fd/6KIr8TLtx+ohhBJHV2Ei4O9QmjEFUe4wQX8ZOTu4ESx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347665; c=relaxed/simple;
	bh=qdY/SLAeIv9aDFvCmXaGwOzSjmCPVkLANOcOSPu/ic4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjt6jS6NEYISacGR4mIA5RsefZT7BrKRupTsNiN2qzsU73Y186JG6xPu1OIwdrGylwo/+MZWkRxTSB8mdMp6KXinIlirJ70RFIfQxbYn2TGb8BKMos57zYNklZjabkjk7JpH70NLnf7oRzOya+Tw5iKDkEfgc9uUKDOQR1oCLlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnbh+8qX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07637C072AA;
	Wed, 17 Apr 2024 09:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713347664;
	bh=qdY/SLAeIv9aDFvCmXaGwOzSjmCPVkLANOcOSPu/ic4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hnbh+8qXPrMJ8g6cOLpQpp4HD2woidNg8oPgKrmb7yoP0kCyLRktMGMv8hDieJfLz
	 NOBrSFmr10zgUvqBFCWltUI3/oZqZTVNwupU4BLbXpbrv+/xUureg6MI/Fsg7oo7jJ
	 +6Q1pRXcrLQkT9ag+Ge2h8yjYwfpxAs0zXPsQipzPQqdOM1N6XGpZ+dbR75DOOv5oT
	 49oJLnOwlhuuShG0tiAyJO5kejo14LbLs7meeX1GIZrZtNUAzLP7mY4p12yNEDV3F3
	 IuUQOtVpvQsPyOEU8AA51t7/YsR47Jd22iONaJoCfdGHmbC2VXPqCVU8siAfN69NFF
	 69TZ+kJ0WxTwA==
Date: Wed, 17 Apr 2024 11:54:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh-cTQSZbb8z8W0s@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <3935722.768hzMJKAL@pip>
 <Zh7mRYSj-st4i0z-@debian>
 <4499122.GHtaDqYCYT@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M5ilB2oTsdvr58Vv"
Content-Disposition: inline
In-Reply-To: <4499122.GHtaDqYCYT@pip>


--M5ilB2oTsdvr58Vv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 11:54:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Deri,

On Wed, Apr 17, 2024 at 12:17:18AM +0100, Deri wrote:
> On Tuesday, 16 April 2024 21:57:41 BST Alejandro Colomar wrote:
> >  I've moved it to .../devpdf and
> > added the download file, and it still doesn't work.
>  Hi Alex,
>=20
> What was not clear when I wrote:-
>=20
> "Your _FONTSDIR must point to a directory which has a subdirectory called=
=20
> 'devpdf' which holds TINOR and UnifontM and a suitable 'download' file wh=
ich=20
> gives the location of the actual .pf[ab] files (i.e. within texlive - no =
need=20
> to copy it). The difference, with/without, is in the number of glyphs not=
=20
> found messages."
>=20
> But instead you changed _FONTSDIR to point to devpdf.

Sorry, I misread.  Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib>

Now I get some new warnings.  :)

> The difference in the pages between having working and non-working fonts =
is=20
> seen in the attached example pages (compare with your book). These in fac=
t are=20
> using UnifontM. TINOR provides the cyrillic glyphs and greek of the iso_8=
859=20
> pages if I remember.
>=20
> You can still see some gaps (which should not happen using UnifontM) they=
=20
> appear to be caused by an issue in one of Branden's commits, see:-
>=20
> https://savannah.gnu.org/bugs/?65601

Thanks!

Have a lovely day!
Alex

>=20
> Cheers
>=20
> Deri
>=20
>=20
>=20



--=20
<https://www.alejandro-colomar.es/>

--M5ilB2oTsdvr58Vv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfnE0ACgkQnowa+77/
2zIuJQ/8CTnwYNzWaZIef9H93LWrsPd20+Epw66EpJtstzN9qngacATQfJ+YE8fl
8+QwyXt1MfcU1AnFnyoGH2gGKB7fVAu4y/GbV1E+kWk9plDj8ST8jmZNqeQd9GS2
YI9B/nBRqTO7OstBY9qXd9YwpuIc+pzSAUR7ARrxa4kSJjikVhbxFLT39Zixt/sj
gJ+oslhr4AFitda4e1QuARIiT7Fc0IqGK1th8ykgEpgys195E4xH68jVL4b3uwJK
rjZ4tySwDhA5m9uJrQuygNR93SX5MP2pOLLjrhw1XrIhlSd19LjRUFZNuf/aICXf
bGtvcaX0kGHK1wCtR8uf7SWGW1S4hpIkqbHnlZKrtDiJ+TgSMlQPKc4/uHWMeCkK
wrZT5hyqyem/ZV2afqDriaqQTMJ8r/0/IkSuLpEleCNUcjiVUp73Ev8IUC5imaEf
dnLig++cDEhPQht43m7vY4yl1V35DouwNQZnhHobEfLF2px1r1a4Z1y48FUk7tKO
aXu88j87N+ekPAgkUIpDe8iWVfUMdbLVS9qfEi+E/s+cDDQGW5yNv52+1SvJ6Guc
a45tufy34ldFmAbgKaCvo5RIyPcxPBH++KWKySkdewnmKsH3jTmw6epbjUhs7wDu
3aYhE8xv007eofBUc9iYTt0QfvOTr9bPMFttH/K+JJndDWED1wo=
=tit4
-----END PGP SIGNATURE-----

--M5ilB2oTsdvr58Vv--

