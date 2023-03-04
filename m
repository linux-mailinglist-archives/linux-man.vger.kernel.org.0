Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 882776AAB89
	for <lists+linux-man@lfdr.de>; Sat,  4 Mar 2023 18:16:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjCDRQZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Mar 2023 12:16:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjCDRQY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Mar 2023 12:16:24 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BADC12059
        for <linux-man@vger.kernel.org>; Sat,  4 Mar 2023 09:16:17 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id cy23so22193008edb.12
        for <linux-man@vger.kernel.org>; Sat, 04 Mar 2023 09:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677950176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLmGr2lIy8o3km3/e7xZ7rn4u/OAP/5n4RD9gODZ3mw=;
        b=G0h2HRtPF6LLX1Y45bGSGP/snPxxXm7RKYSE8k8ZX9PF54Bb6mom7D7DGZofpbHObZ
         Ke3wPHIbsInbuTJsKhTOPD/HBBzI3ZYktkNXL7E/amai4ufKfqAAbgBSSb/1zQpVbp3F
         MY3GnmbMcDPHpP44LpYQLVBWCTsf96rWIpnFtYoWLCxKfvmiesXVlrC3BpZ7e+MNTsHs
         sADEMa7rBYlUSLxbD2LTYQq6Il2NV/RBH1TLohTq9y8sYCrXuUEqYn+B5byFDHsk8dkl
         YAF2BgRU/O98/h2nxcOeusyRmD9cGn5MFrUNL3ZPfGbR9heheylNQqvTLAnIQzjdNXyn
         7uDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677950176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hLmGr2lIy8o3km3/e7xZ7rn4u/OAP/5n4RD9gODZ3mw=;
        b=X2PToUjCoCvEhhY1dWUj5maUftUE6KKeyqEqAGMbCIuZYHRi3YWJq/APk2jT0uqMY2
         QNAJDQnL4W0t6rbK7DYLUOnox01natAeZ8AyUyM0JIR6CryPsPtEH6SX5t/3oHkuwSMN
         utM3npRNMRreG8ZrxWreRBuFavnGFItC8B6ecMlGD+EI4sT5NtSfXcq1FNS6Wau2gLfE
         IQ626h7ddHRl2coA8MHx/MtEzvq7i2R67BBxVvhmDodFrjrDoWKBE30WOoQerMoolWEk
         6mDyU5bkh/JkRh5/44aeCHhwZYGJG3EelvJJKtN8wwxv6uCwtxJZeYPY+YhqNDc4HFk3
         7B9A==
X-Gm-Message-State: AO0yUKW+liLa/JCSzXOwXtqHD9DRULg+GD0JCkH7bYUacxdxVc4eExCh
        94Hsr06cC8bbhhd2cs31tMo+6kjGEyg=
X-Google-Smtp-Source: AK7set/e5keDYtKLKJHQ4J+flH/0hCZRExKA99pmSGZwUFB/2LtBx2Mlk2pCV3gTRQUVdauzyASK6A==
X-Received: by 2002:a17:907:31cd:b0:8cf:fda0:5b9b with SMTP id xf13-20020a17090731cd00b008cffda05b9bmr7371910ejb.22.1677950175953;
        Sat, 04 Mar 2023 09:16:15 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id q27-20020a17090622db00b008b1787ce722sm2231953eja.152.2023.03.04.09.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Mar 2023 09:16:15 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 2/2] landlock.7: Document Landlock ABI v3 (file truncation; Linux 6.2)
Date:   Sat,  4 Mar 2023 18:16:07 +0100
Message-Id: <20230304171607.8301-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230304171607.8301-1-gnoack3000@gmail.com>
References: <20230304171607.8301-1-gnoack3000@gmail.com>
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

https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 83 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 1ab0a6cbc..f711000f1 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -64,9 +64,39 @@ Execute a file.
 .TP
 .B LANDLOCK_ACCESS_FS_WRITE_FILE
 Open a file with write access.
+.IP
+When opening files for writing,
+you will often additionally need the
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+right.
+In many cases,
+these system calls truncate existing files when overwriting them
+(e.g.,
+.BR creat (2)).
 .TP
 .B LANDLOCK_ACCESS_FS_READ_FILE
 Open a file with read access.
+.TP
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+Truncate a file with
+.BR truncate (2),
+.BR ftruncate (2),
+.BR creat (2),
+or
+.BR open (2)
+with
+.BR O_TRUNC .
+Whether an opened file can be truncated with
+.BR ftruncate (2)
+is determined during
+.BR open (2),
+in the same way as read and write permissions are checked during
+.BR open (2)
+using
+.B LANDLOCK_ACCESS_FS_READ_FILE
+and
+.BR LANDLOCK_ACCESS_FS_WRITE_FILE .
+This access right is available since the third version of the Landlock ABI.
 .PP
 A directory can receive access rights related to files or directories.
 The following access right is applied to the directory itself,
@@ -231,6 +261,53 @@ To be allowed to use
 and related syscalls on a target process,
 a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
+.\"
+.SS Truncating files
+The operations covered by
+.B LANDLOCK_ACCESS_FS_WRITE_FILE
+and
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+both change the contents of a file and sometimes overlap in
+non-intuitive ways.
+It is recommended to always specify both of these together.
+.PP
+A particularly surprising example is
+.BR creat (2).
+The name suggests that this system call requires
+the rights to create and write files.
+However, it also requires the truncate right
+if an existing file under the same name is already present.
+.PP
+It should also be noted that truncating files does not require the
+.B LANDLOCK_ACCESS_FS_WRITE_FILE
+right.
+Apart from the
+.BR truncate (2)
+system call, this can also be done through
+.BR open (2)
+with the flags
+.IR "O_RDONLY\ |\ O_TRUNC" .
+.PP
+When opening a file, the availability of the
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+right is associated with the newly created file descriptor
+and will be used for subsequent truncation attempts using
+.BR ftruncate (2).
+The behavior is similar to opening a file for reading or writing,
+where permissions are checked during
+.BR open (2),
+but not during the subsequent
+.BR read (2)
+and
+.BR write (2)
+calls.
+.PP
+As a consequence,
+it is possible to have multiple open file descriptors for the same file,
+where one grants the right to truncate the file and the other does not.
+It is also possible to pass such file descriptors between processes,
+keeping their Landlock properties,
+even when these processes do not have an enforced Landlock ruleset.
 .SH VERSIONS
 Landlock was introduced in Linux 5.13.
 .PP
@@ -257,6 +334,8 @@ _	_	_
 \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
 _	_	_
 2	5.19	LANDLOCK_ACCESS_FS_REFER
+_	_	_
+3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
 .TE
 .sp 1
 .PP
@@ -302,7 +381,6 @@ in kernel logs.
 It is currently not possible to restrict some file-related actions
 accessible through these system call families:
 .BR chdir (2),
-.BR truncate (2),
 .BR stat (2),
 .BR flock (2),
 .BR chmod (2),
@@ -340,7 +418,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_FIFO |
         LANDLOCK_ACCESS_FS_MAKE_BLOCK |
         LANDLOCK_ACCESS_FS_MAKE_SYM |
-        LANDLOCK_ACCESS_FS_REFER;
+        LANDLOCK_ACCESS_FS_REFER |
+        LANDLOCK_ACCESS_FS_TRUNCATE;
 
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
 if (ruleset_fd == -1) {
-- 
2.39.2

