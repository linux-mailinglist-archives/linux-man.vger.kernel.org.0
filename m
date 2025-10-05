Return-Path: <linux-man+bounces-4045-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F088DBB9B3B
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 20:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B440E4E1582
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 18:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47B5519F135;
	Sun,  5 Oct 2025 18:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2KuxRVn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5CC35962
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759690028; cv=none; b=ZxqQ+Z3qUDR0/q2IptGUImEfAqiLqXtg2agUT2eqYuIJIOdanpkJGc/xRcdVTBLHdeAKHIpi4HgeiWurgG+RZijRLiFFT3Tb1fzSnaM67U8TuPRXCNeY/v5FTqC+n+URGuk43Emb7DpD0JcLdk1BrL0IG/wPX9Em3hBDcRTGElE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759690028; c=relaxed/simple;
	bh=FeE7zUZo7aRuN0xzyuKJtey9aosPBuGBwfH4D7KjWmA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kOzNdrsaSd1JbvBq/mJ8fy03jBNHwusosovnOiOAK4mybnQodJtdw0BX4FeR3XuAKIb/BW7eGZWUOHm/B6gGyEL5TUlowonVYWuCLUoq0UlLaE9TmBKaiI3wfsNHsV3tJiIrQgN4OGz8xpzXIcQ2BJO18vhqC0gYkM1a9k/RfZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2KuxRVn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 945D6C4CEF4;
	Sun,  5 Oct 2025 18:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759690025;
	bh=FeE7zUZo7aRuN0xzyuKJtey9aosPBuGBwfH4D7KjWmA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f2KuxRVnEGLvyKO9Gb1AaaV8DCcHLuPwkkJTDsLtFHazDGbxEJviI/bVsniGUTjZI
	 q/YCUjEnQVVr1qeWSI8C3up9URFkwYIRbhY4pElpEZtfuAH1wq29Xo+ZEzvsTdETiY
	 FWsUKr3LgPb9O2ZPd6BgJrZChfAjxeoFYWtxqt8byUewPAxAmcqSohXsC/cZb0K6eS
	 va3Wckajkatkt3fBYYBlEP2Dv5SAyg1lBk5gtXYw86m4xUdkCTKophklxIAy3km8+N
	 YMPw5nVAEp0cIFw79chyX9t7OEJTRipvNjfCA3w2CNdUAYcB6MbnTY6nLWF5rxVLiI
	 jmabmXxmTV3NA==
Date: Sun, 5 Oct 2025 20:47:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m4usiu4aik6vp5rc"
Content-Disposition: inline
In-Reply-To: <20251005134812.jvwyjjklabmnzejp@illithid>


--m4usiu4aik6vp5rc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
MIME-Version: 1.0
In-Reply-To: <20251005134812.jvwyjjklabmnzejp@illithid>

Hi Branden,

On Sun, Oct 05, 2025 at 08:48:12AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> First I must correct the subject line.  '^\}$' is not "changed to a
> space character".  I explain below.
>=20
> At 2025-10-04T04:42:43-0500, G. Branden Robinson wrote:
> > At 2025-10-04T11:16:06+0200, Alejandro Colomar wrote:
> > > BTW, in the PDF, the '.P' doesn't seem to be working.
> >=20

URL edited:

> > > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-p=
ages-HEAD.pdf#vdso.7>

Shit, I forgot to remove the port when pasting the URL.  Hopefully,
crawlers won't follow it and DDoS me again.  Otherwise I shall install
Anubis.

> > Hmm, yes that does look wrong.  Plus, I see too much vertical space
> > _after_ the "ARM functions" table.
> >=20
> > I'll get back to you on this.
>=20
> The problems are straightforward.  Here's the relevant source.
>=20
> ---snip---
> .SS ARM functions
> .\" See linux/arch/arm/vdso/vdso.lds.S
> .\" Commit: 8512287a8165592466cb9cb347ba94892e9c56a5
> The table below lists the symbols exported by the vDSO.
> .if t \{\
> .ft CW
> \}
> .TS
> l l.
> symbol	version
> _
> __vdso_gettimeofday	LINUX_2.6 (exported since Linux 4.1)
> __vdso_clock_gettime	LINUX_2.6 (exported since Linux 4.1)
> .TE
> .if t \{\
> .in
> .ft P
> \}
> .P
> .\" See linux/arch/arm/kernel/entry-armv.S
> .\" See linux/Documentation/arm/kernel_user_helpers.rst
> Additionally, the ARM port has a code page full of utility functions.
> ---end snip---
>=20
> As Bjarni pointed out, you probably want a *roff control character
> (typically `.`) before those closing brace escape sequences.  If the
> branch of the conditional is taken, the closing brace sequence has no
> effect itself on formatting, but the blank line that remains _does_,
> just as with a `\"` comment.

