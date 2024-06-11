Return-Path: <linux-man+bounces-1076-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B307590375E
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 11:03:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA22C1C2122D
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 09:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE92176221;
	Tue, 11 Jun 2024 09:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLwIwwJx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A079F79C8
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 09:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096602; cv=none; b=a24SZor7swf1px/ae12C9N/o70qH/Ut4gegX4nyJxFVQ0vEK8hZ4H6UadbXiB7FWLf89hADYcXR3u+T/90tTnBN4ujghtSHWBr01JBSR+5K9pixJ5p1jhWZMXT9LsUIZTL6Xp6+nuc4R1DZGLglUDOzmCjLTXY1ghBv11SenKGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096602; c=relaxed/simple;
	bh=T25jcKap4aXWjMI58jSFffDUg+Dm9KaK8oby3C2uY78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nxQ29lRXnjylKgcR6gfHswKeLFGe0EESX1OSaCSYxmHSeknENVV9A0Qtvz32U/0QHdFWp2QmGm6H3eZyqSCU6jdBi8Pmx58frL1pu5dZIjBpu6Ggs/34B5SqHxM5Mzy0n3yMgvsKZJenlMWXVQpjvnQ8TkqEZ+HWt6IefsR8AFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLwIwwJx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F719C2BD10;
	Tue, 11 Jun 2024 09:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718096602;
	bh=T25jcKap4aXWjMI58jSFffDUg+Dm9KaK8oby3C2uY78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NLwIwwJxTOfacZWJLBnClvdCB/HJ0L2+5nLMTGa5V7TQDs9RVSbCQH7h3XZWIY4Ac
	 tBfkh5BqkJT8fgO/WgovCaam22x7MnFOCiYqEDFiWKJ7UHFhXgLHCTv054nxHSjLwK
	 pFUkiRD3ykTiNdPFw+n+QSrW0WR5bJ82LNVBqUcbeLfz+OGCm24rsus6jpY1SCbV0R
	 lnqJTGqCcwWO0DbmnhFd07zBORbr75bcgsHJ6+231TVNAbgi+P3SbLtdHOsLcreYVo
	 RyXkBCxqRxbwNGDFDGW+FqMWqg0JHg6AGBL3skmlNBlKFfdMQM2ozAF3SEcUNe3iDq
	 XIyozj/hPvikw==
Date: Tue, 11 Jun 2024 11:03:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
Message-ID: <7k3zem6o7y25szuxuxe6zmhi7xqioqe4d74s74y32yhceht2cr@lscysoj5eqoq>
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
 <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
 <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75vsgczek6q7yia2"
Content-Disposition: inline
In-Reply-To: <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>


--75vsgczek6q7yia2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
 <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
 <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <775fa930-82e3-41d7-b43e-5b9061525eef@cs.ucla.edu>

Hi Paul,

On Mon, Jun 10, 2024 at 07:16:43PM GMT, Paul Eggert wrote:
> On 6/10/24 15:31, Alejandro Colomar wrote:
> > Nah, I only keep here the first one, for simplifying.  If it was added
> > in C89, and is present in C23, we can assume that it was present in C99
> > and C11 too.
>=20
> OK, though I still don't quite follow what those sections are supposed to
> mean. Most of this stuff was first standardized in POSIX.1-1988 or
> POSIX.1-1996, for example, but those editions don't seem to be mentioned.

In HISTORY, we try to document the oldest versions of each standard that
provides them.  However, I don't have those older revisions of POSIX
available, so when having to pick a POSIX version, I documented the
oldest one that I know documents them, which is POSIX.1-2001.  Feel free
to send patches to make those sections more acurate, by documenting the
actual first POSIX standard that documented them.  If some systems (like
V7, or SysV) are relevant and also provided an interface, we also
document those in HISTORY, BTW.

Of course, if a standard or system made significant changes to the
interface, we also document that there.  I suspect some of this 2024
change will have to go in HISTORY?

> Anyway, I attempted to address that issue and the other issues you
> mentioned. Revised proposal attached as a series of patches.

Thanks; I'll have a look.  (Hmmm, I need to make neomutt(1) inline
patches like mutt(1) did.  Or I'll review it with mutt(1) maybe.)

Have a lovely day!
Alex











--=20
<https://www.alejandro-colomar.es/>

--75vsgczek6q7yia2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoEtMACgkQnowa+77/
2zKrhQ/+M6acnShzu/Q5GZugtaGT9lmyw85LEaYa9XkGFifnj5GIHrOMP1gyeQ8R
CoJS3KkNBqMhL1UBIpnOqYsGsjckXMQQTqIXSvN4I4yFPdfKHo76KK60thTYAc21
0Jh6ANkASLqZfFNvy7RNLdaHZS1HXTk8mt6O6Pd1nu1fq+pRerhrjYoBPL7RwxdT
ZQHoEudSBHsu0xlMq00c9SniBrVw9bkqtL+BammioNxLEogiaIEExyFlAgQ+U3oR
mMqhdQRJuxh5kazXQFs1NORAyeyM6TuiBPuKr+vWsJKujssTvU9wbHRcE3JgvdKc
lHfa8uj3GItOhO4R/d5HpdRumP5bjKUPUZZjpyfFaxQg7N92Uo9WhWTDLFxTTdCU
0fN8xB+ANkicKJCEIb5hABzYJ8D2wGCJPL4MzMY89Aud8fCNhu4ZyX2D1vU87Lvm
T6649BHpKw54riYbyTVFfjw5fcqeM5bRgbgHxM79yhuh3eQY4PvWFqsCMari0mAM
/6uUtq8mo0jRt+SyKG6GuKjVL+Qm8aN2LRDvAV/iRS2aO+6CW3hOP3l497MrKqx7
aKKtvP043uNogCrTcikxI+RiecNfo1phmrxsEfJU3yrGD7nRjPwMiSZ4ddi4qdm5
j+Q1EIrJJxI8rtFqZJxnm/QkGH5ulvD2niDqXe1sqxaZ754U6xQ=
=8PWs
-----END PGP SIGNATURE-----

--75vsgczek6q7yia2--

