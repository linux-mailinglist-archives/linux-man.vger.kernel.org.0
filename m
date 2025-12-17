Return-Path: <linux-man+bounces-4438-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8834DCC8EC2
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 18:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F11EB3029B73
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 16:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4275829BDBF;
	Wed, 17 Dec 2025 16:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYO2K/UE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E550C23D7F5
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 16:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989966; cv=none; b=LWm7XkL+6tOUQdXwpL0GmromIxeRd2FB2WjQO7/tj+QhxBFb4bBr7DJmsLfepDD056Q0yuhtbx3aCI0sLz/Ktimu3HaKcwVFy1OrENFXSP97VVSWsGmsEtBriRX1LdTxHQYemhptyOhRKdRV8iQscnYjthbpgrw2L2hn7mWD4co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989966; c=relaxed/simple;
	bh=IOOykTKpHcC7jf4KTUz8v38HAXsezXsd2tXYpmYNGQs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ExYBYigfipmRFs9FOTRL7UnFuVMYTbAHd+OPSLH6VXBX3kaiiq4IPEzKD0TkVcOMyDjLd3y8iDx9oFbBehCK8nUhimRKGSnqKuLfPi/0XA5gzw7WQIOfBdrAX1AfzuJIe/mWpd1pD7S4lhBQYpTDUOLp6Qtmxg13PWdjqk3HEE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYO2K/UE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9AF6C4CEF5;
	Wed, 17 Dec 2025 16:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765989965;
	bh=IOOykTKpHcC7jf4KTUz8v38HAXsezXsd2tXYpmYNGQs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CYO2K/UE2WmAGuxmyp5RjLsg/eB5tiDR7K+FQGzsFUGA+RFdTP5yHHTCYZsLwVuMS
	 BXVsp2PUqBvNCmr8FE9dpcOFxHvwu7Vkn1iE4TfbjZChc0tFP3aUqEMzJSzyZ4X9y3
	 HQj36+r6k2xn3XidbBkRb0NVzyo2uManhttd9s0kKrQ5AFn8qcGzCxdDMy8cESC485
	 1vS/wvGrscF2MMJO6FmJ9Zg1BU135KzKh+2Vbuu5BWQBzYymrdDLjTUfmPjR7qTYFc
	 z36J6C1oyOuCPLV+I/wwMklT01Q+HyigbjXeQo3ORAAHoKb/8AFr7r8mYoQ0Y9Gv5L
	 SDqWwFBeOaVbg==
Date: Wed, 17 Dec 2025 17:46:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <pki7gx5bpllm3tuibwz6mpumhfsgx3vk3hl6kfvpdiwo2hsmci@phurldq2i2bm>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eiokqvmwhqg2wqw3"
Content-Disposition: inline
In-Reply-To: <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>


--eiokqvmwhqg2wqw3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <pki7gx5bpllm3tuibwz6mpumhfsgx3vk3hl6kfvpdiwo2hsmci@phurldq2i2bm>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>

Hi Eugene,

On Wed, Dec 17, 2025 at 03:42:28PM +0100, Eugene Syromyatnikov wrote:
> On Wed, Dec 17, 2025 at 2:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
>=20
>=20
> > +Otherwise,
> > +the behavior was undefined.
>=20
> I think this statement is incorrect, or at least misleading, because
> the current reading (that includes DR460) of ISO 9899:2011 explicitly

Does DR460 retroactively fix C11, or is it incorporated as part of C17?

Can you please provide any links to the sources?

> states that the function must fail when the condition is not satisfied
> (and that is what OpenBSD has implemented), and that also makes any
> permissive specification non-conforming wrt C11 as it is now.

What do you mean by "permissive specification"?  I didn't understand
this sentence well.

> But that
> is also true that C11 _used to_ specify a failure to conform to this
> onerous restriction as UB, which rendered the programs malformed, but,
> on the other hand, kept libcs that implemented it permissively
> standard-conformant.
>=20
> I understand that I am unnecessarily conscientious here,

Please, be very picky.  That'll result in a better manual page.  :)

> but I think
> it is important to articulate what the standard both says and used to
> say, as it is the reference point for the language implementations,

To some degree, I agree.  Except that the standard isn't that important
where it differs from reality.

> the totality of which an application developer can neither observe nor
> inspect, and relying on a couple of anecdotes in terms of
> implementations may lead to issues down the road. I guess the outcome
> of my rants is "don't use aligned_alloc and C11 together", or
> something along those lines.
>=20
> > +.IP \[bu]
> > +If
> > +.I alignment
> > +was not a power of two,
> > +the behavior was undefined.
>=20
> I can't find a version of the standard that mentions the power-of-two
> restriction, it pertains only posix_memalign.

Oops, you're right; this should be "if the alignment was an unsupported
value".


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--eiokqvmwhqg2wqw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlC3kMACgkQ64mZXMKQ
wqkzyhAArztWZVkM3mjhH+vVTQ4nB0lWJPnMtg4/ngw2HMrglYmi+aTbpFLGhCi6
z7fJq5iIOmH94ax+Abboi4m4IWd1GlYU3EGQ4hcBYk783c4DoImogwsKdSlHjk+7
w/I/phiwP+5zRM+1GSyeXuDXbI1asp4SiX3+Iwh9wpuOLBc5S2W67o2F+qjeuzYK
wEUFku9YEVV+ZG0Ib4YfVqb7XxAZreO+6Rgt0URr7oMfOlNuJ4zklfUEMHZ+5u23
3u6prCx3CPnV3CVZkUBxzBtB6733kA4zvAuR7BIl6zCnKVYUfDo2vYlxvkO6blzH
uK3LIMcdZqEdYtzRlLsy2tujAhYk9NGtmFWI7LNfeV5/KPj0I0ko48DisWwQCF3v
Yq94OWB/f5kK6WlunQ/RJU2OnQdsIaZH0Q8kMahPrS3bTRYCmTLcPUPQ4EDHX5/Q
GsBm7jXigWBPcalHNdNJhY40F673heEBbWAoib8nuyEnOMb5X35TznhxXPYGjw7X
S1QB3zHJvvWPU1OhRVoq8ZS8m5uVEcpfgKGpm8ZfKMTfuzg4mwKTj68tph2fEAfW
JNNUMB8ktqkb2CxT6cPvfpfkKVVEWOaJSTa80UpXkbH7TrEa2TK8tR24hxW20kMS
3XavnButTopOsc+MX3XmG4M2HiOBmsDDsTGne/UQ2CKzfeWFIBQ=
=tWwr
-----END PGP SIGNATURE-----

--eiokqvmwhqg2wqw3--

