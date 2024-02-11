Return-Path: <linux-man+bounces-428-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA18850C59
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 00:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 266AC1F20F99
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 23:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F151168A8;
	Sun, 11 Feb 2024 23:30:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961DC154B1
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 23:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707694247; cv=none; b=SAHCDwAZkyQ/odM/ldVXzGFR7QrDUyC8+fCMVhQdiWoI6JnG+8E4oVvEBefq3AIKnQFzQgd/FKEc7xstwoatsxZR8OrVeU0YXSzcM85/xbbSyVIgW7n/uPeZB5G+rMRNnGE1f+TC3pmPgZqYekF2XW3qcNFowvf9poIU98+XCvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707694247; c=relaxed/simple;
	bh=iJf5X++D5VbXJGxc67zmMQcRDqCKN/WV0AUWrKBP/5U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=u3N7hJX12F7rsRaaiPKlZmG1w9Cae+4Mh9+YzkzbFuxgUjjN9d/u+J8Ocslr+FtK1lONVx6hiE9ev7bhueDBdBwwv4DCj7CPltF1dPEl61psq5ygKV3k0yprlbnMPGhIAOnNunpCA2N2YeKlt2i3sA9hDJcgpsx0qVkFLFTL3wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: from csb.redhat.com (deer0x03.wildebeest.org [172.31.17.133])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 2DC0B30005AA;
	Mon, 12 Feb 2024 00:30:41 +0100 (CET)
Received: by csb.redhat.com (Postfix, from userid 10916)
	id ED69EE16DE; Mon, 12 Feb 2024 00:30:40 +0100 (CET)
From: Mark Wielaard <mark@klomp.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Mark Wielaard <mark@klomp.org>,
	=?UTF-8?q?Alexandra=20H=C3=A1jkov=C3=A1?= <ahajkova@redhat.com>
Subject: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS
Date: Mon, 12 Feb 2024 00:29:03 +0100
Message-Id: <20240211232903.1622396-1-mark@klomp.org>
X-Mailer: git-send-email 2.39.3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO

close_range is defined in unistd.h when _GNU_SOURCE is defined.
The linux/close_range.h include file only defines the (linux specific)
flags constants. The flags argument is an int, not an unsigned int, in
the glibc wrapper. Use the close_range library call in the example code
instead of syscall.

Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range() wrapper")

Reported-by: Alexandra Hájková <ahajkova@redhat.com>
Signed-off-by: Mark Wielaard <mark@klomp.org>
---
 man2/close_range.2 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man2/close_range.2 b/man2/close_range.2
index 380a47365..62b728e96 100644
--- a/man2/close_range.2
+++ b/man2/close_range.2
@@ -11,10 +11,13 @@ Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
 .nf
-.B #include <linux/close_range.h>
+.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
+.B #include <unistd.h>
+.P
+.BR "#include <linux/close_range.h>" "  /* For the flags constants */"
 .P
 .BI "int close_range(unsigned int " first ", unsigned int " last ,
-.BI "                unsigned int " flags );
+.BI "                int " flags );
 .fi
 .SH DESCRIPTION
 The
@@ -205,7 +208,6 @@ result from the calls to
 #include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
-#include <sys/syscall.h>
 #include <unistd.h>
 \&
 /* Show the contents of the symbolic links in /proc/self/fd */
@@ -259,7 +261,7 @@ main(int argc, char *argv[])
 \&
     printf("========= About to call close_range() =======\en");
 \&
-    if (syscall(SYS_close_range, 3, \[ti]0U, 0) == \-1) {
+    if (close_range(3, \[ti]0U, 0) == \-1) {
         perror("close_range");
         exit(EXIT_FAILURE);
     }
-- 
2.39.3


