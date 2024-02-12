Return-Path: <linux-man+bounces-437-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC7A851331
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 13:12:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F0B71C22335
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 12:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712FA39FDC;
	Mon, 12 Feb 2024 12:07:28 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from gnu.wildebeest.org (gnu.wildebeest.org [45.83.234.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EED3C47A
	for <linux-man@vger.kernel.org>; Mon, 12 Feb 2024 12:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.83.234.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707739648; cv=none; b=UlYbpxpGjbEhh4rvSUgovOjGibHWmQGSQELe8zmJf3rv0LtBKLa0lu1gWsDOR+rDEUbz4vRshEpKgVRuoFhEeHB0gDV2Z+zyG8U86oFQMUsUiDaZLPJ2x8x/jgU+d/NlCHq9xybJkX5tCRKDzMkN7oFaPc49KK+IvcMZfUHrFC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707739648; c=relaxed/simple;
	bh=zXxemK38Xw+b3jXmBhC6XhJmtC72o/eOfv4Tf1AvVr8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Syw6oPc60wF/dJD1uzBgPN0X227hFSETyV2VsEyUnhNgnHcCV79dPylePOq+EKJxkZVwMDbFEaZGzDogP2+CsqobupGCMTgOOOIp9fd/Hku6si/UPV4RLu4CwJTBBPCvhlh4vZm4PdJ2maGIVQcAbsn0krjXN4/OpwI0oShCuy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org; spf=pass smtp.mailfrom=klomp.org; arc=none smtp.client-ip=45.83.234.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=klomp.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=klomp.org
Received: from csb.redhat.com (deer0x03.wildebeest.org [172.31.17.133])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id CEB293000674;
	Mon, 12 Feb 2024 13:07:22 +0100 (CET)
Received: by csb.redhat.com (Postfix, from userid 10916)
	id A781CC280A; Mon, 12 Feb 2024 13:07:22 +0100 (CET)
From: Mark Wielaard <mark@klomp.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	Mark Wielaard <mark@klomp.org>,
	=?UTF-8?q?Alexandra=20H=C3=A1jkov=C3=A1?= <ahajkova@redhat.com>
Subject: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to SYNOPSIS
Date: Mon, 12 Feb 2024 13:07:04 +0100
Message-Id: <20240212120704.1638500-1-mark@klomp.org>
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
 man2/close_range.2 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man2/close_range.2 b/man2/close_range.2
index 380a47365..53ee5524e 100644
--- a/man2/close_range.2
+++ b/man2/close_range.2
@@ -11,10 +11,14 @@ Standard C library
 .RI ( libc ", " \-lc )
 .SH SYNOPSIS
 .nf
-.B #include <linux/close_range.h>
+.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
+.B #include <unistd.h>
+.P
+.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANGE_* "
+.BR "" "                                  constants */"
 .P
 .BI "int close_range(unsigned int " first ", unsigned int " last ,
-.BI "                unsigned int " flags );
+.BI "                int " flags );
 .fi
 .SH DESCRIPTION
 The
@@ -205,7 +209,6 @@ result from the calls to
 #include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
-#include <sys/syscall.h>
 #include <unistd.h>
 \&
 /* Show the contents of the symbolic links in /proc/self/fd */
@@ -259,7 +262,7 @@ main(int argc, char *argv[])
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


