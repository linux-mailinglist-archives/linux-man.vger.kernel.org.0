Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A93746A60BE
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 21:52:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjB1Uwn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 15:52:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbjB1Uwm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 15:52:42 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A416AD335
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:52:40 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id v16so8342756wrn.0
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677617559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JeG8NgZUQ26YA+VtExaK2r0lHzhxS8aMrxe4YEFdkMk=;
        b=iCUZc6cpYMFU/mMZS49Y3633rvgvqS3qdWLGcYUQ47zMfRMODK9TW5tcvz5u3I0WZz
         1c7jFzECk1mxvQ57YKF7ZoZy/fhfqdnUbi4UVVie+CRFXG/CY7nUK0+Q8CAOE6rTmtPT
         +lqM4ciKlWK0uT+4V3Fa3YekuDMaaIFJcvRZAW8KONzUn0fNg2NdKi2pcWpcYj+abA85
         HbNz64nyXLbIU8QTs+icAf6ulC2SMSi2yMa+unMc1LsW4Gb3qZn1F2pokMhqDxvppSnD
         lp2i3ZHRY7Bh1JY0HSr6ZwUPCetUKGYh3NLpp9+9r39xLmNiJ6DnF38KsQmHEMiXpz+Y
         s1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677617559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JeG8NgZUQ26YA+VtExaK2r0lHzhxS8aMrxe4YEFdkMk=;
        b=yKzEtTeopWgHPg6CZulzoYNk85TljNCzoikAA69a5O23Po5uvduRJ2fe/m9vgSc3jT
         f5LzDJ8IbMkI/5037Gyb1guhAWf2NfMKuusqWlbfO6WOSKVjDpwsxDPaZvrf3ohRWqDI
         JYUDmNYMiIlm4NhzhUUByj8HWJh13+OI44iukfi3NnfxI6wz9nH7mb/TQjliMDfYT42N
         3e/ilVjwXoKLKDITqCo5PY9U0HmpsfacoTDZ6nfAe1kdXuwBy4q/7q3c6i2gB43024ae
         eIrxPQzVW/zxQ8M4xPmeh5rfCV6u/TkZFdszW7TDdBnYnWvK4BMRhX4iaC7COB35LkQz
         OV7g==
X-Gm-Message-State: AO0yUKV6FBG7mgUUkMXKcSs+pKvlaW2AOFWpWsmIltXIxWlQe9kfiXv4
        LPC6FDn0FIAhrjvtNAEWTswpBO+hxoQ=
X-Google-Smtp-Source: AK7set8vc5Dg1TiV/isVsARFQW7l6WBf4kwqQX6WdQuKf9EXdJZgwq+BZ2WcsplTASexEFu3jMV7pA==
X-Received: by 2002:adf:fecd:0:b0:2c7:13e4:2094 with SMTP id q13-20020adffecd000000b002c713e42094mr3283540wrs.42.1677617558944;
        Tue, 28 Feb 2023 12:52:38 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id e15-20020a5d594f000000b002c5d3f0f737sm10636156wri.30.2023.02.28.12.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 12:52:38 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 1/2] landlock.7: Document Landlock ABI v2 (file reparenting; kernel 5.19)
Date:   Tue, 28 Feb 2023 21:52:23 +0100
Message-Id: <20230228205224.5991-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Add the description for LANDLOCK_ACCESS_FS_REFER,
  in line with recent update to the uapi headers:
  https://lore.kernel.org/linux-security-module/20230202204623.10345-1-gnoack3000@gmail.com/T/
* VERSIONS: Add a table of Landlock versions and their changes.
  Briefly talk about how to probe ABI levels and warn users about the
  special semantics of the LANDLOCK_ACCESS_FS_REFER right.
* Add LANDLOCK_ACCESS_FS_REFER to the code example.

