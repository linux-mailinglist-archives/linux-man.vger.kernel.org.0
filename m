Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8656429992B
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 22:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391252AbgJZVze (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 17:55:34 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:43339 "EHLO
        mail-wr1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391249AbgJZVzd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 17:55:33 -0400
Received: by mail-wr1-f49.google.com with SMTP id g12so14606032wrp.10
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 14:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HNYgWDj3uPVw+N6PfZLOEXWiGJAFdYpjlBzk2//9VXE=;
        b=MfsMLfotn893XtZkameMo+mysB5bSdubYzryqIa0BUAtwGS/8R10ldQDJZKDh3HGX1
         h1BVtlZkHvNGLSIf51uFIc5GWvNNvps56GAh+A7ORsCErSv8GiHY5lym2emQcca7zklY
         L73NHt0l/QygWln+laqnFwzGZJ5rymTpfFiWnCKF4mCGUpV0UfpBGpr7qKvVOSM7Nhxf
         qYWyRzWbiTPZLJL+L6/nrrArEJAEXYDkv3DmY8DlZzzKUNDX6JCAHEhPkWSmaV+Qsuka
         tL55E13KwT3XnbIstGBiCiVe5X5w5/4fvCqE2wDKBCj2pMtn/2aEsVQWgI7Y3Fictgaw
         a4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HNYgWDj3uPVw+N6PfZLOEXWiGJAFdYpjlBzk2//9VXE=;
        b=la1WwRN35pm3//mQ1YHJEK6ODbORWpTOMl5PyR4qhguzPOkVXtoVXIkIbQcbqRFhKf
         9NE6GHui+dJe1X1WsfpFjit4kPzN+qMuP7J0TOmVoUyLI88zlfel5kJ3KRnH+6oYq5Ru
         kKuMD3Be8ZqGbegfrzkgUk3MrFyw2fLAYc5skeY7NUxIv4xOFPAzK9Buk7dcg10CX7Op
         qH2fphPwIfOQVgipgzDlhJVzPIJ2Qa9eW8jLspCTn78v9EpmpbksHTH7okO1ncVkjxHe
         F776/sjUGYCrPvgYTxq4ocDksvyZOmHnDSb2l4ES/rRphp9VoD/YIOMlh/qIBRMKC7mG
         21YA==
X-Gm-Message-State: AOAM530gLE4ag1DUP1/8cZrWnxwyKc0uADXPDipIEliMk0cq2I0h0rQ+
        IRcTQc2QvYdvmtFGeQPcpIM=
X-Google-Smtp-Source: ABdhPJxBtsra21VWeXXKJLLzG6eFYoQ76vH8xLpKH3uaK3ebe2FXRSriDt2/z4MkMOlB2LmFTRwpNw==
X-Received: by 2002:adf:ea52:: with SMTP id j18mr19581382wrn.422.1603749330879;
        Mon, 26 Oct 2020 14:55:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y7sm22719162wmg.40.2020.10.26.14.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 14:55:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] error_t: New link to system_data_types(7)
Date:   Mon, 26 Oct 2020 22:55:19 +0100
Message-Id: <20201026215519.23601-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026215519.23601-1-colomar.6.4.3@gmail.com>
References: <20201026215519.23601-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/error_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/error_t.3

diff --git a/man3/error_t.3 b/man3/error_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/error_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

