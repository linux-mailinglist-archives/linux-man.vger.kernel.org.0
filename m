Return-Path: <linux-man+bounces-1038-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE288FF7A4
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 00:25:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2142DB2173E
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 22:25:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F49C13B5AB;
	Thu,  6 Jun 2024 22:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6PYNByq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCE3224D6
	for <linux-man@vger.kernel.org>; Thu,  6 Jun 2024 22:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717712709; cv=none; b=aCWZT9prGUJOuX1ZqetB1gzPPyfyTzwy34ohztf0NlNHp4eVFajp9BAwW1wka4GpWHc9/t1/5L1fpckyb+Or1MJTS6KqwqqIHHadtyPlQdRmlXISfSsAFMN67sJEsRNoo0UN8ramDNGbqndw56UN1UdiL9tS8F0NL8oi4GbRlhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717712709; c=relaxed/simple;
	bh=6wdRpefi7ypaQmeKZJ9kIv74qfbj+No5QR3qoAgSLo8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfXL1PoLoEWFAe2tZv9mcivp3ST98hKUu+OUpcE5Mv6DEzWGirmW92V9sgrS2DXricKMA+zXEiLLZmmNXYL5CV15BBXpQ5QklE8fl23eoWtvBmCJw31nbzdpd0kq8D4tTx0jPKZmxX4rEtWZKH1xxLMzsipMaoElcdFijpxVsdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6PYNByq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 052D9C3277B;
	Thu,  6 Jun 2024 22:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717712708;
	bh=6wdRpefi7ypaQmeKZJ9kIv74qfbj+No5QR3qoAgSLo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k6PYNByqAJMkuHrqA+Jv3RDv/7QBRyFtf9zjzo4UKv562ASvlp+Pa64+IndnsTSzK
	 VVKt6tjzeLwC0obrTlc0/OiLtRG/5NHCD4HmMMhePhSYWrtEJ9XxrfHdP9qjo4sECw
	 gEuSEcG4BYxZPlWsuTgoBKESX3X89zvXHNepQoz4v03OSZAB35qNPBoQG2qvbhMoVr
	 hjHWW5O/Yx0vfv79GpBNibv8iEaL3PO2uRlHvM/gJF3d4kFDguJaKv8Rv/Q+aO/Wyg
	 taARPtqUXwVlhBfNz9yEyPylK1/znoxClzZabnbQFgzRcUq3ioLf08kFchBMS/7RXK
	 lUEFmQuUna1Zg==
Date: Fri, 7 Jun 2024 00:25:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Message-ID: <jqnuggiy2od5xc4xi67oemdhavh2aqityedevpxchypeqeal43@xp75h2cplbj7>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
 <ZmI0ydFzb754YD-C@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="db6xmhfjwi5yscjg"
Content-Disposition: inline
In-Reply-To: <ZmI0ydFzb754YD-C@LQ3V64L9R2>


--db6xmhfjwi5yscjg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
 <ZmI0ydFzb754YD-C@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmI0ydFzb754YD-C@LQ3V64L9R2>

Hi!

On Thu, Jun 06, 2024 at 03:14:33PM GMT, Joe Damato wrote:
> On Thu, Jun 06, 2024 at 11:44:10PM +0200, Alejandro Colomar wrote:
> > Sure.  I used a different pattern with prctl(2)s, so let's use a mix.
> > Do the ioctl_*.2 tradition, but also add link pages with the names of
> > the actual operations (which will allow to search directly for the man
> > pages of the individual operations).
>=20
> Thanks for your careful review. I will make the changes you
> suggested for the v2.

Thank you.

>=20
> > > Based on the current status of glibc, I would assume that this change=
 will
> > > be part of glibc 2.40 (it is listed under 2.40 in the NEWS section), =
which
> > > may be released in a few months [3].
> >=20
> > If you're certain that this will be part of glibc 2.40, I'm fine merging
> > it already.  We can always patch it if something changes.
>=20
> I have no idea if I can be certain of that. I am not a maintainer
> nor do I have commit access to glibc, so I truly have no idea.
>=20
> I suppose it is possible that they may decide to cut glibc 2.40 from
> before my patch went in? It does not seem there is any 2.40 tag yet,
> AFAICT.
>=20
> How about I proceed by making all the changes you've requested and
> get the patch into a shape where it can be merged. Hopefully,
> that'll only take one (or two ;) more revisions.
>=20
> Once the patch is in good shape, then we can decide whether to merge
> or wait for glibc 2.40? If they are releasing it in 8/2024, it's not
> too long to wait.
>=20
> Does that seem OK to you?

Yep, that's fine.  If you know who merged your patch, maybe you can CC
him/her?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--db6xmhfjwi5yscjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZiN0EACgkQnowa+77/
2zLDjxAAph7SJmW4Wj7ssijwiyJifZIxFr2rOHXLEo5N3s/mwx95z6zTSlrI72hb
311rWRZheyucTAuAgQ2i2sszH5JXE8mU4Cfkufsq4IRa6xYRH2pyU0qwgrhny88V
1hfsfGv/X6I/RqMjbUyhAnZ55AnhtAFLBZ0tdrQloiL3emLGzyhCjcXX+SG986g7
/nMTkjwIRyG27f74LVhZFargKYAb1vJz+bwXvgEZvTVBNOm4XjvXMTCX74BQRfYS
Lhbas6w6m+320Xkw3KvJnbRaHZLSfi2ltWKD1XocTcBolUaJUQtw1ndu81h9BSDO
Qf2FFh1DL8Z/57oHOc7ockUAbCbNM8dLnh9B+lm7rs19fZkxdqdAygwPGCKgdYie
J5PZr3J32dA2fxOy8rAa/ctR/wSoF2xnl2x6hAAUdc9JbqDO93wOoSAElKYkIcJ/
que33ypUWeAqP+TUhFp/Da/G8vTMaLNa1cOyjRohgo28Tc9Ln7+E9V9BVmBDQKXD
j4quN8/D5/uPXsaMhiRG34yQgM2XsyIudsu6KpgAul2RfGp0C9vFXdoIMSm+o8jd
WEAZ5zLjxqlYAGmB8LvAckWHA/8muTWNVkWO5Wr7SBBrkFTgCZ0W7ltc4cZ7mFsW
qQFHhDaboS5BZj/SQoRa59erzW5rmNt5DlLPEq6rSekUHCh51ks=
=ZuqX
-----END PGP SIGNATURE-----

--db6xmhfjwi5yscjg--

