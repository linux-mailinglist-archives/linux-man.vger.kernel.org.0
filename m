Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4507A37A3A5
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:28:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbhEKJ3v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbhEKJ3u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:29:50 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DC8C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:28:44 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id u25so4758449pgl.9
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KpbWV4ys/JH4ww6cNWK3GMailItO7dVJPKmnwv8BQQU=;
        b=GZ/rZJE2XscqDaLZw3Upf27q6XLmm4BqCIX4lT3YTEkZ6h3swEfE1tDveNBxFp5xMd
         44i4DKllhSb4SB6JYOncoPGnvbnYncGLowveLl83wPXThXgCnJBpznsnkr8DnMAqT6R+
         uE5Gy8pXtlVuC0+v80vVutFUo2dUBQFMHr2hnhEq7ULNX8Dpt6gcjv2MAP2Pz/o6Hhpm
         bpi6m91OTHvOu8kqtOUQbkK2jdUI5xKs0l4P09gG+QolF2VIJccoXBk+DmJ8c2ycXhw8
         Zii7gf4pJCopUYWolS0mrl1WtFs55fk1BYOhwAtJoKduNRPaAEAiHxZYIGaoIGrUwcgr
         QiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KpbWV4ys/JH4ww6cNWK3GMailItO7dVJPKmnwv8BQQU=;
        b=UaBVs9wsWDdOK9BWoSEWrQ0R/k6egednW9IdQpdYmZCAFDM5+3CYfiGrpPf8ZYhnz3
         vfTBQNLnEMDhybsRCHsFZtjOEDbPefl4qUZmis2h+6mr4MohVfZcDikNBsN++y0p2Yq1
         9VVgB78J5IU19kjPB6IygNbHmEtmdhlZ+8sUUHo80raG4zNbtX2V67MglXltVPPFj+vZ
         LnOqAu0cOk4ezbui+Hk4ZpH76UuXaPW39Htqk+BqGHJc8CXvvuaWPbdU2z6vWKW3qmoY
         hqjqWCvUquug5mJpysSEw//da+xH6AuLMpCZ4qdEYbeqIP2TNKgWHdOcPEBv8DFfvdp5
         m39w==
X-Gm-Message-State: AOAM53285D8xVbaJZk8cCjHwWDB4ZwvedJ6SOP+jDoGm8q3gClaqYRZZ
        jsk+wjM6VChN2yn+FxxQfbuD9sAJbSe2LXvy
X-Google-Smtp-Source: ABdhPJzTjVOScxJelwMR+LDaUl6ZfBLI4HyD+q4777EPadgGRpmPEibxWKtPZ7oPnV5st40GLy64HA==
X-Received: by 2002:aa7:9785:0:b029:28e:925e:b471 with SMTP id o5-20020aa797850000b029028e925eb471mr29683057pfp.30.1620725323426;
        Tue, 11 May 2021 02:28:43 -0700 (PDT)
Received: from localhost.localdomain (sp49-106-215-222.msf.spmode.ne.jp. [49.106.215.222])
        by smtp.gmail.com with ESMTPSA id n26sm13180023pfq.28.2021.05.11.02.28.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 02:28:43 -0700 (PDT)
From:   Akihiro Motoki <amotoki@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        Akihiro Motoki <amotoki@gmail.com>
Subject: [PATCH 3/5] capabilities.7: ffix
Date:   Tue, 11 May 2021 18:30:25 +0900
Message-Id: <20210511093025.98321-1-amotoki@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
---
 man7/capabilities.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 17bb997b9..7e79b2fb6 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -761,8 +761,8 @@ to increase the capacity of a pipe above the limit specified by
 .IR /proc/sys/fs/pipe\-max\-size ;
 .IP *
 override
-.I /proc/sys/fs/mqueue/queues_max,
-.I /proc/sys/fs/mqueue/msg_max,
+.IR /proc/sys/fs/mqueue/queues_max ,
+.IR /proc/sys/fs/mqueue/msg_max ,
 and
 .I /proc/sys/fs/mqueue/msgsize_max
 limits when creating POSIX message queues (see
-- 
2.25.1

