Return-Path: <linux-man+bounces-2362-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB98A2D95B
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C94F1164D18
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 22:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236DF1F2B94;
	Sat,  8 Feb 2025 22:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5gLw4Le"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38491F2B86
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 22:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739054646; cv=none; b=X5MYC5Z+ThUyaWVDxWw7PT9nk9NEXmlYARpQxcHeFk7ZZAqlqW9Ruh433snUsSGFzJASO8j7Ylio4wybysFoe6NTTwyafBBh3KrqCj686+nsix4NyyBpQxZAC0v3kWCEBPnUH6xhxvrYl8z6ZYIyGz9YuIKEk2wH7DSTlnIMPqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739054646; c=relaxed/simple;
	bh=g9qoc5ag27XgWnv/59GPmei0P7E5DRrR4zP6fkeOuWw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=OsGjrBWTd4fOIJ7PlHf7EJMMPbz9kqJANajMNfdJWa91EDg5ULdhu/HURFJzY+qQfw4vTjQ2VALTTYLC+UqWnDBSYjsFU4mEYIAI0JPG3m05XUv08Ro0kPiUSDOUlMTjxwDLLhwajDJYJ6BrXw6hEoWx5s2+IB7T2G85neofGwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5gLw4Le; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BAA3C4CED6;
	Sat,  8 Feb 2025 22:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739054645;
	bh=g9qoc5ag27XgWnv/59GPmei0P7E5DRrR4zP6fkeOuWw=;
	h=Date:From:To:Cc:Subject:From;
	b=a5gLw4Le7/lzQIhFKNXHvAyxmxlg5/DZY4pb45LU8OgAYlxRgtdGVRIs2YygqbPlR
	 2hbgEN4VVXRb84oRrgVLuR/v0oy1938xGvJQRWJMcyfhUA2bNKp1KlAkOi2VPlvZpN
	 pp1KzMb9mpzcg+ErXDXcex09o1xF63ziVrVTqgatMU0QxPYc69x+Sju3SEnQBh1vvn
	 mGrWFOHerV35hLen5zqphJzV3bz6Tp+Ucuk0G419cqmq8KUwjOIniswcLRdNlJzv7N
	 NdMzfp+Dbt7cO7GC34/dSZn+rf5O8vFEm0JVMYcVWZUyfFfBOtMOr/06m7NBV/hLU4
	 NFNah2xuV4wzw==
Date: Sat, 8 Feb 2025 23:44:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Jason Yundt <jason@jasonyundt.email>
Subject: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the example
 programs
Message-ID: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wx26uwdlwdachnup"
Content-Disposition: inline


--wx26uwdlwdachnup
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Jason Yundt <jason@jasonyundt.email>
Subject: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the example
 programs
MIME-Version: 1.0

Personally, I prefer tabs for actual programming.  But for manual pages,
we can live with 4 spaces for $reasons.

Reported-by: "G. Branden Robinson" <branden@debian.org>
Reported-by: Jason Yundt <jason@jasonyundt.email>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden, Jason,

Here's a first iteration of a C coding style.  Please let me know if you
think something isn't clear enough, or if something would need more
rationale.


Have a lovely night!
Alex

 CONTRIBUTING.d/style/c | 128 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 CONTRIBUTING.d/style/c

