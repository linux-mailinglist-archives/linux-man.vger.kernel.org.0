Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7A6298386
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 21:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418735AbgJYUr0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 16:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418732AbgJYUrZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 16:47:25 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27E7BC061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:25 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t9so10192526wrq.11
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C1I/0sEfk/qcaFDktSWlSdwNEmrb5TD9NbRKsMXHv/g=;
        b=jA8ycQ/rYG7ekuYpUOw0J5vSufWpU+yfBsYUsQWX3WG2/LYysO4+6uIISby+ZC9xAg
         8k5CTInoZnw9dKsHD6mjDFUOqBeU1LkPsKTBqhS1AHmFYSwJg3lbF6efOlNLPgg4rM7b
         awapR5r2bcX45xe4ofoiLQHXJpWwKHP5Qm8q8zCAy73KE+zPt0h8XY3krqBS+TaxDy6a
         Sbng8epIbu+RhimUUqkT8+9mM/p3jawM6/o382IOtShebLQutTOTEL4QsSrTxO3jWw0Z
         jdlzFrZOhn96EZotCVeZVpYfb1rGS2nhiYBDD6eBSw+98SzrWhFAi/1crSF3gicv6Rt9
         2r1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C1I/0sEfk/qcaFDktSWlSdwNEmrb5TD9NbRKsMXHv/g=;
        b=FnUjqyrzDcycikmW0R2rpNjogxhT9VhBV8QYiW0XvNTWNbfRsZ2XiDJ/OE+X+qVgaW
         hjdiqzb6fbugBoWdVak4emHXYYLmBwj95/mA9GVgSBAuCbhX0qg1/qkkKNqtLjXWVx0T
         GKzZlb2j0NdW+sEHls9UgSu5DHVts/A4nWTtORfeF/rv+/TLvoMdv13bfGOx3UqiLJZo
         yt4/9cvrhXmRQheZifqabShHuUWC7h4msNs8ggyZKnavuVTKyu1Yyaq2PWtpvNxIUWnN
         Hk3tSVD2vaK6svUERCBWfYlBjfDi9k39SXNXoE51DsuIkgFJ+va2Uk0iAM4y8tYzGlbx
         iqhQ==
X-Gm-Message-State: AOAM5327QO83YpBXg+gsNJo0GhcN4JOeJIGNazl50bevsRzQVUQU2nk/
        yBuh/Ht499mbM2zn+W8Hf94=
X-Google-Smtp-Source: ABdhPJz1zI0snUIOObu0IVVwARNBYyw23ZZb1J+yd14QmZ/oRu1WWvHZ6WzibNDAn78SKOr30jFDlA==
X-Received: by 2002:a5d:5083:: with SMTP id a3mr13762934wrt.93.1603658843850;
        Sun, 25 Oct 2020 13:47:23 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p11sm18700339wrm.44.2020.10.25.13.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 13:47:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] queue.3: Link to queue(7)
Date:   Sun, 25 Oct 2020 21:46:17 +0100
Message-Id: <20201025204617.6802-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
References: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

queue has been for so many years in Section 3,
and still is in Section 3 in most manuals.

For legacy reasons,
especially because hyperlinks to the online manual pages
would break otherwise,
a link queue.3 -> queue(7) is necessary.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/queue.3

diff --git a/man3/queue.3 b/man3/queue.3
new file mode 100644
index 000000000..000e4b150
--- /dev/null
+++ b/man3/queue.3
@@ -0,0 +1 @@
+.so man7/queue.7
-- 
2.28.0

