Return-Path: <linux-man+bounces-3154-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC5AADFA54
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 02:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E489517EB56
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 00:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADC812D758;
	Thu, 19 Jun 2025 00:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrlKU98o"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A29E130A54
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 00:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750293744; cv=none; b=GtMnEPWm0bqLZ/Q1GUI2wH9X1/qCa/P77ZtbjYcZPd6lQYaVgnml9Q1UDBKvwlBDTYyEPUmCLNBmEA4gKiGN7qA3QdqBQWr0NukzvlrL+Fd404megwZ6eZ8f0GZp1I1YELn47MVxbgXIkD8Ur3JRRkzs/JLoLHyVm9nqiSSvk+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750293744; c=relaxed/simple;
	bh=0meumt5PH8YbeVhDP17AdefslLwLQeoE66/W4SNjyyU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NU7B2R5kVj39egruetH9PrBQH+KR/yLv8AeHOl7K+af7TmbKc49W/9QV7jAnGSpgm2Mz6yUttmPysJp//GVTBjkMrv9gd2OCbbwFvU9H1kN9xtNjVZoIPoFJARwc7QJov+f6ZarT0HBG+0JxOWiRfhbcy4x78t9Y8OyE+NetWi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrlKU98o; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AACFC4CEE7;
	Thu, 19 Jun 2025 00:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750293744;
	bh=0meumt5PH8YbeVhDP17AdefslLwLQeoE66/W4SNjyyU=;
	h=Date:From:To:Cc:Subject:From;
	b=OrlKU98oY19AHHR31FLTFSxMilt5wXsj/A5nw3uR0jVoHXVfL8c00m2FhWVaZzu7O
	 EfcXmE9xi7ZjbCqsjTVA4UEp4SbkWK7WHVNvs4xTvEZIMk0LVngPM2mMiHekW9LgZd
	 P1UZ011IrIOszK830Yz76EV6yhtnz1F4UQrJRgTM3yhcMD9Z/t+cwLWzdIvSBUdtsY
	 gItm7p/YB0IaA1CICwMOy4PRDT9NTY1asPqq+hkc3SPUU+0BNyzbdJE5q0eoBOWDDb
	 ZzCZ2RN2GQ98YYtfoMEbkI7w+K+NIpNqsssHpR8fmDp/TjuWv+obwzWMTLg2RN8Yil
	 nyOMLWMEBKg9w==
Date: Thu, 19 Jun 2025 02:42:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: malloc.3: Clarify realloc(3) standards conformance
Message-ID: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pmd2lsqgt3htzf3b"
Content-Disposition: inline


--pmd2lsqgt3htzf3b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: malloc.3: Clarify realloc(3) standards conformance
MIME-Version: 1.0

Hi!

I've applied a patch to document the conformance of realloc(3) and
reallocarray(3).  See below, both the patch, and the formatted changes.

BTW, Paul, Bruno, does gnulib also wrap reallocarray(3)?  If not, it
should.


Have a lovely day!
Alex

---
	commit 7279622113349f32428fa14467ba2aa9ef090394
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Thu Jun 19 02:27:48 2025 +0200

	    man/man3/malloc.3: VERSIONS, STANDARDS: Clarify conformance of realloc=
{,array}(3)
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/malloc.3 b/man/man3/malloc.3
	index 9cdfa6b58..bd6cc161f 100644
	--- a/man/man3/malloc.3
	+++ b/man/man3/malloc.3
	@@ -241,6 +241,37 @@ .SH ATTRIBUTES
	 .BR realloc ()
	 T}	Thread safety	MT-Safe
	 .TE
	+.SH VERSIONS
	+The behavior of
	+.I realloc(p,\~0)
	+in glibc doesn't conform to any of
	+C99,
	+C11,
	+POSIX.1-2001,
	+POSIX.1-2008,
	+POSIX.1-2017,
	+or POSIX.1-2024.
	+The C17 specification was changed to make it conforming,
	+but that specification was broken
	+\[em]it is impossible to write code that works portably\[em],
	+and C23 changed it again to make this undefined behavior,
	+acknowledging that the C17 specification was broad enough that
	+undefined behavior wasn't worse than that.
	+The POSIX.1-2024 specification is good,
	+and ideally the ISO C standard should embrace something similar,
	+but glibc does not conform to it.
	+.P
	+musl libc conforms to all versions of ISO C and POSIX.1.
	+.P
	+gnulib provides the
	+.I realloc-posix
	+module,
	+which provides a wrapper
	+.BR realloc ()
	+that conforms to POSIX.1-2024.
	+.P
	+.BR reallocarray ()
	+suffers the same issues in glibc.
	 .SH STANDARDS
	 .TP
	 .BR malloc ()
	@@ -250,10 +281,10 @@ .SH STANDARDS
	 .BR calloc ()
	 .TQ
	 .BR realloc ()
	-C11, POSIX.1-2008.
	+C23, POSIX.1-2024.
	 .TP
	 .BR reallocarray ()
	-None.
	+POSIX.1-2024.
	 .SH HISTORY
	 .TP
	 .BR malloc ()

$ MANWIDTH=3D72 diffman-git HEAD
--- HEAD^:man/man3/malloc.3
+++ HEAD:man/man3/malloc.3
@@ -126,15 +126,34 @@
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
+       than that.  The POSIX.1=E2=80=902024 specification is good, and ide=
ally
+       the ISO C standard should embrace something similar, but glibc
+       does not conform to it.
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


--=20
<https://www.alejandro-colomar.es/>

--pmd2lsqgt3htzf3b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhTXOYACgkQ64mZXMKQ
wqkeCBAAjxp6zv5n2wOOujccWHoUSZmSQJWVTuvCOLedbjOvpyU9U2EJKhIp97At
Z3ORU+2wjuaZ/PFyOhEV14vykJLzAz79IP3FzY264GgwYC4kJ3lhYlVeArhhaV7/
R8ytcoT6oTAWQvNXF895hbHXomGK72jhrVPz4Y5IQjdh89B/6BzIgPFd9mWEx4jH
WQes8Z2ODqckMeALEh+w1y8i+dSqp5FhmYefFdEhbyiiBNxIJa33SYr06HT0J0K3
yplvWxxbJM1PZP0ZX2rCc4qQ1RoaGBnF+RMRmHBJ7o7jbSFmYARmrP+GnoJfsC7Q
j0XutPXFKJw+3QGs8oa9xFRUC3xAlskme4UDg+SyJ/cFMEs8Pmraep1b/M9fZIaM
F2/g4nJ3l2gG/53RN5guWyXKoNKFx6FcL+ebSUbcBjEGjndW2UWpIGmiFJF+Vnq9
qeRAg1CreF6PwYNRvLP0OxeMDo3Ad0gGDfZK7JR8pnWlRuCI6J9Wgw49Fclya1xQ
R0vQ+fLicBkmyaCtHk2xuxujxeGkvjBTaqzDkFujN/V091lpDNUFffurrTj+leKO
ixDaLBWsaIQHLqL93JtzeUGBVbCIw3boojDPIrbdTjXiOHRkfH8OkQocDe+LTNji
jQCu35dMQQ9CXi5KyXq8EduuqDmMHdIiD8lvNM/EbFFPsnz21wI=
=CFPX
-----END PGP SIGNATURE-----

--pmd2lsqgt3htzf3b--

