Return-Path: <linux-man+bounces-2365-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA37A2D9D5
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F54D166817
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0858C243399;
	Sat,  8 Feb 2025 23:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD8q1xJh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD444243362;
	Sat,  8 Feb 2025 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739057723; cv=none; b=DsRp+WlQ0EquPChbmJGPg35ou7fJv7QtJbCzyPLy0yMtJcJJY+sD1EJrW6ANYNNdv3CgwbQ59kxBuaNwraLbuK0xwzhD7de02LNqt86XdFVuPZB0/yaH2SCo4rGiSZPXxBJ1iWP3myC0OK+zW1CA3u385w5vy/ZzLETCUbry/ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739057723; c=relaxed/simple;
	bh=E3jIEw77CN12sCSme42AdJcx/E7C7ePNg8h5x0nsJUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMUdCIkrF8dL86Q37fTtK8EPM5BoRLU5TEyCIA3Ww0cDab2fYJZ8uuvSASLHcEvnnIJfS1vp9F+SDLjLq/CnOoSmbmx05GvbDpcm1BqM+d51b/XpnfSTqqBfN8l11IzTlImGD5QKPc88swQSJugqLr90A4ibUtfvWLOArN8Gh28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD8q1xJh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DFC5C4CED6;
	Sat,  8 Feb 2025 23:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739057723;
	bh=E3jIEw77CN12sCSme42AdJcx/E7C7ePNg8h5x0nsJUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pD8q1xJhyvNxfLW4Oo127GwKB4vMBxFrOEVHJ+iX+HzzL7mUp9z1F7vVHYsX4mzk3
	 l5V3F6QbiNKIknY8cxSsGwy8DNYMuwA68bWabs4keA671MPCpZ5T+FNjpG+CuviHgj
	 5J4Mz3AaF9MpWRzKL2I8oUXTvWI8LnEZnRIszQ+IQNoS6nBqlEvqY1yQz9UUEoOi5S
	 rx2a2iNYmPbOqwG4ZqPWxufSsHLGFHJYRlu0pDEg9xz9v31uBjCUorjA2MpNOrO0bf
	 FsYKhFif8dslzi4riBQW7imPW2FdaBjr0MIAtDXxejv09PcfLeP0qONmi0K1Nz2Vyu
	 pB1cRDSb2T2wA==
Date: Sun, 9 Feb 2025 00:35:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	Danilo Krummrich <dakr@kernel.org>, Tamir Duberstein <tamird@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
Message-ID: <iocqkifz6dsywt2ueqppsdw53bgcp6i7ju7vadxxxu7pow6w5c@n2wqgypsiq2d>
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2db4dfaw4amostq7"
Content-Disposition: inline
In-Reply-To: <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com>


--2db4dfaw4amostq7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	Danilo Krummrich <dakr@kernel.org>, Tamir Duberstein <tamird@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANiq72nky1vpP6qNf4rdSNnr3i7oAdaB4SRQgSG5QaUCCiMs1A@mail.gmail.com>

Hi Miguel,

On Sun, Feb 09, 2025 at 12:11:58AM +0100, Miguel Ojeda wrote:
> On Sat, Feb 8, 2025 at 8:18=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
> >
> > -  aligned_alloc()
> >
> >         It seems to be like memalign(), with *some* input validation.
> >         It makes sure that the input is a power of two, or it fails.
> >         However, it doesn't check that the input is multiple of
> >         _Alignof(void*).  That requirement is implementation-defined;
> >         neither POSIX nor ISO C impose any specific requirements, so the
> >         requirements that the input is a power of two are imposed by
> >         glibc.  The documentation matches the experimental behavior.
>=20
> Thanks Alejandro.
>=20
> I am not sure I agree -- I am confused about three points:
>=20
>   - I am not sure the documentation is matching the experimental
> behavior. For instance, the Linux man pages say:
>=20
>       "except for the added restriction that `size` should be a
> multiple of `alignment`"
>=20
>     But a call like `aligned_alloc(8, 9)` succeeds. What does "added
> restriction" mean in this context? i.e. is it supposed to fail?

