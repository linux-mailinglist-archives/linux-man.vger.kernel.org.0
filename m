Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BF0726FB72
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 13:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726241AbgIRL3D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 07:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgIRL2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 07:28:30 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE7FC061788
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id w2so4978042wmi.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IA68BhM62SsR1jnhT7Hv3U9eGSBP2CepQnuQ0BuEK5I=;
        b=Hta1mPykuXlbaWRbkZbAmn4vhkSaQbzOu3Ee+rh8ULafj2j1/3BAjANeVuFqoKpfgC
         5hGHJbHb53LASONEV4aC8txZF87/KxFKvnj1UhBZym8Vr5AP7BUzQU8HbyS+B4YN/zp+
         6YyqDWQJl0l+wwQ7ccrY2aoUZ4Jwr/Fryysc2c9AmuWUxW/TlCX9g/JcO0OdzBlzP56X
         TuH58so1p/Y50bWiMalIBURywzwukYwo5rQUlEdkzIVJgmdMEEh9m+eJRdOsntROI+T9
         YqCl1BtThJAiZkx2EA1QDZuyhieKauXXW7BIzi8WzWXiC3i2ihNFsgwUojyz8zb1GMCP
         yS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IA68BhM62SsR1jnhT7Hv3U9eGSBP2CepQnuQ0BuEK5I=;
        b=Ivf6ijQ+mdn2/9cvPZbq0UwBsNQ9O8CLH+OqCbMO3nlS949s48HJhGXafFNtptJWdH
         nwkA0gKYu11BDaGXV41fGPe1xBQ6UJfR/5WUjCkrifZPBCioo/oE0FPpL9ODYnxKo6ND
         cUtel67olneNSy8IkWolcjRUxFbYNCAs2XEZHnbU0j2kjEVFJEQZ1mt7+kAztoYpp0mK
         nmadSwHcVV3opZNiFUHVYl3BvoAIh/MdKgJg7gakvPLp5sxTHYVQBabj26vyALW8OVOk
         P+hFO+BpFDoZhgbbypW3i55feVR8+SZ1if07oi9g0Lg2Z1Px3Xr4wGoW9B+EFO51urMx
         l2gA==
X-Gm-Message-State: AOAM532VdB3FYcYerEyl7fKKfK+k4TtD62b9DK9gCVnI7YeTl+DzUF43
        q2GRtlL0NTtn+AF5S/yKFzo=
X-Google-Smtp-Source: ABdhPJxlua3P8EYhA8FuiRj5YQm97DlkdVvf6zUT3afPo+ErLls2qLxqC0iVN+rZeFgqROqaktBxng==
X-Received: by 2002:a1c:4c0d:: with SMTP id z13mr14645028wmf.115.1600428505320;
        Fri, 18 Sep 2020 04:28:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s26sm4504962wmh.44.2020.09.18.04.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 04:28:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/2] size_t.3: New link to new documented type in system_data_types(7)
Date:   Fri, 18 Sep 2020 13:27:56 +0200
Message-Id: <20200918112755.21428-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/size_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/size_t.3

diff --git a/man3/size_t.3 b/man3/size_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/size_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

