Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7E62407944
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232693AbhIKQCq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:46 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B520C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:33 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id i23so7362870wrb.2
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=edupD3hEUai3dstHk9JYxKZbs4hvH8/JYT4vQ7kIQmE=;
        b=KuvE5Yzi/Y7m18a/WQLXQiuN/bkjGd1SGXt29jqL99qXLIF8pLD3FrshNKxGmkIKNs
         mABK8ltG5SpEebxZZjDB77Zh79r4Z8dDW8zM9eNbPTpiSTDE7i47ByJ1rfzvhbupoeZt
         4DIWKi8HzsSpzFi3SgDFr7oZTIXruE5RLiiMufQ6AYbsrWDPaqajmJlx2im+IGbb0blK
         d8xCdRej/bIcEovhAJoKyfbep+95rdNImSERbAYbmzR5O1VWE8VM6wD1hO8YUaAk1qg/
         KHemEHNbqM37/olwHow1HR0su6c57RVrAhRGcmNTrpoQ8PdXi6hqxtDHWEz6zSKJF+ae
         JEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=edupD3hEUai3dstHk9JYxKZbs4hvH8/JYT4vQ7kIQmE=;
        b=32MwebJozGvqRL1raWovu83biWm7k4ILZq4PqW6hHFeSIIM/LYrtgMGmAE7nDcTzmM
         9T1IFA/pBn7rSfcUr4H9N7g+X3GIX9G8Db/pf0+AVNozQwBF56RNFJs9+f5YRtZYFVvb
         /6BrYqYAaF+zcVM8pvlU0nwCMUH3SEky2EPVBYLlhUPW8ZnkG4sMHw9RyBysvVch+txS
         mmWMvwTfsOyFxhXYLIfS9aLMg3dw62HRIncWLkir56ILBfZXtDuNvfXvrpi23RSTPby9
         f+DB52cGWPBZ1vnI7JdG/IUEvD7WqhnVQvKQGrD/J91hhXej1MqNPsrJH/rms1xzX8aY
         tfYA==
X-Gm-Message-State: AOAM533sblyKSShAtjP5XL7NzSkumthjDTL4HIup2wLkFxtTU/ZEfTZt
        t20KcasohzWzk88nR4ytUtoCa4A13Jg=
X-Google-Smtp-Source: ABdhPJx9KasFmlrfteTHgZV5isnUbFQgReWYj7QfA/9xxI11n3wECWeapOZz7R3W3vRqkGOsilFz9w==
X-Received: by 2002:adf:d209:: with SMTP id j9mr2908690wrh.97.1631376092084;
        Sat, 11 Sep 2021 09:01:32 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:31 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/45] write.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:38 +0200
Message-Id: <20210911160117.552617-6-alx.manpages@gmail.com>
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
 man2/write.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/write.2 b/man2/write.2
index 1a2de2722..18936a2cf 100644
--- a/man2/write.2
+++ b/man2/write.2
@@ -39,6 +39,9 @@
 .TH WRITE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 write \- write to a file descriptor
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

