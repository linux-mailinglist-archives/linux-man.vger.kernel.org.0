Return-Path: <linux-man+bounces-3179-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CA1AE0811
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 15:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F9811889943
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 13:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 879F91917CD;
	Thu, 19 Jun 2025 13:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogl3yQXt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9D722618F
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 13:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341476; cv=none; b=X+WXiZ6EkmvA9+OVF5SYtkuZNNhBrgTgIHFRV2RKdVHxe23ZsWJOAiDQULn7QQEwQriNYo6qiXehZrIQ10sE6rOS3TgR5VRGcwAKeaeVtMKbTwG3A9gQMlD8pIgfuncASutwpXsN5+N2nAf26zNSro5QBbv82T3TnvlxKtxozgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341476; c=relaxed/simple;
	bh=qAC2VBHs914MAMmFc1xo3TlaVrYN+I+6bJh/wLkz/C4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kwEndZzyNvIuHXi4cHGW238TOZqsP3wqxixTv7lOYDf0uxrh9sfL3W/SMiH8zTDXRm6DMrKt7TRuGr2h+bSeG7JlbgXgCQl5forY+cjqVYwECgL0xa+ZlTo+nmsQe+mwBkREr59AAFVOob3Q+Czed1G8XtfX2uUeqAJ9cNhnprc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogl3yQXt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DED51C4CEEA;
	Thu, 19 Jun 2025 13:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750341475;
	bh=qAC2VBHs914MAMmFc1xo3TlaVrYN+I+6bJh/wLkz/C4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ogl3yQXtHVCaJECXTxR2Zb7Qn8gl5mUaR8j2wYvo0YCfvzh3pJjQ4l20e5FTI1+2k
	 ha4ebkC1G0sFa+z1zO47q+4cThJz0d21O1jSMKve7xiCuP7ExzvmZl4ojnwnlaRxeP
	 4wzikdZqLjvrmKxY9YrVYG5x3dX73d0DX3TrNTnCQ85tDQTnpMqrqNxakq2HM0iizB
	 DI70ToWkq7ZMGb04GBgapNrYld/xdfQJnk8qVUkrPLOiCy/+3JL3E7G6eQh/1D7jq1
	 iR3iIEK+rUpcojVBe4lR60bzqpLGqs5StH11HqQj0weNL4EAu4FGT94X7RzzoZmEmr
	 dq9sIl0YjlPUg==
Date: Thu, 19 Jun 2025 15:57:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3gu54uzphxglq22u"
Content-Disposition: inline
In-Reply-To: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>


--3gu54uzphxglq22u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: [v2] malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
MIME-Version: 1.0
In-Reply-To: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>

Hi,

Here's a revision of this change, addressing some concerns.  I'm only
showing the formatted changes, since the patch itself is unimportant.


Have a lovely day!
Alex

---
$ MANWIDTH=3D72 diffman-git HEAD
--- HEAD^:man/man3/malloc.3
+++ HEAD:man/man3/malloc.3
@@ -126,15 +126,32 @@
        =E2=94=82 realloc()                          =E2=94=82             =
  =E2=94=82         =E2=94=82
        =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
=20
+VERSIONS
+       The behavior of realloc(p, 0) in glibc doesn=E2=80=99t conform to a=
ny of
+       C99, C11, POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, POSIX.1=E2=80=
=902017, or
+       POSIX.1=E2=80=902024.  The C17 specification was changed to make it=
 con=E2=80=90
+       forming, but that specification was broken =E2=80=94it is impossibl=
e to
+       write code that works portably=E2=80=94, and C23 changed it again to
+       make this undefined behavior, acknowledging that the C17 speci=E2=
=80=90
+       fication was broad enough that undefined behavior wasn=E2=80=99t wo=
rse
+       than that.
+
+       musl libc conforms to all versions of ISO C and POSIX.1.
+
+       gnulib provides the realloc=E2=80=90posix module, which provides a =
wrap=E2=80=90
+       per realloc() that conforms to POSIX.1=E2=80=902024.
+
+       reallocarray() suffers the same issues in glibc.
+
 STANDARDS
        malloc()
        free()
        calloc()
        realloc()
-              C11, POSIX.1=E2=80=902008.
+              C23, POSIX.1=E2=80=902024.
=20
        reallocarray()
-              None.
+              POSIX.1=E2=80=902024.
=20
 HISTORY
        malloc()
@@ -214,6 +231,22 @@
        POSIX and the C standard do not allow replacement of malloc(),
        free(), calloc(), and realloc().
=20
+BUGS
+       Programmers would naturally expect that realloc(p, size) is con=E2=
=80=90
+       sistent with free(p) and malloc(size).  This is not explicitly
+       required by POSIX.1=E2=80=902024 or C11, but all conforming impleme=
nta=E2=80=90
+       tions are consistent with that.
+
+       The glibc implementation of realloc() is not consistent with
+       that, and as a consequence, it is dangerous to call
+       realloc(p, 0) in glibc.
+
+       A trivial workaround for glibc is calling it as
+       realloc(p, size?size:1).
+
+       The workaround for reallocarray() in glibc =E2=80=94which shares the
+       same bug=E2=80=94 would be reallocarray(p, n?n:1, size?size:1).
+
 EXAMPLES
        #include <err.h>
        #include <stddef.h>

--=20
<https://www.alejandro-colomar.es/>

--3gu54uzphxglq22u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUF1sACgkQ64mZXMKQ
wqlDaxAAsaZkgVOqZrBSiUHEOa8Nlx3jgcGUxD5uFRlLAr4EJvUi5L1m81izZedt
WPGYH6dyJ+zTtHcP+qPJBjMpjejEj/958Kh7X2yxVD2lMg1pm9DYxJIMmFcNby0e
OuZ2xqYjgPqO+IeSkxAndYvk+zbLUgo/+mGzC85tzZbc4F4HmOEw79K+/V5PqDc7
Bv3/c2PqTF8oXWQ0bm0W4cu9ElyK56H6WgUjSnisFWp2hYbjhPN4jZZL+2vK8YJX
gBKmAw5LxKxQ5dRnvjYD6fzdGtxL5r0DuSLBa6ptqJ2FNmpgsXwCf9FiRo1kR5ac
9mSA7ZCj7iYnz+TbhK61zfKArb5AbUb5/3r6qBB7u139EtZJKhRv3Pquu1qz//jY
T3B7D/91HcLkBNjNRsakB3fvurTcu+HGiUZ6KSAoCs9dyhvAoMgom1RfjQtqHjnB
glHCKZf+BOwg7mDYj8s8Zc7in3EowltAb8FbdRjduEdrIHbVFVaLWuuELm/hH75l
RFmtMmJmgKB2Q8grlymT4q7XemZLy5x/q5fnMfzlF9RIgvw8YSmyQ4EOWZR4k5PU
IA2/j8A7BI5rcKZ5FvsfsDqz1hwKeb0cZl5VgWX3nSARS2YKvRy0iGZbp8xCaLiM
t8rDE6bqmCbBjbqgUnhHTP6pCIq1VmnunCjGiwA0SachznzUW/c=
=s2Fw
-----END PGP SIGNATURE-----

--3gu54uzphxglq22u--

