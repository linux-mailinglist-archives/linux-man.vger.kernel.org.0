Return-Path: <linux-man+bounces-2646-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88663A6D0A3
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 19:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABC9E3AE031
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 18:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B98A19885F;
	Sun, 23 Mar 2025 18:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/VTZsFZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA181957E4
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 18:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742756160; cv=none; b=Qg0Tpumv8T3oWHUGT4SgsAl6TE5vpfRSdmeN9KuYrUxx/8CHIluBm31ro1B+Ip6sH+u2Se9d1yXRMiF5qT/DMIiq3MRw1piCotKGKULFQoMGTRqMthqXvY5HqnRS8Ne9QD2JeN4pLFce783EUjLuZQD9KGRMXcVk+BKbB0FNdNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742756160; c=relaxed/simple;
	bh=s0ACRHBGXMaNKDQcG2WU4El2v5+PTUyddstpGXqOIFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YAEGdRxDmmK7d57pb6ZOfphmCVD5YEPczmnHU6G9gp55uy0hsjIDtvj2hPRVwgq7ZRC0iBJ92swRz+laCff6YC6zTkbnJaMGek6Fd5ts5CjvSRnXDcQwHFWOd35Ie4VaSKv5WCGqlrzeMxUMzugXFLT+dyQOJezBkGfkrcjmfiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/VTZsFZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9BE1C4CEE2;
	Sun, 23 Mar 2025 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742756159;
	bh=s0ACRHBGXMaNKDQcG2WU4El2v5+PTUyddstpGXqOIFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W/VTZsFZNXOaK9zpCQ/VKBdvCQzat7rdOli0+FFokRKcThN03XQaLqHGekW8nqd+i
	 wR3uZRdm/QFWPDOkMV/zA5NrKUotSC7O5FCkPB1yTS3Lj/83mC38t7yYuq+RksMgem
	 +LtuaJc61vhDgZ7vJU2K2QTP32MSE2mlsEt1WIDcBem0n2/2tjpzJzdQCDOz3iMEMz
	 OT8WEICSZaY00jLxXyfICkVfeuiAbHskoyKgLQWwoaVWbMxdANwlpTwmYWFQzozriA
	 /wRv+bxagXuiQtlF9j1Yiaemvt317urYUaAGHDXYrtafqQ2LW5xXxu9Pzmh/pbZp78
	 X5crih2e94AmA==
Date: Sun, 23 Mar 2025 19:55:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <lcm7spgzau3sr4oeaqrdf4qpprekojl6z3sc4nqtvmfkerftze@mu7anfvdcc7y>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pjl46nmfpsu7hls3"
Content-Disposition: inline
In-Reply-To: <2092070.kUgFBCI4xA@nimes>


--pjl46nmfpsu7hls3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
MIME-Version: 1.0
In-Reply-To: <2092070.kUgFBCI4xA@nimes>

Hi Bruno,

On Sun, Mar 23, 2025 at 04:52:15PM +0100, Bruno Haible wrote:
> * strtol.3 and strtoul.3 mention
>   "If base is zero or 16, the string may then include a "0x" or "0X" pref=
ix,
>    and the number will be read in base 16"
>   They should also mention:
>   "If base is zero or 2, the string may then include a "0b" or "0B" prefi=
x,
>    and the number will be read in base 2"
>   References:
>   - ISO C 23 =C2=A7 7.24.1.7.(3)
>   - https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D64924422=
a99690d147a166b4de3103f3bf3eaf6c

