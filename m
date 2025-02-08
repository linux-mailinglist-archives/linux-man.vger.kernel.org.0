Return-Path: <linux-man+bounces-2355-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88285A2D84C
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6F493A7788
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 19:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4DD241C97;
	Sat,  8 Feb 2025 19:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJkopUWl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6559D192593;
	Sat,  8 Feb 2025 19:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739042330; cv=none; b=WpUAuoMKff3ds8sS9r3bxeDh20Rl664zE3H/0sJw/jTe0BbhjI8gZrLMC6DXpB2pBeTfOCX9YcohMbK+Nvv+WbLcAtmiEhRhAa64qRDzelUvEvpzubLLmIksvbMtdDhET82UCkW2ZmES6WhDswAtuopq8C47iGzD/ID3nJOFRCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739042330; c=relaxed/simple;
	bh=XyLsx11eqQaMRfiqjvOquGH+HdAQbjC88rMrlee7qYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tJnzUL6A4pfubJ+hXFEYx+FePmsPpxYK1m0Jgda8XwNqRDiUrPBPzNZK+3/fs6hgngJg3nv2gFZni9TItFsj5bydU5r1iJ1Avg/Kc7h5mlCktc6f7Z5gsYrXeQc5SAiSc20q/NFi3JsmnEuPwS3cQsxx/JFaXOrNCyT8aMO3s7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJkopUWl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CFFEC4CED6;
	Sat,  8 Feb 2025 19:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739042329;
	bh=XyLsx11eqQaMRfiqjvOquGH+HdAQbjC88rMrlee7qYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SJkopUWlKAaYNaNwUIUj8ejWapp5uLGBB6zt3wtBheV5wb9f3Cle8V2gCYhZP8IDD
	 Awti/8SAVq4tYo35aGh3/0/mhgKAME02DJaChd4DE+rak9kMGj8eMqMunQIafRpnOD
	 H3FBBEsbciXY1/ExhfS9VrKsZ25NaaOWezJnt3afOIyGlLz2URyd86j1hNnT/LOUqJ
	 d6r0Ww1tfFuhurGTAu/G85UQ1wtO+0iwX80zlgjFfNJJcW0bkZ1572TnLb1v5MQqOF
	 qP9ByoYHqHLjFNK8b83VghMQGyNjLN1cLSi3ib+WK7dSr9EGVDYmTslXcN2U5viyA0
	 QZfQcoIbqPWNw==
Date: Sat, 8 Feb 2025 20:19:22 +0100
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
Message-ID: <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cf563iqhsvoxc4ct"
Content-Disposition: inline
In-Reply-To: <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>


--cf563iqhsvoxc4ct
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
MIME-Version: 1.0
In-Reply-To: <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>

[CC +=3D DJ, Eric, Will, Paul, linux-man@]

Hi Miguel,

On Thu, Feb 06, 2025 at 08:37:07PM +0100, Miguel Ojeda wrote:
> On Thu, Feb 6, 2025 at 7:58=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
> >
> > What makes you think so?
> >
> > AFAICS, the man page applies for posix_memalign, aligned_alloc, memalig=
n,
> > valloc and pvalloc.
> >
> > In case behavior differs between the functions, this is stated explicit=
ly, e.g.
> > in the "RETURN VALUE" section.
> >
> > The "ERRORS" setion does not differentiate, hence it should apply to al=
l the
> > functions above, including aligned_alloc.
> >
> > Do I miss anything?
>=20
> The explanation of the requirements (in the Linux man page) mention
> different requirements for each function.
>=20
> Moreover, in practice, glibc seemed to allow almost any alignment up
> to 2023, and since then they have this:
>=20
>     +/* Similar to memalign, but starting with ISO C17 the standard
>     +   requires an error for alignments that are not supported by the
>     +   implementation.  Valid alignments for the current implementation
>     +   are non-negative powers of two.  */
>     +  if (!powerof2 (alignment) || alignment =3D=3D 0)
>     +    {
>     +      __set_errno (EINVAL);
>     +      return 0;
>     +    }
>=20
> Including a test that does not fail for a degenerate alignment (1).
> Thus I don't think the "multiple of sizeof" part applies today or in
> the past for that implementation (again, in practice).
>=20
> But I don't know how those sections are formally supposed to work or
> what requirements (and/or behavior) the man pages are supposed to be
> documenting -- Cc'ing Alejandro. It seems clarifying the page would
> help.

Here's my understanding after reading these pages in the Linux man-pages
project, the POSIX description, and doing some experiments:

