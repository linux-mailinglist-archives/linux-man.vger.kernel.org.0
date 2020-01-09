Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A99F8135D29
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2020 16:46:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728293AbgAIPqg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jan 2020 10:46:36 -0500
Received: from mx2.suse.de ([195.135.220.15]:47488 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731203AbgAIPqg (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 9 Jan 2020 10:46:36 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 20D00ACA4;
        Thu,  9 Jan 2020 15:46:35 +0000 (UTC)
From:   Petr Vorel <pvorel@suse.cz>
To:     linux-man@vger.kernel.org
Cc:     Petr Vorel <pvorel@suse.cz>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Li Wang <liwang@redhat.com>, Cyril Hrubis <chrubis@suse.cz>
Subject: [PATCH 1/1] syscall.2: Update Feature Test Macro Requirements
Date:   Thu,  9 Jan 2020 16:46:26 +0100
Message-Id: <20200109154626.6206-1-pvorel@suse.cz>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Cyril Hrubis <chrubis@suse.cz>
Signed-off-by: Petr Vorel <pvorel@suse.cz>
---
 man2/syscall.2 | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 9091b34bb..3fc32cb7a 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -44,12 +44,22 @@
 syscall \- indirect system call
 .SH SYNOPSIS
 .nf
-.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <unistd.h>
 .BR "#include <sys/syscall.h>   "  "/* For SYS_xxx definitions */"
 .PP
 .BI "long syscall(long " number ", ...);"
 .fi
+.PP
+.in -4n
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.in
+.PP
+.BR syscall ():
+.ad l
+    /* Since glibc 2.19: */ _DEFAULT_SOURCE
+    /* Glibc versions <= 2.19: */ _BSD_SOURCE || _SVID_SOURCE
+.ad
 .SH DESCRIPTION
 .BR syscall ()
 is a small library function that invokes
-- 
2.24.1

