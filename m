Return-Path: <linux-man+bounces-2150-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C800F9F27B1
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 02:00:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 414661885DA1
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 01:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1083FF1;
	Mon, 16 Dec 2024 01:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="NcHethJG"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180313232
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 01:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734310852; cv=none; b=SPgbXce2i3hxy1ZeSxd0wyK4MGkgb8ko8nJjMk3EvMLPhwSZJMdDKyQBFKsb90xkG9kL7P6L8JjOoLf6pQgOd1qhARbrj4mdk6ZusnuMexZGBgB2doh6MER6+5PFdDL8Nerl/fs5de+Ay1uiFeMpcKuwgCJDaMI/hguz3TC6SgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734310852; c=relaxed/simple;
	bh=dUfJVhojV3oMYkyJyW4OWv3SBANjsGQl/jbvuGzA1AI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iMPkkjDoUvkVDF18poTw1ZqMxQsXAS6uksA2R2ryvLmgxKZRQeN2dwdjWKEKNbIwzh/Uwq9O4YhTPt5FXyMaHAICmCh89t8+6CsikEnOt8ODdcLxtkUkzy7SYCP1LpVMy404aquP/3GGumMb6tdNoNCdTOJjwE2YzKIZljaUdJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=NcHethJG; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1734310845;
	bh=dUfJVhojV3oMYkyJyW4OWv3SBANjsGQl/jbvuGzA1AI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NcHethJG2pN+r3ncvo4Y4uLROB4u55hj2u3Voj1afNp7IMdvpbQyF+WDW7FBa8ufx
	 c/esrX40w8he4RVTwQa3Ip7pVb+5yIokbFkn7+/K7v/SGpzHRXMzwhqz0NihW5djj9
	 km2cqP3+WbjDhIzxJpQPHBETNYe0LyTwQxVT0xKg2af7FxR6OUYZDdeTVHM0YqkxBp
	 BSjOQ0LKbamlzCooiXBBOO56h9LyiKwyPVqIHibBLPhXoZtm+mVR0GpFHIXtJ9N5PP
	 VJh4ZaUEl3BwdbrKO3/F9tR1l4+q7BWTdMRkgQdRomK0KI67Vvnqd+RSwXvRltM98z
	 JkvBxH8Mcblog==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8275215E8;
	Mon, 16 Dec 2024 02:00:45 +0100 (CET)
Date: Mon, 16 Dec 2024 02:00:45 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] strverscmp.3: this is NOT the ordering used by ls -v
Message-ID: <myuppkwnltqtxduoop7g7wfuyou5cdo6sotocrvyztmqnazvph@tarta.nabijaczleweli.xyz>
References: <pvaw3u77afqspd5vjqcke7qdmz4on7qsqbkjltis6hbpxqwwvw@tarta.nabijaczleweli.xyz>
 <20241215204358.toi5nb37sksfdwle@devuan>
 <wrudkskbkovv2hll3j4mfvd3hm5e5onagijixk6ymov5maolsk@tarta.nabijaczleweli.xyz>
 <20241215214426.bykmhqabmmy7xyi7@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="caxcx4kcrpatdfch"
Content-Disposition: inline
In-Reply-To: <20241215214426.bykmhqabmmy7xyi7@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--caxcx4kcrpatdfch
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 15, 2024 at 10:44:26PM +0100, Alejandro Colomar wrote:
> On Sun, Dec 15, 2024 at 10:02:42PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > Should we file a bug against glibc strverscmp(3)?  We probably should.
> > >=20
> > > And the reference to sort(1), I'd put it in BUGS, saying that this API
> > > is broken, and does not sort properly.  Sounds good?
> > No, this API works as-documented, and the implementation is useful.
> What does useful mean?
There are applications where a lexicographical-except-numeric comparison
like this is what you want (it's most of them). Calling it a "version
sort is silly + goofy but, whatever.

> > It's just not what ls -v does.
> While version sort isn't something standard, I think GNU should be
> self-consistent.
It is, ls -v and sort -V are consistent.
Having just implemented the /actual/ algorithm they use for voreutils,
that is by far /not/ universally applicable, much hairier, and hard-tuned f=
or
"versions that are kinda like debian describes and sorts them (but not actu=
ally)
 AND ALSO we put them in filenames where we can assume the format a little =
bit
 AND ALSO {4 special cases to make ls -v work}".
Replacing this well-defined lexicographical-except-numeric sorter with... t=
hat,
isn't really applicable.

Best,
-- >8 --
=46rom: =3D?UTF-8?q?Ahelenia=3D20Ziemia=3DC5=3D84ska?=3D
 <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH v3] strverscmp.3: this is NOT the ordering used by ls -v

