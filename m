Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6B5114445
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 07:41:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725834AbfEFFlO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 01:41:14 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:34397 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725830AbfEFFlO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 01:41:14 -0400
Received: by mail-vs1-f66.google.com with SMTP id b23so7410271vso.1
        for <linux-man@vger.kernel.org>; Sun, 05 May 2019 22:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e93Yi33ePgB7ArN0aiP/UPhmKpoDEOl3In37a+axkGU=;
        b=TKp8oLUysJjNYVysaM0YEhqG1RMiZcUz6zbxDIGZbZu6sLmJYLd9VP1GCzoyndrgzE
         vqyswegcl1cKoj3eZN/fzQcHvlBJ+2DpcIyZSE7jzXLi+tXEIcolrXprwUW1z09IOr+t
         6Xjie7xmZ0jfsu1g8voT0G3vJkhvHMBz8vSmZCd7hgMTZRBkTKf57paEF6JDdhy5SqfO
         FTtyH0PUGdZPOjPy0elm+bMyo8rBWbsqdBH0/eS1tzXD1kML9PV2EJzVJG+iuBvBiH1L
         mzAmTZXK8yrFuwlIrfzxIJ9Z67OUS0DHm69J4PYmQRRxLcgW9DCqzOP65JhrOKQP76GR
         bTQg==
X-Gm-Message-State: APjAAAWjMGzx6w/GbWZJMt1k5H847PGk2NriF6SwVMTZsIepCcpX6MBi
        O+su1MAmUhZ245ELN5SLSVgVXPV/YpabxA==
X-Google-Smtp-Source: APXvYqzZxhYsOSLZxMQfq/10IEGNmsKcUSwsyn7VvKxLRhpHywCdoYpXGi05cg3voOjS/iuh95t9xA==
X-Received: by 2002:a67:ed89:: with SMTP id d9mr11325899vsp.150.1557121273289;
        Sun, 05 May 2019 22:41:13 -0700 (PDT)
Received: from localhost.localdomain ([2800:200:e480:37:4d90:9234:4ca6:5cae])
        by smtp.gmail.com with ESMTPSA id s78sm2952726vke.17.2019.05.05.22.41.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 05 May 2019 22:41:12 -0700 (PDT)
From:   Shawn Landden <shawn@git.icu>
Cc:     linux-man@vger.kernel.org, Shawn Landden <shawn@git.icu>
Subject: [PATCH] read/write: documentation of limits
Date:   Mon,  6 May 2019 00:41:07 -0500
Message-Id: <20190506054107.25321-1-shawn@git.icu>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/read.2  | 4 ++++
 man2/write.2 | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/man2/read.2 b/man2/read.2
index 6e5123fa4..850dead86 100644
--- a/man2/read.2
+++ b/man2/read.2
@@ -151,10 +151,14 @@ and the wrong size buffer was given to
 .BR read ();
 see
 .BR timerfd_create (2)
 for further information.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The read amount is greater than INT_MAX % PAGE_SIZE.
+.TP
 .B EIO
 I/O error.
 This will happen for example when the process is in a
 background process group, tries to read from its controlling terminal,
 and either it is ignoring or blocking
diff --git a/man2/write.2 b/man2/write.2
index 4df56cd48..32b17cdc0 100644
--- a/man2/write.2
+++ b/man2/write.2
@@ -190,10 +190,14 @@ flag, and either the address specified in
 .IR buf ,
 the value specified in
 .IR count ,
 or the file offset is not suitably aligned.
 .TP
+.B EINVAL
+.\" MAX_RW_COUNT in include/linux/fs.h
+The read amount is greater than INT_MAX % PAGE_SIZE.
+.TP
 .B EIO
 A low-level I/O error occurred while modifying the inode.
 This error may relate to the write-back of data written by an earlier
 .BR write (2),
 which may have been issued to a different file descriptor on
-- 
2.20.1

