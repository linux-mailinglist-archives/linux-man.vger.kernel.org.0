Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67586B53E8
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 23:11:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbjCJWLC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 17:11:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231667AbjCJWJj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 17:09:39 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 772A28A5A
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:09:10 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id ay14so26208362edb.11
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 14:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678486138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0lKeDd3VBI2M1Nqk5ezX1R/6WnZjczS9i9hxGFBKuB0=;
        b=DoSQHIuYQRxat9aPwVP9dRcIIpmhJ9d5mKmZXzEoce9cpj1fXzZs6iljF2wPsvOybR
         et+L8WHtVkGbkA3K8ARnxDbGy6SIZuhQItmiBjwf2O7355KVEk3KIb8az6ETV4syUVzh
         rwjJFHZwltxc7cOhbVWRTynecgAW/Juwg6mK8LoIcuucQlUw37BHfrDRO/3auld44U7H
         2yrz2oIc/znvIh8XzyzbRpi0CRkrJAuz67ixiB1X+rL//6yjAX0veng2QiC9zVKuzxSQ
         y3m8kj53BAjliJeR3ym9x3YBfmZq1gswRQrWMQodRv6MiQuIWCmqDzH3X8xxVlUs0Hbf
         WAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678486138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0lKeDd3VBI2M1Nqk5ezX1R/6WnZjczS9i9hxGFBKuB0=;
        b=8C487L06hvn5gYzOJj3FCYJeNrHO28vfJLzPRkvs9CpoqAJ3WiMLwsJ1LfKYN4Q3/w
         fj8yrn5c0/LqLAzLBxt7vDQmQoG9PFZFtfYnmUDIJH70kwKZRPamYJBb57q7wBnuO1xi
         LEWTXRch37aUJohB2zusKjWADJckGh+YXoF0Sjoa+N+Up8paZqlSNv689wGC0iRhlRb9
         43f3cgS/qZqIiDIzf0A3dTGHLpFGAHPEgQVPvAzb7opo40+StO13hms97wOLcOgGl3hv
         9QorQGC53WstPTHdgnCS7PX+3mB1CHIjZK0V343M3zLP7oH5ejuzorQy7IRCAXyBIlYF
         +uSg==
X-Gm-Message-State: AO0yUKWhXuYXBLq0+AHhJolHGMIoM1u34+oBxbJxTcjWE9Cklf8e4Vqa
        z9lUzy0MieRPldCtpZhQCYs=
X-Google-Smtp-Source: AK7set+eACYNDSDM1dLb2oIE5d4fhEls+3NI9I1gJJiu8lwsYBe1/mZhUIm3zgYwEC3WBqfrxlSUCg==
X-Received: by 2002:a50:ee92:0:b0:4c2:96d0:c0cb with SMTP id f18-20020a50ee92000000b004c296d0c0cbmr27614237edr.23.1678486138107;
        Fri, 10 Mar 2023 14:08:58 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id l13-20020a1709065a8d00b008b17ed98d05sm341286ejq.120.2023.03.10.14.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:08:57 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 2/3] landlock.7: Document Landlock ABI v3 (file truncation; Linux 6.2)
Date:   Fri, 10 Mar 2023 23:08:50 +0100
Message-Id: <20230310220851.22261-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310220851.22261-1-gnoack3000@gmail.com>
References: <20230310220851.22261-1-gnoack3000@gmail.com>
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

