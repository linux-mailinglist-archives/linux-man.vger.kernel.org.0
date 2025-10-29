Return-Path: <linux-man+bounces-4227-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E73C1C51E
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 18:01:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BC4A6E2D67
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 15:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC97330D51;
	Wed, 29 Oct 2025 15:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="drV+wl9B"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A7A3358D8
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761751979; cv=none; b=emaCXmkPnON+AhsICGPJ4H606vcXS7KzPPxhJU9T3Kr/vabAPDdGZ1Kqq2GO6ju7zu7OHzh/H/2HGXejoSNXqRy7W1qKjQiiBqqXetuYwfsvNMJUOhclKp+nZEfRLoQ3/t2reFuMH+hOvBi6YXULxSTZ1ii+wrXC+jnCCSLkyOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761751979; c=relaxed/simple;
	bh=f+u4Kwu6y8WuVRFjda7lE3XOgeKIJsM2YWVejxD/58Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hr7JM3A0azx24rBEhbnWJ01ERhNVudULTyNZyava/ebOy7KoJ4DApPGvejYI7DYTUAUiUM1RzHmZCtvE+bWW4g0zQWtN0VwtUGiz/LqOb+oz6q3jfLvAEVmLlLnV11u61OGA3Euw6ytTqhtIhcFDzA5Uix2GASNTDPjKCZcDnEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=drV+wl9B; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1761751367;
	bh=f+u4Kwu6y8WuVRFjda7lE3XOgeKIJsM2YWVejxD/58Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=drV+wl9BysNFvBiIJbA9lyXnygRGonXtiI+/QplYgnDQdrYAdfFUCY85p+ykxo1Ht
	 uLRGjZoqB0Vy2loptZmBVLetyECfbLX/owGtPpRzKcxRyymuwyYplzZ4NBd0k94zOK
	 yQAfqKpwX/xVNYohfMzOKDhkU3e3M3a0WTVk3pthX86hr21E9wnJ+O3x+tFSlfKI6g
	 dmcRASaHMjuTImRWO48O2DOAmPER39itrFI5SjBX/7OVN0xtDbRzkZQOzSAxDLfqYr
	 CsekI8uVlxZZg45Epf9wME75zTaLqLsGthapUPJMhQFwg3AEQKFG7wFdG3rM5VWOGf
	 5yutf48TNTaeg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CA061A67E;
	Wed, 29 Oct 2025 16:22:47 +0100 (CET)
Date: Wed, 29 Oct 2025 16:22:47 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <jhuyhyu2xgbcqwahlmjqc7lvqw44mrzuoveikrcdy6gm2ztu3o@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ancuvpz55b5dyajj"
Content-Disposition: inline
In-Reply-To: <20251029084200.umuk2hbescz3txgn@illithid>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ancuvpz55b5dyajj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Wed, Oct 29, 2025 at 03:42:00AM -0500, G. Branden Robinson wrote:
> At 2021-09-15T21:42:26+0200, Alejandro Colomar (man-pages) wrote:
> > On 9/14/21 2:41 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > >   .SH BUGS
> > > -There is no error indication if the stack frame cannot be extended.
> > > -(However, after a failed allocation, the program is likely to receiv=
e a
> > > +Due to the nature of the stack, it is impossible to check if the all=
ocation
> > > +would overflow the space available, and, hence, neither is indicatin=
g an error.
> > I'm not sure this use of neither (without a preceding "not") is valid
> > English.  Is it?
> The sentence is confusingly cast, but the problem is not as simple as
> you describe.  It is common in English to use "neither" without "not"
> preceding or following.
(I think if you want to be quaint you could say that embedded
 negatives are negatives for the purposes of "neither" and the like,
 even after lexicalising so far you can't analyse them in modern english:
 im-possible n[ot]-either n[ot]-or, as you demonstrate below.)

> Neither wolverines nor beavers have yet self-domesticated.
> Neither C nor C++ are good language choices for novice programmers.
>=20
> That's more grammatically conventional.  However, I would recast even
> more aggressively, as I find "due to the nature of the stack" hand-wavy.
I don't disagree but I'd say it doesn't matter? "How the stack actually
works" for our purposes of overallocating is really neither here nor there
and changes depending on the system (grows up/down)
and hardening (guard pages y/n), but the pitfall is similar regardless.

Classical wisdom for alloca()/blowing the stack in general is you don't
know you did it until you accessed some byte of your stack that you
actually can't see, and the allocation is infallible for this reason,
and AFAIK this holds in present day.

I'll agree that the wording above is not my best work.

Given the above, I'd go for something closer to
  It's impossible to know how much stack space the caller has
  remaining, so alloca() can't return a failure. When stack space
  has been exceeded, a SIGSEGV will be generated when writing to or
  reading from an out-of-memory region.
(maybe an ", or during allocation" but idk if any alloca implementation
 actually pokes the allocated area anywhere?
 ISTR some discussion about large stack allocations and poking at
 least once per page to grow the stack correctly with guard pages
 present(?).
 Conversely, "will" matches getrlimit(2), but seems very strong;
 idk if it's a "may generally but will on linux" or if it's still
 a "may" universally and it's still possible to crash the stack
 into your normal program area on linux. or if it just depends).

> I suggest something like:
>=20
> alloca() does not query the system for available stack memory, and does
> not fall back to using the heap if stack storage is unavailable.  It
> therefore cannot indicate an error if the allocation fails.  If it does,
> the system generates a SIGSEGV signal.

This seems to be semantically similar to your sample,
so I'd say we're in accord.

The wording downthread seems solid.

Best,

--ancuvpz55b5dyajj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmkCMUIACgkQvP0LAY0m
WPE1qQ//Q1y6+cp+Zum0bWPJ+/zygdK3gnmxe3f3DfrijK4JEzMNdCkN3lcdaqqp
k3beTChDUrshneTmPv0Sv5KzGJCewlz1iHK7ZSsy3JMAFuMxDmpHuagFfAhxRLn8
hiAKnEDcBr6xTl97AtaRbQeVy0Kjcqsnh1VJROour/AZuCymGdJUXoA5tcFZufX9
OTZErMYFJDam2K5zWbPYgMVmw9AU+j0l11kAMLPbcWRjsv0Vfb4pPgjrvq+gmedK
rDAyvckvMo8j89MK7J4RN5KCIfs1l03tEzCzO4mOPHZG6zkgL4xRrvGXjZdduz6C
wiK0G4Xgsce3Rke9M3wi9TJv9jxD+prfSy1S22ths4+Iwirb+PkQE5pGOtzincfm
KKOkaELAuBeLcTr60CCOBgq9VTAY5d53viZWaSKvPIwFdMN37jHyH3/Myu3KSb54
Umu97E9Ci621MUQu1LXOapJgQcpSrqCJcNepLPJRb7ugarxc4ZWJQkC/SrYT5pXk
NAnPiUOXOVFSx5FZKi5CPxabGXnOK4ztj/CVl7BWrAiSBSBM1SHwSIYN6OFQ9c0w
oChJfH4nfH/X62STRDjNX6+iAddFzyZ/Yn1fa9x9EwfVmrPd+FEEC6ogaCjsqE8t
Vy7cQ3X+TMzutmL+kuFGL2yNf6X8vSeKGiXf856AFxCwWkb7+5s=
=fCh+
-----END PGP SIGNATURE-----

--ancuvpz55b5dyajj--

