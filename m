Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16F99FEBE0
	for <lists+linux-man@lfdr.de>; Sat, 16 Nov 2019 12:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727527AbfKPLl3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Nov 2019 06:41:29 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:50374 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727525AbfKPLl2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Nov 2019 06:41:28 -0500
Received: by mail-wm1-f68.google.com with SMTP id l17so12209148wmh.0
        for <linux-man@vger.kernel.org>; Sat, 16 Nov 2019 03:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brauner.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fyZmBKcSsP1bjro74AAm7I1X0iJjVg8/a1KtBSbgjHA=;
        b=VE4bZXsLrwAphnxBM8KjcExuC86t7mBgqn2W3oJdvMspYfHJbuMtJsBh19Zl2l9joI
         tY/8N9P/9bJiEH3MQ7IqZmSWxquqB8SlY9lq6tdjbVJQuljhktuJoUZbCdrucRtaSi7E
         vFj7kvDcIRVg2bq4HtHZ12MrodgFND+/HKr+s2KRAHM08HNdS4TJnq8R2PiycrOtvAaL
         niYprLwLypbHzazbpqFoPNo/PiHTKxSddYt+7BhPNRqqP5FhHHcYEAPdn0ZYE78krJkS
         kdUNmrQzAxMt/w6p/YmKi0x9wNquzSRpQ6FXeZuCSCqhY+Y7WwzXV3aJrz5cqqBvzRUd
         BB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fyZmBKcSsP1bjro74AAm7I1X0iJjVg8/a1KtBSbgjHA=;
        b=ZBIoArXdcjYhnFDD1jFeX90U7pgFGyX6PnFIRpHku/+vG1Acw7Et+6lNRXTxhy3hIl
         YkSU5Dcd1fm7VmDqKOy40iBt56ooQrYIJ1QC2JBar+TCDJsYhlhdh5UTrFUaDdF04gpf
         jZsHEwhAgNmt6wmcEkboYgD4dO1KiD/FVUgoO2ED8+eZ7S3mgGzwQw0uHzDtx1eSVP33
         9CEtRaHiJm2zSZHXbBODh3mRDPZJFlVMQ3tr8eClnamTRa4CLW61mi1ZzjTBwJ+nbhYH
         F1scTXwuZiz5mGLx05n9PpY+F7j4hm4XWFeWX/igyQb103rpDTF3s88T/fMbEPHDNrxp
         TMYg==
X-Gm-Message-State: APjAAAWrqJddrIxg9ZQ3OYb7bDQhmrKgmBeRQhosPa5yFWMdBY9CEKMF
        KWiVaebKjrsmEztQE6pYNDxnWw==
X-Google-Smtp-Source: APXvYqy27qRYzRac5x1AMY19+A/S4MLoXMsT8wAnfE9JRrwtPgSjJJnVX3Rh2SYvj90R1XobwU9oMw==
X-Received: by 2002:a7b:c94e:: with SMTP id i14mr18944185wml.174.1573904486618;
        Sat, 16 Nov 2019 03:41:26 -0800 (PST)
Received: from localhost.localdomain ([213.220.153.21])
        by smtp.gmail.com with ESMTPSA id x5sm12539189wmj.7.2019.11.16.03.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Nov 2019 03:41:25 -0800 (PST)
From:   Christian Brauner <christian@brauner.io>
To:     mtk.manpages@gmail.com
Cc:     adrian@lisas.de, akpm@linux-foundation.org, arnd@arndb.de,
        avagin@gmail.com, christian.brauner@ubuntu.com,
        dhowells@redhat.com, fweimer@redhat.com, jannh@google.com,
        keescook@chromium.org, linux-api@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mingo@elte.hu, oleg@redhat.com, xemul@virtuozzo.com
Subject: [PATCH 3/3] clone.2: Use pid_t for clone3() {child,parent}_tid
Date:   Sat, 16 Nov 2019 12:41:14 +0100
Message-Id: <20191116114114.7066-3-christian@brauner.io>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191116114114.7066-1-christian@brauner.io>
References: <20191116114114.7066-1-christian@brauner.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Christian Brauner <christian.brauner@ubuntu.com>

Advertise to userspace that they should use proper pid_t types for
arguments returning a pid.
The kernel-internal struct kernel_clone_args currently uses int as type
and since POSIX mandates that pid_t is a signed integer type and glibc
and friends use int this is not an issue. After the merge window for
v5.5 closes we can switch struct kernel_clone_args over to using pid_t
as well without any danger in regressing current userspace.
Also note, that the new set tid feature which will be merged for v5.5
uses pid_t types as well.

Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
---
 man2/clone.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/clone.2 b/man2/clone.2
index faff2ada6..bf2d7c731 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -183,9 +183,9 @@ is a structure of the following form:
 struct clone_args {
     u64 flags;        /* Flags bit mask */
     u64 pidfd;        /* Where to store PID file descriptor
-                         (\fIint *\fP) */
+                         (\fIpid_t *\fP) */
     u64 child_tid;    /* Where to store child TID,
-                         in child's memory (\fIint *\fP) */
+                         in child's memory (\fIpid_t *\fP) */
     u64 parent_tid;   /* Where to store child TID,
                          in parent's memory (\fIint *\fP) */
     u64 exit_signal;  /* Signal to deliver to parent on
-- 
2.24.0

