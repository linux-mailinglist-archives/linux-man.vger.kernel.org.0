Return-Path: <linux-man+bounces-2358-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42336A2D8A4
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D09FE165877
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA20E24395E;
	Sat,  8 Feb 2025 20:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKKUolps"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF63243960;
	Sat,  8 Feb 2025 20:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739046657; cv=none; b=HebY2O2YSptrXcXqj7q7YEMnxXHtrqDeRwdTF/u+NKKgVaLEW6KIXrohKuDoQ/7g/FgDL1pYpOvk+LCGm7nb6Zo3HW94VzXCWRnWWTngS2s3JNyx621M+5g00+XIvkYHwDC3l27JptNqEdox5LCqnB8hH2uBZzKbfhq1a6/hjt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739046657; c=relaxed/simple;
	bh=SlHgcOVFuSDkkrhVLNgGBirYfljYltbNzHb0GTiACPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Iu4fF2o2/xKfCiNOSOdP/864Pd8jVD/IfwCV1LXb/owyEj838BfRuQOssZVyOKu3R4qi1v4Ak/Hi9mWo2mTH5d1UHYuOXyAq5UiY837G99JzEa++owgYvQ/0ykEWlmJdLFirKVhX8bq/M81YXrAEhrFTFO8jhmvK7lB1/xmKXdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKKUolps; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27257C4CED6;
	Sat,  8 Feb 2025 20:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739046657;
	bh=SlHgcOVFuSDkkrhVLNgGBirYfljYltbNzHb0GTiACPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oKKUolps9yiS1untN4e6Ts138BHDcgxsdf38S6BNZuU/UrjeUdaS/dUp5YQZQ090h
	 DJYRe1SsHT8QA1zonXLDi6MThoxfAo3Vps9AMmWmwpvbw+4CwSFmFiK7dXOP+UR3DM
	 V4NihuJobe7xI9+J4bigi/mM3uRCWTI8oLWNafpJ73JoDOfDyTHr0Uw7buRNCfhAGJ
	 xpCmoCiu58Zq4JpZacY/M8C1YRNXb4677jmhY6bQRxGNqmY4DyhngTQH2XPDGsEieH
	 Rxn02XURmLawAO1NxrAGVIfwctzzhkUIsr0a/QBtUYhADcJ7vjDtwl7NsnzeP2DqDn
	 V6luH55TRUWKQ==
Date: Sat, 8 Feb 2025 21:31:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, linux-man@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, 
	Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
Message-ID: <uz7llpat4rs55ixdkkvj5uyavy4t4fthk57dasiszhglgldcl5@wp272ippaffa>
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 <d00561e2-145f-42e0-8fb2-5ca3556afac8@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ddmwmz4h6lnof5bq"
Content-Disposition: inline
In-Reply-To: <d00561e2-145f-42e0-8fb2-5ca3556afac8@cs.ucla.edu>


--ddmwmz4h6lnof5bq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Will Newton <will.newton@linaro.org>, linux-man@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, 
	Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
	Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH v2] rust: alloc: satisfy `aligned_alloc` requirements
References: <20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com>
 <CANiq72nH3N9UMu2hsPG7WfYCZQwy9M_4q_rQHJnJMScQ3D9-Jg@mail.gmail.com>
 <Z6T5sOWXxmUsflW7@pollux>
 <CANiq72n7jx5ve9UL3oDD08=PjY55QHoMY8fyfsW9RNEvjH_b4Q@mail.gmail.com>
 <Z6UGNbowcvqTN0-T@pollux>
 <CANiq72=BGFp95jyyF6-uQWT8K8dS5qBpBD55duUYpF4hJDbFxw@mail.gmail.com>
 <kfkku4rjsktgkufkuehliojv3izxdutc55inmv3yvenu33zr7e@lluedzjnqnki>
 <d00561e2-145f-42e0-8fb2-5ca3556afac8@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <d00561e2-145f-42e0-8fb2-5ca3556afac8@cs.ucla.edu>

Hi Paul,

