Return-Path: <linux-man+bounces-3256-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BD7B01DDE
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 15:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8ACD818855F2
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 13:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BE82D3EDB;
	Fri, 11 Jul 2025 13:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI2S1KJv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D871A3A1CD
	for <linux-man@vger.kernel.org>; Fri, 11 Jul 2025 13:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752241077; cv=none; b=U8JJoGC7niYmTjSGWVWN9sE4IxAo2USjmAgO+TY4VCWILQKR/DuitGte8lYY7D6Zlp06DPl0KVz62QFn6kFQO3IJrb9GH9ee71n7bPvGa4bpvw5u9HbM4SUeCE/zSdDJKbE71EztXvGxGJ7aAYQvR9eYRI7yXBZNsQ3ZN5ot2sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752241077; c=relaxed/simple;
	bh=aAPQRn14RFt2qLsqeYN+PWvhegN6M3asHc+eksWI15M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VTbVN6RhHFPb/gBBcE3rAIe1PrMeAeIieDYrP8gEiHiiRDaeJtz+2/sMl3FmcduvaihgPCxUXIuxPUN0yjsfRBpcgE/Uk6eSdQAau9YQp40+6+eAzgha6ckw2LAa3fA5bKpe5aLCjUFvsiBjQyT1HoIPvXfjWzsnHxuhTpuNPwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI2S1KJv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5DB7C4CEED;
	Fri, 11 Jul 2025 13:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752241077;
	bh=aAPQRn14RFt2qLsqeYN+PWvhegN6M3asHc+eksWI15M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OI2S1KJvIqAjZ/sIOdM9zyLWExNXy2MEG9uWdYMOSsyDD/kbnBOiTpIUwm3h/IbJm
	 gndBs9WG1a/LxQDgF6yRxC3fiInsO/KYtQrc9yw1+oOJqP7WVgORvMyvsFVp+rTeO5
	 bfrtaZFMMbQ/8nFk3ts5ZhxF/66pr+CuH0lDt6vzjO7nXBMIrswTjF+bu5xnfR95X6
	 7jo9WOI4JCKgYfLiZEGyu5QMbuYZ+QfFqnPSNN0xJcsW8upKe6EM45rZ9KZ1mskIhP
	 hbdd0LAlypukeN9SwN+c1EfUn3NWdusqbw8yiz6MzZKef1ULW6RNpCa42E6Mz+ZabL
	 OZVQBv4Qf5NGQ==
Date: Fri, 11 Jul 2025 15:37:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
Message-ID: <ijc2bqonmqeqbbl5lg2qsucoltoq5atkepfp62aipmjjnc6egt@aw2l6zclt35c>
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
 <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q7illinjwn7kl3ny"
Content-Disposition: inline
In-Reply-To: <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>


--q7illinjwn7kl3ny
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
 <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>
MIME-Version: 1.0
In-Reply-To: <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie>

Hi Elliott,

On Thu, Jul 03, 2025 at 12:12:49AM +0200, Alejandro Colomar wrote:
> On Wed, Jul 02, 2025 at 04:40:31PM -0400, enh wrote:
> > > Hmmm, yup, that's quite incorrect.
> > > We should add this to the commit message:
> > >
> > >         Fixes: d91506f8faa4 (1999-08-24, 2022-12-19; "man-pages 1.26")
> > >
> > > > +returns a pointer to the end of the wide-character string
> > > > +.IR dest ,
> > >
> > > I don't like this wording.  It gives the impression that this function
> > > is appropriate to create wide strings, while it's not.
> >=20
> > i actually didn't come up with that: i looked to see what wcsncpy()
> > said and copied that :-)
>=20
> Hmmm, I should rewrite wcsncpy(3) then.  (And st[rp]ncpy(3) maybe too.)  =
:-)

I didn't find any text in wcsncpy(3) similar to this.  Maybe you read it
elsewhere?  It would be interesting to find the source, if it needs to
be fixed.

[...]

> > > How about this:
> > >
> > >         returns a pointer to
> > >         one past the last non-null wide character written,
> > >         that is,
> > >         .IR dest\~+\~wcsnlen(src,\~n).
> >=20
> > yeah, that's a good way to avoid having to describe both cases
> > separately
>=20
> Thanks!  I'll use that.

I've applied these two commits:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D53783e73e482042cff0db76762d808b2f73305a1>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D7e4e9222e90d11ee0f7ad35004eb00c3d56b3574>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--q7illinjwn7kl3ny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhxE7IACgkQ64mZXMKQ
wqmHfQ/5ATzyTdpOwC7W5AgSclS1Uy0Do6WC0pv9qTrhZLdWAWPXDwjloONbEf6c
ysb18Xqtp6iPArLdjOfjZZzmyF2in+CQwV38qAfzRXK4Bht9+7A0iw19Afk75Ply
wp7hJqyqTkCedy+91X8cjDcppxMd52F68BGmuB6isUcopyYJHSBcCFE6kPnH03Ij
EqE/knD/n6k8WEr1rX9nVCcmyfIzu4VRe7wwtZsrvoRIyAnDfUvdoiMwHLE9WRto
abhFw4OZWJcaHqBnRBRcfR5vs/+pHhCuqUkL9LneP6oXr0eBtVSTEn55wK74yV/K
m944dI+ol1+1SWqX65dlqXMC5l6XIduouFlS8hw7z7BGeUI5uqtEj5Rvw4J1UuiG
yr/xq82j1nvN0DP4hpTUb1u4EL0Mz9est5C8OjWzFwOQz2fK5nWTjJQBrYP9I4st
R1WOs3df54/J/Rj9g1KqH6H/GcCOJSyV1dqSHuM3DGNHCC4GPfAkCTtlnQU2MMAT
D13ek6vxkOSKFtxt0YSpZvgjSHwWiK7EgRmWuRKcWKQfgDdRieGnelW7VYxYULlK
7q0C9ggjZHVFR2EpnkYVIGKv9faLecWOMNYn0PyD4IIZuz5GeYPVS1VcFDYYSEV8
v4qNXalUUp5cC6JWczq+h50Cw3OC8FfC4Q2bt2wyBb7Yd+o94BI=
=WYOp
-----END PGP SIGNATURE-----

--q7illinjwn7kl3ny--