Here's the proposed fix:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4f35fc20ec258842b713da6b0e7d06fd59b70abe>

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ git show
	commit 4f35fc20ec258842b713da6b0e7d06fd59b70abe (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Mar 23 19:47:33 2025 +0100

	    man/man3/strto[u]l.3: C23 added "0b" and "0B"
	   =20
	    Link: <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D64=
924422a99690d147a166b4de3103f3bf3eaf6c>
	    Reported-by: Bruno Haible <bruno@clisp.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
	index 2ae48119b..9c8791b07 100644
	--- a/man/man3/strtol.3
	+++ b/man/man3/strtol.3
	@@ -53,8 +53,13 @@ .SH DESCRIPTION
	 If
	 .I base
	 is zero or 16, the string may then include a
	-"0x" or "0X" prefix, and the number will be read in base 16; otherwise, a
	-zero
	+"0x" or "0X" prefix, and the number will be read in base 16;
	+if
	+.I base
	+is zero or 2, the string may then include a
	+"0b" or "0B" prefix, and the number will be read in base 2;
	+otherwise,
	+a zero
	 .I base
	 is taken as 10 (decimal) unless the next character
	 is \[aq]0\[aq], in which case it is taken as 8 (octal).
	diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
	index c6a2bb9be..4e85f7a30 100644
	--- a/man/man3/strtoul.3
	+++ b/man/man3/strtoul.3
	@@ -59,8 +59,13 @@ .SH DESCRIPTION
	 If
	 .I base
	 is zero or 16, the string may then include a
	-"0x" or "0X" prefix, and the number will be read in base 16; otherwise, a
	-zero
	+"0x" or "0X" prefix, and the number will be read in base 16;
	+if
	+.I base
	+is zero or 2, the string may then include a
	+"0b" or "0B" prefix, and the number will be read in base 2;
	+otherwise,
	+a zero
	 .I base
	 is taken as 10 (decimal) unless the next character
	 is \[aq]0\[aq], in which case it is taken as 8 (octal).
	@@ -182,7 +187,7 @@ .SH VERSIONS
	 or to
	 .BR strtoul ().
	 .SH STANDARDS
	-C11, POSIX.1-2008.
	+C23, POSIX.1-2008.
	 .SH HISTORY
	 .TP
	 .BR strtoul ()
	@@ -190,6 +195,10 @@ .SH HISTORY
	 .TP
	 .BR strtoull ()
	 POSIX.1-2001, C99.
	+.TP
	+"0b", "0B"
	+C23.
	+glibc 2.38.
	 .SH CAVEATS
	 Since
	 .BR strtoul ()

And here's a diff of the rendered pages:

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ diffman-git HEAD
	--- HEAD^:man/man3/strtol.3
	+++ HEAD:man/man3/strtol.3
	@@ -32,7 +32,9 @@
	      space (as determined by isspace(3)) followed by  a  single
	      optional  '+'  or  '-'  sign.   If base is zero or 16, the
	      string may then include a "0x" or  "0X"  prefix,  and  the
	-     number  will be read in base 16; otherwise, a zero base is
	+     number  will be read in base 16; if base is zero or 2, the
	+     string may then include a "0b" or  "0B"  prefix,  and  the
	+     number  will  be read in base 2; otherwise, a zero base is
	      taken as 10 (decimal) unless the next character is '0', in
	      which case it is taken as 8 (octal).
	=20
	--- HEAD^:man/man3/strtoul.3
	+++ HEAD:man/man3/strtoul.3
	@@ -32,7 +32,9 @@
	      space  (as  determined by isspace(3)) followed by a single
	      optional '+' or '-' sign.  If base  is  zero  or  16,  the
	      string  may  then  include  a "0x" or "0X" prefix, and the
	-     number will be read in base 16; otherwise, a zero base  is
	+     number will be read in base 16; if base is zero or 2,  the
	+     string  may  then  include  a "0b" or "0B" prefix, and the
	+     number will be read in base 2; otherwise, a zero  base  is
	      taken as 10 (decimal) unless the next character is '0', in
	      which case it is taken as 8 (octal).
	=20
	@@ -100,7 +102,7 @@
	      lent to strtoull() or to strtoul().
	=20
	 STANDARDS
	-     C11, POSIX.1=E2=80=902008.
	+     C23, POSIX.1=E2=80=902008.
	=20
	 HISTORY
	      strtoul()
	@@ -109,6 +111,9 @@
	      strtoull()
		     POSIX.1=E2=80=902001, C99.
	=20
	+     "0b", "0B"
	+            C23.  glibc 2.38.
	+
	 CAVEATS
	      Since strtoul() can legitimately  return  0  or  ULONG_MAX
	      (ULLONG_MAX  for  strtoull()) on both success and failure,


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--pjl46nmfpsu7hls3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgWTwACgkQ64mZXMKQ
wqkxvw//X84GDCVdxN7f5ZAPjDSTqsVBGTV0oEVXZWu2+WqVBCcQF/R0YuRbQf8g
AOwJEeyAsIcqWGGMUtJMrcXQp3qTgnB3+tCkpOk5P1xWtXVVNtB7CWfYNvxyBkln
Xra8nSvSnEHj7oxmMz1DjMqbMdLeDAjOAgSVklJfu1Bf+W90+lvHaS9NWEeYbu5u
MHH+iDjYhtPo/n9JClkRwbIhSmFJxLwc//WysAi8u8CFV0SSELz6+6qrXcBqruPN
vCUu3F8/rkr9GVntbsa98+PFehYZW9BFu+zXd9A6kf9+ZSR7KVve0ESlmjv1bezZ
vCUG8B6Jgw9LXOH3CrLmG/hC6gXY3pHt3Y7VlUbA/aNbU++Hwfo4SjvW4Q+EngrB
tcG0ccJBo6oRJWcwiqXs7cUmOeKGKNQTtMimOgu2ohAmYqV80+GT2i0AeHUR1dng
jK34hFOX5888BECF/Hrguqrwp9isLxgT1xX5rqTITuEoTDPf548OcmhjcsKCInQ5
zkbe2yaIfYdce+KSYsO+sIIZyu6aAYJMBVdKWuKIl+v8G8LK0fomXhXWoWJ9eFJs
UcozKk2S6jGcMfsSsHu+UdD6sURcdi57ytO0mhK7MU/lZA0Cw0PnsHjzKUGHoFwx
YWSM6Yirw4AUb3hVvD8D4sqIy6pNYQzYm702bqh/eBYcm/shpn8=
=7Str
-----END PGP SIGNATURE-----

--pjl46nmfpsu7hls3--

