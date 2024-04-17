Return-Path: <linux-man+bounces-772-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D73AF8A8031
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 11:56:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDA341C21EA2
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 09:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266181384BE;
	Wed, 17 Apr 2024 09:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbiwD9hA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA518137766
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 09:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347763; cv=none; b=Xy4FEJK+PsJImTWxKtLyCpDxKLhZ/yhT5RiX8x4vEIs1On1r1sYmrX/dznElpp9Ia9AjI7EICW7sPNuhyFH5ogyxS+7ht1UUcTps6YTHPJzV19lwyPK/gRuAlIB+6iqZxhT3lQDVugCS0LUjmeI1SA2PVhCtWu4wYq5nFrzUyrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347763; c=relaxed/simple;
	bh=crENgZtsqtBLwTSHTy56FGF0Zz1C7zQvSdj/uyfIYQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jtHNa9oYDshzx7npCquz1TGwfMVJFU1I0Xr/oND/gYzA0v9kv/6CZKkjndyLRrN9h9OAu2ZYU1BX1oKObEpNvhbOP9W3eUOS/wPymauDsFIAqAPZ+fnMY1pZRfqr7AXzt9e+FThhT/AMUi4lfFwxr0eAIan0AOhuzuW6y7JMheY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbiwD9hA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0A1C072AA;
	Wed, 17 Apr 2024 09:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713347763;
	bh=crENgZtsqtBLwTSHTy56FGF0Zz1C7zQvSdj/uyfIYQA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TbiwD9hAZuJjacDmXDCgchX7HNvf+TgA1DngKsP2yFSwARXkEs6pkmwr3SZEnfTUY
	 2tRZSStuVONo9FqIP+AUdOPaT1wJpF8+KqJMLJFn3Ovr5uGMFbcAnX0NyeNTZlIUk4
	 S66e/aHC8Utj+Oo+mbKV0Hgjp1F8owwRmJog5CQ0yrT34tHREuRJoMZ7l3bQ1SMrsH
	 RCq2xcokYq1AqVOOG7Bk2hzdTJE7nM2IpmsEva/IDctUn0HTZ/Qp5iazqcJX2PhgK4
	 NQXahoe6/q5ssYxb0HVBGY5+3gLKz0pp7p9+rOgPBIPpVsXNH96lS/obtGIJK2Syyu
	 eztyorhvWJoNg==
Date: Wed, 17 Apr 2024 11:56:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh-csLhEDqCj4o1z@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <3935722.768hzMJKAL@pip>
 <Zh7mRYSj-st4i0z-@debian>
 <4499122.GHtaDqYCYT@pip>
 <Zh-cTQSZbb8z8W0s@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JPIQ8WQPDb2eGudy"
Content-Disposition: inline
In-Reply-To: <Zh-cTQSZbb8z8W0s@debian>


--JPIQ8WQPDb2eGudy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 11:56:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

On Wed, Apr 17, 2024 at 11:54:21AM +0200, Alejandro Colomar wrote:
> Hi Deri,
>=20
> On Wed, Apr 17, 2024 at 12:17:18AM +0100, Deri wrote:
> > On Tuesday, 16 April 2024 21:57:41 BST Alejandro Colomar wrote:
> > >  I've moved it to .../devpdf and
> > > added the download file, and it still doesn't work.
> >  Hi Alex,
> >=20
> > What was not clear when I wrote:-
> >=20
> > "Your _FONTSDIR must point to a directory which has a subdirectory call=
ed=20
> > 'devpdf' which holds TINOR and UnifontM and a suitable 'download' file =
which=20
> > gives the location of the actual .pf[ab] files (i.e. within texlive - n=
o need=20
> > to copy it). The difference, with/without, is in the number of glyphs n=
ot=20
> > found messages."
> >=20
> > But instead you changed _FONTSDIR to point to devpdf.
>=20
> Sorry, I misread.  Fixed:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib>
>=20
> Now I get some new warnings.  :)

(I guess that I'll need to regenerate TINOR too.)

>=20
> > The difference in the pages between having working and non-working font=
s is=20
> > seen in the attached example pages (compare with your book). These in f=
act are=20
> > using UnifontM. TINOR provides the cyrillic glyphs and greek of the iso=
_8859=20
> > pages if I remember.
> >=20
> > You can still see some gaps (which should not happen using UnifontM) th=
ey=20
> > appear to be caused by an issue in one of Branden's commits, see:-
> >=20
> > https://savannah.gnu.org/bugs/?65601
>=20
> Thanks!
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > Cheers
> >=20
> > Deri
> >=20
> >=20
> >=20
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--JPIQ8WQPDb2eGudy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYfnLAACgkQnowa+77/
2zIsMxAAkMPPSHD3GAjOzCyzl15rcOGRPo4S1YnCrSF2FKZ22J03eE+T4DT6f34k
hmI/tEJuzWSorWd0KHFcW3k+3Emdv1VdS2AbX6p16c+ke8b1BUJ9ZDPxgvp7crPW
NhKCIGIvIYkPC91bwazvwCqufodPx5rI7HJY3mL70Z/pFYpSbggHdEoQQn2mdJSr
fL8Z2H4ynujVF2ArUL+J6r5ftlpZ5H7Zt0yQnTy7qiP253OBXE7bXT9exS8doSk4
qDweTR92APghCr2G9Y499cSGfplWiRg0+ST9Da4GA3pwhTObFAin7wlCMTvoLIx5
xEKn+EZkDgdpAkeaiIeyabvb0hWAYDUiZuK+wgX57KXkZNkJxc7XQwuU4nG0NwKX
KfYQNjHkSuCNhkrXwVvpsXtP8JEA2CSIFdzbiPcsJZdLGNJD5BZi0YMl7L53OVia
wV2VU4I6P+A4qNrHPpb4WjbGwUlPKjZP5abE6fSqXgRJflhyZHc5pIdGgurR5JgK
ST/Sbzj2jPRaqL1cjNHzcZZIoG9sLEeo/BwZi+vJWcuRqH9wmuEsEVPmol0SHWVx
JHB7b1WPEsXe43TsaYLTLPh2UjjlMxGNlcPoV8lIK/bXpA/CQrdzbeIC9lmAAjoH
TTTwDUz8QGGhmBBgNAMh3b6PQZBhP0ghrcSW33RQ8h44deAiy8k=
=p+Ed
-----END PGP SIGNATURE-----

--JPIQ8WQPDb2eGudy--