Code review threads for the "refer" feature:
* https://lore.kernel.org/all/20220506161102.525323-1-mic@digikod.net/ (initial commit)
* https://lore.kernel.org/all/20220823144123.633721-1-mic@digikod.net/ (bugfix)
* https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.com/ (documentation update)
---
 man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index b2bc9e10b..f70a01484 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -105,6 +105,56 @@ Create (or rename or link) a block device.
 .TP
 .B LANDLOCK_ACCESS_FS_MAKE_SYM
 Create (or rename or link) a symbolic link.
+.TP
+.B LANDLOCK_ACCESS_FS_REFER
+Link or rename a file from or to a different directory
+(i.e. reparent a file hierarchy).
+.IP
+This access right is available since the second version of the Landlock ABI.
+.IP
+This is the only access right which is denied by default by any ruleset,
+even if the right is not specified as handled at ruleset creation time.
+The only way to make a ruleset grant this right
+is to explicitly allow it for a specific directory
+by adding a matching rule to the ruleset.
+.IP
+In particular, when using the first Landlock ABI version,
+Landlock will always deny attempts to reparent files
+between different directories.
+.IP
+In addition to the source and destination directories having the
+.B LANDLOCK_ACCESS_FS_REFER
+access right,
+the attempted link or rename operation must meet the following constraints:
+.RS
+.IP \[bu] 3
+The reparented file may not gain more access rights in the destination directory
+than it previously had in the source directory.
+If this is attempted, the operation results in an
+.B EXDEV
+error.
+.IP \[bu] 3
+When linking or renaming, the
+.B LANDLOCK_ACCESS_FS_MAKE_*
+right for the respective file type must be granted
+for the destination directory.
+Otherwise, the operation results in an
+.BR EACCES
+error.
+.IP \[bu] 3
+When renaming, the
+.B LANDLOCK_ACCESS_FS_REMOVE_*
+right for the respective file type must be granted
+for the source directory.
+Otherwise, the operation results in an
+.B EACCES
+error.
+.RE
+.IP
+If multiple requirements are not met, the
+.B EACCES
+error code takes precedence over
+.BR EXDEV .
 .\"
 .SS Layers of file path access rights
 Each time a thread enforces a ruleset on itself,
@@ -182,7 +232,54 @@ and related syscalls on a target process,
 a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 .SH VERSIONS
-Landlock was added in Linux 5.13.
+Landlock was introduced in Linux 5.13.
+.PP
+To determine which Landlock features are available,
+users should query the Landlock ABI version:
+.TS
+box;
+ntb| ntb| lbx
+nt| nt| lbx.
+ABI	Kernel	Newly introduced access rights
+_	_	_
+1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
+\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
+\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
+\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
+\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
+\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
+\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
+_	_	_
+2	5.19	LANDLOCK_ACCESS_FS_REFER
+.TE
+.sp 1
+.PP
+Users should use the Landlock ABI version rather than the kernel version
+to determine which features are available.
+The mainline kernel versions listed here are only included for orientation.
+Kernels from other sources may contain backported features,
+and their version numbers may not match.
+.PP
+To query the running kernel's Landlock ABI version,
+programs may pass the
+.B LANDLOCK_CREATE_RULESET_VERSION
+flag to
+.BR landlock_create_ruleset (2).
+.PP
+When building fallback mechanisms for compatibility with older kernels,
+users are advised to consider the special semantics of the
+.B LANDLOCK_ACCESS_FS_REFER
+access right:
+In ABI v1,
+linking and moving of files between different directories is always forbidden,
+so programs relying on such operations are only compatible
+with Landlock ABI v2 and higher.
 .SH NOTES
 Landlock is enabled by
 .BR CONFIG_SECURITY_LANDLOCK .
@@ -242,7 +339,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SOCK |
         LANDLOCK_ACCESS_FS_MAKE_FIFO |
         LANDLOCK_ACCESS_FS_MAKE_BLOCK |
-        LANDLOCK_ACCESS_FS_MAKE_SYM;
+        LANDLOCK_ACCESS_FS_MAKE_SYM |
+        LANDLOCK_ACCESS_FS_REFER;
 
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
 if (ruleset_fd == -1) {

base-commit: 53a7e5dfc3554a2e8dbdfdc4504e99652e1d6382
-- 
2.39.2

