Return-Path: <linux-man+bounces-3780-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8494AB3D3B8
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 15:44:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A7A517BA12
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5978A2550AD;
	Sun, 31 Aug 2025 13:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1jhii9w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180CE1D6AA
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 13:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756647859; cv=none; b=ez7TAdskOP3N7S7sD+In5mxXFtZ1isplPeAtlZ+qKuIawsXb440fqHkN8ntZIk2S7CqkUZ387bK2E2Su8klskJF77tIkxFpOttRKuNX7rqaBbbpyK70QuOuOHX1sM1kpzYmDMsMwmLElneu38/hG/Sx3qQcC64Sy/JzW6heOPKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756647859; c=relaxed/simple;
	bh=VkQVzNwVBiqLZPh5KrTcmnwVsSExNi/loGv0gdw0D0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dm+oprtMV9azJNvSLKNE7BMqDyRuTuMi0RkB9c0gLGA18YHuvCFDMFtU474DbVkFCY53fdJwUVr2C8+KvT8p+msXghv687Q13CIb0DxynNPltrKXcXIosBOBTllJtguaoHZGFka7QWunnF1trWVY2sv/kFxgVpRIFN8LpNLkSmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1jhii9w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3999C4CEF6;
	Sun, 31 Aug 2025 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756647858;
	bh=VkQVzNwVBiqLZPh5KrTcmnwVsSExNi/loGv0gdw0D0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t1jhii9wv0lr/mFASRxLVz/Q1tFLe3207DviC0dGJQOQWM/bPzvJSr1VmBZchIBIc
	 yOqW3EjB2EeVqkJbC0eznlb4IPr0k9tRvi9nJdm1YdmO8I4Z0OKhdHDRuiD+ESfxqT
	 lzs6fv8fN6P0mviVSlc3WI9/TvzTxWEPJnJM4pcM4P0aOADWuBGC1LP3zV84Gf/GTg
	 r/3dufgxHlF9+dLsM0QXng7EMr0LRS/1tG+V3HpS5JOk2yDIyA2jC+zdxmmsvz9vti
	 CE6O1/dZBOGMWrBRjRFizEMrx6434nK9JbWxcKqifoX48IzmjyE4J3zg2D0BuEbybu
	 VSz7RAVU+Uw/Q==
Date: Sun, 31 Aug 2025 15:44:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, 
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Issue in man page motd.5
Message-ID: <xjb2q35qc6muduhspcpy6hefvm6t3qnumxswwqtmobfi4o6aiw@j33jyuw47k4f>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
 <20250831133055.2tiryu57ai6dhnlw@illithid>
 <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a5g3hipce6ggaoqj"
Content-Disposition: inline
In-Reply-To: <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>


--a5g3hipce6ggaoqj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, 
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: Issue in man page motd.5
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
 <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
 <77ninsoa7bdy4jmmyehfia7o3w6yu66snf25odfpzyebh7fc2s@fqe33plw6hsn>
 <CAHi0vA9DGAuO5iPaeQ3gfg1DHuSQoLEOGkPZ8SVbLNJrtonTyw@mail.gmail.com>
 <20250831133055.2tiryu57ai6dhnlw@illithid>
 <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aLRQCCoQpnTi_NFh@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 31, 2025 at 01:37:12PM +0000, Helge Kreutzmann wrote:
> Hello Branden,
> Am Sun, Aug 31, 2025 at 08:30:55AM -0500 schrieb G. Branden Robinson:
> > At 2025-08-31T14:56:18+0200, Mario Bl=C3=A4ttermann wrote:
> > (Alex is still waiting on me for a revised submission of heavy
> > sed(1)-lifting to automatically rewrite (primarily) the syscalls(2)
> > page, which is gigantic and contains many cross references inside a
> > tbl(1) region.[1])
>=20
> If you can share the sed script afterwards, this would be highly
> appreciated. Maybe I can adapt it for manpages-l10n as well, this=20
> page is translated (at least partially) into 7 of our languages.

Every commit that is scripted, I include the script entirely in the
commit message.  Don't worry about that.  ;)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--a5g3hipce6ggaoqj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0UZ0ACgkQ64mZXMKQ
wqnNnhAAqpafzrfEMeTS5cUUXz2OAl4DpsOxPiHTQqJcs9H9Nz9ChbUz+tWH4Vzm
nY3mUCpxrrucfJxLkKRP0pxsswqHc8mPpbBSMl8NMlFM5EApsiNTaOyqUvfe6qrZ
YUMeZpsPT37ip8gCxJD6GTOnMoF4dsoJchKVDO+vdkNC1om6N55HjC31vuYOYlAY
RXPu2SDWWU2YlXQ0b6QxkqWCfwj4mZfo5x9USwGjE/DmxqFLSfWIA7UeTqtrv0JW
1vq06FwGtI1Oe2NrU1bTl9HlWUlzykAMUEcoq3HZ+uAZ/iWVOkOJwGE7YeA0e6U2
t2nOG/BBLZ0Vi/ixytBkYTmXw/ichsz8l9BD5lgpGRrqYMKzMiXZc6DURjFr4uKp
9/geOYA4otxlvqre3APjuB6hQA5T26PPJYztcitqi76w0IoICm5KI5bfp9fM0kvn
z5HRrpEcBcP8L4pfgzpy7Epb8e9CS+rtFVNhiU4FjL9//a7oTkm/oQV0qIFFv66i
7w6+aJ+i/LsZ38GWxrZ0tItpXl8igWETJS/8aUBv+vyBsu2Apqgfo8Z+M3RYnI/P
10GNn3q6EesOiIEqkfYL0rOWGWl8xtdIRwGYWtB3A32qU9MwyBZ7cGyIGpGZ0OFA
3hsa3xsfSt9T9vHlIYstIlShXkVctw3O55rmQIa9mGR5WljccnY=
=ClVP
-----END PGP SIGNATURE-----

--a5g3hipce6ggaoqj--

