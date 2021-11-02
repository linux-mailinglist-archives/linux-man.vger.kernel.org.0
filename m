Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEF5F44353E
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234958AbhKBSRg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234938AbhKBSRg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:36 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E07CC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:01 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id y84-20020a1c7d57000000b00330cb84834fso2696073wmc.2
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7IR9ISoTQ8QVW75Kxcro260DBZYeQkRxWQHKV0l/bhU=;
        b=LjrlWLw1XgT9Gt6Ob1Quhh41NHFAahzRxhvm3IRy9Dq36lLrptkjbifcCZH/AXao/r
         49VnoPgBF6ee5ddYImJhZEXKMTOH0kjl6jS3w1dRXycywBTZbboTVY9zFCKGT4mrBq6b
         SdoFpgJjBDeetQWRDQkbZ3SrWHZ7OePq7O7+bgzqUSzSzkWw7pJcf3x+sFNzFguiLkcX
         AfdcqTaMjLm/a9FXdefCVSda1nFEg5Sl8s9MBPMGwWXPqGvKyu/IQDmQQsC5okCNv4Q7
         sEUVhcZOdADRKpq0cpkVWW622rehvhIeTkh7Z2ENofs3n2kZFSsA5wuYU6hkW6hiNxiN
         nliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7IR9ISoTQ8QVW75Kxcro260DBZYeQkRxWQHKV0l/bhU=;
        b=dsWcE5+xjp2D4Jq4L5vkrttpjI+TYaCjUPJ5Dn2qAigjBvyiVUsP2nURt+nz87VEjM
         oyTMEu1tCmRhy8dWLwHYQ0oCqJcQoe0XNh/m61u9Oqrw7WakEAR++fqMm9mohE4njnda
         8zyF28h8hlpR2NEUs+BtmBO/qA3ZXb/ka6xHPxpqWB4ak5DerSCtkV13ilJvpgRTtqro
         ajH89U/chPs9MM9RYKaQKWB97LI0F35GclE0z9/Gk9+7L8gmbGUnCnvYErnNTD/l9MWJ
         oVbUZ76ibKjuF3J9ySYoC7QhAvGAQki+0taHp2yHb8hns5hm4/WNnQETNaLfXxWdPmQP
         lIWg==
X-Gm-Message-State: AOAM532Gdu/fgl5psii8FKzBQYHB+MF6ULK2LKp9PbD9X65IiQkGguBv
        Be5cl2AR+sUREKhkG8IZ0idXaVNExxg=
X-Google-Smtp-Source: ABdhPJwZLDZTAsQDXeDchvBspy68WC9/pvWSUEXzr2LZyGpXjP6X7joG2dU5lP1xOcQq8qUy9L+yyA==
X-Received: by 2002:a05:600c:a42:: with SMTP id c2mr9085640wmq.154.1635876899745;
        Tue, 02 Nov 2021 11:14:59 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:14:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 02/37] stat-struct.3: New link to system_data_types(7)
Date:   Tue,  2 Nov 2021 19:14:19 +0100
Message-Id: <20211102181454.280919-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/stat-struct.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/stat-struct.3

diff --git a/man3/stat-struct.3 b/man3/stat-struct.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/stat-struct.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.33.1

