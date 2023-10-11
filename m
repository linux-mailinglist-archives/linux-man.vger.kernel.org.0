Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF087C526B
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 13:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234748AbjJKLrz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 07:47:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232098AbjJKLry (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 07:47:54 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E66728F
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 04:47:52 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32157c8e4c7so6619567f8f.1
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 04:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697024871; x=1697629671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WnzE50GqwIYsvImImgqwx+kpedF46g+FtP5BZs37YKo=;
        b=eRskHSInzqn4yZCtH3O1G7QVvW5Qq0oOCdJgtJS44rkyCV5IFG4bzE1wbsFUChYEvv
         S/pdDcYFUM4JmhFRynPwnqQtPqi62dj9I24YhxPdwaZSqbG7TdymXSfwnqFNrEPoKI15
         YfB52S3TxX5kY3kSqMosQvCGYcU//qKoaZ4h0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024871; x=1697629671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WnzE50GqwIYsvImImgqwx+kpedF46g+FtP5BZs37YKo=;
        b=Lz+V6crbPIJZLscuVtfYodJK8navyzEdWvWHexNAUt4qb//vfGGo1h8xGcSqjk6tGF
         4aWDTdiSJvfAMxN09CVAt3IWC8+D7Ag+RgD+JZNz//yoyoiUFP/x+u1r4Pmjq/zqpAwI
         jinfIuHahB5ARcJFf+VY8Q2ETmdbi5mzbMU3jWKcj5lrilADZEGrg4vfx+x+TSRm2L6C
         K9fT7h2999E+++fBCPMvCMkJQL0xyh5V7190SEeoRUaws1iP5YbDWVxO1qOdNw8J9V6K
         aZyv/rXzumtM0kcy8m/N4bHDYDbfpHmQOLos+3vb21/tWUwxUjZWwjp9d9I5vncYQWSV
         7BKg==
X-Gm-Message-State: AOJu0Yy6Y8CH7SCyeiUxLTgG6meuRPQEEkCZ6TdjuyNF18FgvD8aO0Hv
        rZgkF5n5n1sbgLT26vYdiJVB6Q==
X-Google-Smtp-Source: AGHT+IGs5m1vngqllLqK3mcobuGDB7OW4huyqKyaiz3VoOQEWNnd8pXE7HiXHdQDwCxbA1XyYZzaZA==
X-Received: by 2002:adf:f106:0:b0:32d:6880:f42 with SMTP id r6-20020adff106000000b0032d68800f42mr3516151wro.23.1697024871248;
        Wed, 11 Oct 2023 04:47:51 -0700 (PDT)
Received: from revest.zrh.corp.google.com ([2a00:79e0:9d:6:3ba:2c69:5374:cd12])
        by smtp.gmail.com with ESMTPSA id i17-20020adffdd1000000b00326c952716esm15131630wrs.61.2023.10.11.04.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 04:47:50 -0700 (PDT)
From:   Florent Revest <revest@chromium.org>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org,
        catalin.marinas@arm.com, Florent Revest <revest@chromium.org>
Subject: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Date:   Wed, 11 Oct 2023 13:47:44 +0200
Message-ID: <20231011114744.2563619-1-revest@chromium.org>
X-Mailer: git-send-email 2.42.0.655.g421f12c284-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Memory-Deny-Write-Execute is a W^X process control originally introduced
by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.

Signed-off-by: Florent Revest <revest@chromium.org>
---

Diff since v1:
- Use semantic newlines
- Document that PR_MDWE_NO_INHERIT requires PR_MDWE_REFUSE_EXEC_GAIN
- Use "bit mask" instead of "bitmask" according to the style guide
- Removed an empty comment line

 man2/prctl.2 | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index d845b0905..83060edd9 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2041,6 +2041,36 @@ the copy will be truncated.
 Return (as the function result)
 the full length of the auxiliary vector.
 \fIarg4\fP and \fIarg5\fP must be 0.
+.TP
+.BR PR_SET_MDWE " (since Linux 6.3)"
+.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
+Set the calling process' Memory-Deny-Write-Execute protection mask.
+Once protection bits are set,
+they can not be changed.
+.IR arg2
+must be a bit mask of:
+.RS
+.TP
+.B PR_MDWE_REFUSE_EXEC_GAIN
+New memory mapping protections can't be writable and executable.
+Non-executable mappings can't become executable.
+.TP
+.B PR_MDWE_NO_INHERIT " (since Linux 6.6)"
+.\" commit 2a87e5520554034e8c423479740f95bea4a086a0
+Do not propagate MDWE protection to child processes on
+.BR fork (2).
+Setting this bit requires setting
+.B PR_MDWE_REFUSE_EXEC_GAIN
+too.
+.RE
+.TP
+.BR PR_GET_MDWE " (since Linux 6.3)"
+.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
+Return (as the function result) the Memory-Deny-Write-Execute protection mask
+of the calling process.
+(See
+.B PR_SET_MDWE
+for information on the protection mask bits.)
 .SH RETURN VALUE
 On success,
 .BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
-- 
2.42.0.655.g421f12c284-goog

