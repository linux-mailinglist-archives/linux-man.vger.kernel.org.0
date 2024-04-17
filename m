Return-Path: <linux-man+bounces-780-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 980428A8D3F
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 22:48:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9750B22D7E
	for <lists+linux-man@lfdr.de>; Wed, 17 Apr 2024 20:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 975873D966;
	Wed, 17 Apr 2024 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKJwK1VQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582D74AEDB
	for <linux-man@vger.kernel.org>; Wed, 17 Apr 2024 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713386893; cv=none; b=Q9cMuEzUZdHCQEfplmv2MXUPjF+W+FYwtAZQ0f8KNGLwvT5IcXGYtfo6uZYGig0ywrWHq/U8Fhf7Ck2ZWygWwutyS5XIALwx1h47fan8eQmwDxrOc+RoVRzHvjMls1YXJuJjYMUQiBAR2fq2X+oncTY7rTSD0Av2MD2T3I4vbQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713386893; c=relaxed/simple;
	bh=LNyW31KaA0w3E63wuVEb21eSquyfsN9GTnd6UZhoaw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AHnzT8FRkYSzHUjIZllvpGRqtrdh6/T/E8eppASlxPcFk9pIfEDuQ5vw+gZg1/lLzMoLg7q+YpV6Kogxjcyiwcf2r6EbIH2Z9t9SJ4fr+Yc7g+Dnz0D9T/9KBFugmVfXVpdnYttwEb+plIG6m74t1q6C71RhEH9pkZwzEJgjk2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKJwK1VQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39B32C072AA;
	Wed, 17 Apr 2024 20:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713386893;
	bh=LNyW31KaA0w3E63wuVEb21eSquyfsN9GTnd6UZhoaw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LKJwK1VQ8vz2dOUdUHMa3vK/6kOHqcmE75bvJxfGmv6XJW9thBrFkP3XPXplIh/sh
	 plHNR6GkYEYyuFYP5dpFrh7HLxnRKpGCGHOocLZ744Sn3nvsILREIHLoD2PKRmOOQY
	 X5OO7BG9axddfQ7eI4ToDihV2KIZhKK53IsdWrnD2VkgDyO10g6/5ZFM630WM9keBo
	 oH2sP0RNusPOAHn5n3pD137hBSvUqIkUVE8HrESE/eaHmtJJc5gQzmQJAI0jcpNLvy
	 KZyLATMpBTNiuRtcVndoufiHrkoierOsfkLobbi9ud1r/Z7+zE/TVNzp/8pksUcJqE
	 P74Lzjrk7B4bw==
Date: Wed, 17 Apr 2024 22:48:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZiA1iq1NSqWWADrT@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <4799523.HlgaahpBl1@pip>
 <Zh-llsEJE6qt85uS@debian>
 <3180200.v3Tbpv83Wp@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e9LeZ+JY+v0CVfzf"
Content-Disposition: inline
In-Reply-To: <3180200.v3Tbpv83Wp@pip>


--e9LeZ+JY+v0CVfzf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Apr 2024 22:48:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Deri,

On Wed, Apr 17, 2024 at 09:01:01PM +0100, Deri wrote:
> On Wednesday, 17 April 2024 11:33:58 BST Alejandro Colomar wrote:
> > No, but they contain binary.  Here's an example:
> >=20
> > gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=BD=
=EF=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'
>=20
> Aah, this comes from the new font subsetting code in gropdf. I have not s=
een a=20
> font quite like this before, most fonts used with groff have been convert=
ed=20
> from a .ttf/.otf by running it through fontforge.If you are interested in=
 the=20
> gory details look at the git log for the fix just committed to the groff =
git.

Thanks!  However, I can still see that warning.  I've installed groff
=66rom git HEAD:

	$ git describe=20
	1.23.0-1149-g5589bcd18
	$ git log -1 | head
	commit 5589bcd18776c6d236c53226a0ee30506180e6b6
	Author: Deri James <deri@chuzzlewit.myzen.co.uk>
	Date:   Wed Apr 17 19:25:03 2024 +0100

	    Improve font parsing.
	   =20
	    The usual (for fontforge converted ttf fonts) is to use the RD, ND
	    and NP operators within charstring definitions, however these are
	    just named in the private subrs dictionary so could be assigned
	    any name.


And here's the warning in the man-pages' contrib branch:

	$ make clean
	RM -rf		.tmp
	$ groff --version | head -n1
	GNU groff version 1.23.0.1149-5589
	$ make build-pdf-book -j24 >/dev/null 2>&1
	$ rm .tmp/man-pages-6.7-63-ga4f3afd28.pdf=20
	$ make build-pdf-book
	GROPDF		.tmp/man-pages-6.7-63-ga4f3afd28.pdf
	troff:fanotify_init.2:322: warning [page 192, 4.2i]: cannot adjust line
	troff:membarrier.2:272: warning [page 475, 3.0i]: cannot adjust line
	statx.2:240: warning: table wider than line length minus indentation
	troff:syscall.2:171: warning: cannot select font 'CW'
	troff:syscall.2:301: warning: cannot select font 'CW'
	...
	gropdf:zic.8: warning: Don't understand 'dup 0 11 -| =EF=BF=BD=EF=BF=BD=EF=
=BF=BD=EF=BF=BD=EF=BF=BDB4fD=EF=BF=BD" |'


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--e9LeZ+JY+v0CVfzf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYgNYQACgkQnowa+77/
2zKKXRAAiTkiraiaMnRENE1e4izyisfDZY/nonhKfQre5vrWyJkjh8h4MQBjjaLX
M+P13dDaLn2IQnAA7iZraa6ElwJZDHKwJJ+52MOyWGYv1kpMgDW6E9u9YHIHdHi0
Gxbis4zvh63+O2L8Br5/r9bIee2orLOIqkTiu3ADHTScDzUAkf1lqHTw6aowj5lZ
ExZ2CELdPllsAG73DSHEgvqLvhuG2gZN2cZQcVWAmsRVu4sbiFG4UBtlSFa7LUR8
71eYzHJvKTMLKG7xJRyNB5Ii1mi//3Ob6+O3dbMA85wQq7v4dlNRu4Er6nyWRylN
MsmjTr+JE5RsabMJYzMXrM5bZwyBtBRgEK4X5fgSThLDS3in9nVCOp+f9aD6GdP6
n44woGarfCfkTTVnZsEYmAKyaHsgnbi0LY5xEh2TBI6iobFljI9Ajedv4ADd4i6R
nEQCXdKilmO2sDaihU8DI+s9E1Fd9m3Z/Jmnq1yZ/YCwPkMOsuitsTq+ZAfqwOpi
3MloSmwiE7JlFOI+XbRLbyNzeM8mkYRDAk7oWP41liMfe0TDAv8UBUJP/ILNljuc
aSzUrPOgf9fZOwYXc61PpBUZmWDlLZeT3pl5IGxA2yJObebYvlt6J2hYoDLFudBM
mpwKZhVzjYYRjHMG0yAZoa6sFYENDKZyaLUIA8CLPXigO3k0UEI=
=JVDq
-----END PGP SIGNATURE-----

--e9LeZ+JY+v0CVfzf--

