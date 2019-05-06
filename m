Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFD514A8D
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 15:06:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725856AbfEFNGo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 09:06:44 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:37811 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725852AbfEFNGo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 09:06:44 -0400
Received: by mail-vs1-f68.google.com with SMTP id w13so8074748vsc.4
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 06:06:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1X3tjm12K6O7LvW8Y0Ls2hWo4nV+x1zbr83LAkIylb8=;
        b=IWmkM8R7LXsz1NX0vtfW78GTvf58W2q61xhr7klJI2AKn0+7v8auc4EeNOwiD7PZug
         u6BCgnXOw9CKjiW6KksIC78JueOxE9+ewkaISWnotg7otDJKjcnHYtJvdzGYs2MStT7X
         hiKaa8FrMHIzWNLaNKjXXQmi3H/1jOyXpkbDUyhY6BD3M6u5ohnGAVdxSdFVjHRCQHT2
         eTIOhzWt+yWkGO6KvEIyC9fUu0clsOs015lowe0K93QjazuKX9lWhOXc79CqADwNuO1Y
         WfNt18C+YUjp3+jvPTGCIJFo89A+ZPDjZGHrWGdfmTh5jE7uLoQ1E1bXx8rZnJPqS0KU
         2dEQ==
X-Gm-Message-State: APjAAAX4I/t6u0ts9F5G4YdPDNsRYOQMs3vGXuB3LuqxRFfDDfXGolVt
        5NUGBx57Uba7ZtQB3Cxkqo4nt3buTYXEoQ==
X-Google-Smtp-Source: APXvYqwCJnrPYkS8gg4Xy7xUdiqLLNyYXQbipZaEj1oVJ3yBDO6JNUChTGifRVgmWZg2cNafdCiSCw==
X-Received: by 2002:a67:a446:: with SMTP id p6mr13212858vsh.198.1557148003073;
        Mon, 06 May 2019 06:06:43 -0700 (PDT)
Received: from localhost.localdomain ([2800:200:e480:37:4d90:9234:4ca6:5cae])
        by smtp.gmail.com with ESMTPSA id u72sm2045263vku.23.2019.05.06.06.06.41
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 06 May 2019 06:06:42 -0700 (PDT)
From:   Shawn Landden <shawn@git.icu>
To:     linux-man@vger.kernel.org
Cc:     Shawn Landden <shawn@git.icu>
Subject: [PATCH] read/write: documentation of limits v3
Date:   Mon,  6 May 2019 08:06:37 -0500
Message-Id: <20190506130637.26455-1-shawn@git.icu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190506054107.25321-1-shawn@git.icu>
References: <20190506054107.25321-1-shawn@git.icu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Looks like PAGE_MASK is in <sys/user.h>
---
 man2/read.2  | 8 ++++++++
 man2/write.2 | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/man2/read.2 b/man2/read.2
index 6e5123fa4..1ca696af9 100644
--- a/man2/read.2
+++ b/man2/read.2
@@ -151,10 +151,18 @@ and the wrong size buffer was given to
 .BR read ();
 see
 .BR timerfd_create (2)
 for further information.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The read amount is greater than
+.B MAX_RW_COUNT,
+which is
+.B INT_MAX
+rounded down to the page size (INT_MAX & ~PAGE_MASK).
+.TP
 .B EIO
 I/O error.
 This will happen for example when the process is in a
 background process group, tries to read from its controlling terminal,
 and either it is ignoring or blocking
diff --git a/man2/write.2 b/man2/write.2
index 4df56cd48..1cdf04436 100644
--- a/man2/write.2
+++ b/man2/write.2
@@ -190,10 +190,18 @@ flag, and either the address specified in
 .IR buf ,
 the value specified in
 .IR count ,
 or the file offset is not suitably aligned.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The write amount is greater than
+.B MAX_RW_COUNT,
+which is
+.B INT_MAX
+rounded down to the page size (INT_MAX & ~PAGE_MASK).
+.TP
 .B EIO
 A low-level I/O error occurred while modifying the inode.
 This error may relate to the write-back of data written by an earlier
 .BR write (2),
 which may have been issued to a different file descriptor on
-- 
2.20.1

