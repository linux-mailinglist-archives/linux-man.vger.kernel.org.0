Return-Path: <linux-man+bounces-2304-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A80F0A1DC37
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA45C1886735
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 18:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1CC190472;
	Mon, 27 Jan 2025 18:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7VYysYX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C6418FDBD
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 18:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738003564; cv=none; b=cH/hOdb7r+EoDuIpbNzwpc201jju/Uev3XCbJ/ENVDILFZKRmUox7cIT8OHHz4ddmEUU6FfkCAIS+28EDKyDux2l9ueGCPuNQ4FQYEj1izpyrQHOehLerYyl4DSztmdvds4Ji5aWhY8JukGXsTRUQ0+e9C5qozSl0uQBDgFRxQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738003564; c=relaxed/simple;
	bh=RaU8ZJoHsl9U3242RpCVyc8d4juHGnDrcQN8HrUReZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vCUjohvp1KFYWX6+/RpjuBpQJxQlpZhRVfL1LbyjLHqKeXZDGMjuiiIlVBeSyHbxZ2zgmppHQVYIRsEONLB8cDcxN7+qbyQxQrIUf81IMohtcXrU9G/WiekZ3dcNUx6rr+nCx/8dhWi30FlWSmoJkSVVRICC+wT8cC4Z/SFPqgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7VYysYX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25362C4CED2;
	Mon, 27 Jan 2025 18:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738003563;
	bh=RaU8ZJoHsl9U3242RpCVyc8d4juHGnDrcQN8HrUReZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o7VYysYXJuJfp25tRsTDua4k4p2uFNWB70uq2MoQdsLN6K939vJjE60VGE+lN4K8d
	 uIAXVQhS7ruk9sglKXRMDi0hdGrL2FlDCB/b9GP4jwZ2ckHR6nueePvTY3KYpPxrCj
	 8Zf+AsW4bord/ij11rOWLlqq5R7HErRdIU9iuigZkdqb/4Kb4ntc+4pmXlTjcn/MMQ
	 rFJ9CnCCrU5ZLmFcp40SIm8iWgULBw+FawWmN2fMECJpCx80+mZnLRIgrNBAXnMpTi
	 z7XmpqzDdrvHxxrK4tmzqTspoXuatfbnJn2Q63I8Uy+GpTnOsWYxzBJ+uIZOZX91fJ
	 G7rsV9WfzZ83w==
Date: Mon, 27 Jan 2025 19:46:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
Message-ID: <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ffmlfreb3ufc4n4k"
Content-Disposition: inline
In-Reply-To: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>


--ffmlfreb3ufc4n4k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>

On Mon, Jan 27, 2025 at 07:27:59PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Skimming the thread: UNIX paths are sequences of non-NUL bytes.
>
> It is never correct to expect to be able to have a (parse, unparse)
> operation pair for which unparse(parse(x)) =3D x for path x.
>
> It's obviously wrong to reject a pathname just because you dont like it.
>
> Thus, when displaying a path, either (a) dump it directly to the output
> (the user has configured their display device to understand the paths the=
y use),
> or if that's not possible (b) setlocale(LC_ALL, "") + mbrtowc() loop
> and render the result (applying usual ?/=EF=BF=BD substitutions for mbrto=
wc()
> errors makes sense here).
>
> There are very few operations on paths that are actually reasonable
> to do, ever; those are: appending stuff, prepending stuff
> (this is just appending stuff with the arguments backwards),
> and cleaving at /es;
> the "stuff" better be copied whole-sale from some other path
> or an unprocessed argument (or, sure, the PFCS).
>
> If you're getting bytes to append to a path, do that directly.
>
> If you're getting characters to append to a path,
> then wctomb(3) is the only non-invalid solution,
> since that (obviously) turns characters into bytes in the current
> locale, which (ex def) is the operation desired.
>
> I don't understand what the UTF-32 dance is supposed to be.
>
> If you're recommending transcoding paths, don't.
>
> To re-iterate: paths are not character sequences.
> They do not represent characters.
> You can't meaningfully coerce them thusly without loss of precision
> (this is ok to do for display! and nothing else).
> If at any point you find yourself turning wchar_t -> char
> you are doing something wrong;
> if you find yourself doing char -> wchar_t for anything beside display
> you should probably reconsider.
>
> This is different under Win32 of course. But that concerns us naught.

Suggested-by: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
Cc: Jason Yundt <jason@jasonyundt.email>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi =D0=BD=D0=B0=D0=B1!

Thanks for the detailed response.  I applied this patch based on it.
Does it sound good to you?  Please review.

Have a lovely day!
Alex


 man/man7/pathname.7 | 87 ++-------------------------------------------
 1 file changed, 2 insertions(+), 85 deletions(-)

diff --git a/man/man7/pathname.7 b/man/man7/pathname.7
index 59650ef6e..996436606 100644
--- a/man/man7/pathname.7
+++ b/man/man7/pathname.7
@@ -17,7 +17,7 @@ .SH DESCRIPTION
 The kernel stores pathnames as C strings,
 that is,
 sequences of non-null bytes terminated by a null byte.
-The kernel has a few general rules that apply to all pathnames:
+There are a few general rules that apply to all pathnames:
 .IP \[bu] 3
 The last byte in the sequence needs to be a null byte.
 .IP \[bu]
@@ -59,17 +59,8 @@ .SH DESCRIPTION
 .P
 Some filesystems or APIs may apply further restrictions,
 such as requiring shorter filenames,
-or restricting the allowed characters in a filename.
+or restricting the allowed bytes in a filename.
 .P
