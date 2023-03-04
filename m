Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FEC6AAB88
	for <lists+linux-man@lfdr.de>; Sat,  4 Mar 2023 18:16:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbjCDRQZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Mar 2023 12:16:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjCDRQY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Mar 2023 12:16:24 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A02E1165A
        for <linux-man@vger.kernel.org>; Sat,  4 Mar 2023 09:16:14 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id ay14so18638532edb.11
        for <linux-man@vger.kernel.org>; Sat, 04 Mar 2023 09:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677950173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=01ebFtcRdMugl+BH8DrpOaDLWiSezbvu5uW6ZbCAh4Y=;
        b=UbMe0lm1DeqtUhS4cfz/QmvY9xkVZjC3IjiCYSi4ePEDzNjmmjmhUeuqFjf53Bp8Mg
         8Xx7oz6g05k4gkmdaWPqQ0KJddvDFaqnmEwr49kZVTEI9O2kv07iqqMzg3pfRjpCiEWg
         TST7lSbnZsK2rpAa+ZiWIXM5s8LWjewFn0xVAHIhiK3EycH96rKzRChWkFSyGjHJOdfA
         tcdZBGifraVryrMAqrivs0ZzNauAewczt0WbFWnK6RXeRy/YYp5anGkOCC7zOCv3nrql
         jYgmE3jVECC6L/+s2a3hUKnMd4sITaidO+2R4rq90Sy7Hy4uGeNAiCuk3QVTE0Ud2Cpz
         XYMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677950173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01ebFtcRdMugl+BH8DrpOaDLWiSezbvu5uW6ZbCAh4Y=;
        b=JLfyYPhr9rl5YDojS2haC4pOLKIIhtiLIwf3maG1COBtUh013Ly6e6Gn50zWAgClrG
         gfCWxHxibqFucs1pp33Ku3RK+4IY8mX2/0zS7zxOZZ1wOWLkXUPcHv7GPknhRsaT0FBV
         0DbKjhI2GI6Esk8ZDdpvROyDVZIymMRcWq+b7Dcc4nVHWViL8KuzrYV2R7Ob1WfOawEO
         wyHThFgqriDT4EM6dSsE2LVNJaen7y52EVb4JCoyyNDxqkfU6c0VRyEZ2s+P0j8Cptq9
         2YSg5Bsvh22uhiFfU7ohPp8SwLf7UhVnigDJqXMNjy9M14MTTa261fZfsjhiWIT1L/QV
         DZlg==
X-Gm-Message-State: AO0yUKXcTUB6ICmSgHKXGEKR3AaYpYrpuRYcCgIcw0b57qJYHAdUGzoF
        R9ozWLlXwRFIScwSDGj2JA8=
X-Google-Smtp-Source: AK7set/32nypH4+JiGcW2ApBIhu5xD8Os2LQ2wQX1Y5a7NPaYFxQHFZC13gu0VzF0MhxZnow1JBnmA==
X-Received: by 2002:a05:6402:202e:b0:4be:3b3e:c226 with SMTP id ay14-20020a056402202e00b004be3b3ec226mr4774597edb.7.1677950172691;
        Sat, 04 Mar 2023 09:16:12 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id n8-20020a17090695c800b008c76facbbf7sm2277746ejy.171.2023.03.04.09.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Mar 2023 09:16:12 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file reparenting; Linux 5.19)
Date:   Sat,  4 Mar 2023 18:16:06 +0100
Message-Id: <20230304171607.8301-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index b2bc9e10b..1ab0a6cbc 100644
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
+.IP \[bu]
+When linking or renaming, the
+.BI LANDLOCK_ACCESS_FS_MAKE_ *
+right for the respective file type must be granted
+for the destination directory.
+Otherwise, the operation results in an
+.BR EACCES
+error.
+.IP \[bu]
+When renaming, the
+.BI LANDLOCK_ACCESS_FS_REMOVE_ *
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

base-commit: 184ecd225079567aa3dede2b63c7ddf962cfdbdf
-- 
2.39.2

