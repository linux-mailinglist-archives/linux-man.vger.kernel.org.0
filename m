Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7610169E920
	for <lists+linux-man@lfdr.de>; Tue, 21 Feb 2023 21:50:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbjBUUur (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Feb 2023 15:50:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjBUUuq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Feb 2023 15:50:46 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95CBA2E825
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:45 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bo30so5232762wrb.0
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KfDtQ7EL2V8rWCVVowy9OeZ4Y17CRc7Kk4zsidNIHQs=;
        b=n+72gZqfsCMyQCaMvj2PDRueApvLyxFCpjLBEc8p1tzu6NlW3/XQ9K7P+CRkS6jFuw
         1kCVC5ncWUT/coMuSVKo2xxC/T5Irtzm1c1EvPj1mv1r6uC1Zi2PbJfdNvQJ8dVrSC+6
         lvlHkFZ8q+xLKQPqyC1/kLu4qwEeV0iH/V5TyKdAFcFYm4Mh8L+VmMhaDjMOt+wYbkWT
         FHwG9GZmz/iviLtdUwJfu+I8t9HLUMt5yTwr+sJcKjjWYXgmEWl29zYglzeb96TvWdSV
         Mn60eiZuadVcDmJB+o+bDF5/S9p0lBBUjfGlNJDXpIWtphJhuUaqKrh8jQQa0UbSpUTE
         zlxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KfDtQ7EL2V8rWCVVowy9OeZ4Y17CRc7Kk4zsidNIHQs=;
        b=GflUIobscoIkomlAQZM1fP4kmYXL0tLhVvs3Ht9NdyQb/qqLjg5S1gANg4xWvXq2cq
         ePWT7aUFGN7XmsXQgP5n+jkBm3xCjz7sq6WVr+tNZSIixfhOe4v3oxJR2C/f1PlzVwKs
         aTIIXuh6UB1uEXnXGBbSUHnxiS5QJXEeq2j7FReNXMe/biuligs5JGRB4u7xTIobkbjo
         jROQll1MzNAIT83cK7EQAsdE3NYzgjnpag73Em3cLFpQ4eitWXpsiTlxTmiHxqLx1ZWH
         YYAwVCEqVrvt17QxMl96bysLF1o9H4ySShunKtvFHeF4MKEZ06Da0KCjKT5bj4pvH6Z0
         V85g==
X-Gm-Message-State: AO0yUKXYRVHGRUoWbx0iLb1tqY2ylboJnLbKOw+7r+PQ3IsDFbDtxCY3
        dQSP8gJwJ6KOc71gmb1ksuQ+kHyBmcs=
X-Google-Smtp-Source: AK7set/uQ9iXxTRLn3x2oV1hMeLgFymQ4ugE0GJNLubBcEcgtfOftsPNltQs5J4nNXYIwZmoh8Th1A==
X-Received: by 2002:a5d:6052:0:b0:2bd:f5bd:5482 with SMTP id j18-20020a5d6052000000b002bdf5bd5482mr6229342wrt.28.1677012644194;
        Tue, 21 Feb 2023 12:50:44 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id a2-20020adfed02000000b002c70851fdd8sm872033wro.75.2023.02.21.12.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 12:50:43 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file truncation; kernel 6.2)
Date:   Tue, 21 Feb 2023 21:50:23 +0100
Message-Id: <20230221205023.2739-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221205023.2739-1-gnoack3000@gmail.com>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
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

https://lore.kernel.org/all/20221018182216.301684-1-gnoack3000@gmail.com/
---
 man7/landlock.7 | 80 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 77 insertions(+), 3 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 6321b56ab..b5b356642 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -63,10 +63,38 @@ A file can only receive these access rights:
 Execute a file.
 .TP
 .B LANDLOCK_ACCESS_FS_WRITE_FILE
-Open a file with write access.
+Open a file with write access. Note that you might additionally need the
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+right in order to overwrite files with
+.BR open (2)
+using
+.B O_TRUNC
+or
+.BR creat (2).
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
@@ -228,6 +256,50 @@ To be allowed to use
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
+non-intuitive ways. It is recommended to always specify both of these
+together.
+.PP
+A particularly surprising example is
+.BR creat (2).
+The name suggests that this system call requires the rights to create
+and write files. However, it also requires the truncate right if an
+existing file under the same name is already present.
+.PP
+It should also be noted that truncating files does not require the
+.B LANDLOCK_ACCESS_FS_WRITE_FILE
+right.  Apart from the
+.BR truncate (2)
+system call, this can also be done through
+.BR open (2)
+with the flags
+.BR "O_RDONLY | O_TRUNC" .
+.PP
+When opening a file, the availability of the
+.B LANDLOCK_ACCESS_FS_TRUNCATE
+right is associated with the newly created file descriptor and will be used for
+subsequent truncation attempts using
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
+As a consequence, it is possible to have multiple open file descriptors for the
+same file, where one grants the right to truncate the file and the other does
+not.  It is also possible to pass such file descriptors between processes,
+keeping their Landlock properties, even when these processes do not have an
+enforced Landlock ruleset.
 .SH VERSIONS
 Landlock was introduced in Linux 5.13.
 .PP
@@ -254,6 +326,8 @@ _	_	_
 \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
 _	_	_
 2	5.19	LANDLOCK_ACCESS_FS_REFER
+_	_	_
+3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
 .TE
 .PP
 To query the running kernel's Landlock ABI level, programs may pass
@@ -290,7 +364,6 @@ in kernel logs.
 It is currently not possible to restrict some file-related actions
 accessible through these system call families:
 .BR chdir (2),
-.BR truncate (2),
 .BR stat (2),
 .BR flock (2),
 .BR chmod (2),
@@ -328,7 +401,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_FIFO |
         LANDLOCK_ACCESS_FS_MAKE_BLOCK |
         LANDLOCK_ACCESS_FS_MAKE_SYM |
-        LANDLOCK_ACCESS_FS_REFER;
+        LANDLOCK_ACCESS_FS_REFER |;
+        LANDLOCK_ACCESS_FS_TRUNCATE;
 
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
 if (ruleset_fd == -1) {
-- 
2.39.2

