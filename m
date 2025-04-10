Return-Path: <linux-man+bounces-2767-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00747A84E3E
	for <lists+linux-man@lfdr.de>; Thu, 10 Apr 2025 22:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EDB01B874B4
	for <lists+linux-man@lfdr.de>; Thu, 10 Apr 2025 20:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B369A1E47B0;
	Thu, 10 Apr 2025 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/Cu22zu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F3628F920
	for <linux-man@vger.kernel.org>; Thu, 10 Apr 2025 20:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744317007; cv=none; b=aIvHcNNI/MO22/Ljyux+u68BGwlZ0bZPZhptoVxXejJrkwiOn5b58ZGlO4bTUldeOpg/leYPpI0v0WszXEGCI267tXtoPcAb0vDC3xv8kD9GrC3b4Lj966S52wRt56/ICDcyTKBt5joOzyfZ9InI9ehMekk7MD7nsI6TFnpMQyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744317007; c=relaxed/simple;
	bh=fOp5RNjWuuBVHTSQWBBULcoYbNHRcj9Top7zNAyBT50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RpnKOeEmCXEj+Q34h8xuTX2WtLhfzy6ws77YlFyAxXWfmtfeUB4pW7o4VHgB3V5YYVw65ogHJcDiQYXmXNIoB0Area1EH/dcY6fN9ByGntdCDMo7r8ebIPnPJXXcOlIDr4O7yUNyxWqtNCdRCycsgjkfqBy8JkNiDEBM0uchjDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/Cu22zu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 532BCC4CEDD;
	Thu, 10 Apr 2025 20:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744317006;
	bh=fOp5RNjWuuBVHTSQWBBULcoYbNHRcj9Top7zNAyBT50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h/Cu22zutTBC30DIMf4EKWXFDqGizyXKUEC+Y7k9P61mITbHOe5R9ZqZL6BH61MSY
	 bxfGo0HMV62WXrQYrOJM2g7nkQrs29YKTubaDgOQZxO87vDPBJd7na8pRj6OQI1A4c
	 mkEM6aD/cvm1asKIZ8YLG799Pr2re8r4bn/Ui6bEAugu+AbjrZt3wKu8Y67KlFlSOU
	 1Gkh2KU8mX8Xpg3ybrUXz5LlV8yTAbCckJD4sXTo+Jf5IzXYDvLm4mVuocJXTxLCp5
	 TP1YFXOE0vh6DxsLdasyQfzhvNtZUEvlDxnqvztYaPU2sIk6BmKAxd5po0M3f3B6+n
	 jkfSwqmFVGpFg==
Date: Thu, 10 Apr 2025 22:30:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
Message-ID: <7eipszjbpwa6hpmhidggt5pclbwrck6zmch6cahbs6mdbt5csg@ho4hux3avpdf>
References: <20250409200316.1555164-1-jannh@google.com>
 <eou3zcpvohbtr3ixeibqec4grb5jdf35ss7xi5fy5qjgpxysde@fenpacxwsnqb>
 <CAG48ez2Ox6YudW9iOS=0PvM3_NZr0fvJTda1z8eC+uybYYPANA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6nebur4azoszr7qh"
Content-Disposition: inline
In-Reply-To: <CAG48ez2Ox6YudW9iOS=0PvM3_NZr0fvJTda1z8eC+uybYYPANA@mail.gmail.com>


--6nebur4azoszr7qh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jann Horn <jannh@google.com>
Cc: linux-man@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Subject: Re: [PATCH man] mmap.2: Document danger of mappings larger than
 PTRDIFF_MAX
References: <20250409200316.1555164-1-jannh@google.com>
 <eou3zcpvohbtr3ixeibqec4grb5jdf35ss7xi5fy5qjgpxysde@fenpacxwsnqb>
 <CAG48ez2Ox6YudW9iOS=0PvM3_NZr0fvJTda1z8eC+uybYYPANA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAG48ez2Ox6YudW9iOS=0PvM3_NZr0fvJTda1z8eC+uybYYPANA@mail.gmail.com>

