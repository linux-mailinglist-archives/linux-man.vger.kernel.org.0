Return-Path: <linux-man+bounces-1624-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE15E9552FB
	for <lists+linux-man@lfdr.de>; Sat, 17 Aug 2024 00:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BACD1F22836
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 22:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405DE12D742;
	Fri, 16 Aug 2024 22:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwggM7p+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014F012BF25
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 22:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723845687; cv=none; b=LOcJdW61ncSrEbYa+vSchL2dNAJBS074CEIx+bVglwPNYoF81zMdHk/yG3XyQRbt6HtxWKCrsnGyTZpDFvU68nx1Pz0eb6amgwN6ECv1GUB7rHGkVedGM3gOLrHd8H+h8JvKQM4oQ1VEhDJQ4uJoa8D8SlF0fijX0zdkZZj8XRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723845687; c=relaxed/simple;
	bh=5wUwQOi5RgAYNLy6snZgQgQZbbJtDmJQODFIfHUlTqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=izYmkNsXwdgN8Qh9mHcVtCLxB92pSsrVIzrB6jx6iHFSI3ExWMeLhu6kLcpXScUCEszQplCN2GkiBuAbCtdHwGbVU/fwbm39wgrBCtSbvMkpFycTjSEI8fAsWsElQMbHBd0ec39uttF5706j2MDAWNunoQj8c13IQ0lr8U45Z2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwggM7p+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D258EC32782;
	Fri, 16 Aug 2024 22:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723845685;
	bh=5wUwQOi5RgAYNLy6snZgQgQZbbJtDmJQODFIfHUlTqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YwggM7p+kXTaqPWAhxTcgl1GcsVst54fmivKwpmEyKQjZ6drEWQuASprnfYrVRxRu
	 aaehdoCciFnyTPdTP3m6lHphdHURv4Q03meXMC7FjKJdiwN5shBIFrBmIc6izbm6cO
	 x5SFw2I2rWYHYkOqcu8Ii6aOBKDbxjxAvSnkl12ei4NqkoZWfsBv972pOAYHB/eEAx
	 QQmyHPB+iq+f3JCJZ/XlqTHP/YBeZmZ1M+r8cMqqo2cuoiKOwgIcXAZiIy0uda2OBt
	 EJaHFh60gjM2dp8t2zfAYSTdmGusW+rLJ0gs/nabQSZB5Q1OUNlkaIcNEAwGgzRYbb
	 p8G0z+Z3bGViQ==
Date: Sat, 17 Aug 2024 00:01:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin
Message-ID: <5j5ymkv23vavevl7qliolyackfe7chdq2tssnwjqsh3ygdoswj@2lxs6hgfouzr>
References: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
 <hz5qlcwhfgimcsaxhttuivzfbq32vsyn25sxzxmwprrln2anl4@uc4p5352cnxx>
 <wdlmfjy6dhoaoozzohvbemecvyqlzcgkuywzkntxnxtewut4zv@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2u3s4kjz76h2zmm"
Content-Disposition: inline
In-Reply-To: <wdlmfjy6dhoaoozzohvbemecvyqlzcgkuywzkntxnxtewut4zv@tarta.nabijaczleweli.xyz>


--b2u3s4kjz76h2zmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin
References: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
 <hz5qlcwhfgimcsaxhttuivzfbq32vsyn25sxzxmwprrln2anl4@uc4p5352cnxx>
 <wdlmfjy6dhoaoozzohvbemecvyqlzcgkuywzkntxnxtewut4zv@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <wdlmfjy6dhoaoozzohvbemecvyqlzcgkuywzkntxnxtewut4zv@tarta.nabijaczleweli.xyz>

Hi!

On Fri, Aug 16, 2024 at 11:48:10PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Fri, Aug 16, 2024 at 02:07:02PM +0200, Alejandro Colomar wrote:
> > > Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right m=
argin
> > I've s/grow/Expand/ for mnemonics with 'x'.
> > Also, we use upper case for the subject after the ':'.
> >=20
> > Does that sound good to you?
> Yeah.

Thanks!  The patch is on the contrib branch in my server:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Ded9c023473a50c33793bbe0c5d155e81756e9b60>

I'm delaying pushing to master until after august, since I'm waiting for
some tags for a patch set in that branch from a kernel guy.

If you need to send some patches, and to base on some of the changes I
merged from you, please have a look there.  :)

Have a lovely night!
Alex

>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--b2u3s4kjz76h2zmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/zDIACgkQnowa+77/
2zLkeBAAnU2fOUtPrQ0K6lTZmjhRgvHYXI22sJF3BWovI5PW77rlHcqqmY4iJsvG
HULvcAcoZ/oLNOhECD1UWFewNMhkNNrPFpu9EOG8iUBj/2oEEG5yezOzrSpj2XcZ
LY6Tw3pWWp0iBT2oFCOG5hi5re8Xkjo0YKCbEjjtQtPOxsQAyR920SLcPgoV5+xe
hJ12YJgM/98I5rzAbXuUrwuIdzn+LhK7Rj39mpsnI/xpsCt1CeREVvmC8/fblIER
1kUHUuaji9q2niaAJeEMd92ye7BrJ5yc1aunGOlO4jRlYDGVtdGeeyTWsA+2q1eN
BQ8//LYnRd22nyQqKCDLxmxAykmZ8eGuvhHk1tZSLa0cqaMpegZqxCSFpscwICDF
06ceC1koaJeeyt31o7m52qNEzqkHi3HPtCidoGqfe4ydvBvdSWAi/MiqSpYv/fw/
Pau6AVuUD8Rue/lOsHB3v3Qo6fbH/cg/CV1N7kGnd90+Io2YRpBwBYgdekWL+5zR
bqN8cFAPrWzoPAJAwjBIw34Oj4yhX5sddDxF4OD0mbfdYrREQfkA5rm96p31pZDa
8it5sg56JJGkliYT6CWlD9dcgDzBU8keCwkI3k1++CKl6vEG2slMt31bb+lXvRyC
Bc2TJB4BIB3E8hbFljuWEcAE/Uqd6QjNJVZ64rwjXgZNo15uOcE=
=EZF8
-----END PGP SIGNATURE-----

--b2u3s4kjz76h2zmm--

