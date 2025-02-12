Return-Path: <linux-man+bounces-2402-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BC1A329AB
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 16:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90B0B1887E1A
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 15:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BDC212FA1;
	Wed, 12 Feb 2025 15:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hwlggi2p"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8E6212B13;
	Wed, 12 Feb 2025 15:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739373310; cv=none; b=kX+tgHURz2IKZ2Uc+xqsGFu7hyPZeL8QRmvAo/QIVeRgtVwNbMMzSvev16Xpxj7aTkmPIOC0/ujZgKYRVJ63vn7RkFK6aPLbk1bvfQc/owlYDRZwNxU4xWbPMzJhkg/Lr0GsuZX/AXajNxvxj6HEhrh5Io5zSNdvc//p4V81v08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739373310; c=relaxed/simple;
	bh=EQkMUZEm4izfHLZFeF7hNbx9xHZWMLoVMfKpi1u3+O0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s0ax6du+OstymCzeuYPMijoKc2CdkwQb+cNl1yY0GcDVHDEy28FocQeUpmabCBycJe5S8PX/wuYQ8TKotz78EanGAjoxsasp3Wj+xvAze8kWtRAvBcZH6OL3YPEfbOS3aGPD9keYRBjRwLk54+fvSV9i/2uxFgrY71uyM8jeKoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hwlggi2p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F57CC4CEE4;
	Wed, 12 Feb 2025 15:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739373310;
	bh=EQkMUZEm4izfHLZFeF7hNbx9xHZWMLoVMfKpi1u3+O0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hwlggi2p254HXUJeYNwSV1zIIh3u3xPyWVYAWr77upwYgB/Vsoi/IgkFgQVuO7VHu
	 uvdDHKw3hf1E7la4euuASA0tlpZAf+bvnyk6qAOmQMN9KnYDQDON6txqhrP5P3fLQZ
	 Z+P+ICcqUgLf9VU+JQZZZFLe8kt3zcuer39aFxGTPaomUD/fypKlgLsAsQICNk6AB7
	 3DghXqCYxxX9GGZCOKg16++sIrXMD7RCPFw4MySN44C5PWCzVdGrAZhsPCxGQJbIYo
	 LIXwPv2f1DRXTevOs/BFM7ur3JdzY+gnd+2iymFY/wWJcrfEvdyTxsPlZSf7dqdCB5
	 p9h72m8iFk3XQ==
Date: Wed, 12 Feb 2025 16:15:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	Daniel Burgener <dburgener@linux.microsoft.com>, tools@kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <g3aiqww6qe3eyi3wzcxjszitmggnndkrzjwplcuczzzqeula32@4htsjkh2slti>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211180851.rfx2oubh4qwd3h32@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2rufp3em3kcstaqi"
Content-Disposition: inline
In-Reply-To: <20250211180851.rfx2oubh4qwd3h32@illithid>


--2rufp3em3kcstaqi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	Daniel Burgener <dburgener@linux.microsoft.com>, tools@kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211180851.rfx2oubh4qwd3h32@illithid>
MIME-Version: 1.0
In-Reply-To: <20250211180851.rfx2oubh4qwd3h32@illithid>

Hi Branden,

On Tue, Feb 11, 2025 at 12:08:51PM -0600, G. Branden Robinson wrote:
> At 2025-02-11T17:13:21+0100, Alejandro Colomar wrote:
> > If there's consensus in the kernel of moving to man9 docs, I'd be
> > happy to help with that.  I fear that some maintainers may fear man(7)
> > pages.  If you need me to give any talks to explain how to write
> > man(7) source code, and show that it's easier than it looks like, I
> > could do that (G=C3=BCnther already suggested me to do so :).  Maybe I
> > should give a talk at Plumbers.
>=20
> Consider me a resource for this purpose as well.  I gave a talk on this
> very subject at DebConf 5 (not a typo, that was 2005),[1] and have some
> familiarity with the man(7) macro package, its history in various
> Unices, its groff implementation, and the underlying language of the
> formatter, troff/nroff, which were developed at the Bell Labs Computing
> Science Research Center contemporaneously with, and by the same group
> as, the Unix kernel.

Yup!  Maybe we can prepare a talk together?  I mean two speakers.  You
certainly know things I don't, and I probably have other points of view
that are interesting.

I think we could meet IRL eventually to prepare something like this.
I'll probably be in the US a couple of times in 2025 (one C Committee
meeting, and OSS.us/LSS.us).  If you're interested, please send me an
email.

And if any kernel people reading this is interested in anything specific
=66rom us man(7) people, please let us know!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2rufp3em3kcstaqi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmesuyIACgkQnowa+77/
2zJ1KA/+M05nTGMjzkB0L6G2aXvNJwRJugn0nqLzS7yVTwoDMqoQYWfnn+xR4AuL
pjYRR8MMJMy1BCx3I9zxxiVV49qvh8m9Sk9qokwxJm8BUsB9RUId8VlKH1atPpQP
R/vU+KwNOPwcRQ4DTobIeWD1FmyrqpZBGxEK6WTbmnACETGECPiNR7Cj5CEV9T+e
t8pm9EmBhuXhK0HyNJSe84r2eSQImsWFWlWSJmv0R834Vu8gUQI4QMw4Us8/M8UW
BFt5q62dFSvrkV3lhZebhGHI9t3CvMQUlozSMfQze9kUTY4kq0JpXFHLaEE5TH8a
TTAY/kv1MNnizP/eHo9zDXGyLND5LQxaXWbBWp4LS1Ef6flp3p7bMSSJl2Ip6F0f
4G7EnosuTZLcdXQiG45m77McBwJLhUGiVmq/sfqM/ZYJOvW5cbvMJ3A4HdFK+e8+
QQgyX/cuap83NGLFca4QLa91lyvmIYhNfibgeLdFYVR5lgMsKYPSuzrQ2PXZa1z3
YuYv4DmsDLhERHZzdNZZfPf/IkzzUguSpzBWu62BgmRxUhi7Wfx9nzhHFAmWz99N
CM81SLjBjwt8mx7YvyzIZsZo+SBW3HRfMUiQGYI/lxo+rhbL3Ru2b8puyFXIlTvG
ZNHJtPmIPB2NxA+H8TSvy9RAoOlb4I1nL0d9CvlCraB6s1vwOtE=
=AyKR
-----END PGP SIGNATURE-----

--2rufp3em3kcstaqi--

