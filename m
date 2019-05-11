Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3435C1A6ED
	for <lists+linux-man@lfdr.de>; Sat, 11 May 2019 08:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726941AbfEKGtZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 May 2019 02:49:25 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:51324 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726849AbfEKGtZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 May 2019 02:49:25 -0400
Received: by mail-wm1-f68.google.com with SMTP id o189so9444325wmb.1
        for <linux-man@vger.kernel.org>; Fri, 10 May 2019 23:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brauner.io; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=15R+Mj5JqRjOWFH2mRtqWd3w0ueT/appKnqsK1sr18U=;
        b=RhYxIg/jN6HzfWTffw/uHJbOTU16H4VpgEud6NYzqrfDOLxhdQreLA65XDN9orjkp3
         jklTDuTrJAE2/25zpd6NbcQg4EdkL7033Q7F3Amh9pCyLt8OqDaOe7JJa2Zqbj75l1Ce
         ojysVRex3BIch2csBVThhJcH78c8vD95aXb8m57J5AGZZwxPDoZlJm9gV1n06RC8MKNS
         8/BtI/RR+QJUKGMQK83LcwDJnoZ6kFc3pbddEq27hAohNm4jElKXOXG2q6XzlGbhamHv
         jN85HGgNcRQw1lS/Pc3vzUBS5Bww3nywoKsTjUSZkUn8nar2meh6FQPbUJEcn34+Q5zR
         CceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=15R+Mj5JqRjOWFH2mRtqWd3w0ueT/appKnqsK1sr18U=;
        b=LP+aBmgq8qjI/PtkiS/eB51m6IMSeVhXrOJ2LumpzpTvWE/9DHO6557h41/drtocpI
         2GCqIWS6USut/UBuaiecyfp4qNo4E/Bkn+rJc6wDJaysL+r7JVs2/N14+x7qtBzqwoYr
         Awc86itjk+pmeLlLk3gQPCC1XLFOlPQHoHw18ML9rCWmNitriJDe4uOXeK4MAeZxvdxi
         RxZTZxAlZaTh2GTpOFHu7WhoNBeVOfwiA4EhBfJrsK24a3dMLIzrE6bUx9RcMcl7QAdc
         3KBmd+qjoH1+FKN2TskCW8zhaN0ehbKEdB3Z8ol7VuTiD7K2dr5SS+JESHw+8z9jhdsi
         CKuw==
X-Gm-Message-State: APjAAAWwAuWJJ8u/Cxd4Ehhiilsxmy3Sf1RIqoZOiIQDKYnqxQH/awz2
        hwrAd3ORdlFnBcJFaFPRqV3ppo8zPco8pA==
X-Google-Smtp-Source: APXvYqzIAwsOnAGTgEJB1RtbuMw3Fj2LRwcNCQUdkLSeCQNihZrtFlLgS9v0vUyKiU9Aw6faerYsrA==
X-Received: by 2002:a1c:1a47:: with SMTP id a68mr2870645wma.88.1557557362340;
        Fri, 10 May 2019 23:49:22 -0700 (PDT)
Received: from localhost.localdomain ([46.183.103.17])
        by smtp.gmail.com with ESMTPSA id h188sm6099714wmf.48.2019.05.10.23.49.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 May 2019 23:49:18 -0700 (PDT)
From:   Christian Brauner <christian@brauner.io>
X-Google-Original-From: Christian Brauner <christian.brauner@ubuntu.com>
To:     linux-man@vger.kernel.org
Cc:     jannh@google.com, oleg@redhat.com, mtk.manpages@gmail.com,
        Christian Brauner <christian@brauner.io>
Subject: [PATCH] clone.2: add CLONE_PIDFD entry
Date:   Sat, 11 May 2019 08:49:08 +0200
Message-Id: <20190511064908.21956-1-christian.brauner@ubuntu.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Christian Brauner <christian@brauner.io>

Add an entry for CLONE_PIDFD. This flag is available starting with
kernel 5.2. If specified, a process file descriptor ("pidfd") referring
to the child process will be returned in the ptid argument.

Signed-off-by: Christian Brauner <christian@brauner.io>
---
 man2/clone.2 | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/man2/clone.2 b/man2/clone.2
index 7e880beb8..ee08aeb42 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -539,6 +539,42 @@ The flag disappeared completely from the kernel sources in Linux 2.5.16.
 Since then, the kernel silently ignores this bit if it is specified in
 .IR flags .
 .TP
+.BR CLONE_PIDFD " (since Linux 5.2)"
+If
+.B CLONE_PIDFD
+is set,
+.BR clone ()
+stores a process file descriptor ("pidfd") referring to the child process at
+the location
+.I ptid
+in the parent's memory. Note, that the kernel verifies that the value for
+.I ptid
+is zero. If it is not an error will be returned. This ensures that
+.I ptid
+can potentially be used to specify additional options for
+.B CLONE_PIDFD
+in the future.
+.IP
+Since the
+.I ptid
+argument is used to return the pidfd,
+.B CLONE_PIDFD
+cannot be used with
+.B CLONE_PARENT_SETTID.
+.IP
+It is currently not possible to use this flag together with
+.B CLONE_THREAD.
+This means that the process identified by the pidfd will always be a
+thread-group leader.
+.IP
+For a while there was a
+.B CLONE_DETACHED
+flag. This flag is usually ignored when passed along with other flags.
+However, when passed alongside
+.B CLONE_PIDFD
+an error will be returned. This ensures that this flag can be reused
+for further pidfd features in the future.
+.TP
 .BR CLONE_PTRACE " (since Linux 2.2)"
 If
 .B CLONE_PTRACE
@@ -1122,6 +1158,21 @@ For example, on aarch64,
 .I child_stack
 must be a multiple of 16.
 .TP
+.B EINVAL
+.B CLONE_PIDFD
+was specified together with
+.B CLONE_DETACHED.
+.TP
+.B EINVAL
+.B CLONE_PIDFD
+was specified together with
+.B CLONE_PARENT_SETTID.
+.TP
+.B EINVAL
+.B CLONE_PIDFD
+was specified together with
+.B CLONE_THREAD.
+.TP
 .B ENOMEM
 Cannot allocate sufficient memory to allocate a task structure for the
 child, or to copy those parts of the caller's context that need to be
-- 
2.21.0

