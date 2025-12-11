Return-Path: <linux-man+bounces-4398-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5133CB455E
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 01:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CDAD303FA5F
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 00:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBAB4946A;
	Thu, 11 Dec 2025 00:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR7xnFgg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A04219FC
	for <linux-man@vger.kernel.org>; Thu, 11 Dec 2025 00:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765411470; cv=none; b=ZxlQNUpiAnSHbgy9xeiGn+Py6fGKOylWsaZKgqNvvyZIA0r3orLfofbiXltGJv/gdO7ipIkZH0/QJaRHGxKjVP8m+1nLri+9Lp9wclK4P0/rSuiLLCWv84wje+LXYOAbOGoUOjBLGyt8Fo3+TkLmxlY/aSM6kb2J6jume2+P9tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765411470; c=relaxed/simple;
	bh=Q88885TuAvIp+zRAFR2TELAALBeRUbOJ3+L4HwkNqt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dHj3jJZMU3sPDXKm/j4Rj8M89mZy6vdnm+KmYz945n68nzTopN3hzhchu7fcbBGYTeuwhu5UFZ7GemTCgXfDXh6pvLPLfPahOBdFy5XexN8+CPUiPsT+A5/DZn4bq07YvoaxhtCkhC92F37nHMb2JM2X1Sq1vF8l/O1GQ59OoVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR7xnFgg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B12D6C4CEF1;
	Thu, 11 Dec 2025 00:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765411469;
	bh=Q88885TuAvIp+zRAFR2TELAALBeRUbOJ3+L4HwkNqt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fR7xnFggtpY6zAapIty/MbJtIkc718+Z8XsVK4/dpnAte1lWsvkaLmXY+nArzWT1a
	 Fu3q0SSn1zdfqZHVMLdoGigoXcpv0sSSuM7ewnXBvGGxuryaEzo02q/nbP6XJlsnve
	 Vf3HismjwemJ2pm6ZSkptPBRQrUVhr+kiOLrHufOkh6H8y6zZff5TeTTbBSFqtmM7j
	 TuwssbxXrCfoNNu/SMnk4YGY+Rc1FxHJe+ubCU1NusYpDYLpVGFSE6W3VQCKMmVXWx
	 wdzXhXDkiCjjK64IAzt4JrLIVnHjw64aRILnXWpe+AiZz0h6xcVU75/IgiU5qvz4iV
	 sjHj1KGapxc6w==
Date: Thu, 11 Dec 2025 01:04:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
 <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dctluzpm6wbv2mcj"
Content-Disposition: inline
In-Reply-To: <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>


--dctluzpm6wbv2mcj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
 <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>

[CC +=3D Ingo]

Hi Eugene, Ingo,

On Wed, Dec 10, 2025 at 11:50:33PM +0100, Eugene Syromyatnikov wrote:
> On Wed, Dec 10, 2025 at 6:12=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
[...]

> > posix_memalign(3) is terrible, because it takes a void**, which requires
> > a cast.
> >
> > memalign(3) is okay, except that it need not report invalid alignments.
> >
> > > and due to its limitation of size being multiple of alignment, that
> > > renders it useless for the vast majority of use cases.
> >
> > That limitation doesn't exist.  It was a bug in C11.
> >
> > Both musl and glibc seem okay:
> >
> >         alx@devuan:~$ grepc -tfd aligned_alloc ~/src/gnu/glibc/master/
> >         /home/alx/src/gnu/glibc/master/malloc/malloc.c:void *
> >         weak_function
> >         aligned_alloc (size_t alignment, size_t bytes)
> >         {
> >         /* Similar to memalign, but starting with ISO C17 the standard
> >            requires an error for alignments that are not supported by t=
he
> >            implementation.  Valid alignments for the current implementa=
tion
> >            are non-negative powers of two.  */
> >           if (!powerof2 (alignment) || alignment =3D=3D 0)
> >             {
> >               __set_errno (EINVAL);
> >               return NULL;
> >             }
> >
> >           return _mid_memalign (alignment, bytes);
> >         }
> >         alx@devuan:~$ grepc -tfd memalign ~/src/musl/libc/master/
> >         /home/alx/src/musl/libc/master/src/malloc/memalign.c:void *mema=
lign(size_t align, size_t len)
> >         {
> >                 return aligned_alloc(align, len);
> >         }
>=20
> OpenBSD's libc isn't:
> https://github.com/openbsd/src/blob/master/lib/libc/stdlib/malloc.c#L2336
>=20
> And it is understandable, since at some point it was *mandated* to
> fail in this case, and not be permissive.
>=20
> I know it's likely outside linux-man's purview, but it's definitely
> something to consider for portable application developers.

Hmmm, we didn't know of that.  I asked back when the page was patched if
anyone knew of any system that implemented the C11 behavior, and nobody
knew about any such.  Thanks!

That is definitely something that we should document in this project.
I'll prepare a patch.

