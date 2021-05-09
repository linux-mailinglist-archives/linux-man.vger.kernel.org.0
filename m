Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98B8337786E
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbhEIUVS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230055AbhEIUVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:16 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34DE4C061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:10 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso9992202wmo.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Fs2+TkNSjJ9gwCu11Z4zc0i5DUKhPqRMT9EYfwSGR4=;
        b=OnviCZ9k9jdFmf8syk5Xmvtcr/fAf7U7KCu/dsNOs1lOzBD0Cv47gG8ti+z9OK7Irk
         T0vA2aOAODmmk+rk0Q7SJnoeSetLLlMquVd5W82IXWrp9SHerZEZGg66oHT4iwF5XLdq
         eD+kGo4/Y2B0NdNd+gJelWfR9xU6H1YFPeCg/pytPyVCjBcVO5A/Ri/BEBlNLeMDQlvf
         70aQHrJ3vaa0JUnBUvtGP4sPPUujDke0+99y0hdk4U22xPYBlXyWSyaKgPRKL3nXW/4q
         Wh+RMd1F2bRJdRXf/N2Dgu1h+1H1TDrvHSKcIepx0ZIF4g9zEsfSo6WXzzwXx+VhWnNF
         fl2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Fs2+TkNSjJ9gwCu11Z4zc0i5DUKhPqRMT9EYfwSGR4=;
        b=M+z1kr91nhqzx/16uSAMFdcUP5opyOGxSj9wO7CWAxdpSnuLnhJOHK/AxrAlNm3myr
         wxHHXX5DDtK0Y8y3RBEqBlT8klqiWSlrR3prhhdUzpEDPFT2Egtt65PINaR4rFzrvKgg
         r/+/PNnt4an50jhoyFzGqiGU3On45XkOzCm82GnfcYNVk6em0qhjzy/ZgugqzGBe/WGX
         wozX5kl/gnelfG6NyOJ1rgra4o2XbwjHHfqIOQWvUMkSgL+u/SGWUfP1rZablGZnV2zW
         y180Ve0X4juKFinLMX/tSYnOGnuQH8sZXd+mzV8hbByQglwpWqQx3XifppgChYMzr9PA
         ESUw==
X-Gm-Message-State: AOAM531JochSO9VnArIh77eNDMZI2n4SI/pZmXixt6uu/yVJjPxtlwhS
        DDrHv65WvPLkR2jQtu5DLuE=
X-Google-Smtp-Source: ABdhPJyJOoI25Dbk7yOFPvxcYpxdewEDSfVoyMzxSHNbw4j/HoKa4alvAX4L1YKwtH96A1GBap6iKA==
X-Received: by 2002:a1c:2:: with SMTP id 2mr22654057wma.113.1620591609020;
        Sun, 09 May 2021 13:20:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 08/17] exit_group.2, getunwind.2: tfix
Date:   Sun,  9 May 2021 22:19:41 +0200
Message-Id: <20210509201949.90495-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/exit_group.2 | 2 +-
 man2/getunwind.2  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index b512927d4..d197f1f2e 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -28,7 +28,7 @@ exit_group \- exit all threads in a process
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
-.B #inlcude <unistd.h>
+.B #include <unistd.h>
 .PP
 .BI "noreturn void syscall(SYS_exit_group, int " status );
 .fi
diff --git a/man2/getunwind.2 b/man2/getunwind.2
index 2c44506c7..403bd7770 100644
--- a/man2/getunwind.2
+++ b/man2/getunwind.2
@@ -31,7 +31,7 @@ getunwind \- copy the unwind data to caller's buffer
 .nf
 .B #include <linux/unwind.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
-.B #inlcude <unistd.h>
+.B #include <unistd.h>
 .PP
 .BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
 .fi
-- 
2.31.1

