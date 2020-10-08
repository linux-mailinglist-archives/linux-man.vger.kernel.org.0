Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2436A28706C
	for <lists+linux-man@lfdr.de>; Thu,  8 Oct 2020 10:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728363AbgJHIFr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Oct 2020 04:05:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgJHIFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Oct 2020 04:05:46 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0393BC061755
        for <linux-man@vger.kernel.org>; Thu,  8 Oct 2020 01:05:46 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so5496744wrt.3
        for <linux-man@vger.kernel.org>; Thu, 08 Oct 2020 01:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d1LonaD/uvvH/M/Yiw3u3fRjx1r3+WxAidJt260oPlw=;
        b=F+DCyRQb8mDPHfuCjIcYeV+FUY1bRso5LSLYam2fOqzqwD7A9IvMSMay2OZde1joeQ
         Ef3NjYp03Eu+snioc4qFATFykAvRJGQSw5jX0YCAZgTahXtBQKDjL5/5siLUVBEA0cjH
         5TVhXVf3z5eqiu+9Q/OKJRHRh754QJmq3PVh+Json45cAWrZhEXx6gVSBUq7w8AhTcXw
         RlvXgKirxGvDWBamo8vTSi8JulKQf8ScAZeWebzLLUGQTKCxlLbFEiVLIWUQkrjSX+o3
         36Ms1essfW4Rfw5yvWTyPIO1zRqsS/IIk2U0kUoXQl3MKKvTFXqYHhIKy25z8v9mYhVp
         bqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d1LonaD/uvvH/M/Yiw3u3fRjx1r3+WxAidJt260oPlw=;
        b=ql8ZUkWHlemZWTpYItpHSfNW+Z0ofcwILZuD7JwMdkEpcE0aOtlW79M+f7L8EOm0vP
         cUF8c54D++kii3ZsXTpys8CBh8sFBRrJXhQXIP59xxXVBl96gQRJLXX0PlOKmPz0k5/t
         d2GQyc3StwLwC+NhtN2ebw5ybNuJPYo+QzKaeoX/Z+ib6hMbTli/Vcy7Fe9xvQzmXu34
         PNksjNI/A0qgXk9Ls+vifx1JRPDcIDyKFR7jABQPABuHaHm/pj52yGcuW6wjV4tkAhG8
         BrXiW4Z+hv1GCQwLuDU52xd97N7nm1F3L9CP3DOw+QfejSzdCbt1DPMA2MRuu26DRXaw
         44dA==
X-Gm-Message-State: AOAM532/UFAD+tP4jH3HLi6mWKMptg64JiXpHDExsDF6bVPKSCOhLU1Q
        y5t5nHoOm/lUS2tjKQ7K9dokIitpTTY=
X-Google-Smtp-Source: ABdhPJyb2m5M6q2Y8wL6YjIFRjDLXI+Ky7rK2Q43y4WFuYjpCrUOFS5lxwzG1qNWk+t54/u4/WULUw==
X-Received: by 2002:adf:e3ce:: with SMTP id k14mr7754989wrm.230.1602144344715;
        Thu, 08 Oct 2020 01:05:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id c18sm6257539wrq.5.2020.10.08.01.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 01:05:43 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] system_data_types.7: Add 'fd_set'
Date:   Thu,  8 Oct 2020 10:04:52 +0200
Message-Id: <20201008080451.8248-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

There's no link for this type, because it would conflict with FD_SET.3,
which is a link to select(2).

Cheers,

Alex


 man7/system_data_types.7 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b0e0d2b48..adddf823f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -151,6 +151,23 @@ See also the
 .I float_t
 type in this page.
 .RE
+.\"------------------------------------- fd_set -----------------------/
+.TP
+.I fd_set
+.RS
+Include:
+.IR <sys/select.h> .
+Alternatively,
+.IR <sys/time.h> .
+.PP
+A structure holding a fixed size buffer of file descriptors.
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR select (2)
+.RE
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.28.0

