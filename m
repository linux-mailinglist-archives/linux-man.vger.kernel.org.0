Return-Path: <linux-man+bounces-96-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4B97EFED8
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 11:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD322B209CC
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 10:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A1E107A0;
	Sat, 18 Nov 2023 10:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4BR7Kg5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6881C10949
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 10:09:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30687C433C8;
	Sat, 18 Nov 2023 10:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700302169;
	bh=nzFmZ6ltQKYpKsZogLb5GNHynI8bT006/qy3xpRe/sw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i4BR7Kg5DPfMhGabME98sypS0ZLkS7l53ajbJ1l0BUhx5OyxHVc7sqmauTSnZafI9
	 V/RSmhzKwPb4uRKRopk+R2OsklQgTlaVJaTGBnnECjVPFsx8wgYn9+qzxHTr24LWDI
	 hW2F3yXdcGBN3j315nZWn7xKzJ4CtSrTXYBOznmSimhlLzJrPxJcXr3NiQDrGWBnoC
	 JzA9w11PGkKxc9Ku1puDyNP7cb1B4ojibRqbKchoDF9FfuPL+eXJTAgmdWD4JUtxXN
	 YsSfjzZbD4yJJvsPN1UVJ4Zu6twLMPUpH3PFViGi97ubn9bt3iJ8X13FV0MWf9PI/h
	 MaBvAO0npT19w==
Date: Sat, 18 Nov 2023 11:12:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZViOGeSYdYVRl-Ky@devuan>
References: <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
 <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu>
 <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>
 <ZVCwKBJyCsP8Aam9@debian>
 <b5182629-8028-4842-bbfc-ea106e251b92@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bpY3W2KDd17Kimib"
Content-Disposition: inline
In-Reply-To: <b5182629-8028-4842-bbfc-ea106e251b92@jguk.org>


--bpY3W2KDd17Kimib
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 18 Nov 2023 11:12:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>,
	Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Fri, Nov 17, 2023 at 09:57:39PM +0000, Jonny Grant wrote:
> > -  strlcpy(3)'s first order growth corresponds to strlen(src).  That's
> >    due to returning strlen(src), which proves to be a poor API.
> >=20
> > -  strncpy(3)'s first order growth corresponds to sizeof(dst).  That's
> >    of course due to the zeroing.  If sizeof(dst) is kept very small, you
> >    could live with it.  When the size grows to more or less 4 KiB, this
> >    drag becomes meaningful.
> >=20
> > -  strnlen(3)+*cpy() first order growth corresponds to
> >    strnlen(src, sizeof(dst)), which is the fastest order of growth
> >    you can get from a truncating string-copying function (except if you
> >    keep track of your slen manually and call directly memcpy(3)).
>=20
> That's a really good point, keeping track of the length (and buffer size)=
 and then just using memcpy.
> The copy time should be closer to the number of bytes read and written.

Actually, the performance of memcpy(3) should also be on the order of
strnlen(src, sizeof(dst)), so it should always take similar times
compared to strnlen(3)+*cpy().  It is only that it will always be
slightly faster due to avoiding a second read, but it will only be a %.
Nothing like 10x, which can easily happen with strlcpy(3) or strncpy(3).

> > Of course, first order of growth ignores second order of growth and so
> > on, which for small inputs can be important.  That is, O(x^3) is bigger
> > than O(x^2), but x3 + x2 can be smaller than 5*x2 for small x.
> >=20
> >>
> >> As Paul mentioned, strlcpy is a poor choice for processing strings.\
> >> Could rely on their guidance as they already measured.
> >> https://www.gnu.org/software/libc/manual/html_node/Truncating-Strings.=
html
> >=20
> > Indeed.  I've added important notices in BUGS about it, and recommended
> > against
>=20
> Saw glibc have (11) functions listed as a poor choice for string processi=
ng

They list many functions as poor choices for string processing.  The
problem is that they list those functions for string processing.  I went
a bit further and de-listed some: We don't list strncpy(3) or strncat(3)
as functions that process strings, but rather as something else.  And
they are actually good functions for processing that something else.

The problem with strlcpy(3) is that it's a function that is designed to
process strings, and being bad at processing strings makes it a bad
function period.

