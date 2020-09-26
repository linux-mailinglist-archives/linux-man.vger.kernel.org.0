Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E1CC279B2B
	for <lists+linux-man@lfdr.de>; Sat, 26 Sep 2020 19:08:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726244AbgIZRIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Sep 2020 13:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbgIZRIj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Sep 2020 13:08:39 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56ACDC0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 10:08:39 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id t10so7321042wrv.1
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 10:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TSD7JYjVcWLvCcR8CidWGuD7Jtpwjthqnt5SiLuDTz4=;
        b=fk40+jLMl3MLIjIJvFDHTVObGeyaJm2+hKdEneYvIhCQp/Qd0ncnhHAwQA4kGHn9Sp
         CkLyluSDTovzBwzTmkYM2D2gqK2iV8VCZyL2kHzNKVkEpYn1/lXmssybOdu1kfm3oep9
         TJx99dHvMeToDvuKgz2tPGmh7Qa9xtE5E4c5KjQ0NZ6cbZiG0JbB5msRUe38CorkNZbs
         T8jUNga2DsCzKjJc0LRU8IUCRYN5Y7sthqLwXE0al9damQcDBoISCc73TnaPlRMhnTQV
         /jVyBKx71G6YhpQ10MLSNt2wuCa7/oB5OvMWmRnk5LkhHWkm5UtgrnHYnyvF0bFSBgb2
         Xt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TSD7JYjVcWLvCcR8CidWGuD7Jtpwjthqnt5SiLuDTz4=;
        b=dUhkWMXTH76er77Rp6PtPQFaDqCGWii+y0NcPLdN2tZA7sDtlwiJ/7P5vWfuGeYTXi
         ZmJzg4t8lH6npGUgKKDoDDLr1/L2qVE+gUPD38JGudmMSDECv3b+7TovLerI87+yRQbI
         nKh5NsruGS4eBpa3lIqbfxb8vlOt39OjMXUeDBtTwCYB1dkO1zbRWhns3yJarsf0yiZ3
         HbTZOsaUMKiTx2gv/UIXZenC1vgHLEyKPENGEiq3qmbbMrL6xTbBsq7lzGXMH85BK7W3
         7OJnhpr5jNHUqve+CKG70SQuJzfXUgBYh7ghYLQuc4aj0XSOAb6pEpDjTgN17qq1gFRa
         UlSQ==
X-Gm-Message-State: AOAM532mGELROW7fc4nQoCuMG9JwFosZb60X7Ej9RqTHpdgi5Y90WDi6
        iucC8+x0TqipML8B5M3IH2o=
X-Google-Smtp-Source: ABdhPJwHSJ6rKQm3nIn2YjFhqvFIn+yTTLJEtBLm5odeLOWVMhDYWqpStz4YLl0VARpKyT4k9qhfNg==
X-Received: by 2002:adf:f586:: with SMTP id f6mr10227756wro.299.1601140117875;
        Sat, 26 Sep 2020 10:08:37 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id 63sm7514059wrh.71.2020.09.26.10.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 10:08:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/2] va_list.3: New link to system_data_types(7)
Date:   Sat, 26 Sep 2020 19:08:15 +0200
Message-Id: <20200926170814.2121307-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
References: <20200926170814.2121307-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/va_list.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/va_list.3

diff --git a/man3/va_list.3 b/man3/va_list.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/va_list.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

