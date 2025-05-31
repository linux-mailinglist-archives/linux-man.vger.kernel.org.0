Return-Path: <linux-man+bounces-3068-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D9BAC9BED
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 19:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A90D17A487
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 17:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEADD3F9C5;
	Sat, 31 May 2025 17:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="E6JBBufZ"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE59D299
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748711917; cv=none; b=jj5dSxKyhFfQt1nmakUQtzaXf+TDNaiwDRCkn04yf3tXkPmwBVdpHK4P0/bPd2UMD/yvSY6YVf64Zy/EASj6Fc0WuNw0sPQAsOMp9R8AuGcNBoqIYFsnKnEy2R/ee9KUft7/HwBSjtaioM+a6U2E6xhqHIwnKxiAhNK8jBzXhMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748711917; c=relaxed/simple;
	bh=iE2afetnuAGzb6/omD8fBnbUq7lFHoY2NwYIhxr8lvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HkJtZ3464BKoFhCDmwS2Ytz2EvEaWIW/2kZWG8rh6YsTVyKoa/mCAPoCP3JSZSi5H684d9DSt933K288V8TseRZo+BRMFECZrtgTOoFJjmSfp8hLq5yjEPoK31QkCpvhCXrnJhu9pRQ2s9tujoYKmd5IZnfunjWCkSEkG0nqN6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=E6JBBufZ; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748711912;
	bh=iE2afetnuAGzb6/omD8fBnbUq7lFHoY2NwYIhxr8lvw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E6JBBufZgAIkDyI0/sm1JDHNJBXYQZSxTVM+ylcP8almJnKvsdNapYce7SbBUtVnn
	 Y9815AV/wdkW3LhYtjVJDofgK5gFqI2bxINHdA7upM/UdWdPooild6dpZoc+iFB2Y9
	 3Zmdtsm3/dDnHe7ChpFo8BcNx8ke618fk6AP0Nir/I/hWZ3zAQxct/x5Nf9Cru91Fi
	 vcEETuEt2ZtF3QFx8/9pZ4Y8x04kFO85Ev8ui96m7Iq8RjTm2U31P/tAJl3V8Sr5Ce
	 Gsfi64k4gnOFwNIjzC1o9iRopfALhwgjWs51K05BW7GrNgRzNJbC7tdWn5zlXenEta
	 wxibU48IcnEXQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5D51C1BF0;
	Sat, 31 May 2025 19:18:32 +0200 (CEST)
Date: Sat, 31 May 2025 19:18:32 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xaswsakjdlg3nkfb"
Content-Disposition: inline
In-Reply-To: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--xaswsakjdlg3nkfb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c

Fixes: 090fdddb4 ("memfd_create.2, mmap.2, shmget.2: Document the EPERM for=
 huge page allocations")
Fixes: 6cee0ddeb ("proc.5: Document /proc/sys/vm/sysctl_hugetlb_shm_group")
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man2/memfd_create.2 | 4 ++--
 man/man2/mmap.2         | 4 ++--
 man/man2/shmget.2       | 4 ++--
 man/man5/proc_sys_vm.5  | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man/man2/memfd_create.2 b/man/man2/memfd_create.2
index 4cf30c157..29a110ef7 100644
--- a/man/man2/memfd_create.2
+++ b/man/man2/memfd_create.2
@@ -195,9 +195,9 @@ .SH ERRORS
 .B CAP_IPC_LOCK
 capability)
 and is not a member of the
-.I sysctl_hugetlb_shm_group
+.I hugetlb_shm_group
 group; see the description of
-.I /proc/sys/vm/sysctl_hugetlb_shm_group
+.I /proc/sys/vm/hugetlb_shm_group
 in
 .BR proc (5).
 .SH STANDARDS
diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 255fa2353..cf110dad9 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -614,9 +614,9 @@ .SH ERRORS
 .B CAP_IPC_LOCK
 capability)
 and is not a member of the
-.I sysctl_hugetlb_shm_group
+.I hugetlb_shm_group
 group; see the description of
-.I /proc/sys/vm/sysctl_hugetlb_shm_group
+.I /proc/sys/vm/hugetlb_shm_group
 in
 .BR proc_sys (5).
 .TP
diff --git a/man/man2/shmget.2 b/man/man2/shmget.2
index 8101dbb50..d273966a9 100644
--- a/man/man2/shmget.2
+++ b/man/man2/shmget.2
@@ -251,9 +251,9 @@ .SH ERRORS
 .B CAP_IPC_LOCK
 capability)
 and is not a member of the
-.I sysctl_hugetlb_shm_group
+.I hugetlb_shm_group
 group; see the description of
-.I /proc/sys/vm/sysctl_hugetlb_shm_group
+.I /proc/sys/vm/hugetlb_shm_group
 in
 .BR proc (5).
 .SH STANDARDS
diff --git a/man/man5/proc_sys_vm.5 b/man/man5/proc_sys_vm.5
index 4ee50a54f..1ed32b8ff 100644
--- a/man/man5/proc_sys_vm.5
+++ b/man/man5/proc_sys_vm.5
@@ -85,7 +85,7 @@ .SH DESCRIPTION
 .BR sync (1)
 first.
 .TP
-.IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
+.IR  /proc/sys/vm/hugetlb_shm_group " (since Linux 2.6.7)"
 This writable file contains a group ID that is allowed
 to allocate memory using huge pages.
 If a process has a filesystem group ID or any supplementary group ID that
--=20
2.39.5

--xaswsakjdlg3nkfb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg7OecACgkQvP0LAY0m
WPEaiRAAlnmJ/wuT3BS3B7z31TWLG35AXnGkWrD4WBOQGAAi5Aoeu01+B5IYFA0b
jYVdUb5okCKebwH+cP4PbuFbtuSCPYROQ7MxX1WVB+kR20/jVNUnB1jLWCGmHlCf
lLU9N+IyU62v/KiiCCjkoFCt+fZZ22atWX8nl/LGKiZkaYHmYJbYJ7qf0wVY62CG
aelw042+Y3t4udFH1+mdJrflyjgIdblQ86m4zv4XfX0sZH52YsdFdzhCO2Jvq8X+
hgx4Qzgccz2wOZ9O7uNnduFosCEgj2Geo+HExBF36nttx2jsFahJubkD0ZlQ20oX
x+yWPRauqNq2sMvHB3kwewaTKMC+eh6p+Rpai0BaVer+/abnrBwMxKONPM92EyAG
yK5HGdsKABPtDWz5wjDDT/kzCHIfLlKQS3a5ImwterQEQzKbiMFjuENg3TS2ptlc
fc5kl13CWl1TK6Zq9pyfYkg78DYa3OaTovNQJGaa1dQ50J0aCJ2LyQxx5QAJEpAG
W7XAo9+fJAG/Zi4nghiUEOSsPegE88rSnTP6816VI4UH/fQ0VwKHZlZfr4fU5h2K
5BY6enLD0WUM+wlYXQ6s06zfBWjkZTEdRq34mFLNXEPCznmAkRWBIGF5GhiqF3sc
qUlkii8BBkvukSx2qSUev8X7ykKXWWgHrq9P6y+TByDw84FonjU=
=l39o
-----END PGP SIGNATURE-----

--xaswsakjdlg3nkfb--

