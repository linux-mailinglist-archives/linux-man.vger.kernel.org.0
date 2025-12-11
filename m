Return-Path: <linux-man+bounces-4400-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 380E4CB58A2
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 11:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22BDD30169B2
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 10:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7001C303CB7;
	Thu, 11 Dec 2025 10:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3/Qxo3g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAFE3019DE
	for <linux-man@vger.kernel.org>; Thu, 11 Dec 2025 10:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765449574; cv=none; b=NKpwNdJbQSmb9eYvhJD442Fn2hdqDyXjKDTsW+8bQY0RWrh0fB5BHvUgGofMhRgCVD0Ugkj4jQGBqFeRTh+Q3h1qhVY8p3q07LKq6cFMBtrihKJv5BVifk/iTXbZaqjE9H5+AQGAHymmwuYCNlg/FhgmcmJkdndbIvLJZiW0TdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765449574; c=relaxed/simple;
	bh=pnmDyXlu9PLvcYmtE1mXojuwEEEhMEmYFpNEG9x07QM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5CayGPGAdYnvAI27zimRlDkEfKE5fUp8EkuXcHP5hwgxEmCLU1bRXpy2uyicT07hNjZ14sVCUzrdh42FAT4skyRn8bpqTPdmC2qJiNpiBT9HAxTGtaMwyp4zjui5AiM45D/znSCNzs4Rzp115ZebtmN1iYoc4DHHBoHx8I6I3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3/Qxo3g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8514DC4CEF7;
	Thu, 11 Dec 2025 10:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765449573;
	bh=pnmDyXlu9PLvcYmtE1mXojuwEEEhMEmYFpNEG9x07QM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K3/Qxo3g+dQo/Gc2uuFW2aE0CHNTLAdw98J3uNWzUwjdpYiZnP5MG74NC3S93oHem
	 2mVL4FklU1Nu5QTbrrtOe6y3w//XVt/8mW45fuVOy2bT2EthS8FPPkmFU+3eHQ776R
	 YqH+4/Z1qClrm/kJ+KgoucQwxdUl746f8L3+eO2HK5cB9Y/dKj+kUggLlZY1gZR2Xn
	 DHJuRxfi2EAtYTMJ2uS/hSB5lV6TU7u0+Tz7yqWLtfe59czvcwRqxZQ0Buq2GjgGX2
	 CuUFLR+tjIgJ1Ky0x+LZ3J08L3Tlj3Kc70EB6JLZOLZqvF9SNTLjM6ykysQR86K/6B
	 Jw2XWsvOnj3mQ==
Date: Thu, 11 Dec 2025 11:39:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <o6hoy4v4i6jtzbbx7vy6wzb6r2oq44yrnr6ggcd4tkgklku62q@lpomug4r6fgq>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
 <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>
 <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
 <CACGkJdssK6kg4aTVvmKdFENehOxADvYkn6FwZ_qnZUcb9GSUmQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g4gnyjni2u2kch3z"
Content-Disposition: inline
In-Reply-To: <CACGkJdssK6kg4aTVvmKdFENehOxADvYkn6FwZ_qnZUcb9GSUmQ@mail.gmail.com>


--g4gnyjni2u2kch3z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
Message-ID: <o6hoy4v4i6jtzbbx7vy6wzb6r2oq44yrnr6ggcd4tkgklku62q@lpomug4r6fgq>
References: <cover.1765370035.git.alx@kernel.org>
 <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
 <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>
 <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
 <CACGkJdssK6kg4aTVvmKdFENehOxADvYkn6FwZ_qnZUcb9GSUmQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdssK6kg4aTVvmKdFENehOxADvYkn6FwZ_qnZUcb9GSUmQ@mail.gmail.com>

Hi Eugene,

On Thu, Dec 11, 2025 at 04:46:03AM +0100, Eugene Syromyatnikov wrote:
> On Thu, Dec 11, 2025 at 1:04=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > [CC +=3D Ingo]
> >
> > Hi Eugene, Ingo,
> >
> > The good news is that it just fails.  So far, no implementation has UB;
> > it's only theoretical, and after the DR fixes, no new implementation
> > should ever implement it with UB.
>=20
> I do recognise your point (and, from a practical point of view,
> aligned_alloc() is most likely fine on Linux), but still think (and
> thus want to re-iterate) that the fact that at some point in time it
> was, in accordance with standard, UB and, consequently, there could be
> an optimising compiler that treated it as such, warrants a portability
> note.

Makes sense.  Although I expect such an optimizer to come directly from
Hell.  :)

