Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30B2838DB0B
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231709AbhEWLYD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231719AbhEWLYB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:24:01 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D11FC06138A
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:34 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id x8so25497550wrq.9
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N80hYyMxmmRhj+ID6odN9guyWuxLpdDHgHGgcgWdS24=;
        b=fqAdHIFS3+J1ZK2KtTbxumlpuH6V+KXO5HU36ApNcQTvGWCVanRLCAIwEs9G4ElxG6
         OjQTul4CU5IhQk3f9senWmJwNljuQIfqVemJDYJGfojkrOMetBSoFqEtQuoCbkZdU1Ub
         5VnPR9JqE8Y5cbcuUN7hgWnrBXQGuCFY+YkXwopEp2c66CnQZ/UZ5cGEB6VabS7ccK8A
         1U5CnUUMqXgJ6FDGG0Hr738sEnwEC97xHTJTxO/1PxM1vWnFEKGrtz5+BwUF31RncLcx
         QCgKyRNvWuOBwfVnJtVF48y2YF91jLEBWgv0fyjlIw/lZcG/8C7anCvp4bCNm7Cw3Kct
         dOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N80hYyMxmmRhj+ID6odN9guyWuxLpdDHgHGgcgWdS24=;
        b=exgfTEdKc8gkIseGbJyqDaoUgVusZqpck9i0U4+8qXemhEjifycPdlMR4ld0maU40K
         Cy02it5iqluZeA6/1YmLJQ+CwYEt86hJf2jA45Hg0ZOCOAYgDrUi33po2yJSx1x/U+O2
         a2XeMp8df9AQ+uB5IZhJ8FWE8zTIwO2LYt506MiiNbpp55Oqd3haXMgfAj6x49QLzm5+
         Z6vlgP+EODkKuCiipwFJJwgz79MVtncU/znANZWstVCkHL5OWl4aLwZM0TqqHkRpvrnZ
         5FKy+BoZELHYB+ZNkU706NeaPWc5JLLYyT2wO1sM4OhL/0WYvImC+Dvrpe3a0c/oNPY9
         Z5uw==
X-Gm-Message-State: AOAM532fLcjiqS4mUcw1THlm05DDJzg/hIqooat7BB3cb4bRLw3li9ib
        0iR2kERG7hXdi0JlsIk5bDHq8dAOsqY=
X-Google-Smtp-Source: ABdhPJxddP7eVyNM/6pOXplXL+0MPtAzmCL6eVfsPoaTYjNmFpZITxdvimdtuhNCugFMFLGVvt9tMQ==
X-Received: by 2002:adf:e6c2:: with SMTP id y2mr17395273wrm.384.1621768953119;
        Sun, 23 May 2021 04:22:33 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:32 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 6/8] blksize_t.3: New link to system_data_types(7)
Date:   Sun, 23 May 2021 13:22:11 +0200
Message-Id: <20210523112213.170202-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210523112213.170202-1-alx.manpages@gmail.com>
References: <20210523112213.170202-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/blksize_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/blksize_t.3

diff --git a/man3/blksize_t.3 b/man3/blksize_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/blksize_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.1