In that link I had already applied this commit:

	commit fa940b6d17791a166c793b74a50cd72926d14b50
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat Oct 4 10:48:02 2025 +0200

	    man/man7/vdso.7: ffix
	   =20
	    Reported-by: Bjarni Ingi Gislason <bjarniig@simnet.is>
	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
	index 0dc8bf6f2..8c8d00514 100644
	--- a/man/man7/vdso.7
	+++ b/man/man7/vdso.7
	@@ -141,11 +141,10 @@ .SS vDSO names
	 .BR ldd (1)
	 output.
	 The exact name should not matter to any code, so do not hardcode it.
	-.if t \{\
	-.ft CW
	-\}
	+.P
	 .TS
	-l l.
	+lB lB
	+l  l .
	 user ABI       vDSO name
	 _
	 aarch64        linux\-vdso.so.1
	@@ -162,10 +161,6 @@ .SS vDSO names
	 x86-64 linux\-vdso.so.1
	 x86/x32        linux\-vdso.so.1
	 .TE
	-.if t \{\
	-.in
	-.ft P
	-\}
	 .SS strace(1), seccomp(2), and the vDSO
	 When tracing system calls with
	 .BR strace (1),
	@@ ...
	...

So, I expect the explanation shouldn't hold anymore, right?  There are
no closing brace escape sequences anymore.

> https://www.gnu.org/software/groff/manual/groff.html.node/Comments.html
>=20
> That explains the excessive vertical space after the table when
> rendering to PDF.  But what about the missing vertical space _before_
> it?  The same spurious blank line is there, too, when typesetting--why
> doesn't it have effect?
>=20
> man(7), like other macro packages, employs a formatter feature called
> "no-space mode" in its sectioning macros.[1]  This means that attempts
> to put vertical space on the output fail until at least one glyph (or
> drawing primitive) is typeset.  Looking over groff_man(7), I don't see
> that I've actually documented this--so, homework for me.  (This is the
> reason that calling the `P`--or `LP` or `PP` macros-- immediately after
> `SH` or `SS` has no visible effect.  `HP`, `IP`, and `TP` work normally
> except for the inter-paragraph space they ordinarily apply.)
>=20
> You _can_ disable no-space mode with the `rs` request.  Other approaches
> would be to simply let the table abut

Hmmm, new word for my vocabulary!  :D


Cheers,
Alex

> the (sub)section heading, or
> precede the table with an explanatory sentence.
>=20
> Regards,
> Branden
>=20
> [1] Strictly, groff man(7) currently enables no-space mode in an
>     internal macro named `an*break-paragraph`, which all of the
>     sectioning and paragraphing macros call.  The consequence is that
>     the following input:
>=20
>     Foo.
>     .PP
>     .sp 3i
>     Bar.
>=20
>     ...does not put three inches of space between the paragraphs, but
>     only the configured inter-paragraph spacing amount.
>=20
>     The `TH` macro also (indirectly, via a trap macro that sets the page
>     header) enters no-space mode after writing the page header.  These
>     provisions are all to keep an inexpert man(7) document author from
>     making a hash of things.



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--m4usiu4aik6vp5rc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjivR8ACgkQ64mZXMKQ
wqltIQ/+NPwbIL2dwZONmt8Tvxi9drPQ9q07aSbSUb7hkbA5Iz5g2xxAMpT/EnhU
GHOWkhB4gdcU90xjmpJdmEc0A4BT+/eMyyHG9o2dezOxmFiF5AgxpJMWuMr2xWUl
IN7a69yYDhWsHTVbyEpSyTiLxi61vglfBkGHiqVbMPMXufkrmeU2liwl4H8x4g86
HPLN1OcHLSMjwg8vLn7CP/xX43kZFTYYXkyDZP0z9z12DTtoPbfbQqdhYYk5otjE
vUTqbu/NXE+H3gFNleK35v4YDcAm3IAbeL20tFkaFccHxTdmy1Wnl2uJPLCSz2H7
jbjB58Frcklh5PB+CXphPEBxoN7zkL5egoRyOHkqWF1k90hWWExmVnReZPKzhrVP
xdH1pZ0T0+NeOgQPMU0xtHtGtAcoHwYfLi5ww3IhqdF2/iz8sUl8wGLpRY46RoJC
EyIefBavsLX4GtKKQJBEZ1N40aVYJiKrqFimMP1hKa6ZgiaB0KMO7xvFY/bGzOj8
ku/4U8mCsfMYVV12wDNkk/R1DP4dlKeTdr8ka1+vT/nT8QSGwoUi1pYJLcbR56JQ
j8ZdkMYTkojf98eZWX87gUtl3ubb5ihCdbaiT2DGt7cI+KyzLs1IlFZSjnPFI55X
YUIjTHt1FeaCCnCEDWVHkGcQw8JZNehanFL3nyS7Pa7WD0v9Ouo=
=X/Dq
-----END PGP SIGNATURE-----

--m4usiu4aik6vp5rc--

