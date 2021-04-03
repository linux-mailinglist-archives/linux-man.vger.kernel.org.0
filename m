Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5131A35356B
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236819AbhDCTmJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236812AbhDCTmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:09 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E231AC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:05 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id q26so1791186wrz.9
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pcPv5Fuq5z0fIsLcPIO2L+6g4NPWa5MD8jyc9rRrveQ=;
        b=cqnX3IuWoGP2hgbBRazEjyvCvZJJOjOiTQSSrkUwt37Qv6P+vFYOLrlwOQ0KKOFzNZ
         Pu0LqCSri/u+KT9VfsVU1glC2cIHT/HkdKqtQ5isW7DoBQCXwCGca+XWJzB/zFXqVoDx
         jfyfu5XKCQsLVZ1kd2ajBFcLeWqLvMjNd0aACqWGEqCR1bFGRlCMR9+bhf/9HdDqdnvk
         ggmWJuah91G0Bgb7zjztSIA5y+fM3SIpBIQtUk8T56z9PvjLtJjrYEXoo39J76Wy6EXz
         jEOBZu52NPegFHfJbesCZjGvpVlZ1X4Cjbo+BjCq2vQ1agA0SjkabZSAe0T283PFy4qZ
         C3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pcPv5Fuq5z0fIsLcPIO2L+6g4NPWa5MD8jyc9rRrveQ=;
        b=f5CThduggqdBXfuequy7HrflosdcuF0a+DmqEmJvVlTm/+Lk3yizl292xhjV+XdH8t
         0/2MOfqjQphhBl6aDH6JgsDi730L5cGVuIDrGz7r72CkJ368YV8FJ+zOz9rbhaL4RnRI
         ipwLX5d9qlNNd6Xj3nwyqTxfkwH+6F5Z2ZJ6TKo4jVXkZJUX086bzFhRanFsoi5iNvoY
         6jFDOuI7QHnbV0WvIxCHpOJaJcDaPBPkuZNFNydNAO0Lz5x792p4K4P5E2htJaqUREof
         2F46lzRrRnxMp6OoPs7DBOmyO4+J5ZiBCZgK+Y0u6pxf8sp6vAmZ2ANkL4RagWssb0Wo
         Iu5g==
X-Gm-Message-State: AOAM532JV1nj7NNZKjXijd7s4ZoVbacjTVSZ8S/03mBaYpK4S8TG+VlL
        gEcy0n879bdmtZKhhCmuCbI=
X-Google-Smtp-Source: ABdhPJz16SNF8uSPoP45lesjqi1ttat57OHzCNoycwO7s/Bn/WPz5Hcl0Un9IlZ3aJ1oEo9MV9SgxQ==
X-Received: by 2002:a5d:4bcb:: with SMTP id l11mr22125568wrt.390.1617478924754;
        Sat, 03 Apr 2021 12:42:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 25/35] get_robust_list.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:17 +0200
Message-Id: <20210403194026.102818-26-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/get_robust_list.2 | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
index dd43cded2..b1368ddd3 100644
--- a/man2/get_robust_list.2
+++ b/man2/get_robust_list.2
@@ -32,16 +32,16 @@
 get_robust_list, set_robust_list \- get/set list of robust futexes
 .SH SYNOPSIS
 .nf
-.B #include <linux/futex.h>
-.B #include <syscall.h>
+.BR "#include <linux/futex.h>" \
+"    /* Definition of " "struct robust_list_head" " */"
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "long get_robust_list(int " pid ", struct robust_list_head **" head_ptr ,
-.BI "                     size_t *" len_ptr );
-.BI "long set_robust_list(struct robust_list_head *" head ", size_t " len );
+.BI "long syscall(SYS_get_robust_list, int " pid ,
+.BI "             struct robust_list_head **" head_ptr ", size_t *" len_ptr );
+.BI "long syscall(SYS_set_robust_list,"
+.BI "             struct robust_list_head *" head ", size_t " len );
 .fi
-.PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
 .SH DESCRIPTION
 These system calls deal with per-thread robust futex lists.
 These lists are managed in user space:
@@ -138,9 +138,6 @@ could be found.
 These system calls were added in Linux 2.6.17.
 .SH NOTES
 These system calls are not needed by normal applications.
-No support for them is provided in glibc.
-In the unlikely event that you want to call them directly, use
-.BR syscall (2).
 .PP
 A thread can have only one robust futex list;
 therefore applications that wish
-- 
2.31.0

