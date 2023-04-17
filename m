Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 606F56E4F30
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 19:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229930AbjDQRZ2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 13:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjDQRZ0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 13:25:26 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 637DF46B4
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:25:24 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso47231235e9.0
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681752323; x=1684344323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iEe6bHVBWKjkbWtz2WLdZF8N+Hp1uPT923V9ZXvAiWo=;
        b=JD+mPITLnDuff98EbjUL9rGhzL/2XMKjril1vGijlOzZz68yUGi9zpoagE3l+9Hn+5
         OVkSNRxjOEM4bN+7w3+ATAM4Xrwxs0iPqdK0haUpyult07KLdQ7I761L+Yj4058GSIoo
         8VCUTb1ryKtskKiReKEqGcnkPpxE3As6W42DrmElTaDE9R2nDawNLCwTVg9aklB1hPW+
         cgX7sG3Aag6nchQ/pdwKK4lhhRTgShNpr2y86iFMtQWWBJI56PG2rapdZJrWLuM2SRZn
         qeZGWfCdGCoynDdJM/7boXObVyfpOrEt9A6HvVfFnysFpvDFePZqCzb95zhGYq3o9bgG
         O+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681752323; x=1684344323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iEe6bHVBWKjkbWtz2WLdZF8N+Hp1uPT923V9ZXvAiWo=;
        b=IdeNZZELmQRuV6tC8gM4gOdXXBhZyK4jk5JUHpsB89MIcg6IG3vcnR1nHK43VLIlks
         ZFjmwBe9zNTNF7AITji8nsAxxXsRavvzSNoqXZkScTWA5ZInAZslqrFNkRtxXZgtsiDP
         Zf191urbfA7ZyNbIljo3ySQSsbYfPwNg5w+lkt9DsP/CT68OEfNDRllVruZBI9lCTxWj
         B8XYYazLfqIE6+B+k3z5c6kzYDLRfPMA/JGgIVftztKD/Ah1asFpPEor+TNvMg6Rued8
         AbQ3b+RkNkHOR02HTi1Lm03A0SrR7A5r/wGJXo5wpAr88bEhE/kOs4utKHdDAB6ORRdl
         wsDQ==
X-Gm-Message-State: AAQBX9du6bUdJjt5kDQjSXBDFhxQkBX7y1zvhcauD9y9Am3AWq/7R7dH
        FPqDmDhGDEQdzQTTazXF9XQ=
X-Google-Smtp-Source: AKy350bE4fnJjTWVbCJ9Fx5vKNLld0yrv+ftjAeHDkEBnTD2gbUvfNnc03+Gejd0mGKLv35khEx71A==
X-Received: by 2002:a5d:440d:0:b0:2f9:1a0e:953d with SMTP id z13-20020a5d440d000000b002f91a0e953dmr5270694wrq.15.1681752322873;
        Mon, 17 Apr 2023 10:25:22 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id v3-20020adfe4c3000000b002f459afc809sm10978135wrm.72.2023.04.17.10.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 10:25:22 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v7 1/1] landlock.7: Explain the best-effort fallback mechanism in the example
Date:   Mon, 17 Apr 2023 19:25:13 +0200
Message-Id: <20230417172513.5731-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230417172513.5731-1-gnoack3000@gmail.com>
References: <20230417172513.5731-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 73 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 69 insertions(+), 4 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 24488465e..16feef42c 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -394,11 +394,14 @@ accessible through these system call families:
 Future Landlock evolutions will enable to restrict them.
 .SH EXAMPLES
 We first need to create the ruleset that will contain our rules.
+.PP
 For this example,
 the ruleset will contain rules that only allow read actions,
 but write actions will be denied.
 The ruleset then needs to handle both of these kinds of actions.
-See below for the description of filesystem actions.
+See the
+.B DESCRIPTION
+section for the description of filesystem actions.
 .PP
 .in +4n
 .EX
@@ -421,7 +424,65 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SYM |
         LANDLOCK_ACCESS_FS_REFER |
         LANDLOCK_ACCESS_FS_TRUNCATE;
+.EE
+.in
+.PP
+To be compatible with older Linux versions,
+we detect the available Landlock ABI version,
+and only use the available subset of access rights:
+.PP
+.in +4n
+.EX
+/*
+ * Table of available file system access rights by ABI version,
+ * numbers hardcoded to keep the example short.
+ */
+__u64 landlock_fs_access_rights[] = {
+    (1ULL << 13) \- 1,  /* ABI v1                 */
+    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
+    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
+};
+
+int abi = landlock_create_ruleset(NULL, 0,
+                                  LANDLOCK_CREATE_RULESET_VERSION);
+if (abi <= 0) {
+    /*
+     * Kernel too old, not compiled with Landlock,
+     * or Landlock was not enabled at boot time.
+     */
+    perror("Giving up \- No Landlock support");
+    exit(EXIT_FAILURE);
+}
+abi = MIN(abi, 3);
 
+/* Only use the available rights in the ruleset. */
+attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
+.EE
+.in
+.PP
+The available access rights for each ABI version are listed in the
+.B VERSIONS
+section.
+.PP
+If our program needed to create hard links
+or rename files between different directories
+.RB ( LANDLOCK_ACCESS_FS_REFER ),
+we would require the following change to the backwards compatibility logic:
+Directory reparenting is not possible
+in a process restricted with Landlock ABI version 1.
+Therefore,
+if the program needed to do file reparenting,
+and if only Landlock ABI version 1 was available,
+we could not restrict the process.
+.PP
+Now that the ruleset attributes are determined,
+we create the Landlock ruleset
+and acquire a file descriptor as a handle to it,
+using
+.BR landlock_create_ruleset (2):
+.PP
+.in +4n
+.EX
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
 if (ruleset_fd == \-1) {
     perror("Failed to create a ruleset");
@@ -430,9 +491,13 @@ if (ruleset_fd == \-1) {
 .EE
 .in
 .PP
-We can now add a new rule to this ruleset thanks to the returned file
-descriptor referring to this ruleset.
-The rule will only allow reading the file hierarchy
+We can now add a new rule to the ruleset through the ruleset's file descriptor.
+The requested access rights must be a subset of the access rights
+which were specified in
+.I attr.handled_access_fs
+at ruleset creation time.
+.PP
+In this example, the rule will only allow reading the file hierarchy
 .IR /usr .
 Without another rule, write actions would then be denied by the ruleset.
 To add
-- 
2.40.0

