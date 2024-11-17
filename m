Return-Path: <linux-man+bounces-2035-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F419D04B5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3A1CB2228D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:57:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22661D9A4E;
	Sun, 17 Nov 2024 16:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="qI9MYBFR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90A57DA68
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 16:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731862657; cv=none; b=khgWUj9rZBaFXsXRXUUueNFPzoWGakxkRqDs4J1Ux9EX2DxUr/EjNKRZW6t1ACesikJFMRSWEYwZPpAuFadtHN5ukLver07JT5Y2/O/GQuO8iKc2JrkBn1WWgCUdgJEFvnmd319Vjo8cqpym96JHI+JeZTvHntczPR6N6hP7+6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731862657; c=relaxed/simple;
	bh=fyVqf+Rn1MBizk+OeswEGx4GdVxkfBOWf6oK4oLFuks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SA2nW/UGZUwfQC/bcHvxRY6lw9VOLdm7PqdzFS40h4RyhI3HfM3p78177GGOINdljq49jydqEB5c2nRlRjz9Ql2jjXQsauA/yvTjYsKqpwR8kHgZ6DFmr0nkljI59JWmHbDMUfkoLljH2jwxXHjQye5qcS7tXc3Az7SfDrmRhlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=qI9MYBFR; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731862652;
	bh=cxrUqcXf8w/jDMGw5feFtYccnlzzQx9OXwlyZZh7hZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=qI9MYBFRy0JGg5DfJaJXcydZjPSbmbhYzOM9m6+gWiwY+9e2Yuj1chgNyDF7hSwq+
	 ILDtnbYo4FmAoJPBLI8I2nBq8nandmxJOzfkb+rqKAw5/9KRxdqA3RcFMQZ6zO8P1G
	 x3F5cHNtvVMvdN9PqwvwVNZODRr/twY6/209A220pE99X+I+n+axICBUWNlOikaCHM
	 MvnOwakaCIlloOBGc+xRCYUkMCL6WFcY24GjnuGQfwQtCH4KrS+ZaQy4ZWe61UUMx9
	 zR3+D5PNROQCB8Pya7bU/GvQLolLL91gSgPkh9xFPGtqA6QhPXDllneaPTOQskJopS
	 3h3oMxadClv2g==
Original-Subject: Re: Issue in man page proc_timer_stats.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: Alejandro Colomar <alx@kernel.org>, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002004C.00000000673A207C.000007D1; Sun, 17 Nov 2024 16:57:32 +0000
Date: Sun, 17 Nov 2024 16:57:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <ZzogfJsuqUBiOHgU@meinfjell.helgefjelltest.de>
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
 <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
 <20241117164343.53rxospihkd4upgh@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2001-1731862652-0001-2"
Content-Disposition: inline
In-Reply-To: <20241117164343.53rxospihkd4upgh@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2001-1731862652-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
hello Alex,
Am Sun, Nov 17, 2024 at 10:43:43AM -0600 schrieb G. Branden Robinson:
> At 2024-11-17T12:33:13+0100, Alejandro Colomar wrote:
> > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Other pages don't use FROM and until =E2=86=92 to - maybe a=
lign?
> >=20
> > When a feature is discontinued, "from" makes more sense than "since".
> > "Since" means that it still exists today.
> >=20
> > I'll eventually do a consistency fix in this regard.
> >=20
> > About until/to, I think until is more common.  I'll also check.
>=20
> Where the value of unambiguous expression is paramount, it's hard to
> beat interval notation, like "[2.6.24, 6.3)".
>=20
> Failing that, I would select a fixed set of English words to correspond
> to interval notation, and document that, probably in man-pages(7).
>=20
> For instance, and just spitballing here:
>=20
> 	since	[
> 	after	(
> 	until	)
> 	through	]
>=20
> I wouldn't expect this choice of associations to be accepted without
> some amount of argument--that's the advantage of proper interval
> notation.
>=20
> But, if interval notation is thought too unfamiliar or too awkward-
> looking for man page readers and/or contributors, such a mapping of
> English words to it might be the next best thing.  Disciplined use of
> the terms will be important.

This was my main point - consistent usage.

(This will also ease translations).

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2001-1731862652-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6IHkACgkQQbqlJmgq
5nD8Dg/+NQ+l4PSw8VZd7qJP3uph197ZA18WzpSTxkWEQ5s/CjWHoskCZ8uIY3yd
1WMWQN8s8vZIwvwoUTOuMO4gGPZa2taLhOr+Gk7xmLG329USxt6y1oRHZUWAcRLE
r9w98lswp5FxKMrxBrxljLZ3ZF1MpDu9pzUmnNg14OOWIAumxI3yB9nmWvP5q/9/
4VlyfROQOQWmNf/ooeCUthNEKMH2x4TKbuh1XyzfRlu9p9KAjs/Jc1guJsZKTRjS
ttHC7U1iZJlZN8AOpXnZQLHGIyG7Wy9az3/+x3N2SQRKCnvMWDqJCSahNx4xEhOi
Ao4ZYA9+YcezlCDDE6ZX2dFW/AC0zodhUZ3GPEuk6klmv5YRC/wU64H78LouAdLl
fapHY6VwPZ68Q3XR0/d/ns9bUV2Wk2ca20SyBu5AsSPdIQX3FH9AxREKEqgB2X5H
0xy7cwMU23V/zzEKnqqNg/V3DYod0tCgdYtA1C6/hQdk4gXnNX7gaoS73cXRUwCc
zVVlWTLUyfZ65mihp65c0V95Ozzk3AXnREXl7yC5ffoWJGkZDDgU/f+4Ei0MGBUa
cU31SYIx8CYYDtZeUzO+71jPhbTV36ZiJijiRnFFDDOKkaTJfFZ0h1ILRcQI2ddm
kBWehSAGjHQk4B9FnVj5t+j9LOqO3kN2nIuTfNWuRLP9pRjUbfg=
=uTsq
-----END PGP SIGNATURE-----

--=_meinfjell-2001-1731862652-0001-2--

