Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89559265284
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726853AbgIJVTh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727995AbgIJVOP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:15 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2D41C0613ED;
        Thu, 10 Sep 2020 14:14:14 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id a9so2104642wmm.2;
        Thu, 10 Sep 2020 14:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eDnzDkzS7un/T3HQQEdcrFP62+pebf6XutqN/w48ZaY=;
        b=q31h2nnqPmjjXuIUt8EkDVn4Nt6SLWQXISTfw21Xrr6xyXDzm73mo2MNAy5hH+CrWL
         S0ojhRlFr4VYBapqcBT/yTW8V9aAK2SSQpnnJHfB7FvconofM+QETzrl4kDTuCqAJk2x
         fSu9ru9JI9PSbgdJvoBwpE/YCAft4DI19gehkJf8xQis91hn2+o6WDKhsaYAhA7HkvEq
         MyuzGy+/gGIb9a8QcxYBPCedWiAK4nJWJ6poyr7CfAjBIhbIybTYwjgE36hsR3sXI/i+
         YbwCqferTIGINx2YIH376VBMzKzCkEZGCQrpt0O8/LWI1rfzcoca3+6aZG+vupLjs3RO
         +RAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eDnzDkzS7un/T3HQQEdcrFP62+pebf6XutqN/w48ZaY=;
        b=mDPnO+jisVh6yNrO5+5RhQeeMeOmPUnvXy0DXbTRw7HFcKEbW1A0uIcPi1zrRBnZWf
         AaYsavvYkTtoZsQ62R/CpZ2R0eLROZp9E97/1ev2dfizmYAxjrYDlO/Zs24u5CMtp8fW
         sZjyXGPkCb64lu/dlHRrdUdq/YfbyVjZgrQXlcy3nyY03M/3V2YktzJg+N9uKxeDoubP
         eZsdwrH2Go130E1LLUR/YbkjSGk4VkJ948c08DuFx0bjQbNMsaoIAPW0VxZNTwdW+dZW
         AtDMpVdAU6lEe17JU/ROMp7SKJ6kqMV3yBOP0ta0mvvjUaGkP6odZEDWISp4PEsDhvnY
         ZaTA==
X-Gm-Message-State: AOAM532pBXfuVPN60pzGXl0ED73mL5+xEeWL1y6RyeCpzA+ards+crKU
        i/xyA9zO2xSCDoj3vTpaRs49ef5vddCT8w==
X-Google-Smtp-Source: ABdhPJwr5kxBSqKAn0AhOROeSmVy21Z4EUpZ8oZSpiyOGxZeHmGemNv3rFUJ8f1ltvkYrj8HRR+kKg==
X-Received: by 2002:a1c:2bc7:: with SMTP id r190mr1979391wmr.116.1599772453314;
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 03/24] timerfd_create.2: Use 'PRIxN' macros when printing C99 fixed-width integer types
Date:   Thu, 10 Sep 2020 23:13:24 +0200
Message-Id: <20200910211344.3562-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/timerfd_create.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 67a13dba3..90e35d9b5 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -624,6 +624,7 @@ a.out 3 1 100
 #include <sys/timerfd.h>
 #include <time.h>
 #include <unistd.h>
+#include <inttypes.h>      /* Definition of PRIu64 */
 #include <stdlib.h>
 #include <stdio.h>
 #include <stdint.h>        /* Definition of uint64_t */
@@ -706,9 +707,7 @@ main(int argc, char *argv[])
 
         tot_exp += exp;
         print_elapsed_time();
-        printf("read: %llu; total=%llu\en",
-                (unsigned long long) exp,
-                (unsigned long long) tot_exp);
+        printf("read: %"PRIu64"; total=%"PRIu64"\en", exp, tot_exp);
     }
 
     exit(EXIT_SUCCESS);
-- 
2.28.0