diff --git a/CONTRIBUTING.d/style/c b/CONTRIBUTING.d/style/c
new file mode 100644
index 000000000..2ac09d043
--- /dev/null
+++ b/CONTRIBUTING.d/style/c
@@ -0,0 +1,128 @@
+Name
+       style/c - C coding style
+
+Description
+    Indentation
+	Use 4 spaces.  Ideally, tabs would be preferred; however, they
+	cause 5 spaces in manual pages, which is weird, so we use 4
+	spaces.
+
+		if (foo)
+		    bar();
+
+	Indent preprocessor directives after the hash by 1 space.
+
+		#ifndef  FOO
+		# define FOO
+		#endif
+
+	'case' is not indented within a 'switch'.
+
+		switch (x) {
+		case 1:
+		    foo();
+		    break;
+		default:
+		    break;
+		}
+
+    Line length
+	Lines should not be longer than 80 columns.  Except that if they
+	contain string literals, they can be longer; don't break
+	user-visible string literals.
+
+	When breaking a function prototype, start the continuation line
+	with 4 spaces.
+
+	When breaking a function call, align at the opening parenthesis.
+
+    Braces and spaces
+	Use K&R style for braces.  But if the controlling expression of
+	an if/for/while is broken, the opening brace goes on a line of
+	its own.
+
+		if (foo)
+		    bar();
+
+		if (foooooooooooooooooooooooooo
+		 || baaaaaaaaaaaaaaaaaaaaaaaaaar)
+		{
+		    baz();
+		}
+
+	Treat sizeof() and similar operators as functions, not keywords.
+	Use a space after keywords, but not after functions.
+
+	Use a space to separate binary and ternary operators (except
+	`.` and `->`), but not to separate unary operators.
+
+	Use a space between a cast and the expression it converts.
+
+    Naming
+	Use short names.  Long names should be an exception, and
+	indicate that something probably isn't well designed.
+
+    Functions
+	Functions should be short and sweet.
+
+	All functions should have prototypes.
+
+    Macros
+	Don't be worried about using macros.  They can and do improve
+	safety, if used judiciously.
+
+    Error handling
+	goto is good for error handling.  It's certainly better than the
+	alternatives most of the time.
+
+	Check for explicit error codes (connect(sfd, &sa, len) =3D=3D -1)
+	instead of vague comparisons (connect(sfd, &sa, len) < 0).
+
+    Includes
+	Follow include-what-you-use guidelines.
+
+    Comments
+	Comments lie; don't write comments.  If you need to comment
+	code, do it in the commit message.  If that's not enough, maybe
+	the code isn't good.
+
+	In most cases, a function with an appropriate name is better
+	than a comment.  A function is also better than a named loop.
+
+    Variables
+	Variable should be declared at the top of the block in which
+	they are used.  That is, use C89 declarations.  The exception is
+	loop variables; we use C99 for-loop variable declarations.
+
+	The '*' goes with the variable name, not with the type name.
+	Except if the pointer is qualified, in which case the '*' goes
+	with the type name.
+
+	Variable declarations should be sorted by type-name length, and
+	then by type-name alphabetic order.  The variable names should
+	all be aligned.  There should be at least two spaces between a
+	type name and the variable name.  Declarations should be
+	separate from statements by a blank line.
+
+		int     i;
+		char    c;
+		char    *p;
+		size_t  size;
+
+    Dialect
+	We use the latest GNU C dialect.  Feel free to use new language
+	features, unless they are evil.
+
+See also
+	For anything not explicitly covered above, you can check the
+	following coding styles, roughly in order of appearance:
+
+	<https://include-what-you-use.org/>
+	<https://doc.cat-v.org/bell_labs/pikestyle>
+	<https://www.kernel.org/doc/html/latest/process/coding-style.html>
+	<https://git.kernel.org/pub/scm/git/git.git/tree/Documentation/CodingGuid=
elines>
+	<https://mbsd.evolvis.org/htman/i386/man9/style.htm>
+	<https://nginx.org/en/docs/dev/development_guide.html#code_style>
+	<https://google.github.io/styleguide/>
+	<https://www.gnu.org/prep/standards/standards.html>
+	<https://www.cis.upenn.edu/~lee/06cse480/data/cstyle.ms.pdf>

Range-diff against v0:
-:  --------- > 1:  63bd99658 CONTRIBUTING.d/style/c: Add coding style for =
the example programs

base-commit: 6f71d1e4958bd327b4cea006d27a854e66b85380
prerequisite-patch-id: 1567497bcbaa900493128c86ca25a75f15ecd394
--=20
2.47.2


--wx26uwdlwdachnup
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmen3lgACgkQnowa+77/
2zILMxAAqm3A0/wwO/5a7StS6FoilwpsghXHbxHgOyLwpstOmPzmiR8vSZBgyGtM
PXM0F7np8wYLV6k/mvVvTmjj2rePniOykOkrs+4tWL8vNJjTWIVFe0b3b/ARXqvH
F7+j2asaYLzJzxfYMN9JwCnj8Ywmv8faEfB/+AV9YUDssIT6dLRt7JTZcVh92Xcf
B1teVGDZo9kcxYY/ygXwoA1+3gVHMq/b6M++jk204qZO3e7kMUVnRwJ93nLCjJ/Z
jfcXSUDonFYrajqzM1VvZ+Eknc6iQrPkIl3LS0mBTvs1g7k+394uOzTifqwsZ/6d
22E8uvYLx/0IyF9jYtz12Q51YJaRgZU86wtYUpWFiNexN6ZhfZXpcZele1aJzffK
7HJ1aBrLotq++l5zQjMo/Sck53egfUwN/YA6HyoipJc92BzuwiWLXYl7BGL537zz
CXOsPkZ5Tbum4r1rzxxAyYbljGFduin/uWCsYDfFX+DZH+ftEAFblLOX3mtoZG/y
5Y7U3fftioFkZgUATTSklig56s3mwEkLPTmHsaKrDdZqHRreq1eCWhimvhax2ah5
LWj01sEtj7VCvsj29UClYI5J3kBFN0OvAPt7CDRWW7dhwTX5/nUxGcqtRVKyr2a0
imGoArRWrQ3RFsmQoM1fkIkmEppyZE6RNbg+s5/64ZMkzQFYMuo=
=xjEg
-----END PGP SIGNATURE-----

--wx26uwdlwdachnup--

