Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A9A6C8348
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 18:24:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231602AbjCXRYd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 13:24:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbjCXRYc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 13:24:32 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 315F0A5DE
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 10:24:31 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id x17so3167708lfu.5
        for <linux-man@vger.kernel.org>; Fri, 24 Mar 2023 10:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679678669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0lKeDd3VBI2M1Nqk5ezX1R/6WnZjczS9i9hxGFBKuB0=;
        b=RdJKQH42x39wj5GJwryjU76Clq20eMf5lLqjKEhvdhb+YbjMDP8T4nSgSzNvfHqEzs
         AWWZyCrARzrhhpFYFaaSeJhMRy7CeDrtznxZYDeT0PnPWep/TF1fdHuYxZsJf4g/gFbr
         JuJpM7YbJw5HEzo3WAOByTxdH5wvM00kIxfne2xfu3IKIxYFYedOetwgymuelC0Mm3nn
         YaJzXuMRA0531tR5+wgRm5mM7ccm292LfP3chwafOWDikLSZlM33KjEBdJWqdFZKDMWU
         h5MHYYrwxVTAc04eEpE9O2Oh6b5wiaOXFGr8LegTorSbCWIBKirC/arbmTO39oyDId9K
         L/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679678669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0lKeDd3VBI2M1Nqk5ezX1R/6WnZjczS9i9hxGFBKuB0=;
        b=qSKpND9zU0xi6FbFJMpRN71kezJUD7w5Cvrn1HgVysHTsS/DimgrR9BOBrtJdek5va
         3R5vuph5r21CAwf4Q5TseQhlR59esiEwD53Qm1OTXdORNlcMCgcN1nWIUQzbrVN6KpBS
         Kl+yRmdxC0GaGx33F+plUi8UwHPihxSUTT6uc7BQQYVkOub8wuTyT6m9tO+UqYm6/UsA
         WB0K2R4Kcd7bVsQeIKyrunk8TcGb7+mE509O85JK555KgiSpARdJUZKNZhulVLM91xBe
         90g+c3sDdFPUtLfKBYSnNnMN6q1MuNCN/MOBn4OAqjuU3ifKjrIOvdyJq2ADliEcTJr5
         Xn7A==
X-Gm-Message-State: AAQBX9fefBwLOSg4xwfoRfbC9vIJKKLSVGH4Syax0mHRE8lncuOmImhF
        P7NP1s+alkizDrmKi0IC9vIMEg90vKA=
X-Google-Smtp-Source: AKy350aDjKQXNAiyo3AsRGdMDRHROIO6WXZ/haxA3G/5rEPU2ZLr7fZtO+eakcokVLI7lSy+YW8wZw==
X-Received: by 2002:ac2:51c7:0:b0:4e0:c8ef:42b5 with SMTP id u7-20020ac251c7000000b004e0c8ef42b5mr925231lfm.6.1679678669181;
        Fri, 24 Mar 2023 10:24:29 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id c21-20020ac25315000000b004e845a08567sm3429489lfh.291.2023.03.24.10.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 10:24:28 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v5 2/3] landlock.7: Document Landlock ABI v3 (file truncation; Linux 6.2)
Date:   Fri, 24 Mar 2023 18:24:18 +0100
Message-Id: <20230324172419.117632-2-gnoack3000@gmail.com>
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

https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
Reviewed-by: Mickaël Salaün <mic@digikod.net>
---
 man7/landlock.7 | 83 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 2 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index d3a7ec0d2..9c305edef 100644
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
 if (ruleset_fd == \-1) {
-- 
2.39.2

