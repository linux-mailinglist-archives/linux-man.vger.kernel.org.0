Return-Path: <linux-man+bounces-3321-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA85FB1B86F
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4CBD1766E2
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F5D291C0F;
	Tue,  5 Aug 2025 16:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="TNUun+zc"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF2772630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411190; cv=none; b=juUShsNqG/B8G80KqgXXMYTZ4/Uwk3Ttp8P9b6d9dvHQS4EIFFtXy1AcMcupxRyALeENuw9ZhoFE/fUaexfEQiNU/dBicMc/lNHfW1m466I5G6NpWYfuxkdeckmPODzmsgMTUxXU05kCeGmSOmVUvqW/3aJyYx5oH9oxk5E+/i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411190; c=relaxed/simple;
	bh=CiTTObzzLGnlA4F9qEoJOC5InMXtybZ7WLsBZdTYzbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k9a/p3aP2w3Yo5u+21SJo5x9+1RiHWB7avhATW5JjtVScIN6VbQR8oBIPKUUxvjL3H8fqpfIhxqqfc9AmA9lAWxlUe9V/hbLrONUbYUCepbM405QMnh5md0jsU5U4iXi7obvIuKJhzDaiqzHCwsZC9wQDGqWrYEiO6N3c8EUDWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=TNUun+zc; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bxJhd35cZz9tPc;
	Tue,  5 Aug 2025 18:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3tyrhBZ2oweP2qtgH9MJUVus7dbEqp2ESF0aopWmy1E=;
	b=TNUun+zcCkxP0lIwJLwqAtevJ+rgf9YN5/mg/v+WlPX0RYA0jfMlWEYNGv4X1bZCX/9leU
	rDZ3vGCXm9oFLn5W5Zf5V6WaBEZRm++BPWvbuEbT5aoQGJkJr9rMi3R6WtY35dxUawEFSy
	9cVLU67hyx2/B3BIiOdm/dLI6+Npzi1TIKS2kg5xwOmYLZYxU8HE9X3da6gj1yFxiYx0G1
	dwfl2Pc73Ojv6my+oDhemJC1Tt541PPpvlirRyvkFE9fo2pkTfoGwCcw6swqBl4D180Zu0
	aS3ztVb/bBDnIKOqk1DUCWqlsD59UQH2yXFlRKVyCiTZWqIx4G1WSp+hb+tFww==
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:47 +1000
Subject: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3006; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=CiTTObzzLGnlA4F9qEoJOC5InMXtybZ7WLsBZdTYzbQ=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMlh4ep3UIV/Hv7WPpvLOdv4oINaQ78L7Koe//tqrS
 Ks90QE1HaUsDGJcDLJiiizb/DxDN81ffCX500o2mDmsTCBDGLg4BWAigRcZGc5N71rJZadjkV3B
 XiotXfhV/F1b3O8tKSd1hLx/Mi5ZyMjIcPm9VeWR5v5If58WVaHu8usRp66Fz6tntX2qYPA8+Pd
 ZJgA=
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386

As with openat2(2type), it makes sense to move this to a separate man
page. In addition, future man pages added in this patchset will want to
reference mount_attr(2type).

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/mount_setattr.2      | 16 +++---------
 man/man2type/mount_attr.2type | 58 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 62 insertions(+), 12 deletions(-)

diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index b8ddc3e22aef..e863be64deb5 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -116,18 +116,10 @@ The
 .I attr
 argument of
 .BR mount_setattr ()
-is a structure of the following form:
-.P
-.in +4n
-.EX
-struct mount_attr {
-    __u64 attr_set;     /* Mount properties to set */
-    __u64 attr_clr;     /* Mount properties to clear */
-    __u64 propagation;  /* Mount propagation type */
-    __u64 userns_fd;    /* User namespace file descriptor */
-};
-.EE
-.in
+is a pointer to a
+.I mount_attr
+structure, described in
+.BR mount_attr (2type).
 .P
 The
 .I attr_set
diff --git a/man/man2type/mount_attr.2type b/man/man2type/mount_attr.2type
new file mode 100644
index 000000000000..733dbc3c8cdb
--- /dev/null
+++ b/man/man2type/mount_attr.2type
@@ -0,0 +1,58 @@
+
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH mount_attr 2type (date) "Linux man-pages (unreleased)"
+.SH NAME
+mount_attr \- what mount properties to set and clear
+.SH LIBRARY
+Linux kernel headers
+.SH SYNOPSIS
+.EX
+.B #include <sys/mount.h>
+.P
+.B struct mount_attr {
+.BR "    __u64 attr_set;" "     /* Mount properties to set */"
+.BR "    __u64 attr_clr;" "     /* Mount properties to clear */"
+.BR "    __u64 propagation;" "  /* Mount propagation type */"
+.BR "    __u64 userns_fd;" "    /* User namespace file descriptor */"
+    /* ... */
+.B };
+.EE
+.SH DESCRIPTION
+Specifies which mount properties should be changed with
+.BR mount_setattr (2).
+.P
+The fields are as follows:
+.TP
+.I attr_set
+This field specifies which
+.B MOUNT_ATTR_*
+attribute flags to set.
+.TP
+.I attr_clr
+This fields specifies which
+.B MOUNT_ATTR_*
+attribute flags to clear.
+.TP
+.I propagation
+This field specifies what mount propagation will be applied.
+The valid values of this field are the same propagation types described in
+.BR mount_namespaces (7).
+.TP
+.I userns_fd
+This fields specifies a file descriptor that indicates which user namespace to
+use as a reference for ID-mapped mounts with
+.BR MOUNT_ATTR_IDMAP .
+.SH VERSIONS
+Extra fields may be appended to the structure, with a zero value in a new field
+resulting in the kernel behaving as though that extension field was not
+present.
+Therefore, a user
+.I must
+zero-fill this structure on initialization.
+.SH STANDARDS
+Linux.
+.SH SEE ALSO
+.BR mount_setattr (2)

-- 
2.50.1