> > Prior to that implementation, glibc had aligned_alloc(3) as an alias for
> > memalign(3).

[...]
[Reordered]

> > On Wed, Dec 10, 2025 at 05:29:39PM +0100, Eugene Syromyatnikov wrote:
> > > On Wed, Dec 10, 2025 at 1:40=E2=80=AFPM Alejandro Colomar <alx@kernel=
=2Eorg> wrote:
> > > > From all of these functions, ISO C's aligned_alloc(3) is the only o=
ne
> > > > that programmers should be using.
> > >
> > > I strongly disagree with this assessment; moreover,  I'd argue that
> > > this is the function that people should avoid, due to its
> > > inconsistent;y defined behavior in various versions of the standard,
> >
> > The only standard that was different was C11, but C17 --which is a bug
> > fix, and thus, the same standard-- fixed that, and the standard has been
> > consistent ever since.
> >
> > All known implementations conform to C17 and C23.
>=20
> So, you see, here lies a problem, conforming to which standard? As an
> application developer, I don't know whether requesting a large
> alignment would lead to success, failure, or rm-rf-ing my whole system
> (as the standard specified UB in that case before DR460[1]) by a
> "conforming" libc implementation, because libc, generally, is out of
> my control;

If noone had ever implemented C11, we could have treated it as
hypothetical UB.  But since you showed that OpenBSD has implemented it,
we do have a problem.

The good news is that it just fails.  So far, no implementation has UB;
it's only theoretical, and after the DR fixes, no new implementation
should ever implement it with UB.

Ingo, OpenBSD seems to be implementing C11's aligned_alloc(3).  Would
you mind checking if implementing the latest revision of
aligned_alloc(3) is a possibility in OpenBSD?  C17 had important
changes, which remain in C23, and have also been standardized by
POSIX.1-2024.

>  so, in reality, I'm only limited to alignments that are
> divisors of the object size for "safe" use, which renders the function
> useless for practical purposes. The fact that the definition of
> restrictions has changed so many times and so wildly renders it so
> toxic that I'd advise against using it in the foreseeable future and
> just stick to posix_memalign, despite its peculiarities in terms of
> argument handling.

After seeing this new information, I agree with you that
posix_memalign(3) seems more portable.

Maybe the manual page could show a wrapper to workaround the ugly API of
posix_memalign(3):

	static inline void *
	my_posix_memalign(size_t alignment, size_t size)
	{
		int   e;
		void  *p;

		e =3D posix_memalign(&p, alignment, size);
		if (e !=3D 0) {
			errno =3D e;
			return NULL;
		}

		return p;
	}

> The other aspect (which is irrelevant to this
> discussion, but doesn't adds points to aligned_alloc in terms of
> practical usability) is that MS CRT doesn't support it at all because
> it is oh so special in terms of aligned allocations.

Does MS support posix_memalign(3)?  What's the problem with
aligned_alloc(3)?

>=20
> [1] https://open-std.org/JTC1/SC22/WG14/www/docs/summary.htm#dr_460
>=20


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--dctluzpm6wbv2mcj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk6CoQACgkQ64mZXMKQ
wqktdhAAuQfebzi5v33fMSFceevGbtQHx3QwKBCH/DKw+1QvMgvZxNw+oMOHd6gm
44r8fGK2sWCkpBxjEdFQlu1337/3zv7eWAqJelGV4Xmni6WMRgHamOVt3p0LQHa3
bgZF4bCq8CK/SDaJx1YD8l0VOuYf8FIgq/rAxF80h5XxUR7jaUm1X6IkZerRXtJh
HD0Wx2s2pyqe+xPhJlBNRqrpLvMfItGSN5E4INszfF+lEyS2hojTsiNBCVUQkRyT
CrFO8xIDYuSdolt//nBHGPELLw03ifBCqbQP6tVVTMyGQyMxN91yP1QXp5eEpGSY
RN/FM3zPaHEhYFdYLnJAtqpTIAFf+vmjDRKfj5rlxOgkVTSohZkQoiW7E8b5tpMe
4rTV9Bkg/Jcl3Znsm0UCSzq02r7gE3dMVagu9sEQOgIyceGC7O/HMd2a3r6TiNAG
LsFpNffH380VaBZ6U58/as1aDMmUgPMU3O8IInzHoqsFY+c05R8PscEwNpe4vYlH
L7lHdxodikB7IpJZ7cnZSb5F1geKNV+YNkPDZqxxsK5Sz9iuOUNLiU+iMAUNIiiT
7UulUnDZdpoKnjEUWoCiz8UokLPRwSrxhL051jBAm8HTKu71Ye/4HV/KT8R0VEme
gbNmk9E5cEo9eGP9mxWO0r82WB/vXPzAGT7PPWkaJDPTN/SvoWw=
=D80M
-----END PGP SIGNATURE-----

--dctluzpm6wbv2mcj--

