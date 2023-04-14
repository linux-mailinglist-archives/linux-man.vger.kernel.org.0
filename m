Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1AD6E27D2
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 17:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbjDNP7w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Apr 2023 11:59:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230429AbjDNP7v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Apr 2023 11:59:51 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998CBB77F
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 08:59:39 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s2so14741947wra.7
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 08:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681487978; x=1684079978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYxpHKITBnW0lJ5kHAEDgW0fN+5gwdEMHuaGvqFCFCo=;
        b=kzV+D67RFRzyRHKWrJfpHxlo8zecuDdwpMN3f3fisVybf3pfaGJQFtjHii1soF686B
         SyamV8dXW9f2XvqBQ2rKGNdPq/rj7sm+zlVwiMVbSruy32ayLEihBuAm3T6RuC+lzC7U
         6vRKZGAGP2Prw3nzUzV/4s9potXXbYixyBXjp5W9srrTk9NXXiYaiB/NLwnnEZN2UZie
         HV7Kby/5Roo6Kx5W5hRzrcwqUoGGXsMPATvSdRHw0pRlsTb/SqLFpMHjw8J0hQH9lq1H
         kmaay4OFq00QHRsHTd8UMOWmHsD2Klgh2HB3S/Cv5RNCuajEvYWLDZRovmVOZU3c9WEc
         awKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681487978; x=1684079978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYxpHKITBnW0lJ5kHAEDgW0fN+5gwdEMHuaGvqFCFCo=;
        b=kV+Zo8N5HoKKlVZvw8ZxBcuNo5KNOMi1Twm/xrw6Pzj00P3WHUjT2YPFq+SucDn+jc
         oVH8dEKcacXi2ALx7V8ImbJDKulpwNsop/T2U1gxhboWlIpahbVbfRgTONKkBQ7EuxVD
         wMvcC2EOxWyPO22ETGZ1GuX76SYkgMJhVeJ6cjlZ5XmVyXLpsosnwceKrD7ooMAGh/kr
         4Z9E/3VVT4SVp38DJNRsYRdsSA3rcmhM/iBFYwVMYIxIqHACxf85AY7Jd8nCT0UNk8QC
         GQ+kZ7wRM9zuQ2bXKKel3yWABsQ4WT9/W9p6xTIIIfJR579jfBDkedrGSKCLF4Zx/Tpz
         yE3g==
X-Gm-Message-State: AAQBX9ea7TyGDwdYvvv2gZhLccFyLYSk2BxTQxwzfppdw97A0MCKgch+
        9N4Ocu0jAfsIWR45TcLJ/Pg=
X-Google-Smtp-Source: AKy350YAT2GYo/jcnc8PCAtLAEt8ulUIyu2dpZcMw3JJDhyby1/aazrmTxgbIXBik6iVBtGe6am6DQ==
X-Received: by 2002:a5d:4b12:0:b0:2ee:e47e:9014 with SMTP id v18-20020a5d4b12000000b002eee47e9014mr4927095wrq.1.1681487977875;
        Fri, 14 Apr 2023 08:59:37 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id b7-20020adfde07000000b002f3fcb1869csm3836552wrm.64.2023.04.14.08.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Apr 2023 08:59:37 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback mechanism in the example
Date:   Fri, 14 Apr 2023 17:59:26 +0200
Message-Id: <20230414155926.6937-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230414155926.6937-1-gnoack3000@gmail.com>
References: <20230414155926.6937-1-gnoack3000@gmail.com>
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
 man7/landlock.7 | 70 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 66 insertions(+), 4 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 24488465e..64bfa0752 100644
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
@@ -421,7 +424,62 @@ attr.handled_access_fs =
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
+    perror("Giving up \- No Landlock support");
+    exit(EXIT_FAILURE);
+}
+if (abi > 3)
+    abi = 3;
 
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
@@ -430,9 +488,13 @@ if (ruleset_fd == \-1) {
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

