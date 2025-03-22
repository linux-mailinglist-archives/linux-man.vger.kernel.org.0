Return-Path: <linux-man+bounces-2629-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1AFA6CC04
	for <lists+linux-man@lfdr.de>; Sat, 22 Mar 2025 20:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60B9C163ED2
	for <lists+linux-man@lfdr.de>; Sat, 22 Mar 2025 19:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6961F233715;
	Sat, 22 Mar 2025 19:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iib7UxhS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1F233120
	for <linux-man@vger.kernel.org>; Sat, 22 Mar 2025 19:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742672237; cv=none; b=N1TtK/1Y5E1C1D1GzgKsMl7ID6tjO6wymkGJ6dl8Ho3F6YIYj7txOpSgaCmQLEvilnhWtdXVmpm8jsGMcvNTWP6S5FoTXWZ8dymH5tUEkmAkuVmYJi0zIsCR+AOhq1nAW0I+9u0IUqhChTjogG2JcNLReQnVG8++jWx8h32GHIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742672237; c=relaxed/simple;
	bh=eTPYRUAWD/3StTBoZdT5M0aRKB4wGqlmduGVaSr8jb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M+qM9wkaaw/XiXFrLZ93N3r8RZobNq1hk7OqFpXVfy2W9t0Xlx9BVvmg1zzz+QgkbYA7SC6/SF2AG34AkqAVDAYq2I63I/GMmfOMtJlrYPS0KtX43nNC7bgjXD0zvTjPtwPgnbxsyik/EpB+wh8C5E6bhtT+tix07iKb7AO0Ots=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iib7UxhS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78B53C4CEDD;
	Sat, 22 Mar 2025 19:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742672236;
	bh=eTPYRUAWD/3StTBoZdT5M0aRKB4wGqlmduGVaSr8jb8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iib7UxhSDP88Nomc172RSIgWm+JQzvqghYwhDNmk6jN8GaDub3+7LCZFoN33hFp5k
	 zOYlwo4vpRQzP1GQNIE50tyKSGQ+HCGo+gGuVcC0hqSyqxatG1LGx7x3d2S4VGgq2P
	 uU6StHK4Ex07Oyc0fTo7IcatPV9xxfDPTyJl/GNvZxHztRXegWuKiNyKMA4EKk/3vv
	 bz2AQV5GUtfxQ3HHkxhD4qFjl1jsZEQrwFf+KcVe02quL2vYR49vzPd3Yo62LvQ9HJ
	 jZQnjGf266P8C/D1IuE6GwlBnjZE2/5NBSZvlrgyI2/x/Lutj9cZ7NZF6F7GfbsVkN
	 FtJylDLDsb91g==
Date: Sat, 22 Mar 2025 20:37:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, Jared Finder <jared@finder.org>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdlfnylx5uuv3u6j"
Content-Disposition: inline
In-Reply-To: <20250317174340.ig4cavquacmiuxxb@illithid>


--xdlfnylx5uuv3u6j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, Jared Finder <jared@finder.org>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
MIME-Version: 1.0
In-Reply-To: <20250317174340.ig4cavquacmiuxxb@illithid>

Hi all,

On Mon, Mar 17, 2025 at 12:43:40PM -0500, G. Branden Robinson wrote:
> [somewhat whimsical]
>=20
> At 2025-03-17T14:23:09+0100, Alejandro Colomar wrote:
> > On Sun, Mar 02, 2025 at 08:43:31PM +0100, G=C3=BCnther Noack wrote:
> > >      +.TP
> > >      +.B TIOCL_SELPOINTER
> > >      +Show the pointer at position
> > >     -+.RI ( xe ,\~ ye ).
> > >     ++.RI ( xs ,\~ ys )
> > >     ++or
> > >     ++.RI ( xe ,\~ ye ),
> > >     ++whichever is greater.
> >=20
> > Everything else looks good to me.  But,
> >=20
> > What's "greater" when you have two dimensions?
>=20
> Since we can model the terminal display as an inner product space,
> the terminal driver can compute an orthographic projection of the
> plane onto a line and from there use routine arithmetic inequality
> operators.

In any case, this is going to be confusing.  Can we get some wording
that is obvious to a school student?


Have a lovely night!
Alex

>=20
> The problem with the Linux kernel's terminal driver's lack of developer
> attention over the years is obviously a result of it presenting
> insufficient features of interest to the linear algebraist.
>=20
> ;-)
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--xdlfnylx5uuv3u6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmffEWIACgkQ64mZXMKQ
wqlVLw//f2IM9zyL+bgsyCPx9a0sOsiPI/mrTdVYKwl6fZ2Egkx/UB0io3/KmFPd
kLaWskMlwxxXagDVEpFOd5F3cSqoXrBfJyN0x0v8JQTS8Y97P6VBitxUHgubD0ou
LAfQ6aQfSqg811m1yBKqZwE/qG4hvcteR9+lP5WiE+NpY0NDuhLW3DVz51kF7u/F
Of7O8+7mDlPdOyY9SsYVV7lD6Gt4ig980ltu1BgcMxpHK2Cp74top0aHKl+ZSdIb
yuTJeYyjQGM9TUAl4IfTcyRq5d1UaRJREA4sbyvak8iopSqOVS738M0TxkiC0+wy
Q4Yym9Kb9cYlOWEM3e5fJDQoj2k9xieQ2Cn4+0TI4jjczsttnye9sf2+S/mrqIcg
KiPlYwytcVQN8kMkjYdWdJeEf8lJSByrgOBtGj17chc/8+LAfFwwH5ztZV5/593I
Yc/wBNnWaP7IuYOsrKPoLlr1JBijbfz9+bmvJKaIkgMkqtxT3F4/dVN3TOhnWdt1
UF8R8lhFgpMxTvqgq49WwRhdoPoEMvEyvlD/nDyGK0KQnZaQRiAb9DNPtyOo0lCJ
TG5tg8kJvXM/V9DJz5OMpK3zNAGcfctWJJe6guZHJV9P88pB6KfuJqdDHHHmw4cl
U82BqoSwgKYLshmQC+bcjxmNnzPbrgE16o0ou5+y53DQqeobj4E=
=aXIj
-----END PGP SIGNATURE-----

--xdlfnylx5uuv3u6j--

