Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5969D6B53E1
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 23:10:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjCJWJ5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 17:09:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbjCJWJc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 17:09:32 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B56F1386B5
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:08:57 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id cy23so26188189edb.12
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:08:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678486135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RDnVtAvnBvGw+QCm0TtjkhjvB9Nkk+oLa1qQMwUy3f8=;
        b=gX7oVT/xFgTWHlym5KnC1HrSSsM4N3BoSZvIJT7orNUvt2w6l2VlhXFUm6MZoiRx4b
         SAhD1ifzqyX9Qr7gPXXC38psV5aSzuJRHKTpbUUjl0zNn/TU7BkpyeJ/9+N7tFwNXPM+
         3DBDdpyUb+CQWo1sL14J3yaWVTLjy5MqmX2OyMO8gRjof9CMFlAPYrfZn6gfC+MvriuG
         FAdeX0+p6E0SWoaGNExQJC60IgwVsWhdSZrdfaiQEqCV8cJmEKYjoM6Il+BYTksLXY+n
         0iUwvS/k/y5kE4lEcDAHZpsgycN/20S129BHszlgRCuIomRsGcPoYtT9KfgQFgxeenxz
         DhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678486135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RDnVtAvnBvGw+QCm0TtjkhjvB9Nkk+oLa1qQMwUy3f8=;
        b=M4b+6Q8T1x06uCqC9zLb3VjpMEy+YCH2hCjdVfVjVrhWpsLSkb45mJhluj/y3uMqk8
         63WGKohYnAtvPcyjhx85TORLFCi7S/5SgcKInzVt+JFYeyNFtY9ZqKCScbQD/hnZhP+Z
         BJad4ouZ/S+k1/yy197OV2gTe53XLUqD+mbNOC5pPOMW0jbpQqBqOgZoqsbjuEgOTCGI
         hmgr8u69LOfhd34pdnjTnxxAOvuY19i345tOV/c7WwGaR0QzhLzeKZ1zaU0NREf9wiu7
         0vh9OBuBwffH0HXRlZDvcs2ppJwDnNSSgsGEw0I8OQZlFmrzb1ZQBxGkP4/UH7X7AWEf
         l0Pw==
X-Gm-Message-State: AO0yUKWQx8kbO7h7fVDlc2R+bmrWeblvSe4VT16WoaLibCOjZmOpNeXQ
        i++pPbUyoFip7IDYz0/s6lE=
X-Google-Smtp-Source: AK7set/lTIrvgLjAMzEMbgLU2faHybv7UrsMdcclLlJkVBaz0ihTq1vAMzuzzfHcIFG5F18a6w70fw==
X-Received: by 2002:a17:907:d090:b0:8df:e176:483b with SMTP id vc16-20020a170907d09000b008dfe176483bmr25500343ejc.3.1678486134921;
        Fri, 10 Mar 2023 14:08:54 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id l22-20020a50d6d6000000b004fa19f5ba99sm241727edj.79.2023.03.10.14.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:08:54 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 1/3] landlock.7: Document Landlock ABI v2 (file reparenting; Linux 5.19)
Date:   Fri, 10 Mar 2023 23:08:49 +0100
Message-Id: <20230310220851.22261-1-gnoack3000@gmail.com>
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
* https://git.kernel.org/torvalds/c/cb44e4f061e16be65b8a16505e121490c66d30d0
* https://lore.kernel.org/all/20230221165205.4231-1-gnoack3000@gmail.com/ (documentation update)

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
Reviewed-by: Mickaël Salaün <mic@digikod.net>
---
 man7/landlock.7 | 102 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index bbe00d4c2..d3a7ec0d2 100644
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
 if (ruleset_fd == \-1) {

base-commit: 0440d04f831796e92d968422b8c49941e046cb8a
-- 
2.39.2

