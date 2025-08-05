Return-Path: <linux-man+bounces-3320-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 405A1B1B86E
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E269177BD8
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7487E291C1F;
	Tue,  5 Aug 2025 16:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="LPofB23n"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA3A72630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411187; cv=none; b=eGOJeH+XRvKXVjCGyk13H6igzpHLPWfuQvWAhUp9DstvksWDDJ3QE8ZldI6uKrC1YNcZDP5Mlqfz35PZwQ1YnCwePfdx8thX3HCWqGjW4uydPLNHLJTLks32UeE+Lnf7eb92RfpPpgN4otIaiYKcfGFAjROgvoSkTi4UWwVQG+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411187; c=relaxed/simple;
	bh=PHhH0peF3cSMpBXyr1kS3KF8DOFNjjbf/86tp0Lf2JI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kv2CFgPGevkpJL16zkj1CW1DB9DJ3YAzI5s5VimRvz2/tzo9Ix4a3IPU+ROUiIK8MOD+EbvAszcRiae5XOj+ryyzBXMMBUY9s9lvoyBdS08kuIbzpzbpU6901gNI37Rsy6n+UVkGZu9lwNS9ZhaSTIu3ajflLD2MUxZy0ZGpW9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=LPofB23n; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bxJhY2WMTz9tJN;
	Tue,  5 Aug 2025 18:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TT9JrujwxwC2BZockqfwCLD05+Pk2UvEBRsaHh9VrOU=;
	b=LPofB23nDU9cge5BunDw3vRD+c5kl1oVpHKEV5I130xF4T86wTnwi9vxvQbeBZTcjCKHu9
	8ZaFSsYZdAzhcRTKvSAvs1Y7n7TLrXfjO4l1h6yywR1A+WqBSwn7wOwUbmjJJAv02l0q36
	q2zW0/VAmqz9QFx63Nj/NzFAvcc6lnm+oh2BDpjc1iB8rK8UnkDWIFHr8ilpjGWnxP0a51
	BwfNCOaPeFcxJ7SHQ87oP51Q1SlSWqcJatLfxUeW3e879pwknqCQTc6dVYj1Go926FtAPX
	NFM6rjSKURD6cJ9hRH8m/mpnS8NQ/Qh7zDOYk6/DuCq87yJd8k7MNHkvh4cuIw==
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:46 +1000
Subject: [PATCH 01/10] mount_setattr.2: document glibc >= 2.36 syscall
 wrappers
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-1-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3060; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=PHhH0peF3cSMpBXyr1kS3KF8DOFNjjbf/86tp0Lf2JI=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMljo/1t4A89Bxz3HomumbCnT2S97IlI678lVobe93
 1ma9/6b11HKwiDGxSArpsiyzc8zdNP8xVeSP61kg5nDygQyhIGLUwAmsqCJkWFJjFbzWjcGq4Zt
 vCUzvJm33vXu7M4wXfXtlfHkBGtm1skM/91kuUQ/3kxhOK9TcfmDvmXj5A6L7ijue72C2cf5e5c
 KcQAA
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386

Glibc 2.36 added syscall wrappers for the entire family of fd-based
mount syscalls, including mount_setattr(2). Thus it's no longer
necessary to instruct users to do raw syscall(2) operations.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/mount_setattr.2 | 45 ++++++++-------------------------------------
 1 file changed, 8 insertions(+), 37 deletions(-)

diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index 60d9cf9de8aa..b8ddc3e22aef 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -10,21 +10,14 @@ Standard C library
 .RI ( libc ,\~ \-lc )
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/fcntl.h>" " /* Definition of " AT_* " constants */"
-.BR "#include <linux/mount.h>" " /* Definition of " MOUNT_ATTR_* " constants */"
-.BR "#include <sys/syscall.h>" " /* Definition of " SYS_* " constants */"
+.B #define _GNU_SOURCE
+.B #include <sys/mount.h>
 .B #include <unistd.h>
+.BR "#include <fcntl.h>" "       /* Definition of " AT_* " constants */"
 .P
-.BI "int syscall(SYS_mount_setattr, int " dirfd ", const char *" path ,
-.BI "            unsigned int " flags ", struct mount_attr *" attr \
-", size_t " size );
+.BI "int mount_setattr(int " dirfd ", const char *" path ", unsigned int " flags ",
+.BI "                  struct mount_attr *" attr ", size_t " size );
 .fi
-.P
-.IR Note :
-glibc provides no wrapper for
-.BR mount_setattr (),
-necessitating the use of
-.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR mount_setattr ()
@@ -586,6 +579,7 @@ Linux 5.12.
 .\" commit 7d6beb71da3cc033649d641e1e608713b8220290
 .\" commit 2a1867219c7b27f928e2545782b86daaf9ad50bd
 .\" commit 9caccd41541a6f7d6279928d9f971f6642c361af
+Glibc 2.36.
 .SH NOTES
 .SS ID-mapped mounts
 Creating an ID-mapped mount makes it possible to
@@ -914,37 +908,14 @@ with a structure which has every byte nonzero
 #include <err.h>
 #include <fcntl.h>
 #include <getopt.h>
-#include <linux/mount.h>
-#include <linux/types.h>
+#include <sys/mount.h>
+#include <sys/types.h>
 #include <stdbool.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
-#include <sys/syscall.h>
 #include <unistd.h>
 \&
-static inline int
-mount_setattr(int dirfd, const char *path, unsigned int flags,
-              struct mount_attr *attr, size_t size)
-{
-    return syscall(SYS_mount_setattr, dirfd, path, flags,
-                   attr, size);
-}
-\&
-static inline int
-open_tree(int dirfd, const char *filename, unsigned int flags)
-{
-    return syscall(SYS_open_tree, dirfd, filename, flags);
-}
-\&
-static inline int
-move_mount(int from_dirfd, const char *from_path,
-           int to_dirfd, const char *to_path, unsigned int flags)
-{
-    return syscall(SYS_move_mount, from_dirfd, from_path,
-                   to_dirfd, to_path, flags);
-}
-\&
 static const struct option longopts[] = {
     {"map\-mount",       required_argument,  NULL,  \[aq]a\[aq]},
     {"recursive",       no_argument,        NULL,  \[aq]b\[aq]},

-- 
2.50.1


