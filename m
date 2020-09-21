Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27A992729F3
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 17:25:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726818AbgIUPZb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 11:25:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726471AbgIUPZb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 11:25:31 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A171C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 08:25:31 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id k18so13165722wmj.5
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 08:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oUtUjund2PN44hkZwnd1wl2gXsy0/cmhCB+XQ7brOCo=;
        b=CbIXNcJBZTY5Qha49H8ERHTLmrWF4eUdK3t04vvOW4DmwVQhH2b5PwlDapg0M/uOzz
         QKOoZAGvcBLo0WjHPhI5HwjGHBdUHTxLeEGUFHtUXLxP89gasz887S9dB7oXoQOGCIGg
         zDgkAP7PLIy00Zm/0A7OOL8fsyg7JUK2BOuPLecbgEbMl+MjJ4rFPKI7sEYSWS52NF0j
         Y+rLHe1aaVbfum3i3qEwA+81NwqVEZsbPDROZbygDd3Yq0DHw24FtASYVzEwzcdHM3g5
         Zc4WVomo6EFQHHv9CVkh1VrzmAfBkEVmL7vE3BdAbje7LGKsK8DfZ3GxhLsRC3rYrzYS
         bUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oUtUjund2PN44hkZwnd1wl2gXsy0/cmhCB+XQ7brOCo=;
        b=lm930c2oDyeQlJql+UCbtNmzip1B/JjxHldQtTJ4PcUEAAy74iQii5DzdBZSrWskoY
         v9gvhLO52KrDzUUdACi2ZJM5YMe2FqW5ImcpnS6MlFaBV7x/ipIomRrsNjJjJWz7AE4j
         so/kDnTWzlqZRXO7drBVewMZrd6AcN/QkfJxtWyB7I66MbuGFwMKVAn9Zu1zitn1/8Mp
         tycqY+CT7/Y2JACS8l8X4lrdp6rUudKn5sv6f8LlYzjJVgqUBWYMXVb9AeoXPw2kKwFq
         8VldgNsUwuBQz8TemrjNZw0/ZLKtftH2bzjdXX4w9mh5M6CZIx/RwPqk2HhHfWz647mS
         iZrQ==
X-Gm-Message-State: AOAM532iLx+zW/6IPXmYdadztlxvyC0qUlIwsuIt8IayT3cCy1yx2/+N
        O1Zyn3+OM/R25oL1+DgvvRMXjoKbm4Y=
X-Google-Smtp-Source: ABdhPJyiiWrrn0suoNSMslzXKNPHpScJ0Rv0ZhVFGrOTp/WLKFNuI1Rbxjwi+Y7yHD3JD685kSz1+w==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr137707wmc.143.1600701929962;
        Mon, 21 Sep 2020 08:25:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id d6sm20609155wrq.67.2020.09.21.08.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 08:25:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/2] fenv_t.3: New link to new documented type in system_data_types(7)
Date:   Mon, 21 Sep 2020 17:25:17 +0200
Message-Id: <20200921152516.85879-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
References: <20200921152516.85879-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/fenv_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/fenv_t.3

diff --git a/man3/fenv_t.3 b/man3/fenv_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/fenv_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

