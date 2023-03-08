Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E85296B0FB2
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 18:05:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjCHRFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 12:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbjCHREq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 12:04:46 -0500
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E874130E87
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 09:04:22 -0800 (PST)
Received: from localhost.localdomain
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Wed, 08 Mar 2023 17:04:19 +0000
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
        Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH] user_namespaces.7: Add note about PR_SET_DUMPABLE on nested userns
Date:   Wed,  8 Mar 2023 18:03:52 +0100
Message-Id: <20230308170352.68915-1-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
References: <20230308161744.iqr3kllrvgkgo5tn@wittgenstein>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

Thanks, so how about this instead?

---
 man7/user_namespaces.7 | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git man7/user_namespaces.7 man7/user_namespaces.7
index 6647b02bf..6bc04bde5 100644
--- man7/user_namespaces.7
+++ man7/user_namespaces.7
@@ -91,6 +91,22 @@ The
 operation can be used to discover the parental relationship
 between user namespaces; see
 .BR ioctl_ns (2).
+.PP
+A task that changes one of its effective IDs will have its dumpability
+reset to the value in /proc/sys/fs/suid_dumpable. This may affect the
+ownership of proc files of child processes and may thus cause the parent
+to lack the permissions to write to mapping files of child processes
+running in a new user namespace. In such cases making the parent process
+dumpable, using
+.B PR_SET_DUMPABLE
+in a call to
+.BR prctl (2),
+before creating a child process in a new user namespace may
+rectify this problem. See
+.BR prctl (2)
+and
+.BR proc (5)
+for details on how ownership is affected.
 .\"
 .\" ============================================================
 .\"
-- 
2.39.2

