Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51E4A6D30E0
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 15:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbjDANAE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 09:00:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDANAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 09:00:03 -0400
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28B3B775
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 05:59:59 -0700 (PDT)
Received: from localhost.localdomain
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Sat, 01 Apr 2023 12:59:55 +0000
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
        Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH v3] user_namespaces.7: Add note about PR_SET_DUMPABLE on nested userns
Date:   Sat,  1 Apr 2023 14:59:26 +0200
Message-Id: <20230401125926.445620-1-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
References: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In order to create a nested user namespace, we need to re-set the
PR_SET_DUMPABLE attribute after switching the effective UID/GID. Clarify
this in the section about nested user namespaces.

Having this note would have saved me some time debugging.

Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
---

Thanks for the review. Is this okay now? :)

I'm new to semantic new lines and doubted about how to split some parts :-)

---
 man7/user_namespaces.7 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git man7/user_namespaces.7 man7/user_namespaces.7
index 3c376a9f0..3db79d9a2 100644
--- man7/user_namespaces.7
+++ man7/user_namespaces.7
@@ -91,6 +91,23 @@ The
 operation can be used to discover the parental relationship
 between user namespaces; see
 .BR ioctl_ns (2).
+.PP
+A task that changes one of its effective IDs
+will have its dumpability reset to the value in
+.IR /proc/sys/fs/suid_dumpable .
+This may affect the ownership of proc files of child processes
+and may thus cause the parent to lack the permissions
+to write to mapping files of child processes running in a new user namespace.
+In such cases making the parent process dumpable, using
+.B PR_SET_DUMPABLE
+in a call to
+.BR prctl (2),
+before creating a child process in a new user namespace may rectify this problem.
+See
+.BR prctl (2)
+and
+.BR proc (5)
+for details on how ownership is affected.
 .\"
 .\" ============================================================
 .\"
-- 
2.39.2

