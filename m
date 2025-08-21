Return-Path: <linux-man+bounces-3531-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85642B302B2
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 21:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D09D721E9E
	for <lists+linux-man@lfdr.de>; Thu, 21 Aug 2025 19:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E73346A15;
	Thu, 21 Aug 2025 19:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv6WW0dC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4902345759;
	Thu, 21 Aug 2025 19:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755803659; cv=none; b=m1FE2Ud4T982oQf6xqvh0JSq4VlEDVvdJ8viUuKB8J923AtyWJcNut00RCdPe6AcXgj75DY9L0Cgtbp8ZTbn1ilanC28NWFnAstIMcouJ3QIjmcMy9saCjSzoqioI3Qo2GrVkDm2UsJXyeyAYwtmbyDH0gT4KwyTq8wdUTRjZb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755803659; c=relaxed/simple;
	bh=yVm//5XN8ja5rrlrG36rYU2fnADH3Fsp2qlhmWfFs8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5YbRy0LRRgptvhI5FJwUejUknpiXm8z6SkYvgd8IeCYe+KaalQmLyivRh9leOgejCHm/3DKckuAkjP5j7vOPSI8R0djAfuc6cE/Uu9ynG/u8uhu65sPmwV5jPwS4uzzJOJjWoiG+ZQotemPTPxrFhuGbEdPWzPZl7575kIB5Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv6WW0dC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52DC2C4CEEB;
	Thu, 21 Aug 2025 19:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755803658;
	bh=yVm//5XN8ja5rrlrG36rYU2fnADH3Fsp2qlhmWfFs8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dv6WW0dCcx7llbhzcExU6VtZK5lNX+L0Ap14hibXoI97KnSZ0Wx2WhA/tsDBk32Fy
	 ScDOwibVVKa5e8SzdVt50IytExVFAIeXKyrioD1k9jRU3hw1HWNbTp5yHmU34V6mcS
	 qSS0JoWiphbfKrFrARmGLgen0P9de3olxQqhSBUaisIaWwz689xXVMTq0iyLlLxh/L
	 N+cmyGNFI+uM9JCJrGU/6WEgwPph6zmUC0RYWX/WBnXIqYTm7UGyq6AtJNnAbTHiXe
	 GS5JDsMzysRhM/TuflPRphB0Mq8oaPHiMlMctIwtAVSlTXirMqb6lkpJzJtb64jG3U
	 ByFBHGGX4tnuA==
Date: Thu, 21 Aug 2025 21:14:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
Message-ID: <wygherozbi27pom3xgfcev6pweliuap44cli2vuqhyaqth3dkf@vrkh2iu75tyn>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
 <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>
 <20250821140851.z1FYafVm@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cou4xdlowmbhnx7f"
Content-Disposition: inline
In-Reply-To: <20250821140851.z1FYafVm@linutronix.de>


--cou4xdlowmbhnx7f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v5 2/3] man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const:
 Document PR_FUTEX_HASH_SET_SLOTS
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
 <20250819071728.1431543-3-bigeasy@linutronix.de>
 <c5yimoxm73uwq7xhparfqhohrgk7hznzawgajntbmz3nx6337l@ukuiw4n2hfqh>
 <v5luee7avc6ayyox7hn4lwb6wfvezv52by7noffwejvksypord@kx26fel62kan>
 <20250821140851.z1FYafVm@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250821140851.z1FYafVm@linutronix.de>

On Thu, Aug 21, 2025 at 04:08:51PM +0200, Sebastian Andrzej Siewior wrote:
> On 2025-08-19 13:19:15 [+0200], Alejandro Colomar wrote:
> > Hi Sebastian,
> Hi Alejandro,

Hi Sebastian,

> > > > +.B int prctl(PR_FUTEX_HASH, PR_FUTEX_HASH_SET_SLOTS,
> > > > +.BI "          unsigned long " hash_size ", unsigned long " hash_f=
lags ");
> >=20
> > I see that it is implemented in the kernel as
> >=20
> > 	static int
> > 	futex_hash_allocate(unsigned int hash_slots, unsigned int flags)
> > 	{
> > 		...
> > 	}
> >=20
> > But PR_FUTEX_HASH is implemented as
> >=20
> > 	int
> > 	futex_hash_prctl(unsigned long arg2, unsigned long arg3,
> > 	    unsigned long arg4)
> > 	{
> > 		...
> > 	}
> >=20
> > Should we document is as a u_int, or a u_long?  Is that mismatch a bug,
> > or is it on purpose?
>=20
> The prctl() interface is long so I started with that. Internally we keep
> it as an int since we don't need it that big and it avoids a hole
> otherwise (but then there is a hole towards the end of the structure).
> Realistically speaking 1 << 31 is the largest value that can be
> specified (atm) and it will very likely lead to ENOMEM. If the user
> tries the next higher value, 1 << 32, then the upper bits will be
> truncated and the global hash will be requested and this will succeed.
>=20
> The bug could be based on the argument type 1 << 32 will succeed but
> it should not. Using 1 << 25 will request ~2GiB of memory and is a bit
> far from sane.
> I am bit forth and back between forcing an error for anything > 1 << 30,
> or updating the docs to int. But this will be the easiest ;)
> Any recommendations based on similar cases?

I don't remember any similar cases atm.

I guess we should document it as long, because in ABIs where it matters,
users should pass a long.  People should probably not be passing such
huge values, so we can leave it as an undocumented bug, which can be
fixed later if we ever find it to be important.

Changing the implementation from int to long if we ever need it should
be easy, as it doesn't break user space (it would rather fix it).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cou4xdlowmbhnx7f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAminb/wACgkQ64mZXMKQ
wqkq3BAAgeEd5u4Ipv7CBqVvqTXv0tvZ+qY04pNMgMUj0HuQsTYt63VExc7+6wq2
Kj/YRW2jPGCSLiFBv/4TgBxLF1gQtPveRfeogVWBaCrvJsWGVI2+amYoCelmf969
xmiaBp0eA3vd56Nb6V7YXREmS02GXvsM+YuqDW4hmenZmhbLsWCX1AU4snvcdNy4
XWgOUbEZjmGnbgqFC1/rIJxe8+09lmGXwdALH2pjiZUn4U4q8jEup1ByisO0v1H6
DL07Z+51aFig1IajwDT1oWQzQVJaLMtbNqVwdPAyuMzYOEwVUZjhxTSi1L7S1CZS
v5qv/Oo1l9SX4sJZbvdYb6zV/359tYy0pYX1a+W4VpHCLylltuREibKO1geCMsbl
L3i2UEad52BOPi2ZcQ3h1m5+lWctNQbNkWYHHRkDGxN00CV/hfhzPeCUXEgF4jbC
uMxlcpkwWFGgVX+HrEy5XrEKCAMPcfb/CnT0kPzHUdJEX4AdCi1SZvWOmqJwyiTe
UDKgk8EY8ORl9rrsNstKiRVoId+GGUsMIQ7X/Bc6HoyATZNEeJTlv+2gweT5xRZX
M6DvsKwnl5uJ0+oGv6RFrDW8TOQSydqBumsXCZsaUf1EzUeb3bD6UyVrUSgg73+q
MZjTnxTSbSHwiMnSSkeCI9PJ2XRaCB+75I8w8fXZI94GkYIbdNg=
=SSNB
-----END PGP SIGNATURE-----

--cou4xdlowmbhnx7f--

