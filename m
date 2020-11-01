Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C406F2A1E69
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 15:01:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726402AbgKAOBL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 09:01:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbgKAOBL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 09:01:11 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12799C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 06:01:11 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id a9so11513774wrg.12
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 06:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WePLUAqRzAhsLICM+mamTwtoHvyf3zHzPVqhDkI416s=;
        b=utv8jzZ9l4TnjTfah02fkXul/w7kHozRZVYOBmzs37hGK7yMPw+Ur6cYSKa1FflFAz
         VrKRIp+fSrKXS/OK+yMLaH1OCBswOzeGZZN/qT6TwyjCkfJOivYJ2Vu4hYNpKBhrqWBl
         kv1FBsF9R7Ll3gfZKdHxQb6vGdg/ZgZNHTBYMXZshUEjOyJFPjty01Leuh6UDyHOlaqB
         Wx13tpk5yd7s1G7VxZYvrOG9g0Y30il7sAvf82VsMnZPkrAOOfi2XMxbUSac9OUY/Rh8
         TQdJ84+y2fniDgMOXSW0ia1xVKKMmdDQCPZk+WFjWh2mqDZBkn29BJUXlchz30xbaPad
         8BAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WePLUAqRzAhsLICM+mamTwtoHvyf3zHzPVqhDkI416s=;
        b=H4/mNWRcuU1IX5li9ya/vEBIDyx0lE7gwS1ZQ1XczVle8BfuQi0YJ0S7yKNtwBKEGw
         4KzEi41AWV1ukjlSo1LYf85rw/qgkHqlf4y3FMVLrfYorKkG6b1RNHntv7i8fji8hloi
         016HmNSAWDt7ywH+1rP6FAoL5UFmyFbUv0niY/e4p1/1N7WpOVnabhyc/LHjYjZSSRDg
         DXNtDvmZYcdv3uyzwOrd5Qad9rYfeCRDsPrCsYWFWFRtAjWNRYPhTkkpNkr1HTBbe/61
         lDsXijAN0SFgBVcaFHOJfiOzFSVZAgLL8wURcw6J7oVMTkNCm1DLclS3kuyq7tvpye+t
         FR4Q==
X-Gm-Message-State: AOAM533RE4ieoWRulpPule2ILrEciR1Dpv2p3DYi/b74dLgQ1t7VJDzZ
        XA1WWXQixQnmlueKS9VN5UUMvZQYwfw=
X-Google-Smtp-Source: ABdhPJxaCabROra2GA5t/fCSTT832I7fejIhlE1BAukp/FD6XiLbo4lGFrlbCaxNU6tUuVVr5lO9Aw==
X-Received: by 2002:adf:db48:: with SMTP id f8mr10387335wrj.157.1604239269776;
        Sun, 01 Nov 2020 06:01:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id a17sm18689238wra.29.2020.11.01.06.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 06:01:09 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] io_setup.2: SYNOPSIS: return long
Date:   Sun,  1 Nov 2020 14:59:58 +0100
Message-Id: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses a long as the return type for this syscall.
As glibc provides no wrapper, use the same types the kernel uses.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

Please apply this patch after "s/io_contexxt_t/aio_context_t/".

Cheers,

Alex

 man2/io_setup.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/io_setup.2 b/man2/io_setup.2
index f9860fda5..1a89de220 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
 .nf
 .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
 .PP
-.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
+.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
 .fi
 .PP
 .IR Note :
-- 
2.28.0

