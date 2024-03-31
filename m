Return-Path: <linux-man+bounces-712-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B33458935FD
	for <lists+linux-man@lfdr.de>; Sun, 31 Mar 2024 23:36:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6D701C21004
	for <lists+linux-man@lfdr.de>; Sun, 31 Mar 2024 21:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3508D1474BE;
	Sun, 31 Mar 2024 21:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEPUYxM5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5C726AEA
	for <linux-man@vger.kernel.org>; Sun, 31 Mar 2024 21:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711920965; cv=none; b=QPnS6CnDPQtVJPpr4N3CuxJro9/62qklEVXhKrVshZq7yG975aJbkPOD6syH+yiS7pFH3T77VGTtkuWxFU42u7PytDcCvn1tMd+4J696kEFI4xZ4fAfq0bfxrWFIQEuGq/ATewMw/Uo2WxO0pggF4vf7NoxVLlthRD0NpklsiGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711920965; c=relaxed/simple;
	bh=a+mPO7My5DtzBIv7Ndktew8vQsK/gQS3d1yjSuFJyEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ocHnPLxGwYrbfYks8/9Vqp+9xdr7vXPuGzgHHmw0hhPm9tMRG+fDejTy2n0bY/ORBs6xlXY1dhTcAa6nAkUCnpZ4XRZZ81000rWuJjF6rgmgfZzHwDhsFFz+c4gJSAtd9I3a9J8hEIMq6jXy36Y1P8R6UM6eBS9Lh0HWb/ObBVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEPUYxM5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E66EC433C7;
	Sun, 31 Mar 2024 21:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711920964;
	bh=a+mPO7My5DtzBIv7Ndktew8vQsK/gQS3d1yjSuFJyEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qEPUYxM5iEK+vTK9NmFmt1RfPxTUiceYnuTrhli/ddOcaVVAYB0hPvks6X/dhR38Y
	 AKbO4MylxJ37F1fIMLqTpYMiS7Z+sun0ERi23AXfLziggqhlvpMUAuBkYrQj4WIMNF
	 k+rGa6YvsPu0NHbDb4yG96Vua4WvfgldXOMPvHha2YBJQ2yUp9l4CN+Um9jANUYSTY
	 Mot8quDFWYTHfmxBSj4+p3YHIZzIlitMz1PD+w1toQ85dTQQa1ytlt5ac+uviHUk4u
	 xdUGWzXY95nGrDRNCbSLJsgqsjQEdJX/ET7pT8pJ6XxSLB5Vg3RXb3lENMkFBGDvfj
	 cS0XbLh01idPg==
Date: Sun, 31 Mar 2024 23:35:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2
Message-ID: <ZgnXQB-vt_lr2lFe@debian>
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
 <ZgNYTXW4qHm7fBxi@debian>
 <CAJgzZoqO_pdy_=+D0AHYhikXMDbTKKn94EttuUeE5EHjxct5vQ@mail.gmail.com>
 <ZgU0PKbECOOBaSZ7@debian>
 <CAJgzZopUR3=QbOyy=101GrBArTxBfP2GFzfJXR75gbu90Ew_aw@mail.gmail.com>
 <ZgifHQoTaDEiga0W@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y27WxrLkg2sXugnB"
Content-Disposition: inline
In-Reply-To: <ZgifHQoTaDEiga0W@debian>


--y27WxrLkg2sXugnB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 Mar 2024 23:35:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2

Hi Elliott,

On Sun, Mar 31, 2024 at 12:24:12AM +0100, Alejandro Colomar wrote:
> > From e4e24a6a7ef66016edcd735f3cebc7f6583e716a Mon Sep 17 00:00:00 2001
> > From: Elliott Hughes <enh@google.com>
> > Date: Fri, 29 Mar 2024 17:10:26 -0700
> > Subject: [PATCH] getpagesize.2/syscalls.2: modernization.
> >=20
> > Remove the HP-UX portability advice, since getpagesize() is a slightly
> > better option than sysconf() for Linux systems.
> >=20
> > Explain why this function exists, and why this man page is in the wrong
> > section. (The previous text tried to do both at the same, which was
> > confusing.) Also explain how the vast majority of architectures that
> > don't have a syscall (but do support multiple page sizes) actually work.
> >=20
> > Also de-emphasize the glibc 2.0 bug, since most people don't need to
> > worry about compatibility with versions of glibc from 1997.
> >=20
> > Finally, change "not on x86" in syscalls.2 to say where there _is_ a
> > syscall.

I've applied it, with my suggestions on top, and pushed it here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc1e10426dc22ca976ba1107f7ca95a373bb22f83>

It'll stay there for a few days, and then to master.  If you want to
send a Signed-off-by, I'll add it.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--y27WxrLkg2sXugnB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYJ1z8ACgkQnowa+77/
2zKsGQ//eTZZIsXaGhroeNSk8rtPXlu1nevr6nrKSDqktTrMJj89jtfkGmCOqSPP
T1VCZ7TvVhJvxFNO56T8hmiY/a3MZRPcK0r6FBx7Vk2B5uESXOsOPUm5KZ3TG25x
c4jmYca7c1SUHi+oErOkKpAcTXQJ+ylMycWxCTRXPDEJcetImXTrbZebQ2ibzhxW
VXeyXKM0TcjbI393TxbZwoW3O7A/QBwTHKQK7TtV6pLga9yPhajsvano7Dsd4YBE
lbAbH2Fbw5MK7Qko5htuJSzKOwQ8CnKK7uF4kW3tBVkjqMyv7DfuWGfz2Fv41EvI
28pWxVGt5FoKfIzQzw+GnRMYQ7AzoOA1VFrA453/mBvpvNDDrkWhKVViKNKY1Vux
EHW7yu8gzOkH3DFCoDiZEnT1eNsNlPqTjV6eXGOYGcF6PztLIjzJobY6rXSOgDvV
JOlbjwRVo1ddB6M1jM2GF70o3A9kBNyUKBYGOY9tVnCx5+KOniHuN6j4brEhtCCH
rBU5NZPFnTPuBbTxPg/5dRGUePP587XShfLpQVcgo6nKKfhCI+W+pe2nQb7YLW/S
1bKUfcS70kwL1dsxEEMk7HzBerNaebhCkgUNeJBjphg7OL9LXecyDjNX9dLjv2Sy
k+3kHvfjVR1/t+0R9jkP7qBj0ZfRPb46djhrYyM9K+bRcsY8IrE=
=xXPK
-----END PGP SIGNATURE-----

--y27WxrLkg2sXugnB--