Hi Jann,

On Thu, Apr 10, 2025 at 08:08:41PM +0200, Jann Horn wrote:
> > Hmmm.  Maybe it could reject PTRDIFF_MAX within the kernel, which would
> > at least work for cases where user-space ptrdiff_t matches the kernel's
> > ptrdiff_t?  Then only users where they don't match would be unprotected,
> > but those are hopefully extra careful.
>=20
> Perhaps. But then some tricky things are:
>=20
> 1. How many existing users would we be breaking with such a change?
> Probably _someone_ out there is deliberately mapping files over 2G
> into 32-bit processes and it sorta worked until now...
> 2. We don't really have a concept of object size in the kernel, and it
> might be hard to reason about whether mmap() is used logically to
> create a new object or extend an existing object. I guess we could
> limit VMA sizes for 32-bit userspace to 0x7ffff000 and enforce a
> 1-page gap around mappings that are at least half that size, or
> something like that, but that would probably get a bit ugly on the
> kernel side...
>=20
> The first point is really the main concern for me - we might end up
> breaking existing users.

Hmmm, okay.  If it ends up being too complex, it also would be bad.
It's easier for careful programmers to just check the size before the
call.  So it's fine to not do the check in the kernel.

> > > or whether userspace even wants C semantics.
> >
> > I guess any language will have to link to C at some point, or have
> > inherent limitations similar to those of C.
>=20
> This limitation is really a result of deciding to make pointer
> subtraction return a signed value, so that you can subtract a bigger
> pointer from a smaller pointer. I don't know whether other languages
> do that.
>
> > > But we can at least document it...
> >
> > Yep.  Most people are unaware of this, and believe they can get
> > SIZE_MAX.
> >
> > >
> > > @man-pages maintainer: Please wait a few days before applying this;
> > > I imagine there might be some discussion about this.
> >
> > Okay; see some minor comments below.
>=20
> Thanks. (I'll probably be out for the next two weeks or so, I'll
> probably get back to this afterwards.)

Okay, no problem

--=20
<https://www.alejandro-colomar.es/>

--6nebur4azoszr7qh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf4KkoACgkQ64mZXMKQ
wqlkGQ/7BPW2gWy+SJtfbHhElzuSA/LPvzN5dGOCPtdtwSCV1GfZ3Px0PxzeTQWb
8NPMlqaScu0YhexSUj92KWw+h1lz33OlwmoFB0XRsnd8QM5cwuiRSlpGzkJ/v3WZ
TmETa/VpVJiSQe+eKHYdGar4RWSwDfE3grUAMze4WXfuk0VbtsEHseGOUqZqq25W
y1UDBmXkYEFxiebzTM0EfB1eRjofKIbCAtjFXKZhMkd4OZK5qC19AFR2DEmTgzW+
K55vd44qPUiXWhYkh9A4+L6xmoIaHv7flDgY36VCS+6mjXWBIyIq2evwuyGf07qz
Ws5iVEnoBuovt5WYyzYdAtl4Ai67eVIweDh57uFk5ABUTzijlcA1VNAiDjyDubG9
1W79GGaLOFPQ9esA8klHyHwbBEcCQIpzZkBskgpOgS4t+Ii+zHBVmn1fzDejmRL5
0M+EeUHo9JQAjh0h4FyS8ImIiZ8WNUIS7evUarCSGFEd7+VLEu5r00J1LiP7Z365
9fACzYWhc2jxGZ9ARj1MG0oPjXhJwFdmqxf0kKoqgCd/slHUhyRAI+AT8kJ9MDeo
YCQsyoBqa1zyvcW9QTqDq5DOT3/L5QSF9KIys4d5zwfYzAZUQSDstu1OQh/sQL2e
/GBPYt9tAMiMfBg8RGFvWK9OZUhGIn0QwUnq/bOHsnv0nm2WaEE=
=Eku0
-----END PGP SIGNATURE-----

--6nebur4azoszr7qh--

