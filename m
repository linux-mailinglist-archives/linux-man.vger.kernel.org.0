Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C98029BB96
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808746AbgJ0QVb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36417 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808747AbgJ0QVa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:30 -0400
Received: by mail-wr1-f68.google.com with SMTP id x7so2603689wrl.3
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y0mBDhL9YLUXYz1GC/HpfVqX5FG/HQitPULhptsDwK0=;
        b=JK2jStGEuqAks6Sn5uVqOJcWwfNn9HpwssCBoGvuflOqs1IK7TpjOUERBnWIlHcDyu
         BDOx5gm2r3TUR9m4xr/1LoKI3AKeLneCK5S3bpTt0BUmOZLRgfj3VaWG47lyjgA0wqLi
         a0yz1sxbU2HvLvNduu5tP89WUXNPGrlv+MbsTSVbXZmUwc+ghxY3Ln3I2eepdoQajkfR
         sE4qsK91mmdCtCPbyDgi3Fd6te3GQZZPtUJAyhR6wH3yugLc7oSnbahHlPPSyA92L6Jo
         QiVBDd8n4ZW0TzMkrG03Cved1shs3n1SuQ/YQ7tZIq65Al7CAlSe6W6734A1jvoOf+YV
         WK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y0mBDhL9YLUXYz1GC/HpfVqX5FG/HQitPULhptsDwK0=;
        b=M0/Y40anT2FtnvR7MGGLETMzL+kGHcQmQ5CmQ/jl7CDI+9ca7dCg137fgsai3ivXM7
         VCFqdI6BnqObobpTUsWNlx96Tf5Vj7Mb5HxM4lePDjtEwY8nuNmyJnPZu2Sgt+g/4SV5
         TbkjuyxYYdfKEwmnotEl38jaKaBK8oNoOlxUz2/V4fu+yMitDDNaU8+HO226bqCLRyZo
         eIKkcnWnCKUOdj+DUevQUquc0+Gw4xHBj6WSa+Y3IakfDeawyKDWuStpZu+G4FXG1Wx1
         ASAXHwPH9iQlpzZwj6srqixID/ZwcKn9evMCzRqJduzFIFC0PbSLgqJirfTLCXzcz9KF
         ZbKA==
X-Gm-Message-State: AOAM530rrp7fhVAigqf60O7Nb8cWVS9S/ZFBMTm2nRqoaPn7r4K7IRpY
        qCPK6scLBy6ZdMYwizX/TK5a0JYhdwI=
X-Google-Smtp-Source: ABdhPJxIcg+Qr97/xwWZVyXZRsor3TsWkGeRiphG5a2AaiBSkpRBxuNYpOGl69szOmCpp/2fQ8jWxQ==
X-Received: by 2002:adf:d0cf:: with SMTP id z15mr4006121wrh.213.1603815689101;
        Tue, 27 Oct 2020 09:21:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 6/6] off64_t.3: New link to system_data_types(7)
Date:   Tue, 27 Oct 2020 17:21:14 +0100
Message-Id: <20201027162114.47521-7-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
References: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/off64_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/off64_t.3

diff --git a/man3/off64_t.3 b/man3/off64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/off64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

