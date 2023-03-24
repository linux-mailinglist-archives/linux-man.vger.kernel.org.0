Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9C06C834B
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 18:24:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231639AbjCXRYi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 13:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbjCXRYh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 13:24:37 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76369EE6
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 10:24:33 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i13so3148310lfe.9
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 10:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679678672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jkloectzin8QALiCmAHP+V+yqUk3s6umto4gBYlqkpw=;
        b=Wp9vMuWTv39nTWT3dt26fkHHITsdVX5JROVsUzy3PCBglcTalqCDMYHixWhV2k0ZQt
         CmRweJebp2LaC2+IC3ot652KE7Pon0moQWWTfqdiI37HjQ+HnGAd4rFcxtznb8Lyu8Vh
         WS9GU9YPI8XmxxWsCIKyrK9eY5aweVuR8AjRp75dx/WPYfXTGkj02vGvEUUovC3/u9IS
         EFQVXwgw431IWTTzdJSfAGCMgNlPMTqcqJ4vvULBAUrB3KXDCAKoIGWNZnj4dUyELLeu
         LcVf9NzGE0IUgMf6G5UUzQlG9mW5/CrQOetrfuupLcVp9O5C9cMYAh4l77XGB/EIZ5Nn
         fE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679678672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jkloectzin8QALiCmAHP+V+yqUk3s6umto4gBYlqkpw=;
        b=TiY+PQIZv7bYq9JOoypyUVP25UbhkxmXhHUes8QcdUEN15klG+valVQKTAUgBRPryF
         M2nqPGe5oldIiABdd+MTbQJ8EX43+lae0OBjnXzKYjSLgjsN3mTiAOw8Nts0gOJA/w3z
         IBhlhdnalcG4MRvaPhDDbJi7I/Pirz9VUTewcPRDxmPjJ9noXPFpsBaWeLruEdPN0QmU
         2hiM0cIyimyNEzFrqm94CtNI6/CInc5ZJOxAkA+ybWL5UCPKfgbzjbZbk3uYoGwXg1v5
         UzJAWpquCZ8stQCuYrOKz1Jc3oHnkCJb+adl7j/b8AjK7rT9+fau9KFZwf0pNURAzEcJ
         JF0Q==
X-Gm-Message-State: AAQBX9dQ00WyWkwz3V0AuPJRKE0UZQEu0OLqTJiqoOOGQ5LCPLjHStq9
        gLWaoWFX2trTMDvCLPr6pzA=
X-Google-Smtp-Source: AKy350ZqN3RUcElZF654CIscVHA9/RIiG2GBke3QaPFH4lhbHfHcLoc9H4T4Xe0QNmSSkrdtniHoVg==
X-Received: by 2002:ac2:5dcf:0:b0:4e9:afb3:d56a with SMTP id x15-20020ac25dcf000000b004e9afb3d56amr944716lfq.7.1679678672103;
        Fri, 24 Mar 2023 10:24:32 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id x25-20020ac25dd9000000b004d576298c89sm3430720lfq.141.2023.03.24.10.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 10:24:31 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback mechanism in the example
Date:   Fri, 24 Mar 2023 18:24:19 +0100
Message-Id: <20230324172419.117632-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230324172419.117632-1-gnoack3000@gmail.com>
References: <20230324172419.117632-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 65 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 4 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 9c305edef..d1214ba27 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -393,11 +393,14 @@ accessible through these system call families:
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
@@ -420,7 +423,57 @@ attr.handled_access_fs =
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
+/* Table of available file system access rights by ABI version */
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
+If our program needed to create hard links or rename files between different directories
+.RB ( LANDLOCK_ACCESS_FS_REFER ),
+we would require the following change to the backwards compatibility logic:
+Directory reparenting is not possible in a process restricted with Landlock ABI version 1.
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
@@ -429,9 +482,13 @@ if (ruleset_fd == \-1) {
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
2.39.2