-User-space programs treat pathnames differently.
-They typically expect pathnames to
-use a consistent character encoding.
-For maximum interoperability,
-programs should use
-.BR nl_langinfo (3)
-to determine the current locale's codeset.
-Pathnames should be encoded and decoded using the current locale's codeset
-in order to help prevent mojibake.
 For maximum interoperability,
 programs and users should also
 limit the characters that they use for their own pathnames to
@@ -77,83 +68,9 @@ .SH DESCRIPTION
 .UR https://pubs.opengroup.org/\:onlinepubs/\:9799919799/\:basedefs/\:V1_c=
hap03.html#tag_03_265
 Portable Filename Character Set
 .UE .
-.SH EXAMPLES
-The following program demonstrates
-how to ensure that a pathname uses the proper encoding.
-The program starts with a UTF-32 encoded pathname.
-It then calls
-.BR nl_langinfo (3)
-in order to determine what the current locale's codeset is.
-After that, it uses
-.BR iconv (3)
-to convert the UTF-32-encoded pathname into a locale-codeset-encoded pathn=
ame.
-Finally,
-the program uses the locale-codeset-encoded pathname
-to create a file that contains the message \[lq]Hello, world!\[rq].
-.SS Program source
-.\" SRC BEGIN (pathname_encoding_example.c)
-.EX
-#include <err.h>
-#include <iconv.h>
-#include <langinfo.h>
-#include <locale.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <uchar.h>
-\&
-#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))
-\&
-int
-main(void)
-{
-    char      *locale_pathname;
-    char      *in, *out;
-    FILE      *fp;
-    size_t    size;
-    size_t    inbytes, outbytes;
-    iconv_t   cd;
-    char32_t  utf32_pathname[] =3D U"Mar=C3=ADa";
-\&
-    if (setlocale(LC_ALL, "") =3D=3D NULL)
-        err(EXIT_FAILURE, "setlocale");
-\&
-    size =3D NELEMS(utf32_pathname) * MB_CUR_MAX;
-    locale_pathname =3D malloc(size);
-    if (locale_pathname =3D=3D NULL)
-        err(EXIT_FAILURE, "malloc");
-\&
-    cd =3D iconv_open(nl_langinfo(CODESET), "UTF\-32");
-    if (cd =3D=3D (iconv_t)\-1)
-        err(EXIT_FAILURE, "iconv_open");
-\&
-    in =3D (char *) utf32_pathname;
-    inbytes =3D sizeof(utf32_pathname);
-    out =3D locale_pathname;
-    outbytes =3D size;
-    if (iconv(cd, &in, &inbytes, &out, &outbytes) =3D=3D (size_t) \-1)
-        err(EXIT_FAILURE, "iconv");
-\&
-    if (iconv_close(cd) =3D=3D \-1)
-        err(EXIT_FAILURE, "iconv_close");
-\&
-    fp =3D fopen(locale_pathname, "w");
-    if (fp =3D=3D NULL)
-        err(EXIT_FAILURE, "fopen");
-\&
-    fputs("Hello, world!\[rs]n", fp);
-    if (fclose(fp) =3D=3D EOF)
-        err(EXIT_FAILURE, "fclose");
-\&
-    free(locale_pathname);
-    exit(EXIT_SUCCESS);
-}
-.EE
-.\" SRC END
 .SH SEE ALSO
 .BR limits.h (0p),
 .BR open (2),
 .BR fpathconf (3),
-.BR iconv (3),
-.BR nl_langinfo (3),
 .BR path_resolution (7),
 .BR mount (8)

Range-diff against v0:
-:  --------- > 1:  b9f5079f6 man/man7/pathname.7: Pathnames are opaque C s=
trings
--=20
2.47.2


--ffmlfreb3ufc4n4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeX1H0ACgkQnowa+77/
2zLA+BAAiesNbui5Hiq9hufwtf8kqnacpqG4tbFc+6r3JA2wGJ27zLuhd1AiICou
Jq9XJ59ljB71pLYFH0Nq/DnEfLGkoZD+xLowPekEfaOy7y+eLs8q0Ut8bXzPPWhl
64hUT87Ze7J66HhtTpytvDXFz5URo9CJZMnysXtatuQF2QGzRZu7Mabxyahja6Sa
UqSvxwkdtRK+EsfRh0XTbZpQtHqQuTcS5vxJ2b01IVCjZlHph4/hPxqQzM2tovib
232qSDZdEoYG1y6uUu1BNoUNiBrq+qVEPLnjNQH064OnaHPm5hsPYaLrrO3jwbf7
zmxCXuQ2T34CD6QITsD+3ACX/iEA1pFzOXpyAyHzVJKV1O79IEl/ozxVsG4ElqVb
pBAUfjP5ro8XwSv4r9Bf6RWbomYkAg+HxaSX7/S3NKLEMN2h7IPnqz2nSg0K+Bd2
948w3bXxutB3bK4fReUxu9ULC7bJvpKPdtCNuYEAdpLvLpqauSv7KA6+rFoLBqIT
TI0ZIzhdMTV5MXYrMpQFTyUhHA3zr6VNtyzveYpv6ClsDxaYVwXKRbo1wuc403AJ
KTX8n58NmFluNnQIozkKXenuzPdl3M3c3qS/hqgWQp/wGmkHoz/qwdatIXpGuMpp
VfPkL9GrYVrtwsA4HAyhOaz+UXAHuYP5RM8c76acgw1UZx5bCVI=
=c/RL
-----END PGP SIGNATURE-----

--ffmlfreb3ufc4n4k--

