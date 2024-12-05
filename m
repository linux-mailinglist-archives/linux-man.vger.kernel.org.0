Return-Path: <linux-man+bounces-2118-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF79E55C2
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 13:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F44E163158
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 12:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFAE21885E;
	Thu,  5 Dec 2024 12:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3ojwcXP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA23217F2A
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 12:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733402642; cv=none; b=CK5tmM3ColkxrLREn9cXQbhpHWXwAwaETD+tT0B/mfoCTt96YWBFAaDY9RTARR+f7rcxnu/GRWtdOASwtYXeyraPXObKsuDN4qwYcS3W7Q8PoGu7pnxLPMjPLhZWian9kOW+NkbXOcLvay+Y6VUJ0SekAiuR5JFsBL/iFm6UAXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733402642; c=relaxed/simple;
	bh=hH/feaT2gz9NqK3tB79JnG5zjei8Pi0HnK6xbfrsarg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uyzyJwGH//ZtRbyWYKlVwYB7eIGdWcKhz/kYR9vcWi7KxCOGH1T5BIPEEaAS8CTPNEbG92fFhDB8MHfNmrN3mCqMgwHLNNL4Y7B7yPn+u7wqTxCidV5Nfrv0Q0n0gRbNa3yFysM/nb1fB11b/X11rgScueuepj44wm2NKIMQ3G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3ojwcXP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38850C4CED1;
	Thu,  5 Dec 2024 12:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733402641;
	bh=hH/feaT2gz9NqK3tB79JnG5zjei8Pi0HnK6xbfrsarg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W3ojwcXPq0jl7Rbx6JHQhrdyrfY5qtif/mBNO7qgiLnLruKRTHHTc6c7YGCR+yKrC
	 XbSMASmHaAFBNOT0mSpHXrRaGAfzN6B21BXUGd3rXitHMRwfZTNHIKYFahzyM+7pBe
	 mg3VrYsfFGgAoSBbeV2MJjh/tUhz4zS4JJOHdbYAzRIGfSqadclhcSBhCeAdPwtZpL
	 bW7pZqFc4QVNknScRDzNYHgFEnTIdrsSfh1uNrc2JhTNtFKr+zoewCJXcn1/cRu5mi
	 M3YvCfBBSjd70EDhw0lGKF6Eqkv1U3D+LrZQtP055g4I1DmcOd2n5ReOmwCiZoicAZ
	 o+KJ27kJW+60w==
Date: Thu, 5 Dec 2024 13:43:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: git repositories and branches (was: [PATCH man-pages v4] madvise.2:
 ...)
Message-ID: <20241205124358.l4vzdinfzqngl7pn@devuan>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <20241205122037.7u2lbjix6mawoepr@devuan>
 <e7e1d068-af82-4b48-9fde-a341158e4db0@lucifer.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i6vksizwoyi7d5ju"
Content-Disposition: inline
In-Reply-To: <e7e1d068-af82-4b48-9fde-a341158e4db0@lucifer.local>


--i6vksizwoyi7d5ju
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: git repositories and branches (was: [PATCH man-pages v4] madvise.2:
 ...)
MIME-Version: 1.0

Hi Lorenzo,

On Thu, Dec 05, 2024 at 12:26:56PM +0000, Lorenzo Stoakes wrote:
> On Thu, Dec 05, 2024 at 01:20:37PM +0100, Alejandro Colomar wrote:
> > Thanks for the patch!  I've applied it, with some minor tweaks.  See
> > comments below.
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Dbb405ee3f6039226267fb1c6d2cb1fbb18d835bf>
>=20
> Thanks all seems reasonable.
>=20
> Just a quick question for future changes - I see you reference
> git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git - but
> I've been working against
> git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git - is the latter
> occasionally synced from the former?

The 'main' branch in that server is usually at the same point that
'master' at <kernel.org>.  They're the same thing, just on different
servers.

Then, there's a 'contrib' branch in my server, which I use to buffer
patches I apply from others.  That allows me to amend typos and other
mistakes (or even drop patches) before pushing to master.

Here's my workflow:

1)  I push always first to 'contrib', which triggers CI on my server,
    and lets me know if all's good (it runs many linters set up in the
    build system).

2)  Then I let know the contributor I've pushed there.  Then I leave it
    there for a day or so.

3)  If I don't find anything wrong in a day or so, I push to 'main' in
    my server, which regenerates the PDF book in my website:
    <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pag=
es-HEAD.pdf>.

4)  After the PDF is generated correctly, I push to <kernel.org>'s
    'master'.

You can think of this contrib branch as a 'next' from the kernel, but I
pull from it much more often.

> Or should I be working against your
> personal repo for future changes?

Most of the time, it's enough to use the 'master' branch from
<kernel.org>.

In some cases, for example if you have several patches for a single
page, if I have applied some of them, and you need to rebase, it would
make sense to base on that 'contrib' branch.  Or if I have applied some
changes recently to it and might conflict with yours, I'll ask you to
rebase.

Cheers,
Alex

>=20
> Thanks, Lorenzo

--=20
<https://www.alejandro-colomar.es/>

--i6vksizwoyi7d5ju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdRoAcACgkQnowa+77/
2zJpww/7BwxSIH+HXQywdhGZaaQNLTt/+LMtngfkeoIQsTO/2059ED7phm1exOSt
HQX7V6cyMVWgcjjwPH8rKbx4bBhKLrFNuaNBTmEXsoj6vrlotqY5U8yjbYcs7vb6
iMYBb8DZn9h9UUYVq4cb+RNd6cDTolNyvUfOF/5ZOYyq2Hv5Hky/AkyvuJNtm7GR
LFwlsqvZyZOYVAQx4jxPo1S8dQ3A8i3wC6PDVEcfp1JVUkIxaQ3JKXFZLuiYBWiI
Ts9hwhj94hKQGhIQyWuO22+Pk5gZ/LFvgV+QuZM4i4FnNV+69MN33HFpSiawKK8J
euoQ62r18AhX0SefzfcKL4HZ3rtD26XNoeEHXu0Xl4io1331Q6NH5rpP3ylqT7z+
luKCLu9sU4af8uGrQs9HFfDkch8i4KkQMxXsJluwhvkgB8h9VvrJkLhFuPU7jUET
ynMIu4N4rjbjIPCkhf5D50Ug8SQV0VFA66+tMP7xl4XeP5va1X/YWIm/U0mxC67f
5UXxT/iX+5vaiy8BszQ33LrogABrMHnu4iz4/We6O/qi8XR85QLS+7q1Dl/mYODx
kuk+7Famopd88z+/Ntf4Ta1beZaNLytcLAowV8hxz0ioII942CtpXKMjxoaFftNS
JQtI/SzTH8HUQ8hlBKVMoisBrwZuldq5nWBvaizoDIifZjuZla8=
=qOMa
-----END PGP SIGNATURE-----

--i6vksizwoyi7d5ju--