-  memalign()

	It doesn't validate the input.  It over-aligns the pointer
	silently if necessary.  The text doesn't seem to match reality;
	I think the following diff would fix the description to match
	reality:

	diff --git i/man/man3/posix_memalign.3 w/man/man3/posix_memalign.3
	index b760cf271..a4da60eb3 100644
	--- i/man/man3/posix_memalign.3
	+++ w/man/man3/posix_memalign.3
	@@ -77,14 +77,13 @@ .SH DESCRIPTION
	 The obsolete function
	 .BR memalign ()
	 allocates
	 .I size
	 bytes and returns a pointer to the allocated memory.
	 The memory address will be a multiple of
	-.IR alignment ,
	-which must be a power of two.
	+.IR alignment .
	 .\" The behavior of memalign() for size=3D=3D0 is as for posix_memalign()
	 .\" but no standards govern this.
	 .P
	 .BR aligned_alloc ()
	 is the same as
	 .BR memalign (),

	That text might have been true in some ancient C library.  I
	don't know.  It just doesn't seem true now.

-  aligned_alloc()

	It seems to be like memalign(), with *some* input validation.
	It makes sure that the input is a power of two, or it fails.
	However, it doesn't check that the input is multiple of
	_Alignof(void*).  That requirement is implementation-defined;
	neither POSIX nor ISO C impose any specific requirements, so the
	requirements that the input is a power of two are imposed by
	glibc.  The documentation matches the experimental behavior.

-  posix_memalign()

	This function is similar to aligned_alloc(), with an unfortunate
	prototype (it returns the new memory via an output parameter,
	which makes it a bit unsafer in C --you can't apply the
	[[gnu::malloc()]] attribute, for example; and static analyzers
	might be confused if the pointer is uninitialized--), but with
	stricter requirements.  It requires that the input is power of
	two, and multiple of _Alignof(void*), and those requirements are
	mandated by POSIX.

Below is a text program that shows all of this.

I wonder why glibc silently overaligns aligned_alloc() without reporting
an error for an alignment of 2, while it reports an error for an
alignment of 3.  It doesn't make much sense at first glance.  No
standard seems to require that, so it looks like an arbitrary choice.


alx@devuan:~/tmp/gcc$ cat m.c=20
#define _GNU_SOURCE
#include <errno.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>

int
main(void)
{
	int   i;
	void  *p;

	puts("prime number");

	errno =3D 0;
	i =3D posix_memalign(&p, 3, 3);
	printf("posix_memalign(, 3, 3): %s; %#m\n", strerrorname_np(i));

	errno =3D 0;
	p =3D aligned_alloc(3, 3);
	printf("aligned_alloc(3, 3): %p; %#m\n", p);

	errno =3D 0;
	p =3D valloc(3);
	printf("valloc(3): %p; %#m\n", p);

	errno =3D 0;
	p =3D memalign(3, 3);
	printf("memalign(3, 3): %p; %#m\n", p);

	errno =3D 0;
	p =3D pvalloc(3);
	printf("pvalloc(3): %p; %#m\n", p);

	puts("");
	puts("Power of two, but not alignof(void*)");

	errno =3D 0;
	i =3D posix_memalign(&p, 2, 2);
	printf("posix_memalign(, 2, 2): %s; %#m\n", strerrorname_np(i));

	errno =3D 0;
	p =3D aligned_alloc(2, 2);
	printf("aligned_alloc(2, 2): %p; %#m\n", p);

	errno =3D 0;
	p =3D valloc(2);
	printf("valloc(2): %p; %#m\n", p);

	errno =3D 0;
	p =3D memalign(2, 2);
	printf("memalign(2, 2): %p; %#m\n", p);

	errno =3D 0;
	p =3D pvalloc(2);
	printf("pvalloc(2): %p; %#m\n", p);

	puts("");
	puts("non-power of two, alignof(void*)");

	errno =3D 0;
	i =3D posix_memalign(&p, 24, 24);
	printf("posix_memalign(, 24, 24): %s; %#m\n", strerrorname_np(i));

	errno =3D 0;
	p =3D aligned_alloc(24, 24);
	printf("aligned_alloc(24, 24): %p; %#m\n", p);

	errno =3D 0;
	p =3D valloc(24);
	printf("valloc(24): %p; %#m\n", p);

	errno =3D 0;
	p =3D memalign(24, 24);
	printf("memalign(24, 24): %p; %#m\n", p);

	errno =3D 0;
	p =3D pvalloc(24);
	printf("pvalloc(24): %p; %#m\n", p);

	puts("");
	puts("Power of two, alignof(void*)");

	errno =3D 0;
	i =3D posix_memalign(&p, 8, 8);
	printf("posix_memalign(, 8, 8): %s; %#m\n", strerrorname_np(i));

	errno =3D 0;
	p =3D aligned_alloc(8, 8);
	printf("aligned_alloc(8, 8): %p; %#m\n", p);

	errno =3D 0;
	p =3D valloc(8);
	printf("valloc(8): %p; %#m\n", p);

	errno =3D 0;
	p =3D memalign(8, 8);
	printf("memalign(8, 8): %p; %#m\n", p);

	errno =3D 0;
	p =3D pvalloc(8);
	printf("pvalloc(8): %p; %#m\n", p);

	puts("");
	puts("Zero");

	errno =3D 0;
	i =3D posix_memalign(&p, 0, 0);
	printf("posix_memalign(, 0, 0): %s; %#m\n", strerrorname_np(i));

	errno =3D 0;
	p =3D aligned_alloc(0, 0);
	printf("aligned_alloc(0, 0): %p; %#m\n", p);

	errno =3D 0;
	p =3D valloc(0);
	printf("valloc(0): %p; %#m\n", p);

	errno =3D 0;
	p =3D memalign(0, 0);
	printf("memalign(0, 0): %p; %#m\n", p);

	errno =3D 0;
	p =3D pvalloc(0);
	printf("pvalloc(0): %p; %#m\n", p);
}
alx@devuan:~/tmp/gcc$ cc m.c=20
alx@devuan:~/tmp/gcc$ ./a.out=20
prime number
posix_memalign(, 3, 3): EINVAL; 0
aligned_alloc(3, 3): (nil); EINVAL
valloc(3): 0x55c7f4d9a000; 0
memalign(3, 3): 0x55c7f4d996b0; 0
pvalloc(3): 0x55c7f4d9b000; 0