On Sat, Feb 08, 2025 at 12:09:40PM -0800, Paul Eggert wrote:
> On 2025-02-08 11:19, Alejandro Colomar wrote:
> > I wonder why glibc silently overaligns aligned_alloc() without reporting
> > an error for an alignment of 2, while it reports an error for an
> > alignment of 3.  It doesn't make much sense at first glance.
>=20
> Why doesn't it make sense?
>=20
> If the underlying memory management system supports only some power-of-two
> alignments including one alignment greater than 2, it is easy to support
> alignment of 2 by overaligning, but it is not possible to support an
> alignment of 3.

Hmmm, I thought the memory management system could find some
overalignment that would be multiple of 3 and that could work (maybe
3 * page size, as a big hammer).  But maybe some implementation details
just don't allow that, so I guess it's fair to reject it.  Sounds
reasonable.

Do you happen to know why the memalign(3) description says that the
alignment must be a power of two when it doesn't do any validation and
just rounds up as necessary?  I'll send a patch for the manual page, but
it would be good to know if something has changed about it at some
point.  Maybe in the past it did have different requirements?


Have a lovely night!
Alex

	alx@devuan:~/tmp/gcc$ cat overalign.c=20
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

		errno =3D 0;
		p =3D aligned_alloc(3, 3);
		printf("aligned_alloc(3, 3): %p; %#m\n", p);

		puts("");
		puts("non-power of two, alignof(void*)");

		errno =3D 0;
		p =3D aligned_alloc(24, 24);
		printf("aligned_alloc(24, 24): %p; %#m\n", p);

		puts("");
		puts("Power of two, alignof(void*)");

		errno =3D 0;
		p =3D aligned_alloc(8, 8);
		printf("aligned_alloc(8, 8): %p; %#m\n", p);
	}
	alx@devuan:~/tmp/gcc$ cc overalign.c=20
	alx@devuan:~/tmp/gcc$ ./a.out=20
	aligned_alloc(3, 3): (nil); EINVAL

	non-power of two, alignof(void*)
	aligned_alloc(24, 24): (nil); EINVAL

	Power of two, alignof(void*)
	aligned_alloc(8, 8): 0x55ba005056b0; 0

--=20
<https://www.alejandro-colomar.es/>

--ddmwmz4h6lnof5bq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmenvxkACgkQnowa+77/
2zJ7bA//bOZkKUMXrMjzqF9Aem8f7CrkQxjHx+/XGpbTeGwGk1yunlLzjTzOQJ0C
Ih97hUJhXNWyH6DucYKHIcc5uYm44fJd6xAkQj+tFHgMXstbEd0SGtDX0tclHvPR
azHUT1T1fKPLV82rxAP04+BT2oLTkbcRh10g4zfAoHIoLnOjC9/aDcdjjmaDJTqu
SRP0HPv8mOc7s894o72YNMus5puyjMVGW58QbwKz+iM0RM1SbrmAOwHR+Xzlqtc6
TZ/bWxXbFGmHQkFglIse2ylYdxSdRomzIqQH/widsTFrccgV4ql+z/XIj6h3I0OW
4SMXIOvhvp+qFzGTLiySGgFb7hPYvy67+o30IGNxzP8JUeDdMSfuE10b7yUPZhaP
32jRQLDmvpEJesAflce8cqDjFf/noA6+1chXtQnutqVAAjJac3TUzsTioN6mVujv
NdudhXM2Ay+zI01vzpBht1kX6fZisjjogZSNauNlh0ws+xfk7K9ztHD9CKTV/Dv9
18cF23kzTbExUVjuWqb19vN26gK5Dwx2/wTqND7KtIFnmhxrE2dbMAWxRGOL2iPa
P0nad7C0XQiKN0WTTRMsYZccplmVmqaev6+IEDTuoC8Yu3C9xX6BuWOYXlvIY/Zp
97tGNJdMA5Sm9F1GU1LwJxP+VQuLCb+teu3q1uAar2E9QVwiGh4=
=rufw
-----END PGP SIGNATURE-----

--ddmwmz4h6lnof5bq--

