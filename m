Return-Path: <linux-man+bounces-4379-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF7ACB2DB8
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E309305758E
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 11:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A652B30276A;
	Wed, 10 Dec 2025 11:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXVisDVu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629161EDA0E
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 11:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765367491; cv=none; b=emFgP3ypuGvCM/1pTSwQoAV4ksUEZALiNfvf3QvPNqqtqtQAeCWQgMYYLBj2/nxq8qtAUBWoQ/ObzdAcCA4Ni/cgzLd1jcko6k0dRUXUFk5JPQIox+ZKE9h9AHM5XmGrX/TdyyHsq5z35tPAU/tMnt//54vLOukNZwaRCl/fj18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765367491; c=relaxed/simple;
	bh=YkmmCzbiTATdWFnYxw5bwW/nqjwt6RUY/a8MACvadH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nxHdjL6Y8vT4331jAlX4PBRYbe63U68P5C+FB1aSPLib9Kp85ZxYzaFMG2c1wodlXQDfP5IvJyccU/WkWkZmatNJB2B7iFfpXqWrSG923l+w5eOB+Zky0JW1oOZI564DETwD/ab56Q6Bk64aICEYEaWJqIbWpPYFZBZQu+dzJmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXVisDVu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB11C4CEF1;
	Wed, 10 Dec 2025 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765367490;
	bh=YkmmCzbiTATdWFnYxw5bwW/nqjwt6RUY/a8MACvadH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZXVisDVuHK1gNJFfyX1tQwwy4+LHUnpYGzx2RCLp/RhuEF2LGgyWmZtVjK97YwmPk
	 zib+B92iCFjZvQZoUswHJmr1mMJOWMHMEq04dq5TZAjUh22dnTC2rjfAPzo4N+BULm
	 L73FeuiocLEFCRP6QkDgyJa3+pK88yNxQ4iBrx70hPZW/j9BiWNmWvkK/YBjXG1lhb
	 tg8664vL6emM9nvGPyzwVJe7B3DcFov4x8RKqChD0O5+vxhWLHv3CthgcmXWLfl88z
	 AFTZPj2sHJsw1s2hyYyBlACT6NkslBLZnzRCAFeQjnYI9d82AliGh21qLrzQ+DPGLl
	 OH42mM1kAnfjQ==
Date: Wed, 10 Dec 2025 12:51:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	John Scott <jscott@posteo.net>, Paul Floyd <pjfloyd@wanadoo.fr>, DJ Delorie <dj@redhat.com>
Subject: Re: Clarifying usage of aligned_alloc(3)
Message-ID: <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
References: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="okjuinl5vtpb5tzb"
Content-Disposition: inline
In-Reply-To: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>


--okjuinl5vtpb5tzb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	John Scott <jscott@posteo.net>, Paul Floyd <pjfloyd@wanadoo.fr>, DJ Delorie <dj@redhat.com>
Subject: Re: Clarifying usage of aligned_alloc(3)
Message-ID: <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
References: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
MIME-Version: 1.0
In-Reply-To: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>

On Wed, Dec 10, 2025 at 08:24:03AM +0000, Seth McDonald wrote:
> Hello all,

Hi Seth,

> Reading the GNU/Linux manual pages for aligned_alloc(3), I think the
> documentation is ambiguous about the function's usage requirements in two=
 ways.
> As of man-pages 6.16, the relevant description states:
>=20
> > The obsolete function memalign() allocates size bytes and returns a poi=
nter
> > to the allocated memory. The memory address will be a multiple of align=
ment,
> > which must be a power of two.
> >
> > aligned_alloc() is the same as memalign(), except for the added restric=
tion
> > that alignment must be a power of two.
>=20
> First, I am unsure how the man page is attempting to distinguish
> aligned_alloc() from memalign(). The stated difference - alignment must b=
e a
> power of two - is also said to be required of memalign().

Agree; the current text is self-inconsistent.

> It is possible this
> is a typo or copy-paste error, but I cannot tell what the intended distin=
ction
> is. It would be beneficial if this was fixed/clarified in the document.

The text was changed in

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

Following the links in that commit message, it seems the commit was
wrong.  It should have just removed the exception entirely.
C17 lifted the restriction.

I propose the following fix:

	commit 90f18b452a7113f42ea4e222f819257e692ce57b
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:14:01 2025 +0100

	    man/man3/posix_memalign.3: Remove confusing exception
	   =20
	    This is already a requirement of memalign(3).  aligned_alloc(3)
	    is indeed exactly equivalent to memalign(3), since ISO C17.
	   =20
	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_all=
oc(3) to match C17")
	    Reported-by: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index 397f65aec..9c4a0bff9 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -83,10 +83,7 @@ .SH DESCRIPTION
	 .P
	 .BR aligned_alloc ()
	 is the same as
	-.BR memalign (),
	-except for the added restriction that
	-.I alignment
	-must be a power of two.
	+.BR memalign ().
	 .P
	 The obsolete function
	 .BR valloc ()

Plus some follow-up cleanup:

	commit 6300e39d732257b2b6ffa2d821bb835b2b69a949
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:16:38 2025 +0100

	    man/man3/posix_memalign.3: wfix
	   =20
	    Document aligned_alloc(3), and then say memalign(3) is equivalent,
	    instead of the other way around.  aligned_alloc(3) is the important on=
