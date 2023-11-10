Return-Path: <linux-man+bounces-22-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BF37E8398
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 21:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A821A2812B3
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 20:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90F23B791;
	Fri, 10 Nov 2023 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIj3CZ67"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D553B78F
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 20:19:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98F2EC433C8;
	Fri, 10 Nov 2023 20:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699647545;
	bh=/ZnYWL0kzV95RytCmBtkfcIHdDE9n5f1mb39J5R6X04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lIj3CZ67UU5kDERD8MxJWUbJSb7+X9qJ+F1VGkAQpftEw97/ftOEwo6qrjbkRPGKs
	 a+cUnXv2kGv4hnp9qnUwtlalGRzOL7uKcP+whgE/KTMPrxW+t0lkbtghqhV3kRx72T
	 SjgvscQFfid0KNrjhDmeOpWldujm2HOk/s7rV9sGn8ry7ViyOoNrzgSUjV+7A+jBBW
	 UwzMvvq1ov4xdK2wSpm7p3WyBrLhthfOSz7WuTM34cNwyDaEssytQAFQ6SD0FzBF3M
	 c/dgbpT+NQ7y4CLBlmooHrGds8aVTJJfGI+OwXPeA+26iHqukjnBhnT5n4spaucdhr
	 rikDXFB0hXDnA==
Date: Fri, 10 Nov 2023 21:19:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU6QNhyx6YKFhjC-@debian>
References: <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
 <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
 <ZU54MidyZDCdj3FX@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tXui/8Mpj9boaD1Q"
Content-Disposition: inline
In-Reply-To: <ZU54MidyZDCdj3FX@debian>


--tXui/8Mpj9boaD1Q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 21:19:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Paul,

On Fri, Nov 10, 2023 at 07:36:33PM +0100, Alejandro Colomar wrote:
> Hi Paul,
>=20
>=20
> On Fri, Nov 10, 2023 at 09:58:42AM -0800, Paul Eggert wrote:
> > On 2023-11-10 03:05, Alejandro Colomar wrote:
> > > Hopefully, it won't be so bad in terms of performance.
> >=20
> > It's significantly slower than strncpy for typical use (smallish fixed-=
size
> > destination buffers). So just use strncpy for that. It may be bad, but =
it's
> > better than the alternatives you've mentioned. You can package strncpy
> > inside a [[nodiscard]] inline wrapper if you like.
> >=20
> > More importantly, the manual should not push strlcpy as being superior =
or
> > being in any way a "fix" for strncpy's problems. strlcpy is worse than
> > strncpy in important ways and besides - as mentioned in the glibc manua=
l -
> > neither function is a good choice for string processing.
>=20
> Hmmmm, that sounds convincing.  How about this as a starting point?

Something slightly better:

diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 3cf4eb371..8ffedae01 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -67,6 +67,88 @@ .SH DESCRIPTION
 }
 .EE
 .in
+.\"
+.SS Producing a string in a fixed-width buffer
+Programs should normally avoid arbitrary string limitations.
+However, some programs may need to write strings into fixed-width buffers.
+.P
+Although this function wasn't designed to produce a string,
+it can be used with appropriate care for that purpose.
+There are two main cases where it can be useful:
+.IP \[bu] 3
+Copying a string into a new string in a fixed-width buffer,
+preventing buffer overflow.
+.IP \[bu]
+Copying a string into a new string in a fixed-width buffer,
+with truncation.
+.P
+Using
+.BR strncpy (3)
+in any of those cases is prone to several classes of bugs,
+so it is recommended that you write a wrapper function
+that encloses all the dangers.
+.TP
+Copying a string preventing buffer overflow
+.in +4n
+.EX
+[[nodiscard]]
+inline ssize_t
+strxcpy(char *restrict dst, const char *restrict src, char dsize)
+{
+    char  *p;
+
+    if (dsize =3D=3D 0)
+        return -1;
+
+    p =3D stpncpy(dst, src, dsize);
+    if (dst[dsize - 1] !=3D '\0')
+        return -1;
+
+    return p - dst;
+}
+.EE
+.in
+.P
+If it returns -1,
+the contents of
+.I dst
+are undefined,
+and the program should handle the error.
+.P
+You could implement a similar function in terms of
+.BR strlen (3)
+and
+.BR memcpy (3),
+or in terms of
+.BR strlcpy (3),
+and it would be simpler,
+but this implementation is faster.
+.\"
+.TP
+Copying a string with truncation
+Truncation is almost always a bug.
+However, in the few cases where it is not a bug,
+you can use the following function.
+.in +4n
+.EX
+inline ssize_t
+strtcpy(char *restrict dst, const char *restrict src, char dsize)
+{
+    char  *p;
+
+    if (dsize =3D=3D 0)
+        return -1;
+
+    p =3D stpncpy(dst, src, dsize);
+    if (dst[dsize - 1] !=3D '\0') {
+        dst[dsize - 1] =3D '\0';
+        p--;
+    }
+
+    return p - dst;
+}
+.EE
+.in
 .SH RETURN VALUE
 .TP
 .BR strncpy ()


However, note how many branches we need to make a function that handles
all corner cases.  Is it still faster than strnlen+memcpy?  stpncpy must
be heavily optimized for that.  Also, strnlen(3) might be optimized out
by the compiler in many cases, so maybe in real code it would be better
to use memcpy.  I'd very much like to see some numbers.

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--tXui/8Mpj9boaD1Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVOkDYACgkQnowa+77/
2zIQVQ//aqXHrPXc777Iy82LGOtqJqzecwnoM/WQpJbaMaWobZG9DCnnRbY/6t9/
bfLyASp00G5z1gP+z517yyH/Xk27Iv7Xsw4ZTzmhD3lOLYkGwjCo/yaHbsbGXowq
8RHj01K6Xns03x/HayI80TA2Bb+IojLpW+wWTEVn4dj9Ph4sFRFYVgXwErc7fgo3
5XD6+DG4sk8r0f1ZkCIlf3ORAnl+sJV92oFodzyPkQNKo4j50Jfhxx5g7TeSh72e
X02DfjpaDiGPD5zO/cfqcBW1rL7dcDIlxSheYzJCgfCoAUUCiE01vdtQso42OWsZ
RxKEi0PbPaCCNneUC9iMB/aaf5I3TKaBSH5QyjF395jVF/u85XNgPLgC1c/9iXJI
lePiXtc3q95d04lGJeK4jV5UxBt8/TCt/OtUbuxbGEwjZrttPVVseGfws7w4KXN2
pqxZnragUS1fKdHm2L+C3WSgemIgVtesDbAIUkspwWMGraOFbb3B7ySNc+8olgnX
q8XbN5HaztauciOh5v61u58XeGknJvh9vLWzby0KTtQ5r1Za+UPOy9OTWUSwe6hC
hG9+lQP4Vpdwyc6O9qwUmembvUQGuvNmiauoAUzRCEp2eDILpBwJUqFVuakvtCby
0BbF6lOxk+0aLkO0/CPQGjDLtaprIhx2crqC/45mN8g9QxiJKtI=
=7fHI
-----END PGP SIGNATURE-----

--tXui/8Mpj9boaD1Q--

