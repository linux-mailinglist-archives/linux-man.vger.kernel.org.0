Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A8C6A60BF
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 21:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbjB1Uwt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 15:52:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbjB1Uwq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 15:52:46 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF93135269
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:52:44 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id bt28so11150449wrb.8
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677617563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3HoXcMn/QtfWwiBmiv6mGJa3Xh9BqhowSz8LeY+MPjc=;
        b=YLfnDiYsKbejWD9XyDEOukMwAne7cgJXctRAWI18k6nQRa0pOOy0MMp+V5DUkUAcNR
         I+/rFQvLxhJr0l04yr3RYTBk+nPbn2xEoKfo7KSyparXwV1/6/U95xHBUbk4WcpugCVS
         7q4QCs7PC+6wb/YydpugjVKzBqZG6/H739KKxhA5/GZhEDG0Nocfne0dDPsneqd1eA+2
         WCI8vx71GsScOWhcFTHm60wjLG6BoQYwQs/uhjWIvnwPLQ2gKotimp5OIYsr5lnbSslj
         2TOBtOF2wha4NuFD4oANMP5n6Gj4YF0sqOmobhCDuyDpqiyoHTCrYFGNxr+EsLasEFlu
         SbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677617563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3HoXcMn/QtfWwiBmiv6mGJa3Xh9BqhowSz8LeY+MPjc=;
        b=Ij1sDir1IAnkobcgduH5xFPq/MKa88f8OA4nFEZ6uj44IaMrjgd0F0mHCifmQ206sp
         J+rUwJztAZenb+Re8TEx6Nhi98FVFmBqEcWFiKB4PBXHV8/TdA2keXgJPkHDStSmuY3Y
         G62UFYMGgH33eBaVpavxRxnNwfb1MVNcsON954ndFOrqHgPDIuEROPeziVG5a73qY7MW
         YLiO2tK5W4ekcbqgDa0YX5moIPLV5bszOcEx3+52FeDTwTrSHQQWlBLzuzjFcL17sTTS
         EOrj3jx8ec852ULXiewWtKl9QwOwMC1NAekZss+0+4rGo0utmTFeD+fiZdTixymP0Kuo
         Cy0g==
X-Gm-Message-State: AO0yUKVNuymWXm2Xn1ZSnd+t7p5ijnEJGnRCoet1jJkHKrF5utEuL1eT
        VXgyzBq37POLqOWvtaiQvR59u+u+IVE=
X-Google-Smtp-Source: AK7set8CVIwz571wHeRsxhjpZMTgA1nsoymn5IQPLt8AEYb2roai8A3busrup28fecriPvsVWeadRw==
X-Received: by 2002:a5d:6943:0:b0:2c8:ae54:df28 with SMTP id r3-20020a5d6943000000b002c8ae54df28mr3135338wrw.46.1677617563268;
        Tue, 28 Feb 2023 12:52:43 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id d2-20020adfef82000000b002c5801aa9b0sm10915119wro.40.2023.02.28.12.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 12:52:42 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 2/2] landlock.7: Document Landlock ABI v3 (file truncation; kernel 6.2)
Date:   Tue, 28 Feb 2023 21:52:24 +0100
Message-Id: <20230228205224.5991-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230228205224.5991-1-gnoack3000@gmail.com>
References: <20230228205224.5991-1-gnoack3000@gmail.com>
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

https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651
---
 man7/landlock.7 | 82 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 80 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index f70a01484..9ddb17ae8 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -64,9 +64,38 @@ Execute a file.
 .TP
 .B LANDLOCK_ACCESS_FS_WRITE_FILE
 Open a file with write access.
+Note that you might additionally need the
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
@@ -231,6 +260,53 @@ To be allowed to use
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
+.BR "O_RDONLY | O_TRUNC" .
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
@@ -257,6 +333,8 @@ _	_	_
 \^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
 _	_	_
 2	5.19	LANDLOCK_ACCESS_FS_REFER
+_	_	_
+3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
 .TE
 .sp 1
 .PP
@@ -302,7 +380,6 @@ in kernel logs.
 It is currently not possible to restrict some file-related actions
 accessible through these system call families:
 .BR chdir (2),
-.BR truncate (2),
 .BR stat (2),
 .BR flock (2),
 .BR chmod (2),
@@ -340,7 +417,8 @@ attr.handled_access_fs =
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