e.
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index 9c4a0bff9..4cf63d283 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -70,8 +70,7 @@ .SH DESCRIPTION
	 .\" glibc does this:
	 or a unique pointer value.
	 .P
	-The obsolete function
	-.BR memalign ()
	+.BR aligned_alloc ()
	 allocates
	 .I size
	 bytes and returns a pointer to the allocated memory.
	@@ -81,9 +80,10 @@ .SH DESCRIPTION
	 .\" The behavior of memalign() for size=3D=3D0 is as for posix_memalign()
	 .\" but no standards govern this.
	 .P
	-.BR aligned_alloc ()
	+The obsolete function
	+.BR memalign ()
	 is the same as
	-.BR memalign ().
	+.BR aligned_alloc ().
	 .P
	 The obsolete function
	 .BR valloc ()

> Second, the page claims the aligned_alloc() function conforms to the C11
> standard. C11 imposes the usage restriction that "the value of size shall=
 be an
> integral multiple of alignment" [1]. This restriction is not mentioned in=
 the
> man page, nor is it implied by the documented error values. It is possibl=
e the
> glibc implementation of aligned_alloc() removes this requirement as an
> extension to C11, but (particularly given the first error) I cannot be su=
re
> whether this is indeed the case, or whether this detail was simply overlo=
oked.

The restriction was documented, but it was removed to conform to C17.
However, the commit (see above) forgot to update STANDARDS.

Proposed fix:

	commit 95f523f48d25885fea6d1af0eaf4023bd1e21b0d
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:21:04 2025 +0100

	    man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to ISO =
C17, not C11
	   =20
	    ISO C17 removed a restriction that was in place in C11.  This
	    documentation doesn't conform to C11; it conforms to C17.
	   =20
	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_all=
oc(3) to match C17")
	    Reported-by: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index 4cf63d283..d0adaab01 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -162,7 +162,7 @@ .SH ATTRIBUTES
	 .SH STANDARDS
	 .TP
	 .BR aligned_alloc ()
	-C11.
	+C17.
	 .TP
	 .BR posix_memalign ()
	 POSIX.1-2008.

Plus follow-up update:

	commit 9db9d670c94c595d7caf6075d98c82fa4946e63d
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:28:02 2025 +0100

	    man/man3/posix_memalign.3: STANDARDS: aligned_alloc() conforms to C23
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index d0adaab01..ba99f0c6a 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -162,7 +162,7 @@ .SH ATTRIBUTES
	 .SH STANDARDS
	 .TP
	 .BR aligned_alloc ()
	-C17.
	+C23.
	 .TP
	 .BR posix_memalign ()
	 POSIX.1-2008.

> I think it would be useful to clarify this. If the restriction does apply=
, it
> should be added both in the description and as an error value. If it does=
 not
> apply, the description should explicitly mention this. Perhaps it could r=
efer
> to POSIX.1-2024 in doing so, since it also appears to remove this restric=
tion
> [2].

POSIX.1-2024 just matches C17.  I've updated the page to document
conformance to POSIX.1-2024.

	commit 032768ed7f2fdcf9ee85069aae19d7fd934097c0
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 12:37:25 2025 +0100

	    man/man3/posix_memalign.3: STANDARDS: aligned_alloc() and posix_memali=
gn() conform to POSIX.1-2024
	   =20
	    Cc: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
	index ba99f0c6a..ecbbd3e7a 100644
	--- a/man/man3/posix_memalign.3
	+++ b/man/man3/posix_memalign.3
	@@ -162,10 +162,11 @@ .SH ATTRIBUTES
	 .SH STANDARDS
	 .TP
	 .BR aligned_alloc ()
	-C23.
	+C23,
	+POSIX.1-2024.
	 .TP
	 .BR posix_memalign ()
	-POSIX.1-2008.
	+POSIX.1-2024.
	 .TP
	 .BR memalign ()
	 .TQ
	@@ -178,7 +179,8 @@ .SH HISTORY
	 .TP
	 .BR aligned_alloc ()
	 glibc 2.16.
	-C11.
	+C11,
	+POSIX.1-2024.
	 .TP
	 .BR posix_memalign ()
	 glibc 2.1.91.

I'll send a patch set with these changes, and a few more, to the mailing
list.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--okjuinl5vtpb5tzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk5Xr4ACgkQ64mZXMKQ
wqkiBA//fFfI0zDVXxwahyaot3nyK4agGTnXrrP4+U67j2OwbvveA8q7pYXhLKMe
9qYZBTUfyuh7NCHIAg3LTDy650Z2QBvRPC9aVwFnwny3C95E4A2g2O5do9lCqr8H
XiSoWXhlKi00++jhUsrYcgw3MpWvHriHFzBVgH93t+XheSwUBqs71G8VYSBUXDKr
OjjGUgw4gGOSEsNuRgNw/7UIzIkC0r+1W3ksertT8b+Hzl0HPk37RJbfSXB0KeBC
r0/t3M+u1JEeXENS6lvM0k15X2l8GNrX/FGMbAuSWOXbbpNJYlsrqF3rpuIGyCRI
raeFQ4zAw/K+nD/HoHwoBZcOnWL751yAKmB12VchTiadF5VdxlV+reejeqdkzF8J
eMoNyCDFn6NVNyxx0xlxNNjd6ISjfNYPqMAxgIg62HsRJe+d8QbFFmjs523/EPVR
IRSkYR7rGt2OZKT0MWakJ6C1uukTlnWFUTJgoyWqH6k3uAJ3tdzDYacWd+IlMQJm
MpEJjomNBZEKsTKrdagC9UhBEiesK6S5ZvAzD8fXG5G0PWk5++vqOy3NI99ccTvS
E/GQELITg/3K2o7nw5squXZVx++mywQX80od+7Hs8AHT5qMK1tPK9WgzKDqLHt29
VyirNM6xPGtf1NBOnioSTafRvJAZGFk2CJ2gUIBTMrkNMRJhP9A=
=LBAc
-----END PGP SIGNATURE-----

--okjuinl5vtpb5tzb--