Power of two, but not alignof(void*)
posix_memalign(, 2, 2): EINVAL; 0
aligned_alloc(2, 2): 0x55c7f4d996d0; 0
valloc(2): 0x55c7f4d9d000; 0
memalign(2, 2): 0x55c7f4d996f0; 0
pvalloc(2): 0x55c7f4d9e000; 0

non-power of two, alignof(void*)
posix_memalign(, 24, 24): EINVAL; 0
aligned_alloc(24, 24): (nil); EINVAL
valloc(24): 0x55c7f4da0000; 0
memalign(24, 24): 0x55c7f4d99740; 0
pvalloc(24): 0x55c7f4da1000; 0

Power of two, alignof(void*)
posix_memalign(, 8, 8): 0; 0
aligned_alloc(8, 8): 0x55c7f4d99760; 0
valloc(8): 0x55c7f4da3000; 0
memalign(8, 8): 0x55c7f4d99780; 0
pvalloc(8): 0x55c7f4da4000; 0

Zero
posix_memalign(, 0, 0): EINVAL; 0
aligned_alloc(0, 0): (nil); EINVAL
valloc(0): 0x55c7f4da6000; 0
memalign(0, 0): 0x55c7f4d997a0; 0
pvalloc(0): 0x55c7f4da7000; 0



Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cf563iqhsvoxc4ct
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmenrjMACgkQnowa+77/
2zJDpA//WvYx8tEf+yAcch23WIMtPEHY23b//dBngDJAYQx+0zcy0xK7VdIjSDkp
QajXldJk22RSirFrB0pqFsnZ1aYYCAItghKh0jfbg98FZQVub1hU9Hv9LLEzLkxk
3rAiVRtPFvVxgYFyHQg6lCgEWXWHRxWjcJ1aCI/jBJLKNc1Jrj/sfH/HqnOn5puu
kvFSkbmjxBkqaAMolj0ED3kvGnAkbUNm2ghK2KlRo02/Q+Ny9TuRHkeiJ9eIgX06
rNY+xezfFzU14ox+sg0oXBiRf/kLCmufKVApouKtgVWTI3vvFyn9aYpkTURhoiJh
E/HwvfOms1Jw+bwaqJ5W1QQUwGYThHmmGg9zTbuJnGdL7mk1jzR+lsryDdA6R9Te
X3hKrSKbUa5H9G5+EAI/OdygbktLc8WpTUn6MZrG4FdO7qv+I8lSRBmDL4iBHOYy
cCbH26vhgZ6Cts3P+LEP7ylgeW+68+LNh7OIH9Gxw1zbkwvQjI475P/v+tonJwiA
Fg2zoUlkkeKBH7BrBCGCwC4tM3jykOr+6t42zrwraHloBmgnX57kmSEau4u8hj5n
PT1ts0xu0giAZ4ccTGVrqU60iIRMDIOyr6urSXHndMpJpf2cUDFhHN6m+FzzJUVK
d+a11VRZaaxsbC5jP27WOj0gZBvfFNOfR7nTxrp0MHezSBUKv0I=
=jBmi
-----END PGP SIGNATURE-----

--cf563iqhsvoxc4ct--

