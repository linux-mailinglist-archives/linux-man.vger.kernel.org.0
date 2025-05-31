Return-Path: <linux-man+bounces-3071-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D99BAC9C2B
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 20:03:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2551F17F8DC
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 18:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3004D8CE;
	Sat, 31 May 2025 18:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="kl8l1HP/"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C906F28371
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 18:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748714610; cv=none; b=Co3btsWp29plM+PRYRiCMdvDRn5NMOEfZtG6REElkOteozA1hp1DT/w26WhXiJzeCxs23F3FmonoS0MydURLjxhjmBOy4edZ7iVOJJBx7LFwBrPJlDTBqQ678VIqE5PuS/cBrX4/LQFo/jsr8dNu8WsMLn7n7rzfT155pJpLw3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748714610; c=relaxed/simple;
	bh=D4/L/bi9uT9En3aQqsXNxa52XehjKmvtG9AMiSnKliI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JPmSUmInsjLf/XStfqGr8cCxwfYpbfK5v1vy22yQPOeylrqwWGV3XQJ5Tp6hs7ParJ0991HJhTFVXrsjRa9Y4u0pyTNAKiXC9MeSqodiIWnZsNJb8ymYQ5uYgW4yUYS+CACn9ARR07UReTNtgWqIDCKEMUqvChbUzVRaOXyt4w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=kl8l1HP/; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748714606;
	bh=D4/L/bi9uT9En3aQqsXNxa52XehjKmvtG9AMiSnKliI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kl8l1HP/cXQSmD7e1SMzDxmJIkYMN8V2I/aMMqoZ+6FEkMZsXjNr3H7I6Phx+e1jn
	 qUIiuFuk7gMez2vQviva+PGnELSh5iMjRtqs5Fi0t+TQIqoQ2/Qd+oXNC+WUCMJx8w
	 EfJp3InMEz6ZuwY7npN3sKOd5kc2kH2DA+PJQ5HJurX3m922FVfZ055BtChIwnbREV
	 Vbk2RMAB4BdS0preO5SRBq35VK4L5OwnQ2R5tsxhMjbxKRzV6HTY1A0jBCT3VqJ0D0
	 uhABWoCgqXeebYXggrIzV1UEbt6bQMvCnbdols0Ohj9xPMO9WfJ1FYNT1mjhp2tMD5
	 wSSG+s5gJUpwg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B3C0F2758;
	Sat, 31 May 2025 20:03:26 +0200 (CEST)
Date: Sat, 31 May 2025 20:03:26 +0200
From: 
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <22436441b7bac0177213c99c55187c4af085d4ca.1748714599.git.nabijaczleweli@nabijaczleweli.xyz>
References: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a6wd2x7mz6j3hpqy"
Content-Disposition: inline
In-Reply-To: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--a6wd2x7mz6j3hpqy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

sysctl_hugetlb_shm_group is the name of the variable(!) in mm/hugetlb.c

Fixes: 090fdddb4342 (2021-05-17; "memfd_create.2, mmap.2, shmget.2: Documen=
t the EPERM for huge page allocations")
Fixes: 6cee0ddeb414 (2021-05-17; "proc.5: Document /proc/sys/vm/sysctl_huge=
tlb_shm_group")
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


--a6wd2x7mz6j3hpqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg7RG4ACgkQvP0LAY0m
WPEzLxAAlE+uFpcu1ODWq1vJNhwK3mcLBMW58F4c/LE8E8gjTx0xjPzpujtqaApk
8xQHRwjKeXM+mxuDPfEUCv6AOpORzSh7iIhjyN7I/AXyuKrNUxwmvkixP/X3LthN
H3uZtwN23HsGXOkZ4OZT9Wcy8qXUjuw7/k3suNNPSTcy5cWYzqn5We7KtpDtCUUb
2Ue0TQgHDVp4ktrCDUknon5wqS+oU5dzsYPIE4fNe856ojByhdvtMaRw8RAarlrG
7sMuMX7jwoaFS42DEnfxQ3z1iWGxlURZg/XzjVc8zewrR8dkn6Ftk6H88Vk/qaUi
bthbXKOPL5Zbm9HTi1XHxarZaONzmAXlxTi3rETBZ44ilqxZ4OGNMGDK1NXgBaXv
rigw4phhyifyu+pXSp+wtuhnumUmP0Aa0bKGopSJ0z0C/iyfVl+6Y5zkFfct0R/P
vYqLQoHU56dq4CIlY4M5gfYcU3+EKAxNnSYszL673t/1QkPcC6CoqlS4AYu+XCWy
PMSijf7XOzDPJlpW7xKXc+IjvgFG8Le4U0yS52dtq9fQWueY3dUm5pFaQTHAC79I
At9FxDcXD6nllWZ7ojOtGmqT/IxPg1KKpt9CpgNAIcDqdfjW36W1ZRq3rGLzC5f/
Jyxiv+LKY1R7GkiAUdp+gyAuuUcKv3HrqMadij+ScwOjKFnL77g=
=wImM
-----END PGP SIGNATURE-----

--a6wd2x7mz6j3hpqy--

