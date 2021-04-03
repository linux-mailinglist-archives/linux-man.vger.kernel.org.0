Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DA86353562
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236798AbhDCTmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTmD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:03 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70A47C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:59 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso3810678wmi.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q0jKLIqj3qeyEIhaBjfiAz+YCJa/50JK+Uxol1J6xcg=;
        b=Qu7bRooO+drfArq10B2ZdcjsoHExNSPqybcpbWdAfNkoojU9JOq79A0HF3StJM91dF
         DS6hmb6Vmt7d6IZIjeOjDjXQ0k4ezye1lN3G8dkK2PyD4G3Q5d3tM5zlerr6nofo/JU9
         hRW2CFiFVNWlGqwdPZd2Co7ZVhatRjSIwDCg8xkDC/diJf9I/mLgbWhfLfYDFwUmbrSj
         6J1n/UbNvE8lbri1zLQIm2/Fhc/4ViNm+SMmMH7LfleVErsSrAYudiXWMOABAjkxRWMl
         zRtGbejxxhFtbFIQKFV1RqshJ7aQNLLLMrQdSpDwStmmswJDt2nzSpNDa78Yx5myCYta
         YEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q0jKLIqj3qeyEIhaBjfiAz+YCJa/50JK+Uxol1J6xcg=;
        b=Jmx93aVWyQxAX8E+zHK72o87IxlHQV/Ujrw2vQ+FUymGnhz5IP9TPHbpAy2l+bGHYG
         N5f5wMFvBAwc4BxOZyDPskffHtVTIwm5izZ0s4+oIIm4i3XfXjjVdqMQZKld3VmgfpTF
         PGNAAhKqRSTN5XEBVl3K6z0dIyUINu5mE1wft/k9qE67dApKvmhB/D74pt0b0wEitgiV
         VPcUnzQ1YfBp5CCqx03AP5EeHPV6qGFijNjJiPr+49f0jejbcltQGo72SfcW0ZkzGOe+
         +5FJOND12r78SancuqeznUHn9ugmcHlkXew3eV5DnrTSFaQhBOeJHFZ4HNTpiaR8ncFY
         F1lg==
X-Gm-Message-State: AOAM533Vc2W/GC97vEdXZbGkE+9ywyzYkvPzOT1JW+oUNWcPvfhQShoP
        n7c3PKDD6vZ/YNTcOYsVoU0/JTsTw24=
X-Google-Smtp-Source: ABdhPJzKcCuvuLncmuk7yiEEDa6ELlHMjK4bOnFVdexHfbGaMdMxUIA4Wb+7+gX7WA1oAJp04Rod0Q==
X-Received: by 2002:a1c:9a02:: with SMTP id c2mr2796449wme.131.1617478918271;
        Sat, 03 Apr 2021 12:41:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 15/35] exit_group.2: Use 'noreturn' in prototypes
Date:   Sat,  3 Apr 2021 21:40:07 +0200
Message-Id: <20210403194026.102818-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This function never returns to its caller.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/exit_group.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index d26ec8c70..4fd314262 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -29,7 +29,7 @@ exit_group \- exit all threads in a process
 .nf
 .B #include <linux/unistd.h>
 .PP
-.BI "void exit_group(int " status );
+.BI "noreturn void exit_group(int " status );
 .fi
 .SH DESCRIPTION
 This system call is equivalent to
-- 
2.31.0

