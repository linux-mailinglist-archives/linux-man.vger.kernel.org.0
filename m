Return-Path: <linux-man+bounces-4337-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE99C8E381
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 13:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B40203A8D01
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 12:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A186732E155;
	Thu, 27 Nov 2025 12:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it57LfhH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F1D32D0FF
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 12:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764245550; cv=none; b=R4WMKKjnTEuGzxdkhnCP1FLrXrQXmwJQFPqlHBZSp+2ZRZSxkXKAJaw8lKofXPWGxJmkVmSqycKIIQj2hdpM+qsffvUvWyjuS6O2Rzu7A6B3U1+0FPJWRLxAxH99hq8FNRa2dPPTbKqPoIZJO01jUw+PBs5m0sXaI9AtD16Ases=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764245550; c=relaxed/simple;
	bh=kijjGRDEhS1AX31KXwGASuYEFstKzwTzGBtyaCHuOXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rAdEI/BjLRSWL94qZDM8BPqA8/G3FyX2XUgfycjDY04TANyfMHbBgIyGNKNYRAxXl8N5pOVhayserDFB7N/oZ9U1DbKbfiMsq9kHRjsUudBn0j62/lQbebZ8Zgl2tE3phcBukCBXSpi3f5V+ivPij9rBxQ+9Y8ElfGDwW8Iyi7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it57LfhH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B191C4CEF8;
	Thu, 27 Nov 2025 12:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764245549;
	bh=kijjGRDEhS1AX31KXwGASuYEFstKzwTzGBtyaCHuOXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=it57LfhHzwLGsXY2EV3d8ip+PE7D8fClyT0fQp9l4sAw/zUd5MZ207RnO0cFcY8Au
	 a0j/AU0fAgi+Aid6VzVlxqcLEEH4roolSo9surbkSB3DAM8JRujW+bgGmEbv5wvpjb
	 deRzan5EgmW5vKI4XjfPZj0PSvGo3p3BwgK8GjS5EHkGpmFrKtIIwyeJ4ssvknJTJM
	 FUZx/oRjQ2lgQT7fE7pYKucjEKiH5bjD5yCxFU0BxWAgybNAoPRDeTRT5f69o3xkE+
	 RSWdvPap/sSx/cVFp9LwQ6HHa0x0GvTK3CT555+JciVpALEsHymzj+F1FA3maHW/bp
	 kv7NBHchbhCFQ==
Date: Thu, 27 Nov 2025 13:12:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
 <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
 <87h5ughsn0.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="muvvrhod7lfaqyq4"
Content-Disposition: inline
In-Reply-To: <87h5ughsn0.fsf@gmail.com>


--muvvrhod7lfaqyq4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
 <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
 <87h5ughsn0.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87h5ughsn0.fsf@gmail.com>

Hi Collin,

On Wed, Nov 26, 2025 at 10:54:59PM -0800, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > On Tue, Nov 25, 2025 at 08:05:24PM -0600, G. Branden Robinson wrote:
> >> Hi Collin,
> >>=20
> >> At 2025-11-25T17:15:39-0800, Collin Funk wrote:
> >> > While looking at 'man -S 3 getopt' the underlining under PID looked
> >> > strange to me.
> >
> > The underlining under 'PID' means that it's a variable part.  We use
> > that syntax in many pages.  This is documented in groff_man(3), as
> > Branden said.
> >
> > However, you might have also noticed some dotted underline that extends
> > until the end of the line.  I think that's a bug somewhere --might be in
> > the terminal emulator, because I see it in xfce4-terminal(1) but not in
> > xterm(1)--.
>=20
> I was using Gnome terminal and Emacs '(man "getopt.3")'.

Hmmm, I can reproduce the dotted underline in gnome-terminal(1) too.
I don't know where's the bug.  It might be in both.  Branden, can you
have a look at it?  I guess you'll know better than me about these
issues.

>=20
> >> > -.BI _ PID _GNU_nonoption_argv_flags_
> >> > +.IR _ PID _GNU_nonoption_argv_flags_
> >
> > For now, I'll keep the current style, which is consistent in the
> > project.
>=20
> It still looks strange to me. But I guess I will survive. :)
>=20
> Thank you both for the explanations.

You're welcome!  :)


Have a lovely day!
Alex

>=20
> Collin



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--muvvrhod7lfaqyq4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkoQCoACgkQ64mZXMKQ
wqktxQ/7BHQ4qSk+fDOhEdS48yNWClKdOcfJeQhw20yp263Y5oPND6QmdTZCW7oC
fnCqzdX3rRa6fzoZ+gzYBAYr04OmBYYSW+mTrm+ERxy+etUb1+8Upk6h51Chr/te
gcXi6f0WXLUuj44XnLnQyqhgnIa2gifC0Vw7GmdVi1euMV8e/qkpW3nbcLh7x3VX
4xZQT/pKyLbh/KJnnX7a17msvTlCaX195PzqNHAR9WvVGkrVtM3B8POo3S79Ucoi
bycqpN4t/oSMlgp6pvci89zLlZer3Hg+C9R3ezuuQi3r6lb712KLs9+fOhjhrkCq
rSY0a60WK5HDgaU4k9pgcZpzoGBUZeRHRyplM0pfPkXfS1aTKzTqTgghDO3Qp7AV
SS5idcu9RoWaKqM+80ffVr2ZEXqX5hTyMCOaI1VzasiN4BVSUUuG2sLo4EWrphos
qOscX1JJazwxMBzvmsheEZY9TToC1PH4aklRAunUPnvWiYhIDVWkHRb9czx3iRTM
tpPiNgADdTBXm4SbXkxrTA/8pM5Xty7ZqFBQayZOeUWZ+HaYvIh6hwGl4ahlMSfo
VahWYDneNcnB8pp0lTGThnvfndYbaxuO1o+yy4MDRWH5hEWZJAfJCAJRUp/OpZWq
19kot8G1bRIBlLYiio06yNeVGgpbZbzRwgbkQHv8sUT7sgrllBY=
=iJtZ
-----END PGP SIGNATURE-----

--muvvrhod7lfaqyq4--

