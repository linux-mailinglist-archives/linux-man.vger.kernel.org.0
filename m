Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E39186B0C95
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 16:25:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231661AbjCHPYs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 10:24:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231582AbjCHPYq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 10:24:46 -0500
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E00A0C5616
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 07:24:45 -0800 (PST)
Received: from localhost.localdomain
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Wed, 08 Mar 2023 15:22:51 +0000
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
        Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH 2/2] user_namespaces.7: Add note about PR_SET_DUMPABLE on nested userns
Date:   Wed,  8 Mar 2023 16:22:19 +0100
Message-Id: <20230308152219.595611-3-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
References: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
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
 man7/user_namespaces.7 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git man7/user_namespaces.7 man7/user_namespaces.7
index 6647b02bf..18d85a5d6 100644
--- man7/user_namespaces.7
+++ man7/user_namespaces.7
@@ -91,6 +91,23 @@ The
 operation can be used to discover the parental relationship
 between user namespaces; see
 .BR ioctl_ns (2).
+.PP
+When creating a user namespace is often common to change the effective UID and
+GID of the process to the ones in the user namespace. Bear in mind that doing
+so, as described in
+.BR prctl (2),
+the
+.B PR_SET_DUMPABLE
+attribute is reset. 
+If a process is not dumpable,
+the ownership of files in the process's
+.IR /proc/ pid
+directory is affected as described in
+.BR proc (5).
+Therefore, you may want to reset
+.B PR_SET_DUMPABLE
+after changing the effective UID/GID, in order to be allowed to write the
+mapping files of a nested user namespace.
 .\"
 .\" ============================================================
 .\"
-- 
2.39.2