Your manual page is too old.  :)

	commit 7fd1e0f2be216a5e7f7aef0d03304bdf81bca9e0
	Author: DJ Delorie <dj@redhat.com>
	Date:   Mon May 8 20:43:35 2023 -0400

	    posix_memalign.3: Update aligned_alloc(3) to match C17
	   =20
	    Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.htm=
l>
	    Link: <https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e=
587813b90e8aa771c2c8e6e379dd48.camel@posteo.net/>
	    Link: <https://lore.kernel.org/linux-man/d79b505c-5b19-331c-5b25-d40ad=
c9cc843@wanadoo.fr/>
	    Cc: John Scott <jscott@posteo.net>
	    Cc: Paul Floyd <pjfloyd@wanadoo.fr>
	    Signed-off-by: DJ Delorie <dj@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
	index 9bc6eb9a4..88e4a8b63 100644
	--- a/man3/posix_memalign.3
	+++ b/man3/posix_memalign.3
	@@ -91,9 +91,8 @@ .SH DESCRIPTION
	 is the same as
	 .BR memalign (),
	 except for the added restriction that
	-.I size
	-should be a multiple of
	-.IR alignment .
	+.I alignment
	+must be a power of two.
	 .PP
	 The obsolete function
	 .BR valloc ()


On retrospective, we should have added some more details to that commit
message.  DJ, has the requirement of the size been lifted?  Was it never
present?

If the implementation in glibc has changed over time, we should probably
add a HISTORY section documenting historic behavior.

>   - I am not sure if ISO C intends to require the power of two or not.
> One of the C23 drafts says `aligned_alloc()` is supposed to fail if
>=20
>       "the value of `alignment` is not a valid alignment supported by
> the implementation the function"
>=20
>     And then, elsewhere, that:
>=20
>       "Valid alignments include only fundamental alignments, plus an
> additional implementation-defined set of values, which can be empty.
> Every valid alignment value shall be a nonnegative integral power of
> two."
>=20
>     So if those are intended to be connected, then it sounds like a
> non-power-of-two is invalid and thus the function should fail.

Hmmm, you're probably true.  I hadn't read that part.

>   - What Danilo mentioned about the sections, e.g. is the "ERRORS"
> section in the Linux man pages supposed to apply to all the functions
> documented in the same page?
>=20
>     Would it help to somehow indicate which errors apply for each functio=
n?

It probably needs some rewrite to make it more generic for all
functions.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2db4dfaw4amostq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmen6lQACgkQnowa+77/
2zLEOBAAo05uGWwn+45C1Qn8GR0pw2f0FhbO4WesgPQlH6brn9PERq6HUCmQjivf
yp8hjHMHYLINOQmHPe0OcLbFjNXQE+xjwxkXctzABNcnvDBhEiiSQoTd+BdcRkvE
1RsQkLZNVXBBRm9gqr8qTos4l44qDQs3cAaTFGmR1usQo7z0hVEe/o7c+wodLiU1
gF/Kh8/L0V5kLzW9tlM4iiOFa/BuoYiAfRWGrNko68Ix6EQMpXUSY9gMD7O3h3mP
JyK2cAUfeVBYxSnjTjV91oVl+ImnnWs856ZUL3VHH+a7tNkvCZpDxd9HmV4AWhaO
tj8BUWTfAT5a0PFJhQ907cpn2HyaM/lWyerv4L/vt9jTYC5C0MVy4CnkwwtYRDFS
XXIBRnCCImPrH1dl8HeiyBP5zqwKnvOx9hqBogCdcfIYSIO+ins7rpOItsZO+QFy
UKgB5mxaXEnpmp+yGSvS+KnJLW5BIO7L+w/r6A6eEYdPVCxSTY1VcGte1RYePM7p
vv/Tf9mDHp+PhGeNN2ryrKNAMHGbBvO1UYkJ+uKGgc/UWX41v7z9AqRvQEo8HzwO
IrxRHpQw8YzBN2+0KiGbzRi/Ww3uaaGmfl8szEUrUHX/AIZDXBMgK+pifPqjiIlp
8mIhtoCLiHJy/N/66dcZJu6E6uNhaIQSiDfn0vYCMOee18VVjYk=
=jlWq
-----END PGP SIGNATURE-----

--2db4dfaw4amostq7--

