Return-Path: <linux-man+bounces-4606-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F174CED933
	for <lists+linux-man@lfdr.de>; Fri, 02 Jan 2026 01:27:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8992D300A1CA
	for <lists+linux-man@lfdr.de>; Fri,  2 Jan 2026 00:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD22114A60F;
	Fri,  2 Jan 2026 00:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNzoobcc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB0628DC4
	for <linux-man@vger.kernel.org>; Fri,  2 Jan 2026 00:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767313627; cv=none; b=WdRMmYfkw867IFnzf7ZImEntzJza60Ps505aVNTSL1rqiRXItCPYVam2phntA8QARWY5vh9HVHFm6XOfzE4sw8P0lGaEh2J63c4pfxbxDzAMaQ0x0NZSowA9ML6coJO9JJvr5rJRgEJoLXmhQDXw0bNs+KEOnpHKJrqOoUsd4p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767313627; c=relaxed/simple;
	bh=PdDt/dQP+6Cvj7XIsLX4NQSbDvP60saiMZW2xzAzPGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CSC9PDwIL1AzNGy5u5xl4a9tLuBTwvvIK6jij+WOWESYgVxJd5vzFUclw07b9W+8pzJw54lX+zuG7Mvq8xrC/TLfcZ4ptRrXsKEtvfJ2j/n8CdJfXZ8V05+luvlUKcSJIW5IDFjW9X4QO6tKNlPZrZNvR/0Q+HmAHaKFFMs+OB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNzoobcc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25E67C4CEF7;
	Fri,  2 Jan 2026 00:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767313627;
	bh=PdDt/dQP+6Cvj7XIsLX4NQSbDvP60saiMZW2xzAzPGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nNzoobccfzdVEfSmIBVpwbKkzr/kABK98gWHa6QhQohcwDRfJ5AUKVtK6dMYh6Xom
	 eTEQzehftGSboLF6Pmgfa+a2p7tDnX0pJB8coGcE3BhPqmP7wmI31cpVIju2TphlyH
	 LbjDZ5sfsaM7AoAKSOXkbq2P/Gs1TpcV/4dDlWHhb1O3xf0CiY3k6aL6KL4rGgjZvR
	 zpFXvsCaxzVndUYNwsQdK8X0sSrnaQTwC2JFiKicfSMSrMxYd6a/4/DK0KyoGfwQLE
	 0cU1rr/jVIj65T3gIaiGZ3XO9iBOTOCUkwg+afzviJ0wy3VJ3ZHViuuvB+FyQ7BF1w
	 AsV+m5+d1PKxg==
Date: Fri, 2 Jan 2026 01:27:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: origin of alloca(3) (was: Undocumented systems/standards PWB and
 32V)
Message-ID: <aVcQo73f4mT4NT_-@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
 <aVZwLk0RWoyRjL8N@devuan>
 <20260101235310.fejv4d7uvft7unzt@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nh6yg4zcwmfzd3vs"
Content-Disposition: inline
In-Reply-To: <20260101235310.fejv4d7uvft7unzt@illithid>


--nh6yg4zcwmfzd3vs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: origin of alloca(3) (was: Undocumented systems/standards PWB and
 32V)
Message-ID: <aVcQo73f4mT4NT_-@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
 <aVZwLk0RWoyRjL8N@devuan>
 <20260101235310.fejv4d7uvft7unzt@illithid>
MIME-Version: 1.0
In-Reply-To: <20260101235310.fejv4d7uvft7unzt@illithid>

Hi Branden,

On Thu, Jan 01, 2026 at 05:53:10PM -0600, G. Branden Robinson wrote:
> > It would be good to check in which one alloca(3) was present.
>=20
> There's _an_ `alloca()` in PWB/Unix 1.0.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/util/a=
lloca.s
>=20
> It's not declared in any header file I can find, and as you can see it's
> written in PDP-11 assembly, but it's there, and appears to do what a
> modern C programmer would expect of it.[1]
>=20
> It appeared to get stuck into a library called "libpw.a".
>=20
> Static, of course, because there were no shared libraries back then.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/util/m=
akefile
>=20
> Close enough?  :)

Yup; I guess we could change PWB to PWB1 in the HISTORY of alloca(3).

Thanks!


Cheers,
Alex

>=20
> Regards,
> Branden
>=20
> [1] I see some other familiar stuff here...
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/stdio



--=20
<https://www.alejandro-colomar.es>

--nh6yg4zcwmfzd3vs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlXENcACgkQ64mZXMKQ
wqkU0Q//bEbKxLJhg2N2PqGEQU7uPYiV1EOajvhCANy8l0en7ntUlbDf5JtwWz0U
CKXvbgWC4JzmMU1LSwk4GLOKEnXaAkxIEjahSMejiP1mw960VCLnB+k74SQ+j9+J
7KCF0Q/UE8VdVdJ4/EXMF09Aa5CfAsNeJ7jeu7+4Ep+OBybRgi9dPcyOX2aiDwaf
xDx2pKtZxVyuI+qbVu39pO6G+AXl490QUSuADwWPaTBdiZcJmERa3leVTlmvt3e+
fWvtiP/2tYQoxTVZIbAIvoGw0aiZBydm+vfjjB8VSV1aV3nVfmX1WeqyWKsoFL4h
LEOfQcPYWwKqaWEDavfpxEvQRFDNXSzz2Np2edkuB2Mq4bLwUmD/MkmguozCSdmF
LWOLUFV+7nZrO8PLAXwlVYqnapPQ79/k3x37tRRurvPdZq2lmuloPQDsReaBgP3t
3n7Y67qpVu9CaVmg3B+4l0smo57vxnB9HXifS0e8xKEsuFnbc1F89KS3SqdKB+AA
oqj43AzuCfbn8YS4Gg1+krYvwx/TeVa05GjThxa4vBDsdOd3h6uMB1OvMdnCH1T5
oSJ5PMGnVIl7R9vFK6kCbOtM/PavTJMAMd9QCf8Z7Dahoe4fiVPxoCsLSvwaeBbK
eqt3r//7hHyyRxZsAV0ma8cmXiDePGMKOmMGjBzoPDLmBqhLYjQ=
=3eI6
-----END PGP SIGNATURE-----

--nh6yg4zcwmfzd3vs--

