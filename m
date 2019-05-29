Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 413A92E8EA
	for <lists+linux-man@lfdr.de>; Thu, 30 May 2019 01:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbfE2XPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 May 2019 19:15:13 -0400
Received: from wildebeest.demon.nl ([212.238.236.112]:44926 "EHLO
        gnu.wildebeest.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726498AbfE2XPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 May 2019 19:15:12 -0400
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by gnu.wildebeest.org (Postfix) with ESMTPSA id 11E743027351;
        Thu, 30 May 2019 01:06:09 +0200 (CEST)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
        id B5AE9413CC18; Thu, 30 May 2019 01:06:09 +0200 (CEST)
From:   Mark Wielaard <mark@klomp.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Mark Wielaard <mark@klomp.org>
Subject: [PATCH] pkey_alloc.2, mprotect.2: _GNU_SOURCE is required for the pkey functions.
Date:   Thu, 30 May 2019 01:05:55 +0200
Message-Id: <1559171155-2044-1-git-send-email-mark@klomp.org>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To get the pkey_alloc, pkey_free and pkey_mprotect functions
_GNU_SOURCE needs to be defined before including sys/mman.h.

Signed-off-by: Mark Wielaard <mark@klomp.org>
---
 man2/mprotect.2   | 4 ++++
 man2/pkey_alloc.2 | 1 +
 2 files changed, 5 insertions(+)

diff --git a/man2/mprotect.2 b/man2/mprotect.2
index 9bb02eb..4d29f66 100644
--- a/man2/mprotect.2
+++ b/man2/mprotect.2
@@ -38,6 +38,10 @@ mprotect, pkey_mprotect \- set protection on a region of memory
 .B #include <sys/mman.h>
 .PP
 .BI "int mprotect(void *" addr ", size_t " len ", int " prot );
+
+.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
+.B #include <sys/mman.h>
+.PP
 .BI "int pkey_mprotect(void *" addr ", size_t " len ", int " prot ", int " pkey ");
 .fi
 .SH DESCRIPTION
diff --git a/man2/pkey_alloc.2 b/man2/pkey_alloc.2
index ce9bd96..d82f316 100644
--- a/man2/pkey_alloc.2
+++ b/man2/pkey_alloc.2
@@ -27,6 +27,7 @@
 pkey_alloc, pkey_free \- allocate or free a protection key
 .SH SYNOPSIS
 .nf
+.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
 .B #include <sys/mman.h>
 .PP
 .BI "int pkey_alloc(unsigned int " flags ", unsigned int " access_rights ");"
-- 
1.8.3.1

