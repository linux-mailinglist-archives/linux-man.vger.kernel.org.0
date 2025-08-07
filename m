Return-Path: <linux-man+bounces-3379-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6E6B1D5CF
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 12:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7ED1C7A2C91
	for <lists+linux-man@lfdr.de>; Thu,  7 Aug 2025 10:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4922566FC;
	Thu,  7 Aug 2025 10:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZQJrAK6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3A1189905
	for <linux-man@vger.kernel.org>; Thu,  7 Aug 2025 10:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754562545; cv=none; b=YjOJv75VLjJGA8pOfelWaphVRHPx4/rVD4f5sc/fOb3r5Qon3Br8Qt0lliiTU9t0fYpaM1xLeE0KXHoQaQObErq4zna0veu724EVCGuljS8sgdLNT8AhUTyxsFs+0B0TP7HdvbcC5ab6Zm+J2y+/fBGqc2G00iMhGQV+wyjGQOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754562545; c=relaxed/simple;
	bh=hEo7e98AEs1HrmLCKIpCzm+YHjrEuQ8ePXH38bXh71U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eJ5N1yrE4mx/6FLJEuXUqoySfdX0BDXzF7su8RLrvZh7JldCBeOSI3hW4+orjrXLQ/lIWds0dqRVR7Agr9NrnzfKTB34chdb/nhT0OF354qLeKdWUAmViVyRkfjcd9j26MzhGwmR0jH0WmvnWM4OOaCB91WjMwxZpc+Nx2sxeec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZQJrAK6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C914C4CEEB;
	Thu,  7 Aug 2025 10:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754562544;
	bh=hEo7e98AEs1HrmLCKIpCzm+YHjrEuQ8ePXH38bXh71U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lZQJrAK6wDJyLrIfFUkv6I+VaihKJQ7R4YHApguWN9xwXhUp2DqFvuK7uq8mmUwUw
	 ogaaeZsVzg3FQDAne1HZ2YKY+DOFvXH31YD477N7BnYEPmDPHXGOiC4F/dSWk75eJg
	 ohiNEdhZhBKdOL+mRosmeseZzn2yvh4/7mIebBQBtsjVcpQUMen/liAzzjjLy4hTuF
	 AfGX92C6ING8ZbW6k/oz82Ds1cygneDStK8+P3ZYLCOat6J4/R2e4iHAGjnetCxVJs
	 SgqHX5rhYBf8xCURnK9TwkXzObwOU07VCIJMfFtyK5/fKWGKFDeOz5qtn1uIPR7L81
	 owImOBTnQozww==
Date: Thu, 7 Aug 2025 12:28:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <c5g4hywmkujy3rxxqqljku5wyqsdy4kweibd4mn3kevhe3eozj@wox4k55gicmn>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <20250806140112.wkdw7ksbiycimw7u@illithid>
 <xgpx6t5tutxv65lzwrqocodlvhulvr4nva3bcuoygxf3mmlxqp@5nkg6qbnxc2b>
 <20250806152618.a7ptqkpg4oibx56x@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7nge3f6stcgihmqp"
Content-Disposition: inline
In-Reply-To: <20250806152618.a7ptqkpg4oibx56x@illithid>


--7nge3f6stcgihmqp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <20250806140112.wkdw7ksbiycimw7u@illithid>
 <xgpx6t5tutxv65lzwrqocodlvhulvr4nva3bcuoygxf3mmlxqp@5nkg6qbnxc2b>
 <20250806152618.a7ptqkpg4oibx56x@illithid>
MIME-Version: 1.0
In-Reply-To: <20250806152618.a7ptqkpg4oibx56x@illithid>

Hi Branden,

On Wed, Aug 06, 2025 at 10:26:18AM -0500, G. Branden Robinson wrote:
> At 2025-08-06T16:55:02+0200, Alejandro Colomar wrote:
> > > Did you change distributions recently?  The messages are an artifact
> > > of a downstream patch to groff to force Teletype-style overstriking.
> > > Over the past two years, distributors that had it in have been
> > > taking it out.
> >=20
> > I'm using Debian Sid on my laptop (because Devuan doesn't work well in
> > my Framework laptop), and Devuan Ceres on my desktop.  So yes, I get
> > any updates that the Debian maintainers decide to change as soon as
> > they change them.
>=20
> Colin Watson changed the item in question over 2 years ago.
>=20
> https://salsa.debian.org/debian/groff/-/commit/f0a34f20ff772f692255b7e32a=
05630c639f75a8
>=20
> However, since /etc/groff/{man,mdoc}.local are what Debian terms
> "conffiles", their contents can get stale, sometimes through human error
> but in my years as X Window System package maintainer I never quite
> managed to convince myself that dpkg's conffile change detector couldn't
> be fooled.
>=20
> You might:
> * Verify that a recent version of groff is in fact installed.
>=20
>   Among other things, this commit history is indicative of package
>   releases.
>=20
>   https://salsa.debian.org/debian/groff/-/commits/master?ref_type=3DHEADS
>=20
> * Purge and reinstall the groff package if the version available
>   "should" be new enough.

Thanks!  Purging and reinstalling worked.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7nge3f6stcgihmqp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiUf9kACgkQ64mZXMKQ
wqnF6w/+KgM1q1FbdcmcpiW9KhLGotZBOizPS6KjhK6Bs0QfBqhBUxA55NGKXR7W
cqz+p7aB/zShC2txhvr4S/uT0DWBZsi2aMMeozEe4AHBDpAMGOWCHdT7B4cxiiOu
zM/jsNU8ArFjC8sSdzFNzEgW5yOJKUFGz9hnRmYtjcij0LYiSOObnH2mvbnQgIHV
z5/Yw2ANCMvtuwb4VEu2VLNwBoal8Y/z67DtEAYsfcmonEy9ZdQrnjLikZkHdY1p
ufoCJjIR9ckoTNxwUGUjinWtTeXgnN3fS7ES27ttqk0WBgF2mDwEIxh4X6ugng43
XcYZVoOytiljMOWQ1yv2BNQ/Vr4vsmwYkL2q/mGeh37QM2X9X2bn0yV3VSU0p5Vl
d1Df9fyA9jkxhU/ktJt7Yz34GaZBgVn1QooSrZX6lQaWp5TuXGIX3UV2MoaAF529
WpD4+ZTc10cD8boh5EKOK5WxzlVgQXr3EwoeEGdLsU5+bSRTOgUZOBvvEjvtn4FO
t9Jus/noE3i/NjZ7USZih+tXSSaXLBJGH5xlIdB/YfMW4kohzvFmJgywc0nXvivI
wlf0zwCB+TSKHQne9yPb65dk+VpHG00FOgFdkfYxKuARVrdE7MfYmF5605mKUNm7
4/5YyRxR7+nlOMiMPxKeB+vCFRhEy0otbjaGTeW1BNtWqnqtBxU=
=o/Wz
-----END PGP SIGNATURE-----

--7nge3f6stcgihmqp--

