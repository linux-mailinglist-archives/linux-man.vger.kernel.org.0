Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59C041F965
	for <lists+linux-man@lfdr.de>; Wed, 15 May 2019 19:38:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726865AbfEORiA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 May 2019 13:38:00 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:38722 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725974AbfEORiA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 May 2019 13:38:00 -0400
Received: by mail-vs1-f67.google.com with SMTP id v9so480247vse.5
        for <linux-man@vger.kernel.org>; Wed, 15 May 2019 10:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CV5grmFp58LsyIikkuNqMU8bbjM8mx4mBfRhmvsV+Z0=;
        b=CkOZg37UBdsXsADo9mGj8pfJ40fdhs91bJMLezaeMZuTUCC1yqv8iicKotL0CSVK3q
         ObdDYewt9SjUq5himtAWfaWq5TLugJU2ldLhnLM4CAL4xLatBoa62j28X2pLWUjzLBAN
         JmMHdzY+yMRo2PrZOGCAgreWZHXOvMgDH3ri/k+d/1IhUXETS4lcHbKD3YgwShoyi+Q9
         pEQf4IV3o6+ieDuiSNcNeibGHP13JJ1ZQhVZyESHaaa/JQx7YGt2UXeYx5LNox9OkoD1
         ehTzO/8FkKe2AfW5gYbU79cOqYOS09wnlc6ovtR8quOOM3LG2tA4ZCaNzs2Hm5h3E00f
         +ToA==
X-Gm-Message-State: APjAAAXVRQJlCbqRtAOkLMSRVG6qKTWkZ0rFoLz3Cxg2+8oOeXtG22SI
        xwBfCuuf2OyOZo6Ct447Jz48dq6a
X-Google-Smtp-Source: APXvYqzD13lS6m2tksuVyyNqOsZzTUEEUKL8rJBGc/ekUGdLei8LkvQi5m/yzWXv5WSnGqjO0Ac1QA==
X-Received: by 2002:a67:ea46:: with SMTP id r6mr6412130vso.3.1557941879019;
        Wed, 15 May 2019 10:37:59 -0700 (PDT)
Received: from shawn-ThinkPad-L420.hitronhub.home ([190.233.49.202])
        by smtp.gmail.com with ESMTPSA id y5sm841770vsc.19.2019.05.15.10.37.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 15 May 2019 10:37:58 -0700 (PDT)
From:   Shawn Landden <shawn@git.icu>
To:     linux-man@vger.kernel.org
Cc:     Shawn Landden <shawn@git.icu>
Subject: [PATCH] Glibc no long provides such a wrapper, and requires Linux 2.6.32.
Date:   Wed, 15 May 2019 12:37:51 -0500
Message-Id: <20190515173751.10386-1-shawn@git.icu>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Shawn Landden <shawn@git.icu>
---
 man2/chown.2    | 6 ------
 man2/getuid.2   | 5 -----
 man2/setfsuid.2 | 3 ---
 man2/setgid.2   | 3 ---
 man2/setuid.2   | 3 ---
 5 files changed, 20 deletions(-)

diff --git a/man2/chown.2 b/man2/chown.2
index 332516632..a815b4aee 100644
--- a/man2/chown.2
+++ b/man2/chown.2
@@ -423,16 +423,10 @@ Subsequently, Linux 2.4 added
 .BR chown32 (),
 .BR fchown32 (),
 and
 .BR lchown32 (),
 supporting 32-bit IDs.
-The glibc
-.BR chown (),
-.BR fchown (),
-and
-.BR lchown ()
-wrapper functions transparently deal with the variations across kernel versions.
 .PP
 In versions of Linux prior to 2.1.81 (and distinct from 2.1.46),
 .BR chown ()
 did not follow symbolic links.
 Since Linux 2.1.81,
diff --git a/man2/getuid.2 b/man2/getuid.2
index ca2ccecc4..612c42e52 100644
--- a/man2/getuid.2
+++ b/man2/getuid.2
@@ -63,15 +63,10 @@ system calls supported only 16-bit user IDs.
 Subsequently, Linux 2.4 added
 .BR getuid32 ()
 and
 .BR geteuid32 (),
 supporting 32-bit IDs.
-The glibc
-.BR getuid ()
-and
-.BR geteuid ()
-wrapper functions transparently deal with the variations across kernel versions.
 .PP
 On Alpha, instead of a pair of
 .BR getuid ()
 and
 .BR geteuid ()
diff --git a/man2/setfsuid.2 b/man2/setfsuid.2
index 47bb37cc6..539000913 100644
--- a/man2/setfsuid.2
+++ b/man2/setfsuid.2
@@ -106,13 +106,10 @@ The original Linux
 .BR setfsuid ()
 system call supported only 16-bit user IDs.
 Subsequently, Linux 2.4 added
 .BR setfsuid32 ()
 supporting 32-bit IDs.
-The glibc
-.BR setfsuid ()
-wrapper function transparently deals with the variation across kernel versions.
 .SS C library/kernel differences
 In glibc 2.15 and earlier,
 when the wrapper for this system call determines that the argument can't be
 passed to the kernel without integer truncation (because the kernel
 is old and does not support 32-bit user IDs),
diff --git a/man2/setgid.2 b/man2/setgid.2
index fedb9ed95..72a245451 100644
--- a/man2/setgid.2
+++ b/man2/setgid.2
@@ -78,13 +78,10 @@ The original Linux
 .BR setgid ()
 system call supported only 16-bit group IDs.
 Subsequently, Linux 2.4 added
 .BR setgid32 ()
 supporting 32-bit IDs.
-The glibc
-.BR setgid ()
-wrapper function transparently deals with the variation across kernel versions.
 .\"
 .SS C library/kernel differences
 At the kernel level, user IDs and group IDs are a per-thread attribute.
 However, POSIX requires that all threads in a process
 share the same credentials.
diff --git a/man2/setuid.2 b/man2/setuid.2
index f4726dcf0..82b2b56a9 100644
--- a/man2/setuid.2
+++ b/man2/setuid.2
@@ -140,13 +140,10 @@ The original Linux
 .BR setuid ()
 system call supported only 16-bit user IDs.
 Subsequently, Linux 2.4 added
 .BR setuid32 ()
 supporting 32-bit IDs.
-The glibc
-.BR setuid ()
-wrapper function transparently deals with the variation across kernel versions.
 .\"
 .SS C library/kernel differences
 At the kernel level, user IDs and group IDs are a per-thread attribute.
 However, POSIX requires that all threads in a process
 share the same credentials.
-- 
2.20.1

