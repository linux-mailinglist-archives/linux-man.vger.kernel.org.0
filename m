Return-Path: <linux-man+bounces-3893-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A87DB8C3CD
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 10:18:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 617AA5844DD
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 08:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD57B23E346;
	Sat, 20 Sep 2025 08:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5GKnkG2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D81934BA57
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 08:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758356287; cv=none; b=rZY9Hyk25MN9JxC3XjvLuRPf2KjyGeP658qS8TAX4CudJCohn0rscv9QNvd0XLNv2R38R9gc3iFMB/FVsvT8XMv5d0oB6jP6b5ZhtuTtkHNAu+RmyoKB1W7tXP2t7A1ffzb33HE6wR7tS+dbNOCvogHionQKwBNEf16LFRHeqcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758356287; c=relaxed/simple;
	bh=gOcvPNCdive6IPPfhAggzc0imESDLgA4GwqKEoKaNGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gw0VM6lueJbSA61q7glZW7iTYkiDZrmdLcIv//g7u2ffODrFBCapiR40szhy69MDe3e5gTmmoaUf8E22oPYonSTW3YN+CstJ8Urhp9XF4yupEj4JlzPSr2n51vTiBXUhHtrJS1sqpjQN9dd7lnHWXCnV65qyz9GOK+KsrwI+OKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5GKnkG2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49A1FC4CEEB;
	Sat, 20 Sep 2025 08:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758356287;
	bh=gOcvPNCdive6IPPfhAggzc0imESDLgA4GwqKEoKaNGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I5GKnkG2XhEq2AjTtp4zpwpXkDRb/G2o/Nrpih9btEcZBnNhv1FtMMpC/xU96BkPX
	 EDGTTVxwHWanjHRVckVTA15+5g3t7PhC0zGNlD6Ay4lFahrvSOJk8ekW304xeKGjww
	 QhpPmYl5ZagHhO6MjnjFAhlAVmNJ/+am+46EVimirkQqCLY/H4NHfx+mLxFFS5hNBp
	 MhWWmfIAEF0E6di+vB06dviJP8RQjyJ3rfK+ZsUHaGBYMLuhICWeApEDWLi0TcNdv2
	 84oqJR3DtprVJrFOBcYsxhkN/K+SFocFlsFSkgoPa5cwrVt+ra92tZSjDq9A9HcUMK
	 pi/Shf7VftRDA==
Date: Sat, 20 Sep 2025 10:18:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: lnx-man <linux-man@vger.kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: New streq(3) and memeq(3) manual pages
Message-ID: <mmynjy6nakzh5q653oirj7eoi3j43qqhp2x4tdz3sbg7n46vqx@my2t6thj5gas>
References: <cuxmb5x5qfc5f5sx2k5ox6qamiakmhngap26u2c3do37tmet6y@juvzxx57hlcb>
 <CACKs7VAJCRNwWxg4nBWhs1raw=iD5469fk11znHK9rYRfondqQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pftvyvnzjg4htrja"
Content-Disposition: inline
In-Reply-To: <CACKs7VAJCRNwWxg4nBWhs1raw=iD5469fk11znHK9rYRfondqQ@mail.gmail.com>


--pftvyvnzjg4htrja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: lnx-man <linux-man@vger.kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: New streq(3) and memeq(3) manual pages
References: <cuxmb5x5qfc5f5sx2k5ox6qamiakmhngap26u2c3do37tmet6y@juvzxx57hlcb>
 <CACKs7VAJCRNwWxg4nBWhs1raw=iD5469fk11znHK9rYRfondqQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACKs7VAJCRNwWxg4nBWhs1raw=iD5469fk11znHK9rYRfondqQ@mail.gmail.com>

Hi Stefan,

On Sat, Sep 20, 2025 at 09:13:20AM +0300, Stefan Puiu wrote:
> Hi Alex,
>=20
> >
> >         memeq(3)            Library Functions Manual           memeq(3)
> >
> >         NAME
> >              streq - determine whether two memory areas are equal
> >
> >
> Shouldn't it say memeq here?

Oops!  Thanks!

> >         LIBRARY
> >              gnulib - The GNU Portability Library
> >
> >         SYNOPSIS
> >              #include <string.h>
> >
>=20
> Isn't there another header to include here? Just the system string.h? I
> would expect a gnulib header here. Same question for streq.

gnulib provides these functions in <string.h>.  gnulib is a bit weird in
how it's used...  It becomes part of the project source code, and passes
appropriate flags to the compiler to interpose the system libraries.

One can't use gnulib in the traditional way of using system libraries.
I wish this was possible, as they have quite interesting APIs that
aren't provided by glibc or any other library.

> Regards,
> Stefan.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pftvyvnzjg4htrja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjOYzMACgkQ64mZXMKQ
wqn6tA/+OePhWwoZnubwPFoLzCo/UD4zosD8ORG2rkJPNHYMLcsSZphWZxQXN1h8
aT6Sr4BVoVOz9/wCNXg14gf72GKs3ScxbteRMaSuk4Iz1JeGGtD4kVBRSZisacA5
LZzeC8ckf/HQb58FpuEaHdbky3hvIlsrpoy4wPrSe9Oo+gT1zCXh6/KJ/s8cdMd6
73yVhRELJ8nZOXm1Jh+MmMthx2dp3eT0YN4qh8t41yD2KLaaS/tsFo7hVKAb1gAg
7iI/6QIYbySyHF6YRVK8dZnMab4Of93pn3u4bzkG37RMqDZu5vazmuj1ycnfTzsI
9jAX5WdtEh6F7d2iWzp8uu5V4dO1GOWP0ZROhhCBykzyumT7pj2HTxjvaHSJZCCS
PuxMdl9E7s3AVZhShhOQXLAzQIR+sutIB4d6o/bkJuDuZieQduqU0pz0ygCYK+Gk
eiwEHTt8rK3RIzuUOm2EGpfNrojST81SIzOrapLbuNRVvZ5PsvJ7rDOj17Rq+/0T
Gq8In6MHEyDquBku3vJ9phS0n+0k0DkwW7i0uCbgVRQinePJYveUWUYb8ff5tOJL
0sOqw3OtsiI9o7Ixiy66a5iy2b3oCNhIBMc/C1SFkkQcRPRAf8GYihxNN3i7OPNQ
C8RSwI7TT2+2GT51MDRXebvpjv8G9EknINAsbOXXdl3c1bH34sc=
=7as9
-----END PGP SIGNATURE-----

--pftvyvnzjg4htrja--

