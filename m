Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F56D40795D
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233230AbhIKQDI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:08 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD65C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:55 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id s24so3362182wmh.4
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8FP1AXFW81N063p6ieFNM0LIWwpnCwY4G1+hTtA3xMM=;
        b=Zg1U9Me4edzTzGJVHzT6iMlLb8aD28RFqodIIh+kJxKZV4LcMOgvkWhwAwd0hYGM/5
         KzhDGzEi4PSJSxcCOjL71K4GgQE1ky3XBXlD++i6cNuiTiJjOgRKh1NOICikKWGurZDD
         5q/k7pfPec2vgTwH2u5s4BfNP033wMM+w7zvNiXtorgtJKZRyV2kO10GN2wByHdvmTXX
         bCRwCj0654xzXAjPrec022wgyXtZVILulKDQz9WpSlnmvqSZL34AA9CLV6++x8mp5Zk4
         ucJZffeIVnxBaTtEWUHL7ZSD/EXQs1ZjT8cswVKd1XuN9H2vEVAIy5tnwLak6k+iLM5j
         4HMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8FP1AXFW81N063p6ieFNM0LIWwpnCwY4G1+hTtA3xMM=;
        b=ayQI8PLcf4B74oLoRswBSIhqyCw5vcBHIGSgSQXdecqvEFcUuBLyZcVNwuOxm8rOrf
         wSQYow2iDionawrh5HW6QI9y1FameaIxOQewmZ3O5ohP1j1JWYMiXb8IwBFBEBn4r7S9
         KI+JM6VJzWmZ8K1qodNUZ8tjTPyphEb4ejjJ+72c2iBwLjLksREjbwTzd3OFuMC3pSuk
         v+7etNrJS2SY90H/3dqgYvkIqzkG5om/4TkjdbJwhYZ+6p8Eb+SAzqNYhk5YITNxWk03
         5YYed8cfDzWl96Jr2nEmrKnN0iQixj/FtZiBprxDB2ih43E1ydxpLpD+I7KMiOw7qx1y
         MTGw==
X-Gm-Message-State: AOAM533TttJlDjbUlHFqB1jfsy+M/hiCZCRl3uvZByOppd+tZVjsBKi0
        vadjmh9DGOVX9UJej8cTbRLDYaE3sv8=
X-Google-Smtp-Source: ABdhPJxsL7a2TDR/s7xQp72jxZ+KZcTO6jiU30aSS4fS7xW8des1ZQsSJjKd1+Fc00tLqKAm9XaOfg==
X-Received: by 2002:a1c:a913:: with SMTP id s19mr3129012wme.26.1631376114122;
        Sat, 11 Sep 2021 09:01:54 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 30/45] syslog.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:02 +0200
Message-Id: <20210911160117.552617-30-alx.manpages@gmail.com>
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
 man2/syslog.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/syslog.2 b/man2/syslog.2
index 46928df49..78a1e2335 100644
--- a/man2/syslog.2
+++ b/man2/syslog.2
@@ -33,6 +33,9 @@
 .SH NAME
 syslog, klogctl \- read and/or clear kernel message ring buffer;
 set console_loglevel
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/klog.h>" "        /* Definition of " SYSLOG_* " constants */"
-- 
2.33.0

