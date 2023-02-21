Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A31769E91F
	for <lists+linux-man@lfdr.de>; Tue, 21 Feb 2023 21:50:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjBUUun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Feb 2023 15:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjBUUun (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Feb 2023 15:50:43 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA11E2916A
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:41 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id 6so5386600wrb.11
        for <linux-man@vger.kernel.org>; Tue, 21 Feb 2023 12:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XaOUhvC7Rf3mJel1lz4+jdyUN0nHPRTamkIJsQuvF0=;
        b=CtFKioIkUrUe5ijxr4r1/pclzzJtS9qsr3lhAAKVVIgXPlcSrPvXgdzlL39MgToS6d
         HW3okiusRwLRFXV8mvhOhu14/bWjOOFllOTM83umiJrvkFknOMQ1Ssr7Mv+sY8lQ2vWE
         WtkitBQ7sGFtjNZP6S9l7apluevANm6uQHHBiujGcULg0HMoMDeM3GWcvQNTTjIiKLZk
         dxMLw792uwfu4UF6rY2Rym91/OIOuJUfnXvGSMAjU9M8z4S1CGUw0tcQkxCAxYIbLHUi
         HywVHDe835ntC3hfABJlbd3oA4YpxTTNwm7mCnhgybUodW5jgtcqu2LnZgAaeJ8a6D5j
         ICIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0XaOUhvC7Rf3mJel1lz4+jdyUN0nHPRTamkIJsQuvF0=;
        b=aTwOjaJXEI7PnMXOf+HDpxiipXi94adJwoNlziMrL+Put/t5n6ugV4PM0y2ta7n2lf
         yUPahD//4se6ZZFjMMbULSRZ94xyvqyvnrngXz+XdihEFRHLiw9zlcscCTxqxxuOfX/4
         NiVEW0dRUX9uDryQWNd49vCbt3oMfFsYqt8iVtDciPUyMC/+LyrBJKa94u1eeOPC73tz
         KyZh6L4l8ojwOVyzhBV8HjXKUqu+qfGBjIe5FhH8DU/mkQ7zBofgdCj6fWPKrk5YqH2a
         jHUFsBfAJlMmktr2Dm0xrwgQeaZMd6/Sv4ar2b4xbyy8nPUiPKTdzXTCCQtjk2WlgFZa
         Rwfg==
X-Gm-Message-State: AO0yUKUQMsKFzLYzm1fzBPdVqXpxtLrZDpwYPrhqtvuwRGpObSn8KmVK
        1837ofcQpYuuYcFetBDFmIA=
X-Google-Smtp-Source: AK7set8dX3nK7j3nU4oufYn0oSm7k1ROTdmXADm8WcVS1CUqyU0HlZb9X50gRUy5RJzsjd8PWIlzZg==
X-Received: by 2002:a5d:4c8e:0:b0:2c5:5574:5d5f with SMTP id z14-20020a5d4c8e000000b002c555745d5fmr6889587wrs.57.1677012640090;
        Tue, 21 Feb 2023 12:50:40 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id j16-20020a056000125000b002c5706f7c6dsm2374385wrx.94.2023.02.21.12.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 12:50:39 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file reparenting; kernel 5.19)
Date:   Tue, 21 Feb 2023 21:50:22 +0100
Message-Id: <20230221205023.2739-2-gnoack3000@gmail.com>
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
 man7/landlock.7 | 90 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 88 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 099f68067..6321b56ab 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -105,6 +105,53 @@ Create (or rename or link) a block device.
 .TP
 .B LANDLOCK_ACCESS_FS_MAKE_SYM
 Create (or rename or link) a symbolic link.
+.TP
+.B LANDLOCK_ACCESS_FS_REFER
+Link or rename a file from or to a different directory (i.e. reparent
+a file hierarchy).
+.IP
+This access right is available since the second version of the
+Landlock ABI.
+.IP
+This is the only access right which is denied by default by any
+ruleset, even if the right is not specified as handled at ruleset
+creation time.  The only way to make a ruleset grant this right is to
+explicitly allow it for a specific directory by adding a matching rule
+to the ruleset.
+.IP
+In particular, when using the first Landlock ABI version, Landlock will
+always deny attempts to reparent files between different directories.
+.IP
+In addition to the source and destination directories having the
+.B LANDLOCK_ACCESS_FS_REFER
+access right, the attempted link or rename operation must meet the
+following constraints:
+.RS
+.IP \(bu 3
+The reparented file may not gain more access rights in the destination
+directory than it previously had in the source directory.  If this is
+attempted, the operation results in an
+.B EXDEV
+error.
+.IP \(bu 3
+When linking or renaming, the
+.B LANDLOCK_ACCESS_FS_MAKE_*
+right for the respective file type must be granted for the destination
+directory. Otherwise, the operation results in an
+.BR EACCES
+error.
+.IP \(bu 3
+When renaming, the
+.B LANDLOCK_ACCESS_FS_REMOVE_*
+right for the respective file type must be granted for the source directory. Otherwise, the operation results in an
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
@@ -182,7 +229,45 @@ and related syscalls on a target process,
 a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 .SH VERSIONS
-Landlock was added in Linux 5.13.
+Landlock was introduced in Linux 5.13.
+.PP
+The availability of individual Landlock features is versioned through
+ABI levels:
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
+.PP
+To query the running kernel's Landlock ABI level, programs may pass
+the
+.B LANDLOCK_CREATE_RULESET_VERSION
+flag to
+.BR landlock_create_ruleset (2).
+.PP
+When building fallback mechanisms for compatibility with older kernels,
+users are advised to consider the special semantics of the
+.B LANDLOCK_ACCESS_FS_REFER
+access right: In ABI v1, linking and moving of files between different
+directories is always forbidden, so programs relying on such
+operations are only compatible with Landlock ABI v2 and higher.
 .SH NOTES
 Landlock is enabled by
 .BR CONFIG_SECURITY_LANDLOCK .
@@ -242,7 +327,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SOCK |
         LANDLOCK_ACCESS_FS_MAKE_FIFO |
         LANDLOCK_ACCESS_FS_MAKE_BLOCK |
-        LANDLOCK_ACCESS_FS_MAKE_SYM;
+        LANDLOCK_ACCESS_FS_MAKE_SYM |
+        LANDLOCK_ACCESS_FS_REFER;
 
 ruleset_fd = landlock_create_ruleset(&attr, sizeof(attr), 0);
 if (ruleset_fd == -1) {
-- 
2.39.2

