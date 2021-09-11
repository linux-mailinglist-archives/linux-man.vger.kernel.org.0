Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07A34407963
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233089AbhIKQDO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:13 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B19C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id n5so7325181wro.12
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W0Ba6Wwnv2VyTPGIa39Bfoe6L9i9eTPQyfLv8HcwBQA=;
        b=dAq5tb8T3DUzy4ZuQ208laihejeAZhoYMuWzCrKoN8xIelVPUthHln5VXmdo7CAf3+
         v04GJczR4RUmxJsORN8CHumN9Psrf/QWbreNgYL0GPCeqRc9ArnUiZBMhagvb/Xdry2L
         iEi5eaz9iAgZ/D+Sy1TnW7IQChpTHAK4jQ/qVhnDomxDg00mgZSh5jfe1tchM0XICqs7
         BsRCuAZDwvfyOwSEzG+Fa1Pf6I9o6ytnGZE9fvVRojIxmGGpb9qGsBlpGCxeXY3tjIof
         TeBjn5hR6+6NjmxFludzx0rtIn1ZanNTeR13BDDZEFPCBZksjcw45bV/G/SQ+oAtlVDu
         BQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W0Ba6Wwnv2VyTPGIa39Bfoe6L9i9eTPQyfLv8HcwBQA=;
        b=vek2+ObPz5fvzw3aDSY5YlbmJFfnHjrkaUS3nwTaAOUY6kdl/owlJ455q8xn2gcPi6
         mEEEk9cEhTjFmrPf7BCLyJVoKdQCFPWRVgwUelQImuPUOd4DEmXcc93NAMJXLXsYhkHm
         BDIxr9PhwLsxlvjwyg1qUYY1QzLC1NQKIsitbktTyts5jPWkcveHkWkzNwZWdwshrESR
         YgJZ8if+mGID+HuigShHVtJfnCaX3YE+l0PszwDd0hwETHBkTNe3/x9tzqkIOYKwyZPV
         a2XSqO1BLTQXZj3EIt1VoNGfOjUjIpihrWoO9PhNR8N0ELl6jlF4p2foQvdjYQX+pAvL
         oLWg==
X-Gm-Message-State: AOAM531LzTLZF7Dz/nsb9Gm/olcCox+KFBZBDym8Gt76CoFPo6pp1NbL
        XN+w7GDl11wWJ2DjuadncEGJeY3ySWg=
X-Google-Smtp-Source: ABdhPJwL8/laxVUt02jGP7KBUGvXj+AnQPXJKCHxBRpw0BWCgqtV2EyHDBhzH2ToRCGMACuIAChOmA==
X-Received: by 2002:adf:e606:: with SMTP id p6mr3748146wrm.231.1631376119562;
        Sat, 11 Sep 2021 09:01:59 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 36/45] swapon.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:08 +0200
Message-Id: <20210911160117.552617-36-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/swapon.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/swapon.2 b/man2/swapon.2
index 07d5fe86c..ffa3892d3 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -42,6 +42,9 @@
 .TH SWAPON 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 swapon, swapoff \- start/stop swapping to file/device
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/swap.h>
-- 
2.33.0

