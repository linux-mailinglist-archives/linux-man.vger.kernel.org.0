Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F31202702DA
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726174AbgIRRFE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbgIRRFE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:04 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F451C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:04 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z9so6278795wmk.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fW0x58u4mE/ClCvm3tVSGnzntro9bdBmymrzQVWitaY=;
        b=cVKfrTXUCuQlu2sqAQO2t1BVwdSAZ7hB7z8QlJMD2dVVdVkoGK3C4oTJisLFaDo5vC
         apCZXzVSJg80LhpEeHQKSwKFCG/cXO8+FZzEUEKu0LXY4VmqjuBSthPRkwWXLbsY+6gD
         yiqkXU+hWbcx0voiAVyIsDOW/XSBlzcbOZ+KUvxAOC1fi8FSv5EEeiUNDAxN9J+0DFTP
         GC73n8r02lQbWG1i/AXJ2TZ1et8qyhXIGxK0iEX6soWgt0A2yUFz4wQH/SSd65e7SqM+
         Ju+y1umJRaDjA8sdX7vZP5DmfgKBT1onCw2mXIuDTUqXqsuVuHzjNLMB6fjbZq3My365
         GCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fW0x58u4mE/ClCvm3tVSGnzntro9bdBmymrzQVWitaY=;
        b=ce71/lyV5GeSExxLc5cHFknI8NQWmZ9GKoBgeBOo5sJtCrOvGaZOeLMWSsVXKauQ7E
         moc7aA92JUeqEtt4jer9DwQoR2SyQi63umzPq6aLAiU66eSGtgY2XU2r5Tqm+6KRcpTX
         ZEHbSuR1EQ5eqkSvBHoI6xU5usziym9TQUyYFOlLxPevCxalO3Edl8n3yxbbAaNWOmaC
         WXHcZR6A5pV0GbWewaw0FE0udi+YcFzXy43E96p2jIEw8Q1f3mJVlf2t9LXQAP3EyUIO
         aL7wQB1Dq6Jc7NQT81pl7ca/tAmsfE0kY7rLiGHJRo/vFm24OPZCRv37Q/9t/U0FndNF
         dicw==
X-Gm-Message-State: AOAM5334/JTSwgNAUEiYp5sl2Lz3TFrMsbWkTuL7SOUpfeYwKoLUmFGI
        RerxKLl2GWISm2iO3qdyamM=
X-Google-Smtp-Source: ABdhPJxCiUTe8oUXtzxVCCW6W5LYe1Pl2kMGQWwjU3rd8eCUWxuzNfqSQbOu3qV+EqHl18YLmuMLnw==
X-Received: by 2002:a1c:e389:: with SMTP id a131mr17078161wmh.181.1600448702822;
        Fri, 18 Sep 2020 10:05:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:05:02 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/9] system_data_types.7: Document sigevent
Date:   Fri, 18 Sep 2020 19:04:37 +0200
Message-Id: <20200918170442.94920-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 57 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 52 insertions(+), 5 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 48871e4eb..53c289e31 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -133,6 +133,51 @@ and
 .I ssize_t
 types in this page.
 .TP
+.I sigevent
+.IP
+Include:
+.IR <signal.h> ;
+or
+.I <aio.h>
+or
+.I <mqueue.h>
+or
+.IR <time.h> .
+.IP
+.EX
+struct sigevent {
+    int             sigev_notify; /* Notification type */
+    int             sigev_signo;  /* Signal number */
+    union sigval    sigev_value;  /* Signal value */
+    void          (*sigev_notify_function)(union sigval);
+                                  /* Notification function */
+    pthread_attr_t *sigev_notify_attributes;
+                                  /* Notification attributes */
+};
+.EE
+.\".IP
+.\" FIXME: Add a description?
+.IP
+Conforming to: POSIX.1-2001 and later.
+.IP
+Notes:
+.I <aio.h>
+and
+.I <time.h>
+define
+.I sigevent
+since POSIX.1-2008.
+.IP
+See also:
+.BR timer_create (2),
+.BR getaddrinfo_a (3),
+.BR lio_listio (3),
+.BR mq_notify (3)
+.\".IP
+.\"See also the
+.\".I aiocb	FIXME
+.\"structure in this page.
+.TP
 .I sigval
 .IP
 Include:
@@ -153,12 +198,14 @@ See also:
 .BR pthread_sigqueue (3),
 .BR sigqueue (3),
 .BR sigevent (7)
-.\".IP
-.\"See also the
-.\".I sigevent	FIXME
-.\"structure and the
+.IP
+See also the
+.I sigevent
+structure
+.\"and the
 .\".I siginfo_t	FIXME
-.\"type in this page.
+.\"type
+in this page.
 .TP
 .I size_t
 .IP
-- 
2.28.0