Compare, given:
	#include <stdlib.h>
	#include <stdio.h>
	#include <string.h>
	int compar(const char **l, const char **r) {
		return strverscmp(*l, *r);
	}
	int main(int argc, char ** argv) {
		qsort(argv + 1, argc - 1, sizeof(*argv), compar);
		for(int i =3D 1; i <  argc; ++i)
			puts(argv[i]);
	}
yields:
	$ /bin/ls -v1 a*  # coreutils ls
	a-1.0a
	a-1.0.1a
	$ ../vers a*      # as above
	a-1.0.1a
	a-1.0a
	$ ls -v1 a*       # voreutils ls @ 5781698 with strverscmp()-equivalent so=
rting
	a-1.0.1a
	a-1.0a
compare also the results for real data like
	netstat-nat-1.{0,1{,.1},2,3.1,4{,.{1,2,3,4,5,6,7,8,9,10}}}.tar.gz

Thus, coreutils ls -v does NOT use strverscmp(3);
it uses a modified Debian version comparison algorithm with additional
suffix processing and ls -v-specific exceptions.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/strverscmp.3 | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
index 41bc1ddbd..e028d6788 100644
--- a/man/man3/strverscmp.3
+++ b/man/man3/strverscmp.3
@@ -18,25 +18,14 @@ .SH SYNOPSIS
 .BI "int strverscmp(const char *" s1 ", const char *" s2 );
 .fi
 .SH DESCRIPTION
-Often one has files
+For a dataset like
 .IR jan1 ", " jan2 ", ..., " jan9 ", " jan10 ", ..."
-and it feels wrong when
-.BR ls (1)
-orders them
+sorting it lexicographically yields
 .IR jan1 ", " jan10 ", ..., " jan2 ", ..., " jan9 .
 .\" classical solution: "rename jan jan0 jan?"
-In order to rectify this, GNU introduced the
-.I \-v
-option to
-.BR ls (1),
-which is implemented using
-.BR versionsort (3),
-which again uses
-.BR strverscmp ().
-.P
-Thus, the task of
+The task of
 .BR strverscmp ()
-is to compare two strings and find the "right" order, while
+is to compare two strings yielding the former order, while
 .BR strcmp (3)
 finds only the lexicographic order.
 This function does not use
@@ -44,6 +33,10 @@ .SH DESCRIPTION
 .BR LC_COLLATE ,
 so is meant mostly for situations
 where the strings are expected to be in ASCII.
+This is different from the ordering produced by
+.BR sort (1)
+.BR -V .
+.\" sort -V sorts a-1.0a < a-1.0.1a; strverscmp() does not
 .P
 What this function does is the following.
 If both strings are equal, return 0.
--=20
2.39.5


--caxcx4kcrpatdfch
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmdfe7wACgkQvP0LAY0m
WPGLIQ//ZGXKSKbvUs9geSIYBnmBqWmscKU23rIQW9FKpICYt2HN2BWNZEMsOOtY
Bj+Sb94ttXjvEEP8uvcuqbIZF+P4x+m4LnIo6wm9ENxiaV6YdG2GNb4zyXatAHVo
ddeGeEbeMVYL9zfXjC+A8X8G1kfKPzOF01+DEd7gm/QCCbLzNm/OGnNqDZLFtKZd
1m8/DjXdZ0OJL28n12ULDPtHIuFc9B9Jyq2kwO/WlJAiz+1+g0n7fJXysJViDI73
PW4/MF2+NQskUQ8FnTnL1oVFVj4yD1N+s5lYDwlmEOADRaZpTztljiVkXweA13Bi
PulFGDn3YhSx9sAHiCS6ka7vniMysX/V327ICYzxQBTCbiM9+1hqBahG7PJtmhPf
OXIxFL2XMp2jLUDChWTAlYLJKpvS6cWmewkfym9P6FanBqHzevcJXtphprAlPCR0
/VRi+os+agYDOKkNHwNCJQzqA+qwjiovpt4n+4KYbQk8W1ILm0aCJ8RpcFxyKcGM
fNXu1Vzgsd1qovAJPjrpS6nlUWUijxUcBwQg+Sx2SBHgrNNrV96KZWguAYbEqneA
kftxA+qOnBYQjX53PAhnrxdbt7t5X1O19PJG1RX+Q8uPmgl8mcL7Hu+BuQp5JyRB
pukO/XHyYz8Flns09f3xitwKWQiffZyCfWKhTQaTl1rSGmOVGVw=
=kBO1
-----END PGP SIGNATURE-----

--caxcx4kcrpatdfch--

