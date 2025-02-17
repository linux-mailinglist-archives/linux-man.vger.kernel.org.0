Return-Path: <linux-man+bounces-2478-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEAFA38F76
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 00:02:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B616A1888DEA
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 23:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1171A5B98;
	Mon, 17 Feb 2025 23:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDiWrhUt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316BE14F9E2
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 23:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739833364; cv=none; b=NxfcFNQa6kIzG+S1BlwFp9ZEwGBZdetlADNkknI6+CYIuuPKbvaQdK/dpUZYAhsiYgEpqDEx3f1uDUKYMC4yYdRqJCbg6zM8ul4w64gEtkrLVerSjsovacu3OIJ2Kco+uPmd5r2/k1EtHbZERfGofT7jmacYUMdWQ1OOI2GysxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739833364; c=relaxed/simple;
	bh=m8RAj9kRj+Y/wD1/Aeg9YbcgNs/5WA1xLY6pa9cxgw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QxNi3QRvfW6xLGlS7sVjCEcnc0SYij0Tl8aFOcdoHiR5bg5EqK7tRXucaHN67EEVvXZjOUE7Qi/yOWLqv11ALPZm54sqam4A7eynxgKZ8Y99eiXu+UrMAAzDx5yDzkO/1NHDuqXh3+grIO/y0tgoLOUjFBt497HuHnDF2HqdQsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDiWrhUt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733D2C4CED1;
	Mon, 17 Feb 2025 23:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739833363;
	bh=m8RAj9kRj+Y/wD1/Aeg9YbcgNs/5WA1xLY6pa9cxgw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RDiWrhUtglxR3W2hHDXRAR/QSVxFq0Di9sJLro8rxh3DFaoIT5r5KpNMKu1yJlXCc
	 CVKEe/Kxp19nsICTCBz0rf2Xg2Z5CKTDjKNrKfDVGXuabirCVvNoQTqJs1H2rkgDgI
	 BjP0evB8cPCSiwx3qr6vL1OVxZTk3JTNqCzxMbnRqByOTb2li0nCNuqRz1oRNkQE0V
	 5wH+owivA7n8AuErQjFzu8yQxVfGbIpTAF0lHUQNIn685aHjqsCB5z6V5EUA7pvabQ
	 ETxBH8AHsBikkUhQzR9LvVhRAqApTCPWeexKz3rmbLZLy88b+V6YP96rMRkvqWaFeS
	 o56IuxHvj7tkA==
Date: Tue, 18 Feb 2025 00:03:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, branden@debian.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <2fuwth4iyofv6ahskprnrxo3ii5ifebk7lezg3cjw4px4uqksq@wvqwnzjh7s2w>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <20250217.157b556c3b77@gnoack.org>
 <eawtdhfhbikpqnqygk6sisjb4drhzp6szneea2cajved6rwfkh@uf6ai7rjom4l>
 <20250217223537.rt4xhln6lip4kpaa@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aydigxc5wgrtkdq2"
Content-Disposition: inline
In-Reply-To: <20250217223537.rt4xhln6lip4kpaa@illithid>


--aydigxc5wgrtkdq2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>, 
	linux-man@vger.kernel.org, branden@debian.org, Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <20250217.157b556c3b77@gnoack.org>
 <eawtdhfhbikpqnqygk6sisjb4drhzp6szneea2cajved6rwfkh@uf6ai7rjom4l>
 <20250217223537.rt4xhln6lip4kpaa@illithid>
MIME-Version: 1.0
In-Reply-To: <20250217223537.rt4xhln6lip4kpaa@illithid>

Hi Branden,

On Mon, Feb 17, 2025 at 04:35:37PM -0600, G. Branden Robinson wrote:
> At 2025-02-17T23:16:59+0100, Alejandro Colomar wrote:
> > On Mon, Feb 17, 2025 at 09:24:11PM +0100, G=C3=BCnther Noack wrote:
> > > > +Name
> > > > +       style/c - C coding style
> > >=20
> > > "...for code examples in man pages"?
> >=20
> > I didn't specify, because it also applies to programs written in commit
> > messages (for example to prove that a patch is correct).  It applies to
> > every C program that I have to look at as maintainer of this project
> > (and actually, of any project that I comaintain too).
>=20
> Maybe you need a name for this class/category.
>=20
> "Colomar C coding style guide"?

Well, I guess being a file within our repository makes it explicit
enough that it applies at least to this project in its entirety.  That
is also applies to my other things, is coincidence.  :)

I'll avoid giving it a name, for now.

> > The definitions go all after main().  The prototypes go all before
> > main().  The benefit is that you can get an overview of what is
> > defined without having to look at the implementation.
>=20
> My understanding is that function prototypes were added to the C
> language to permit type-checking of function call arguments (and return
> values) _across_ translation units--specifically.  So if a function is
> static, or has no callers outside of its translation unit,[1] the
> compiler can be expected to exercise whatever type-checking facilities
> it has within that translation unit.  (I admit not knowing whether the
> pre-ANSI Ritchie compiler or pcc were this careful.  I'll brace myself.)

Yep, their main reason to exist is type safety across TUs.  However,
that is useless in this project, because example programs are a single
TU most of the time.

However, they're still useful as an "index" of the program source code.
You can have a look at the list of prototypes, and that gives you an
idea of what is implemented below.

>=20
> Regards,
> Branden
>=20
> [1] ...in which case the correct thing to do is _declare it static_, but
>     hey, this is C, man, we're "terse".  More modern languages like Go
>     and Rust have started to recognize that having symbols be public
>     and/or mutable by default are worse choices for modularity and
>     concurrency.  Even Ada was not quite this careful.

Even for functions internal to a TU, I do always provide prototypes for
them in my code.  It helps see what's in a .c file by looking at the
"index" at the top.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--aydigxc5wgrtkdq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmezwDUACgkQ64mZXMKQ
wqlWChAAsh0D3i1BmFApZ3yiRS0Q6LXZf71tkB5pkTNw3+R7X+tI+jwsS4uMeoUB
HURyihZzy3I37EkdRiV6urpG9bC9OxEDCLoTZvm+JnuX7bnExtBx9aYc4dRWe/J4
ly8b7MQnIZ1Jxj4/MWcapLh5gUJOx7tYIUyp2z40Y4/4CY6oo44BOq7Xw7iUaQVG
+OMCZRtcO6LJX709Qy6Z6ii5sABySPO6A8j7KyF80AohwCbSw5v9mlr0/bGlFPtr
PaANvaCg0sjVfARNeXh1TW5MPdPLPTEICerW5mzMT7eoDFvtJm6E7fgx8LuJtX26
1H2dl8GncpxIttc3jbfPpN+7sGn5S5myD8FtgWp1pfjHv+jamyaDtYwOXlb3nptl
uOvG7emKQK3kqJvZVWWZzcNvxdrBmm72tj+iMgw3V4L4PjkdpqRNxwozo2JmJhMI
cIWRIrs8/F+AYMwRIXtYLnL7uoS/gN+AhFtb+TtEdtDjc4UXsHJOBC1TIvzLHYjI
7fdYfmKi+yFObmXj+2nA05f8+6/mPOU/yhPtq/0zMLUZHgTnNxKkjx2uTzQ4dPwe
JzxVF3RZNusFfNurICS2xn0f2btGKqWTxhEeRUdE/Uc20tU2o1CEa2JCMmbn3iLD
By8QUdnbXk4NmpDu0a9WTkjQ26O6s+WGcFbb5odjn4Yx/XYXHX4=
=GiYj
-----END PGP SIGNATURE-----

--aydigxc5wgrtkdq2--

