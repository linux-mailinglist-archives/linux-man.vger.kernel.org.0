Return-Path: <linux-man+bounces-18-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515E7E81D1
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 19:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A62CE2810E2
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F3D1B288;
	Fri, 10 Nov 2023 18:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC1svmJU"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D52D26F
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 18:36:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4E96244A8
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 10:36:37 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55820C433BD;
	Fri, 10 Nov 2023 18:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699641397;
	bh=Cd/JQ8w5DQ7s7hoNBBg+m+F8iMgRowOYleqAhb5LgM4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NC1svmJUopjDPl0tOFAEYPObGjHrU1a1ka9ktBFun/ZcmTogh7aF1UILrkTZY11S1
	 jL6dA6EZaJ8EFxlldDv8bWs9Zq9mHiASsS244ypfmzM+UP8qDkIZBhGY5VhySRzCnR
	 1h3KD2yKUCJBsD+cH9z9/CZxmzGXddFlmKEjI6duPP/EwHdOfz1Uug7P940s74y1xn
	 giY+JcvBEll68JwloFxg5v4Y5wiKLr87AFSQNPyQhuXwthorYuJmK9Pqg2oC3q02Zp
	 vHzQLtw0rfZuQ7S5Z+5cRPj7FM4BHIc+TCTQ+8eptNdOmsr3+lnSLYEZa8/YOO78bx
	 ty1TwBUZGSq4Q==
Date: Fri, 10 Nov 2023 19:36:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU54MidyZDCdj3FX@debian>
References: <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sjSr8X/5NsNHPHsl"
Content-Disposition: inline
In-Reply-To: <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>


--sjSr8X/5NsNHPHsl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 19:36:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Paul,


On Fri, Nov 10, 2023 at 09:58:42AM -0800, Paul Eggert wrote:
> On 2023-11-10 03:05, Alejandro Colomar wrote:
> > Hopefully, it won't be so bad in terms of performance.
>=20
> It's significantly slower than strncpy for typical use (smallish fixed-si=
ze
> destination buffers). So just use strncpy for that. It may be bad, but it=
's
> better than the alternatives you've mentioned. You can package strncpy
> inside a [[nodiscard]] inline wrapper if you like.
>=20
> More importantly, the manual should not push strlcpy as being superior or
> being in any way a "fix" for strncpy's problems. strlcpy is worse than
> strncpy in important ways and besides - as mentioned in the glibc manual -
> neither function is a good choice for string processing.

Hmmmm, that sounds convincing.  How about this as a starting point?

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 3cf4eb371..3aff18106 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -67,6 +67,38 @@ .SH DESCRIPTION
 }
 .EE
 .in
+.\"
+.SS Copying a string with truncation
+Although this function wasn't designed to copy a string with truncation,
+it can be used with appropriate care for that purpose.
+Such use is prone to off-by-one bugs,
+so it is recommended that you write a wrapper function
+that encloses all the danger.
+.P
+.in +4n
+.EX
+[[nodiscard]]
+inline ssize_t
+strxcpy(char *restrict dst, const char *restrict src, char dsize)
+{
+    char  *p;
+
+    p =3D stpncpy(dst, src, dsize);
+    if (dst[dsize - 1] !=3D '\0')
+        return -1;
+
+    return p - dst - 1;
+}
+.EE
+.in
+You could implement a similar function in terms of
+.BR strlen (3)
+and
+.BR memcpy (3),
+or in terms of
+.BR strlcpy (3),
+and it would be simpler,
+but this implementation is faster.
 .SH RETURN VALUE
 .TP
 .BR strncpy ()


I used stpncpy(3), assuming it will have the same performance of
strncpy(3), because it can be used to return the length.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--sjSr8X/5NsNHPHsl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOeDEACgkQnowa+77/
2zLk7A/9FCUiOyy/d/tN6UUkpnJD1MbhL3N03aNwRM8OcGrvJ2tyJFs4VI3cjLFq
wzmkCS0/EzJ3I/Fx5nOFby2GR1QSm/u/twIgrsStOVbhvTEJNClGNRTjCJiHfLXt
AHpnTEKIAIttOSZjEa6HfAdkog3vkEt/B0rFRWQszf5YU1NrUwracScP+jhgVxQB
0JWUAHMclVBS399PlG0bLrb5ronv6AvanhbIdb+ci3UwVnVf6A3EMoDpxD9nKY2o
RYiqlC/wHRXdlLsfFFSlwhC6cBJMu9B5ev/j775pqumzuGbOcLylJNpnmc31LQ15
Sm2fCZX0yqwCta3vyTEY/quRpgrKGKyJhczyDoYuQUtFKO99wwrhHbk4Y9NksPSd
nPYXD2QQffTiqLUX0N1OUdg+SjT3ggZyZui4IxluoF67f+6WpQ5HXh0YOiwDWGkE
O9cTmlOQntqcXHUDZYW21VJzzaMZe0FsQ1cTO7CCXnOZmH4KMITr60g5D58/Gh7p
afKJUGFAYzFVGGZFc3vTqYDPIwrZPQwQsuOcBnaXoiaKeYsOqodpKXFNeRl5cBBo
ZKibPZQMY24qa4/CjbxLED/AmEVPJyaAs5pa1RGqikHybOWOLL/hiHNvXyiSxa+a
9EkGy3sgZOFiHYDe8RaHJwSVMRHi79dXEBUKN59spn+qvLgdEDo=
=wFhH
-----END PGP SIGNATURE-----

--sjSr8X/5NsNHPHsl--

