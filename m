Return-Path: <linux-man+bounces-602-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B368387C1E5
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 18:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52C621F22312
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65131745CF;
	Thu, 14 Mar 2024 17:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECfUDXls"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F6B745C8
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 17:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710436368; cv=none; b=oO5A40z9mD4PEjMJumrs8xAyQoItTrpA9HRxxF/5cg5V4kfGk7vAwaP46z7wJ6sO0Pp3uKsKkxpy/3hIwcef6wxYnxWpIDtmhEo6fKP2aJaJAcBniZcYidNaU1OlXeDzrETzCxNNz9b9vSbHWbXPo+QPc2Gz2vm/+etwIZ94GJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710436368; c=relaxed/simple;
	bh=WGWJD48qJtT8tJu4NNIzjzsN10blytHG1GqVpS2zlAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MmnTO/lZ90Ur32nRc8QWMZScHsK4cPjQR4SInhb1PpGzUEYdtJGJKzmZgy2s7wMwAAG2hXS/hJpMU+KhgJH7XH2bJ0hk1XVSHw+7VVbcIrOR8rM7vY888XolwoyKHfFiT8DTXVVgqYqSVuU7RxLHZ0ozBpf8vGQaL2nGMQn5+HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECfUDXls; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB099C43390;
	Thu, 14 Mar 2024 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710436367;
	bh=WGWJD48qJtT8tJu4NNIzjzsN10blytHG1GqVpS2zlAI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ECfUDXlsr5wGWZ6PRYQHLrIVqI7IUVZMVCe9oY9bE9HphHy/GRyNyztHbKRw/tp4c
	 REwRQmMy33BIQe8LHUlhy7vwzcRO/zNCTMKgTrbrSnbHdG5WWGDDqERRUIXQh971cx
	 ZTCHuybDu2sOoQQBp92YHps6T4Lk9HeJTl9bve00LM5mNY2+/NBeDJOv6xzQyepiYe
	 EXSXh+pQL+akZYQovZbZ9XU1Sx9XL/L2OFS7tuSK5yluDA3Tn4ka3UgfNBcMVxgYQE
	 BnayIQCSwuFzEYnUeecbKrrDHDWWHJYmK7cxwYi1497EXftzo8ya51+gM35kqeHFwN
	 WsRbFRGt2mU/Q==
Date: Thu, 14 Mar 2024 18:12:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes
Message-ID: <ZfMwDAY8OlQKgKF6@debian>
References: <20240312151513.9718-1-mic@digikod.net>
 <ZfFt7VRWl1PBrXYQ@google.com>
 <ZfMg4rZRbjSP4mFn@debian>
 <ZfMhlJ59U3WfG-d6@debian>
 <ZfMqg8SkfynNnoAO@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x11/m8YaKWP7x1w+"
Content-Disposition: inline
In-Reply-To: <ZfMqg8SkfynNnoAO@google.com>


--x11/m8YaKWP7x1w+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 18:12:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes

On Thu, Mar 14, 2024 at 05:49:07PM +0100, G=C3=BCnther Noack wrote:
> On Thu, Mar 14, 2024 at 05:11:00PM +0100, Alejandro Colomar wrote:
> > Hi G=C3=BCnther, Micka=C3=ABl,
> >=20
> > On Thu, Mar 14, 2024 at 05:08:02PM +0100, Alejandro Colomar wrote:
> > > > >  .TP
> > > > >  .B E2BIG
> > > > >  The maximum number of composed rulesets is reached for the calli=
ng thread.
> > > > > -This limit is currently 64.
> > > > > +This limit is currently 16.
> >=20
> > BTW, do you think this limit change is something relevant for HISTORY?
> > Or should we maybe not document the limit?  Or maybe should the kernel
> > provide a macro to name that limit (and thus let a user grep it in their
> > headers to learn their specific value)?  Or maybe a combination?
>=20
> I doubt that anyone has run into that limit in real life yet (but I'd be =
happy
> to learn about it if they did).
>=20
> I think the most important reason why this limit is mentionworthy is beca=
use
> landlock_restrict_self() can fail when a process is trying to stack the N=
+1th
> Landlock policy on top.  For programs that don't know all of their parent
> processes in detail, they anyway can't make assumptions about how many po=
licies
> can still be stacked.  So whether the limit is 64 or 16, it does not make=
 much
> of a difference for the code that people have to write.

Hmmm, thanks!

Cheers,
Alex

> =E2=80=94G=C3=BCnther

--=20
<https://www.alejandro-colomar.es/>

--x11/m8YaKWP7x1w+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzMAwACgkQnowa+77/
2zJadg//W6R/U+PFIY9TnF263uj6fvJYZuQ0yvJTKTBD7YivfjxRMEKOa3ka7hIH
8IDOVadcu8Z4p2UOGlDqTb295sqieIqHXQ39UsxfQ+QA2U9QmT4DdkasuicRGQVj
DVM9tnbmuM578GAtYryIux4fdiElOJaz8+Mw5wgCbWQqjBxiqOAnmeCe5vB1fXRX
hjd65FRqytwKOYFTtE3/ur+696xvtaQuiLOXXbD8bn4h2KdQ60Wxd9iYNUGDUYqY
ItoG+a+RC1r6WjNDU+yKhoDfxgP4rbNitD6eLshOqclmFbhde1hN0OQjnrMmccfL
A3Dn+WO/5B4XdIBB9fNIFuiNSGvcxj4Cw29zhHS7dvQYy/sJ3d4ZgUtie0/y8WzN
vcbJAoh5kj+gIrDmGK65Y1IRIAiAdOBom6GyGvaVWcO05r/KbkdXHO+QEuyYeSSa
DKe2pFmmypI95YZGbm00J9W2I9P40PV65t/n+L1G3hahIhtSh5Grw3a+HDyeKNjb
1cfCDUOouIOwAwYOLJ5yv1BC6MDpgIxVLUEZIa/2QRLdNxdj0npCWh4nytAP/Bzu
O+aEP7t2oqBKa1OSni8MoChzjh5sRvdACGpJoL9KZJA6fMBLQ9fYxYOxIThFL8dm
WFIW+d1cPc+wIdi5naFEw6LYnXxFpTpl+vMCxgyrwu5u6GXl3cA=
=NQmp
-----END PGP SIGNATURE-----

--x11/m8YaKWP7x1w+--

