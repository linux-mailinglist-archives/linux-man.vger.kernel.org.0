Return-Path: <linux-man+bounces-2653-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B46A71332
	for <lists+linux-man@lfdr.de>; Wed, 26 Mar 2025 09:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F5D9189A4B7
	for <lists+linux-man@lfdr.de>; Wed, 26 Mar 2025 08:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 320961A2C25;
	Wed, 26 Mar 2025 08:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th0jyae+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77D716C69F
	for <linux-man@vger.kernel.org>; Wed, 26 Mar 2025 08:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742979506; cv=none; b=FC9mWRCvzaN/u9Dr5AWBJYN0zv74nHKCUKHlilCCfeTF5ViOaiGCoMTTf5ChY/QMRkkPeX6zutYTzN4//603twQmp4spw1oevQTYJBBRORum4KHrbjINDeprHBKqirEvFoh1Of/UbUNlUHbErydahZBwCfd5CZPWy1KRJzKy9Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742979506; c=relaxed/simple;
	bh=7QgSu+IdPXHZ888cTdrlwCPkeA228fbWBooWTPBefvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HS1pcRlR8bc9C8BG7Kl2jqAZzKtEgeuh8ZswihXnhvwlgr4SNMVO1CHY/KL2G5tOFo3tuBz+u4RF/FgAfecUBFli8gtuNG0G7wgA6ex2Ewl52uwRRTdu/GmDgunoxVbQPhdVMgZR4L7y0QEULeHoLVpg06kHV4Kneuj8BLxyREM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th0jyae+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B10EC4CEE2;
	Wed, 26 Mar 2025 08:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742979505;
	bh=7QgSu+IdPXHZ888cTdrlwCPkeA228fbWBooWTPBefvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=th0jyae+Lms3rZAii1SuwhVegL68bIpDIUHDLy4R58/yyKn7/5qgLhSeum4e1BhGg
	 PjseOZCx4Aqwz2LVusorkp2WYGejkmtD5AzNuTn0wxcO1UnLuJsqpHh0ZjZFy0h6Xc
	 LLeaGgmbJNV+BRfXE5LzHnVP0qlf5Mv+3f0XAzho6CVMLEKV4IoEvQ3IwBpc7HB5D9
	 MvEsJv0NHRfy/13WZjDPtx9dPqCaJ0SjCTXwvhhuAEfF+gGMjNivZWHbdOyqDnckrE
	 iF0vX0FS4Wimx26XSS8tQjGA69JAWUFDG/qiVUQTa4EwMuLZEOSlJLqyF9adlJ7U/0
	 byldPT6lrez4w==
Date: Wed, 26 Mar 2025 09:58:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, linux-man@vger.kernel.org, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <srbsuwx4ou3wrlr7shxz5gz6qp42af3azyx6c4vfkpupboifgy@7m7dtlshxraz>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
 <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lndgyetfubhvlqwk"
Content-Disposition: inline
In-Reply-To: <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>


--lndgyetfubhvlqwk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jared Finder <jared@finder.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, linux-man@vger.kernel.org, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
References: <20250302194331.5135-3-gnoack3000@gmail.com>
 <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
 <20250317174340.ig4cavquacmiuxxb@illithid>
 <csv25wv52i4pfwcovr33rocjei7eql5qtuwtpul44e33tuudxf@7buicn6quvd6>
 <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>
MIME-Version: 1.0
In-Reply-To: <d329ffb92f3e9bb22aeefb25df02a9cf@finder.org>

Hi Jared,

On Tue, Mar 25, 2025 at 09:48:58PM -0700, Jared Finder wrote:
> On 2025-03-22 12:37, Alejandro Colomar wrote:
> > Hi all,
> >=20
> > On Mon, Mar 17, 2025 at 12:43:40PM -0500, G. Branden Robinson wrote:
> > > [somewhat whimsical]
> > >=20
> > > At 2025-03-17T14:23:09+0100, Alejandro Colomar wrote:
> > > > On Sun, Mar 02, 2025 at 08:43:31PM +0100, G=C3=BCnther Noack wrote:
> > > > >      +.TP
> > > > >      +.B TIOCL_SELPOINTER
> > > > >      +Show the pointer at position
> > > > >     -+.RI ( xe ,\~ ye ).
> > > > >     ++.RI ( xs ,\~ ys )
> > > > >     ++or
> > > > >     ++.RI ( xe ,\~ ye ),
> > > > >     ++whichever is greater.
> > > >
> > > > Everything else looks good to me.  But,
> > > >
> > > > What's "greater" when you have two dimensions?
> > >=20
> > > Since we can model the terminal display as an inner product space,
> > > the terminal driver can compute an orthographic projection of the
> > > plane onto a line and from there use routine arithmetic inequality
> > > operators.
> >=20
> > In any case, this is going to be confusing.  Can we get some wording
> > that is obvious to a school student?
>=20
> How about something like "... whichever is greater.


> When the positions span
> multiple horizontal lines (ys !=3D ye),


> characters are ordered left to right,
> top to bottom, similar to when writing English text".

And greater is a character ordered first or last?

>=20
>   -- MJF


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lndgyetfubhvlqwk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfjwaUACgkQ64mZXMKQ
wqn3oA//QfQLzibAQbtYyD/EiNY2R3a6UabXMOW/KbnUAAMm2T1c55DD12bkCO7M
HbEYDsUxU8sbnvontgHYl4goDlIwwO0dj+i2Kaa0ovrKN5MnEUChEnQkOQzMGVeI
qOcuvZdR9ZZC76uSFlMYgaYx4QcXt+FYEDW+JwLqzBCVlEyF6jYQLSKcT/5uqzG8
sEKZ4kLFj4162ELwtPpLp9MWLGp93JIn9sIParbLGewj43lyDaWxMLlPqKuffCvQ
cgT8ObtC6/n67dLNLmqTl90Ryh2MlhI1rtwVJUlpcTDhcgCb4lJLiEiizgkMlCN5
UTwIW7IC6ShnWgniXFNcMejF/pYFMgn86yzBaFLlIZ9vaJvbnGoMd9tdxZFFaWiX
U3Pg/32oQrkZQqK26KWtIU61WThK9LIm49ptUV4sd12yYyFYsXYiFDEuES1F2uX/
tYLVb7XkFYxRKOmAX3MGgydzweUyiaxCVkue2votwrljP5xxABD7jVa/ixH0SVNh
CEpiraMQskh8Fswwoa77CipuofGWTtYO5XrQufG3KbbZ5cGs3Jzp53diFJ4rQ1y2
p1vZbBQzIzNWefyp/7LWuOFxonkdJHjBYHniqjlJll7HEAfl/hsA/6Rg+4yDvwfH
A0oZ/NYDjSrcn5Za4g0tiFrLW9MMbuCXsy/Le8MxeLBh21SLsq0=
=+Ohd
-----END PGP SIGNATURE-----

--lndgyetfubhvlqwk--

