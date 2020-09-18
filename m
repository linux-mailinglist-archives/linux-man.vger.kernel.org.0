Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91CE226FC07
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726260AbgIRMFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgIRMFG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:05:06 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECD2EC06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:05 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id k18so5301307wmj.5
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7lcEGQIrgeownbZofY8gJNnmBmOeVKwTRfJqmHYJvZE=;
        b=HRdXPzsxaKLBB2IQ6FPXEXgILL47/Dt8jrBe96DA0mwP5KYOejFIis4JrT0GUkJKQD
         /EXBRhFi4w+rLLPBwmeCBa+8r29IkEc3I0asTleZj3fugmvzxsbyvJZXZdrjUlh2UpOM
         slPXyOU00y+SgimMwcIh8cLdRI9EVS9Yqh6zT0J91NQUF0JkhK0FPS/XA3vwZJFBh+Sx
         77wMCWE1lWqHOjmLWUAebl3bEXHMCYAsH4rmQpLklytx9+yEiHcsgBabH2mBK4RFD+2i
         guznsPCsPFC1NWNlWcfQs1ruJJnfTKmMGujxG6ly+3SVR2Q7SC6MdArxJFKeaCjdT5xD
         LOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7lcEGQIrgeownbZofY8gJNnmBmOeVKwTRfJqmHYJvZE=;
        b=kbJ7OU2NKWH8TzkXM/k6uheOYfy7i0two0gF9N13fmTFWEVQZ9Dup2f+U2oHsTjDIq
         cYohTi012neXTlgYpFcEj0TLJGq94/9xy7+REbLTwwnnFui9zPQzS/PFKrHgCZiyUNF1
         Fuo1gEv8OASmIy9VtdG12471XsSjDwzMgozZKHbAJviXnzFOKZiPe2YwQpQHp9fOB6Jd
         aSNtlo/2kEUPlkVvJgmQaUGT107i7JnRxR0tl7+kCOI1S+gXsSEEk90SwfloU/7Uf6Yn
         q5eVuMtJj/Rv1VyFpRN40ALnJkVhhlf34OO/HgWgNGz6qPhGnwF13/c6Z6SOm0Iq7TTx
         fq4Q==
X-Gm-Message-State: AOAM531oj1AOaX5mZxOqYzUgjS7g4Ztp9EODVNLgjkFO9r8KL7kcCG1v
        au/gcDrL1pZObK+uMzwv88M=
X-Google-Smtp-Source: ABdhPJyxe5YVmz7UPuDn6Cpy1N7qOE4GoUphS/+bYFxmYt6VnANPd0NzPOcefLbwnAoEDd2HQKidOA==
X-Received: by 2002:a7b:c015:: with SMTP id c21mr15363250wmb.87.1600430704623;
        Fri, 18 Sep 2020 05:05:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n4sm4862502wrp.61.2020.09.18.05.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:05:04 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 4/4] ptrdiff_t.3: New link to new documented type in system_data_types(7)
Date:   Fri, 18 Sep 2020 14:04:41 +0200
Message-Id: <20200918120440.30281-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/ptrdiff_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/ptrdiff_t.3

diff --git a/man3/ptrdiff_t.3 b/man3/ptrdiff_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/ptrdiff_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

