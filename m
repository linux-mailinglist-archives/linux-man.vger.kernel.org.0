Return-Path: <linux-man+bounces-427-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E16C3850BC5
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 23:28:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 152301C20A1E
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 22:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A075F569;
	Sun, 11 Feb 2024 22:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="C+AjpsYp"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48D35F483
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 22:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707690476; cv=none; b=TziIEHSCl6uFp84o7AWCSKoioj1A2pnyTuMzX3KmWiQxY5ociN48L9gzwzaE3auTk/E0UQXGxnjWyFAC4Y4fF+8IrX4FNVzqEmDyw4BE9G83x2yfGsZJZPGeq/qNwJrnMSCAW2MQ56PL1jQP2IeY8smhNoOYrpYMNIZ+HhiNY80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707690476; c=relaxed/simple;
	bh=md1zBLpkQYzMkUm+ZWC1hFvi8pZbCDK8td28YiAlWB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ClKFPmQ95Oqahykdjko9KDAKeNNVkG1YzT/P5Cx6X6xy8QQolC54NF+zfaYETZLX2GhzVCaBqkcWm13YHlpTDRrLWXO/c86hKivGyOV5Yq3A7qPUEX0BUN49wfWgvRDAxeBKm8WymBca2FJ+QtFk/cB3sLeIPgPPvHxjB7P+6pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=C+AjpsYp; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1707690467;
	bh=md1zBLpkQYzMkUm+ZWC1hFvi8pZbCDK8td28YiAlWB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+AjpsYpwGXOUaPF/DabqWu9uqZ2uDRytvC8a4bbFjGXDhGrnc6zS2gZqcaa2iEZv
	 QGszeDAEZ2R+kMUxywMMGp7l6g8sy8uqBgGHYQ1OIuNeuyOQL/YEaisR1jvqQvPvE/
	 E8Y1bB6fvGN1zyCS4IqkA2rKq4fm+2UzfjR9P3OPCsErqrMLzRErBQjEhtEE2UvHg0
	 JqlIAb4jRLIrCvOcqE0Ozgk17+R8o2u3F1FdZaKukOhOih73KeuLKJrwWZLAq1WM/d
	 +leT1xWcWeaaVzBtEjwOHnIEEOnr28LuW9igJFtxeCQVhuC7eULoVX2fK0W3SHQakI
	 eVEEuBmot23PQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0EDFF17F0;
	Sun, 11 Feb 2024 23:27:47 +0100 (CET)
Date: Sun, 11 Feb 2024 23:27:46 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] pthread_create.3: re-do the architecture/default stack
 size mapping
Message-ID: <vbphhcgfcdrf6qdmtdkrelbbviivsrzgbh3pdr4rbrczfl6qko@tarta.nabijaczleweli.xyz>
References: <Zckv-93zIsXvmc3G@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pzvfnpyyzueqxw66"
Content-Disposition: inline
In-Reply-To: <Zckv-93zIsXvmc3G@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--pzvfnpyyzueqxw66
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
in over a decade, they aren't relevant to any modern reader.

Similarly, use "POWER" instead of "PowerPC" =E2=80=92 the consensus branding
is "POWER"+version (POWER8/POWER9); PowerPC is itself a POWER variant
and doesn't really deserve its own special mention, especially in 2024.

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

--pzvfnpyyzueqxw66
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXJSeIACgkQvP0LAY0m
WPEqDQ//YgUFKe077jTRsM7eGcDNm9INPixkI6vpZoEuzxzKQ3hQ3a/RHCczslaz
AwfnDrHUcXofT3CzXnnoBx3jjG06jsCTqR5KCyIA6k00TRN2hgfD8AIODeZTx0sz
u4gC5aAMMhVhtrnaaxCAk1YWiFft48Cb/zEzk3H64W8lOXLF8J/6sx5l+Gwsxs0o
b8qV6z/ixZBEmkhf0Ro1MwLHUlzFsvKeyqKNysFwhiR4gs4aTJyu9unk58xLcvaA
HnGwI/qOanIM7D/aDGOkbfYysBXARkO3w4bsi75ni0hEEOusMHvSU/zDUR7L0UAX
eHrSo6Z20ExV5h5c24ldPiBP/LS4UzlwWIggL/BHP5CGejdEhz58ESMGqyD+QDRH
wtA343lZAuAoFpoXgDg325MW8Ez0Uk3AEW3Fwk8ep1JCZDG193M/A9MSy6QQ+Ct/
ND4ki64Bp5fiFiRHFAKFGxVcLkxfz316Ib0CfrxvYdE+n/WoxxITPpkd7uu8iRdn
Xp3CYxJv1vKYdxlcf/cYVyFMRn9Jg6nQtoccAoEhk6tJgEFmenfItQAluQBp9aqA
TqBfMHaKBk25VQY5+npTDqcnTebx5WFegdDaoIIY4fJCLXWBhiN2jgggtO3laJRz
318Nq2JfyMvmpuWPJCdwGLZaiaVYWnRH9FxfMeW5/imlLsdid+4=
=PPD4
-----END PGP SIGNATURE-----

--pzvfnpyyzueqxw66--