> >> Maybe the strlcpy API is easier, safer for programmers; but the
> >> compiler can't figure out that the programmer already knew src string
> >> length.  So the strlcpy does a strlen() and wastes time reading over
> >> memory.  If the src length is known, can just memcpy.
> >=20
> > I've written strtcpy(3) as an alternative to strlcpy(3) that doesn't
> > suffer its problems.  It should be even safer and easier to use, and its
> > first order of growth is better.  I'll send a patch for review in a
> > moment.
>=20
> I did take a look at strtcpy but it calls strnlen(), reading over memory.

That's just a few % slower than memcpy(3).  Don't expect memcpy(3) to be
much faster than this.  strtcpy() reads twice writes once; memcpy(3)
reads once writes once.  So you can expect memcpy(3) to be constantly
33% faster (very roughly).

If you implement you own strtcpy() in assembly, maybe you can get
something that's in the single-digit % slower than memcpy(3), similar to
strcpy(3).

> >> When I've benchmarked things, reducing the memory accesses for read,
> >> write boosted performance, also looked at the cycles taken, of course
> >> cache and alignment all play a part too.
> >=20
> > If one wants to micro-optimize for their use case, its none of my
> > business.  I provide a function that should be safe and relatively fast
> > for all use cases, which libc doesn't.
> >=20
> >> Maybe could suggest in your man page programmers should keep track of
> >> the src size ? - to save the cost of the strlen().
> >=20
> > No.  Optimizations are not my business.  Writing good APIs should make
> > these optimizations low value so that they aren't done, except for the
> > most performance-critical programs.
> >=20
> > The problem comes when libc doesn't provide anything usable, and the
> > user has no guidance on where to start.  Then, programmers start being
> > clever, usually too clever.  That's why I think the man-pages should go
> > ahead and write wrapper functions such as strtcpy() and stpecpy()
> > aound libc functions; these wrappers should provide a fast and safe
> > starting point for most programs.
> >=20
> > It's true that memcpy(3) is the fastest function one can use, but it
> > requires the programmer to be rather careful with the lengths of the
> > strings.  I don't think keeping track of all those little details is
> > what the common programmer should do.
>=20
> That's true, high-performance users probably create their own bespoke sol=
utions.
> strtcpy probably takes the src size?

No.  strtcpy() takes the dst size.

ssize_t
strtcpy(char dst[restrict dsize], const char *restrict src, size_t dsize);

This function doesn't care about the src size.  It requires that it's
either a string, or a character array larger than dst.  In both cases,
it means that the internal calculation of slen =3D strnlen(src, dsize)
will never overrun the buffer, while costing only a small time.


--=20
<https://www.alejandro-colomar.es/>

--bpY3W2KDd17Kimib
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVYjhMACgkQnowa+77/
2zKsJA/+L3mDuZKzUjG8zVFkIA/kQdz6dBPBr0Ep7uOvy2jn1HMi+fKHDYyo8sdt
024c5QoqSxw4BCSL0sUhummSAPdL7Z+Kuh25l+SKzvrKMJV7jkK2J+gYKdnShvCI
3UJj+/yM8G1RKkK5r5f6r3MxvUj5PLSWndjmdxZC5YFiVCR8dnbhPFuR0BjejklL
PBzGRRSGsnRaGJHfTNgrVufv2aGtmJmeGE/hQUHHyhlpuo0lcSoL/7kYUfP2Me9a
80yrSk+hJW2/AZ+8XwPi6AxmUQUigzdt23alYRAglEeSx7yI59Y7teZXdWfZ6KMT
WCXFpko9RDN52AecsihXrNBTnEbj9mETWClwXJOScoFWkgf0h2gXyRN7rfwUixUl
rQmTv/9M6n7IRaanwXe/bf4s75c3Y/u3+2C5BkHYaJ6RrjZVMetV39nFaheWFn6y
SnLbepUebJvmcIWFr9hNDyzzmwKjpD1jMZCa3IiU/ejjD0GwOQB3VGcmnN2Otqpc
ioZW3R6yK845ZCK3g6Fo9hKw3S3gEGQ6P0KvJILeeo6qFYWcLT8IxzdZXijiksr7
h+k8mtlf4qxavRviDXvre0QTbcxS2zb/vYTp1UavWNZsD7q8/GAcVxVaqV69oJBF
pjFbIIDAyeSR8xEDveyNjarOHQ6tusbVNzO6DytUql96YJ84KdU=
=tR8v
-----END PGP SIGNATURE-----

--bpY3W2KDd17Kimib--