> > Maybe the manual page could show a wrapper to workaround the ugly API of
> > posix_memalign(3):
> >
> >         static inline void *
> >         my_posix_memalign(size_t alignment, size_t size)
> >         {
> >                 int   e;
> >                 void  *p;
> >
> >                 e =3D posix_memalign(&p, alignment, size);
> >                 if (e !=3D 0) {
> >                         errno =3D e;
> >                         return NULL;
> >                 }
> >
> >                 return p;
> >         }
>=20
> Uff, in terms of wrappers, it's difficult for me to advocate for
> something, as there are many aspects in that:
>  - To some, returning an error can be a preferable interface.
>  - Some may want a bit more fool-proofing (like allowing alignments
> less than sizeof(void *) or guaranteed upper bound for possible
> alignments).
>  - Some may want some fallback built-in, and that fallback also may
> differ based on whether alignment is seen as a hint or as a
> requirement.
>=20
> For example, OpenSSL implements its own wrapper,
> OPENSSL_aligned_alloc()[1], which is, well, some mix of the above
> (with the spice of non-POSIX-platform support).

Hmmm.

>=20
> Personally, I don't see the choices made for posix_memalign() as
> outright bad (for example, pthread has generally the similar
> interface), just peculiar in the overarching context of other existing
> memory allocating functions; however, if you want to suggest some
> minimal wrapper to make it in line with the rest, I don't see any
> particular flaws in the proposed code right away, looks good to me.

Or maybe better say nothing.  I think I'll imply that aligned_alloc(3)
is the right API to use, without explicitly stating it.

After all, it should be fine; it will have spurious errors in OpenBSD
and maybe others, but I don't expect it to be worse than that.

> > > The other aspect (which is irrelevant to this
> > > discussion, but doesn't adds points to aligned_alloc in terms of
> > > practical usability) is that MS CRT doesn't support it at all because
> > > it is oh so special in terms of aligned allocations.
> >
> > Does MS support posix_memalign(3)?
>=20
> No.
>=20
> > What's the problem with aligned_alloc(3)?
>=20
> As far as I'm aware, MS CRT does not implement it;  there is
> _aligned_malloc()[2], which returns pointers that are supposed to be
> freed with _aligned_free()[3], and, I guess, it hints at the ways it
> is implemented and the reasons aligned_alloc() is not provided.

Ughh, I see.  MS is indeed oh so special.  :)

>=20
> [1] https://docs.openssl.org/master/man3/OPENSSL_malloc/
>     Also, check the HISTORY section there.
> [2] https://learn.microsoft.com/en-us/cpp/c-runtime-library/reference/ali=
gned-malloc?view=3Dmsvc-170
> [3] https://learn.microsoft.com/en-us/cpp/c-runtime-library/reference/ali=
gned-free?view=3Dmsvc-170

Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--g4gnyjni2u2kch3z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk6n1sACgkQ64mZXMKQ
wqlWhxAAiAzQ7r2YM13fZq8h2QXqJSyISEbYm2/+jpn2caX+Nxy7lP2HxfrCSe5v
p6g/QAmjVesFT6b8rPbPFnmtxMweZwX8XaZFRmX8ByCNOJyppF0BVfKjWxnyqLK3
85puRqdcQeSSlCJfLe9Qn0XZb8wN6/9hC1TsvD5VTqZa0v88zoPBLWGi4DfBWNDq
eM56AORxEZQWOMUSaoYuZUotVvrKjxnqiz/ts3AgvaAWb1kMUc+VvG1MANvHjy3E
kLEfnI3y3owrqeojj+65Q3MIOO+WaaQrQiPuHpi8mPk0lFck4KRcov3mcbrROTvm
lqcmMr8lBkypxsR8eQv9r/VuFDxRSURcMpt5VTJOhql1T4Pdda6MR9ueZ/x780vS
zbaslnxS9xfBFUPKOgcsZSw8Y7ykdBSwxX03e6opMWszRWbqgSVDyTSZph4ob6q2
2dg7T9QAASG3WEZKzhwzjkgrbAQTQGmdTCV/WvH2B9C9lxfSXZCGB4ARum+Cdh9A
6ec/wXAK/jm3ymLAM0iMvix1bnvb9mHGwF7AE3NvCTR1aKK8ofqlHX4QUdjNwpFC
/LUCY+sJqhGoH8+4ZXWglJubes6mh0Xnt1Ov8svJ66EqmKdM/TcnrkPRTZEV3+B0
ODl5HV5BVVjcAlQjvaDs/nc4mxrwuGGVCdLDYtvSH8EQwjvNVMU=
=XJbW
-----END PGP SIGNATURE-----

--g4gnyjni2u2kch3z--

