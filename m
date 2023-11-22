Return-Path: <linux-man+bounces-149-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C61D7F5169
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6C0D28125B
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 20:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC48F5D915;
	Wed, 22 Nov 2023 20:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIl3OPE7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF5A5D911
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 20:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48DD7C433C8;
	Wed, 22 Nov 2023 20:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700684365;
	bh=YK+pakfKVKNhl+fg0NewqHBHMT7MbLAWra6Hij+N4wk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIl3OPE7ekziAr5z2ifAM7pdliNassmxSZT4wzBN3NaXVBeo9Bf5MI6AgLT8IU/X9
	 j0BzPyzsLzSVeJaOwrtK/rtY8lApZeEXnSq4AajZHv0sLM3f71d1mjLnUAVdrNA75o
	 UrW7XeVDHFSAB5uZSyqA0MSPIlIqQDZMFZ5VwVniRrgUYl2F6jDOapSlQMb0RQ6dgr
	 xPpRZsjxzgUohpt/pTqAoqj6ggauTnnSSut3yymYDuGUs2yIJYFWDgzePKSysgwMqP
	 FHQvvIj+JbQC5qXQyRFgTcCLlT/GK3l6vHGWlZJtB7CwUbpFDDn4nSaF3+WIAFJcMe
	 MYd9uX2eKXbHA==
Date: Wed, 22 Nov 2023 21:19:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Brian W. Kernighan" <bwk@princeton.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING: Please
 sign your emails with PGP)
Message-ID: <ZV5iSVSuStYiXS7h@debian>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
 <ZV4506eXcQhZj91V@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HVFCkPa944DlawyG"
Content-Disposition: inline
In-Reply-To: <ZV4506eXcQhZj91V@debian>


--HVFCkPa944DlawyG
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 21:19:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Brian W. Kernighan" <bwk@princeton.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING: Please
 sign your emails with PGP)

Hello Brian,

> On Wed, Nov 22, 2023 at 10:25:57AM -0600, G. Branden Robinson wrote:
> > [1] I encourage anyone with either a reverential or heretical turn of
> >     mind to review =C2=A75.5 of the 2nd edition of _The C Programming
> >     Language_ and consider it light of our string_copying(7)
> >     discussions.  I would attend particularly to what is implied by the
> >     recommendation of Exercise 5-5 to implement strncat(3), strncmp(3),
> >     and strncpy(3) from scratch.
=20
I just found an erratum in K&R C v2 =C2=A75.5:  In page 97, in the picture,
'amessage' and 'pmessage' are switched (IMO); pmessage should be the one
with the two boxes and an arrow, since it's the pointer one.  We didn't
find it in the existing list of errata[1], which Branden pointed to me.

[1]:  <https://www.cs.princeton.edu/~bwk/cbook.html>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--HVFCkPa944DlawyG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeYkMACgkQnowa+77/
2zKp2g//QtRBiSUPL3+uJBJ8CU2ZTeD+u3x2u0Tuqgx2zE6KcRK66cbW1Z6EMoBU
c6h3qyJ2Xqf5EJ4ejwumIlgvtNTVkBk8iuYSidZNF4ynNHiqZyxOXWBLpSAmteay
kEHXz0Uc9JbIKMOq/NqfBV8bwoPpVx5mi5CJ89UfyMjgt4kl8AAAdK8NBfiTxKwO
gslHpfD8KZsZIOaAeGEXoUvKJWMWgqdfVZI0lMG4n0IfnFJo++8hMOrH2RfguVuR
m1wtmwU32wH9aGZCsnEAdeeUOYATLaj7wco6l7Z4+7/dBU/riB8h/9RgtKCjk81a
w+vmo0FccFCIp/2gmQdZK2td6qBmADYJMBFK4O8uNQ5mv8SvZGl2oJJl2uvAGIBR
L6LPoI90k1Sj3LiU+XAgMVeMLmZwjzbUavzdQTRlCN9vR8mjI15p9B1wuzKEm+Kj
xSAk2+fIdOoCOwVnoPc6uk4KiVzxKGnyOlZhd1rJazFizAvqT6SpcQIfRVJ7Fx/u
eWqVAUH7FT0l8oygVC05+oqw68+vobyn8hxsy+m/3kZY4Iw81h/+r/Need0kIbM3
GPouCRQRwOiQSk3bxC13xyBPUGbU8pOEPC5I1kUeo72VnVZJcyk3ycEUsr8GfPB8
e/oQhQyJ43mF/f7sgae+pYW+A7WqvXw5RUwwkCE2ey2RQTpXnSI=
=mXtE
-----END PGP SIGNATURE-----

--HVFCkPa944DlawyG--

