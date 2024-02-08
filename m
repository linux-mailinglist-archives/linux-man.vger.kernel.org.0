Return-Path: <linux-man+bounces-417-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D74CB84E9CA
	for <lists+linux-man@lfdr.de>; Thu,  8 Feb 2024 21:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 054561C2336E
	for <lists+linux-man@lfdr.de>; Thu,  8 Feb 2024 20:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A53CE44C73;
	Thu,  8 Feb 2024 20:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="i76whFIa"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B764BAB5
	for <linux-man@vger.kernel.org>; Thu,  8 Feb 2024 20:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707425017; cv=none; b=XMUcUw+BrDJLg5GFHUJVRjnrkfwIMq14dXkyTPC3hbcnOPGZs4PbyJMcfK741eVrc0PHKiPjjZmvp8r2jHcORT843Rp/K09txvLqmaseQU/uPgndrEDHjuOKdysb+Xpi8jKJCp8uNMscVlW+8DX+99eYeCI3JzM1UqRgFPMBVGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707425017; c=relaxed/simple;
	bh=L52+68LWwwTOH1dgPKd7M74booiurCNkMtGk00rSzto=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ym1VxHsmAg6fF+Q2LLSJQRmnld+pW0ugZMUw5nzEnIxDIB6GAsCREGh1GJlZt831DFa/T6XC+BIYEmaH7VXyisL1DzA+Ezv7pOHwlnW643C9z2BKxU7S0FB8aOknAnF9PmAwjhB36sxaO5EOX1ya5Z20owp21ZkFTjcubeDvKqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=i76whFIa; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1707425001;
	bh=L52+68LWwwTOH1dgPKd7M74booiurCNkMtGk00rSzto=;
	h=Date:From:To:Cc:Subject:From;
	b=i76whFIaTw4CWYHsrM5B5vJvqwTkiXlmyRj8MXbVEeU/EcdfqNHaZLORr/KWw89vR
	 YPzQkxZs+KBBzUe9Flh/HIZzKa6oQ+Nmqj+SLsWLGOYojFv0CtmH4A/NnFRJmeeBVG
	 uziCKJzQlPrNGIGEY/ksmUKtOAx1nYanzJhNYXWNPF9S+Hp9J8I7dIxSjyV0+w3XUa
	 yHekjzwiQSY1N9hPlqA3LQatporwV9sGy1ds57nacsTGYdjHxN1L7mUow6GFdmr3zO
	 Se1dU3IXjC3gAak2S/I6LJGpeBpTuZ4YsKM0IHwbspIH5+kAXEwkqs059Ej+g9/yi/
	 oTJD/BBX/4PAQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 6F32312EC;
	Thu,  8 Feb 2024 21:43:21 +0100 (CET)
Date: Thu, 8 Feb 2024 21:43:21 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] pthread_create.3: re-do the architecture/default stack size
 mapping
Message-ID: <4wwe76cvuczjn57bzw7wd4derfaufcgrxr5skvlu25wvwecmmh@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="53jtziau5cmp3wtm"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--53jtziau5cmp3wtm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Currently, the page lists 2 of the 3 x86 architectures, no ARM(!),
old PowerPC only, and most egregiously itanium,
which linux doesn't target.

Per glibc 2.38:
  $ git grep ARCH_STACK_DEFAULT_SIZE
  aarch64     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  arc         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  arm         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  csky        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  loongarch   #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  m68k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  microblaze  #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  mips        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  nios2       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  or1k        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  riscv       #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  s390        #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  sh          #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  sparc32     #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)
  x86         #define ARCH_STACK_DEFAULT_SIZE  (2 * 1024 * 1024)

  alpha       #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
  powerpc     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)
  sparc64     #define ARCH_STACK_DEFAULT_SIZE  (4 * 1024 * 1024)

  hppa        #define ARCH_STACK_DEFAULT_SIZE  (8 * 1024 * 1024)

  ia64        #define ARCH_STACK_DEFAULT_SIZE (32 * 1024 * 1024)

I cut PA-RISC and the Alpha. They have 10 and 6 popcon entries,
respectively, and AFAICT they haven't seen a processor released
in over a decade =E2=80=92 they aren't relevant to any modern reader.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/pthread_create.3 | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
index 66c67a6ff..fd6253bf4 100644
--- a/man3/pthread_create.3
+++ b/man3/pthread_create.3
@@ -200,23 +200,8 @@ .SH NOTES
 If the
 .B RLIMIT_STACK
 resource limit is set to "unlimited",
-a per-architecture value is used for the stack size.
-Here is the value for a few architectures:
-.RS
-.TS
-allbox;
-lb lb
-l r.
-Architecture	Default stack size
-i386	2 MB
-IA-64	32 MB
-PowerPC	4 MB
-S/390	2 MB
-Sparc-32	2 MB
-Sparc-64	4 MB
-x86_64	2 MB
-.TE
-.RE
+a per-architecture value is used for the stack size:
+2 MB on most architectures; 4 MB on POWER and Sparc-64.
 .SH BUGS
 In the obsolete LinuxThreads implementation,
 each of the threads in a process has a different process ID.
--=20
2.39.2

--53jtziau5cmp3wtm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXFPOkACgkQvP0LAY0m
WPGdkQ/7Bx6EUHlZs9yzCE2iOQaFWpJ68sqSkbNKrZhNOjVkN90CNekjcATGYYj/
YX1LOmElxtUBjwxw8JAvP5NeVa+SZ7GoSiYvjbPRwiDyn6ci6aTee+38zaANwS+c
/k2qfY53IuqlXBaKKmzxkYu1WxgKfWBCpudLTe4Jk4+9FM8hJO1NiwIjkU5OzPcO
2uYDNSdKXR8KmHPvaThiNHcXTVVkTylrkGLuy4Lctt3ixI/i/hX9M94EMWpgxrOI
lDtIrUsef1mYlYBipGey38qh8nEaFOrmM5Hziyov7NZhBu3Ry8MXRRRJw4rg63pq
VBt5YGCam1/3QU5sXMdTO1DhMs5Nb2Zgpkc8yr52s3IvEbI0FO7Lcsx4iVq++V09
0u+J2G7mO6CjIFY1Ev4geC91u4D6w4qgub86zWxxeL5+NGxzX7KWU02vlMk1qPMp
e5yChue2+49sHp3AjOr+gYiUqfntQVwkNwGCbeKiU1ywLGHSclaaA9jfvHDhQAIu
3GdaSR4Xdp2dyFP8xooBC3MKT6fHswAKoVE/6ZKDIHxrOdKRaT4m4NYScWaFzQ7a
W6BJvQzoHminxHjmRUy1fzAZt9g8RW/kn9umGdMh8MiopzD2oK9Z6JA4wp8jfXRM
G/3Bwcq1w3XVUmtJBJ8f7fiIx2RsoF3SQaufwOw7Ak7VPgSwCt4=
=fK/E
-----END PGP SIGNATURE-----

--53jtziau5cmp3wtm--

