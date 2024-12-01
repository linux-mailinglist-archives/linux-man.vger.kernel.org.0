Return-Path: <linux-man+bounces-2090-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BA29DF736
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2024 22:45:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6E2E28102D
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2024 21:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668DE1D90DF;
	Sun,  1 Dec 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2Vn7eky"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269931D8E10
	for <linux-man@vger.kernel.org>; Sun,  1 Dec 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733089523; cv=none; b=ACe1bQy6kk593BmeoRf565e+yyGQMeJMPdbg2DMp+nyzOUW6KFY0iaYVGNEm34Y5J2Wh4n6uN/mfNZZZcpbZrmgbefaTapcYEZEutZonE/r8TGNMiSUwGfJ5UIGStChLuiSQGDAt9kFE363+L9uP8N6625Q50tYyUvXNwmMlWs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733089523; c=relaxed/simple;
	bh=cTZ5/gLcPN0h7wwLmujV78PgBLYT7Zs+/N15yqfRCmc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nIzUR7df2Gthz/wvuuNY4XC4YnhxDEX1QSYdc69y603P5wGxS9s57tf8vhBojmeo+sTwyArglwZ59LCe9L75M9mC/s89Z/Fmw1YerP83df0QO/n950tlxZwTDcADj+axoghUpUD/ovXrfxDIIzy110u5Tu+z1EGzIBraZqFEspM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2Vn7eky; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27C59C4CECF;
	Sun,  1 Dec 2024 21:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733089523;
	bh=cTZ5/gLcPN0h7wwLmujV78PgBLYT7Zs+/N15yqfRCmc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K2Vn7ekya5jaanEy+PLKj7mf/HNDiMIN6RAQ7SQ0pQVWJ2qIQ1alyRxdeKpZaoso6
	 48MyYiTx635OIFxl/SLZYK4dNeDSdOfiBfrfvgOS9TYE0tQGHVH3woaC27umzDjl2x
	 7DtIfHnlxaotbHdhEhekJf39tWsx2imObfr02SbDoN2+M9UIXUuJR+aLRc6yZk0Yaw
	 TNV9YKAjEz6+dY2ksu2uWreZgQyUpxXrqjowP2M/XD5K1AMiEEm8RoUjnfju3Typ3H
	 16iUz6quU34lTUSXGOU7Hpsg++A8etOZo4u9PEi+Vl0Pxs25tSIq2WeyPzDgUu/t5c
	 0cxriK3+mMkWw==
Date: Sun, 1 Dec 2024 22:45:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Ingo Schwarze <schwarze@openbsd.org>
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
Message-ID: <20241201214520.7ugsotknjsxicqdv@devuan>
References: <78b8c8acc83d4d1a1ab964e2574ba8024859b705.1732482078.git.alx@kernel.org>
 <20241201205127.s25mc3wwsbazd2f4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jsohfuddq7dkemjq"
Content-Disposition: inline
In-Reply-To: <20241201205127.s25mc3wwsbazd2f4@illithid>


--jsohfuddq7dkemjq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man2/: SYNOPSIS: Use SY/YS
MIME-Version: 1.0

Hi Branden,

On Sun, Dec 01, 2024 at 02:51:27PM -0600, G. Branden Robinson wrote:
> You can go ahead and use the second argument to `SY` now--older groffs
> (and other formatters) won't complain about it.[1]

Hmmm.  Actually, groff <=3D 1.23.0 is bad: it doesn't print $2.  See
below.

Cheers,
Alex


alx@devuan:~/tmp/groff$ cat foo.man=20
=2ETH a s d f
=2ESH Name
f \- oo
=2ESH Foo
=2ESY f (
=2EB void);
=2EYS
alx@devuan:~/tmp/groff$ groff --version | head -n1
GNU groff version 1.22.4
alx@devuan:~/tmp/groff$ groff -man -Tutf8 ./foo.man
a(s)                                                                      a=
(s)



Name
       f - oo

Foo
       f void);



f                                      d                                  a=
(s)
alx@devuan:~/tmp/groff$ dpkg -l mandoc | grep mandoc
ii  mandoc         1.14.6-1+b1  amd64        BSD manpage compiler toolset
alx@devuan:~/tmp/groff$ mandoc -man -Tutf8 ./foo.man
a(s)                                                                      a=
(s)

Name
       f - oo

Foo
       f (
         void);

f                                      d                                  a=
(s)
alx@devuan:~/tmp/groff$ ssh www
alx@www:~$ cd /tmp/
alx@www:/tmp$ /usr/bin/groff --version | head -n1
GNU groff version 1.23.0
alx@www:/tmp$ /usr/bin/groff -man -Tutf8 ./foo.man=20
a(s)                                                                      a=
(s)

Name
       f - oo

Foo
       f void);

f                                      d                                  a=
(s)




--=20
<https://www.alejandro-colomar.es/>

--jsohfuddq7dkemjq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdM2OkACgkQnowa+77/
2zKn5A/8CLqZ9OjBG2rjmfaxGHahclMwHk7z00+g9PGf3sZmu83cSiVYJhd8t8IU
TISn3iZFmWJxfZB+s39NiSoNvZt3QC82WiN0xHjpmcLVg5ZzkVlo5vyDaVFE7xZN
ogUwBuLAj9jUi6E7KlN6d8fEGbe9BbOOTXvrdX3B8h6nsOpa6kAdmfoiB2IL00Si
qgda7JckcAkTVjQs6fmbs23kkIb/r/qNW61H6N4hDVifJ6s+vqbDbHN5JJgFIHqC
F0EOrLnllWAd1FhJfSDY7jCCNFL0vKh/b/tTBZie07xl/v5LxAC/GdQtUZqGMbYg
dTk02f+AZbQ0qDyfhmtXMSEWnGiAhf+10BiHGp0ZjqfEl3RLpSLF22OcyGowmpY4
a6Aw0PzUlonUdb8PII31/4WMq6uz3Pq38/Kxy6Lmlh+qPanQD8sfEaOAYprodka9
VpmSDHd7Bbe/Yqp/riolmPGLyXGXi0mHE5BPLy+D1cyRVgpmuXEaNAfe4XPDc9nA
QJvSbpg1Bv5cNUwruLVF3Dn6EyKEUgIiAbf+QpyY0N7Y8jqvkdM58lnnIRaJFK3Z
qa56FC8NLa/u+nLn+tPKyelZz92dtZtB+UVJ6Uo8kfAt7k6k5PbiamUzlPK2mbdZ
UhnGXwLgwCrKKdEkoQYGTW01BxZp18ij5FvgyNQA8UkEik/3Sio=
=FIST
-----END PGP SIGNATURE-----

--jsohfuddq7dkemjq--

