Return-Path: <linux-man+bounces-3066-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1EAC9BCA
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 18:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E59449E4B16
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 16:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31231714B2;
	Sat, 31 May 2025 16:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Dx6eYkel"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEF417597
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 16:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748710137; cv=none; b=ENsUbhY+EFOqi/klho5vKzcHhEXEsRJITl22/fQQpNOKWR3YNoyTumv3YA0xm6w5mmXR6lAY0Ci2Jfbu3R+o+b2Um4HEywyD3vpPaALN8m3wn0zym5l+ETKD3fqTPPt8QJ+TD9syC1MVNy/K5fhcRM01BlQ7DvDpDczxFwb+lEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748710137; c=relaxed/simple;
	bh=D67ZfbatFhapTRXRDm/0WGBdfKgUAqpLzmIApj8ZVv8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=hrTpMJf309d58qM2zQu0Eog4pgdsfo2nWrtYiX0cifhug9H12AQpeQeHSrll89twhohrQxfih40J8Wu5OacFrkuwF7HmqOdlCxcJVRAH2aPrrhY/quQhVRcyG6DoSzQt52C6GCLoqG8DlqCuCRjFZmKxRkDdPs+O4NTcB6xLEpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Dx6eYkel; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748710124;
	bh=D67ZfbatFhapTRXRDm/0WGBdfKgUAqpLzmIApj8ZVv8=;
	h=Date:From:To:Cc:Subject:From;
	b=Dx6eYkelDw4JCS5sVfEdJtT+FDV4sWS3CwIhCIC2VZUFXlhNKKLlHB76lwmpskN+F
	 7tICBiMCEl1wLMyI3OGXF31zY5lZ96bAmFb8r1LLsF3oHAyzj8ShA+5CM4iVMZ+Sln
	 /S4pLGQHuJ8sFbLTrF/WhYGutLXF6jLbQnrwW2qt7C7epPzg25tSZzaJwrZwRUU2Kj
	 4Lckb9TdE1BPXiy9Pezr2JD2/vtHldyLicJO9EtL2ksOlnI9WW1yQ2E18qgWy3hyrx
	 UGy62xLSCh2T4jjfqUS4nmtSBCMG70+EynRlY8pHW3e3M7tkOWRAPhSUfsQpnDFRQ4
	 TEFeSWrGdd6xA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 14EAB25F8;
	Sat, 31 May 2025 18:48:44 +0200 (CEST)
Date: Sat, 31 May 2025 18:48:43 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] memfd_create.2, mmap.2, shmget.2, proc_sys_vm.5: fix name of
 vm.hugetlb_shm_group
Message-ID: <z5nrhnaa3omgagh73lzwywq5555x5qleyjopns7otalqvgxpwm@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p2a6s7khranghwlj"
Content-Disposition: inline
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--p2a6s7khranghwlj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c

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

--p2a6s7khranghwlj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg7MusACgkQvP0LAY0m
WPF3ABAAnJ2uN8SNzwrgvsG+rftD+gEiYZGDq669zuFyBTFWC8Q8PEpbJwTsnRuz
DQp/2Kt6R9exWfnaJB16AMRi+tSz751SfGsTZWaKb2+BAso3z6+CI0BLCwYOZQxA
bktAxXZjd0YcpGr73BxUBUACQ2qi1i/HpWdBAefsHeC19VBJaRuH3e3CYrhlCbtk
kPg3PutpnT9pGgV4dbGC7ffdLxgc/E2iB07JkhPpqVO62R91OSYx13lHW8Tzwxbo
l9eWuduhaRY8+ns9pjeQOT+TizExDiE+0FWuO3f3pEDU/cD/uxjVtzrN1UKvsZcp
zAmdXBO+ddPvecPb6HDrPxUttSFgnEA38oS1W/Y3N9s0mecClJNSHN0LXeLoWABJ
/RQ8rvRhGlyrcnWIm/Nblw2bSBi5MpM12VsWWp0mxyRImYHJQ01gQnr27zpB8xVR
/44whXgTugJ9ROqT1AMIS5vFZUK0bNJ8dYbF6KhvKVEdunLSAI3OZQCI+EznQR18
cWj5yQFOgD4PetXlJ+JoRNR6okvCCNNKs9J/IPACtt+LOs1k/UdMLd1yZJQTaU4g
lUmnPf7T5/zcyxk7q2wSbn43kuEH76wqHFFgrcYmzPY61Evt2TK5oBRcoMxxm8/d
gWdO9qZX2B133UzOvgOCBpFyrYI59H1hK0Er94IQPLuLaL/qwrs=
=A/hE
-----END PGP SIGNATURE-----

--p2a6s7khranghwlj--

