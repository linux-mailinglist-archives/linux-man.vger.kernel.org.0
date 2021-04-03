Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30DF1353554
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbhDCTly (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236731AbhDCTlx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:53 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85E99C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:50 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id x7so7468024wrw.10
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rTKYkInho8e1sIcxIAxFLuyehNxSK3JnEgfyns2WLcw=;
        b=VXoOlUpsLH4dkkOYoFkaFsHrQ1GdoCashok6rFy+j6xnT0HtJwFDUxgqtKe/yEu2c9
         yVVW6Ik0q18UhsjXFNdqMKzY8WZGZDlDHoyORfJ7MfEHaHpZVE+tm9LEhtHR+XQRZ/qR
         I26Ir0fW9OeIij5XS9jTrcS4xPgzNO8pHJ8FH9J44ESM4NDW/OthgQPryQ9gJuIIsDcT
         fw2yhrKx033iLf23TLBsMNixua8F25srhYmwiXsPxotm0mqpcNLJ2JdQ9yEz/XglXWAb
         AysjQJ9M/g4c5fb+nYyuBvgzmCZJcRRfsEb6LBJ5sufdF0PyRG3b+Re3N2W9O+/uQEqM
         E+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rTKYkInho8e1sIcxIAxFLuyehNxSK3JnEgfyns2WLcw=;
        b=pezsxUS0s7zlQju2Fv0DB4pOyPB6slo3wW8liWNrEuiLHT1AlVjyTjXnEtAmvpSw9H
         G7g2LDqgTgUrg/tTda18GXySRda7RnrbQJCuNcjNYC47ZzhNq7a5wPRmTR1EsX+sulP/
         pTj8LM7UNc1swps3QdWsEiq2nEYc4JwjNx9k7bB62a+wnd+lt4tPcETxdrHJfBRJDT5h
         7UvE+UbIaWYKhgo12PTLIDzRLIdrlRkkqJXkI+2VHc/Ro4IDJcGOwucVkN7IEI/DgYrK
         kXff2ZYDS4aYUf9LCR+7gq2NKO539Mm1mtjIWlbOnHgSebzkkBEeOQ53b/ABr1A8/7ur
         gXdA==
X-Gm-Message-State: AOAM531n6edY6ig3Y5APEJqIlpSdEb9J4Rz33hHnoZuiciwYfvNfE6EJ
        gDGHaWCUhDqsIWMxIvtr1wY=
X-Google-Smtp-Source: ABdhPJwRTwtRXgHAYq7D0Ky4Q9bENrOEWbE2fo+ab5N8087ajN7pfV2C2FgMd+4FZU+zHvz6CXz/wg==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr22113134wro.404.1617478909352;
        Sat, 03 Apr 2021 12:41:49 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 02/35] sockaddr.3: New link to system_data_types(7)
Date:   Sat,  3 Apr 2021 21:39:54 +0200
Message-Id: <20210403194026.102818-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/sockaddr.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/sockaddr.3

diff --git a/man3/sockaddr.3 b/man3/sockaddr.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/sockaddr.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.0

