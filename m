Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6D2828A71A
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 13:16:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729746AbgJKLQS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 07:16:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgJKLQR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 07:16:17 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC432C0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 04:16:15 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id n15so15639956wrq.2
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 04:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I5dSbdD8zPkqZ9IeMYUeU4/bKGW9fkr0M/ZjNBOs1eY=;
        b=tkSHlvdYCAguaiF+NfewcEirqCR84aHXHrq9+vGyoDoeBqQfQQCLd7Ct6q1xpk46Qd
         Puq3pZNTvFZUa5LvGadn+1gwmPTtaxqUS4f3Bh0Oaw2eJfqetcAwHUcw+Oe6wUWR/qon
         I/Hz4AtL3oxwTYrjZDzdPc3oI3WumkmcdmZ7melERvcoaGarMwSp9XcYL9gdKyiUolYU
         fCY0IeiFQemwFtDt77ZB+UZh5N90zn19hnh/nZbFLw5OwQQh/zXTwzfqtfyT/KBBy+fB
         0iD7dxj8g1lJx/DyXi4wMiIJA1bSChuGxW3skDT9+D10BAExetELvLkDxT4JPxcar3lM
         cKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I5dSbdD8zPkqZ9IeMYUeU4/bKGW9fkr0M/ZjNBOs1eY=;
        b=nlwUceoOtpbi9hcQIDVavTudRLNZr174jmRhLc5GfUr1ZC4iyeUWUe5IFZVhb2mV48
         5pMf4zRMUL3N9mKAdR4tRNos8UifUuibJrPVkzkqP+52LNg4UK1WAilZ0RAMKETft5c7
         PfktThDYCAuzcO4ri2h2uVYbmkOluOAt0kHnjnSPKtXPkMOp75hKE7Cx4ntuc1niGRNB
         q0f1RmwsX9REW8H8V6x/Wy6aw9m7rjLKRW/nVjEqSB7xdZ6XlQPG5mTevo02kx+/gdov
         G8mvH+uFV3jyCI2tQoVrz9nL1rMjN0IQWWWzL8UGwpU3+w3P36dqdEV/X4hBKgygEu3+
         y+IA==
X-Gm-Message-State: AOAM530QWUwvLJq0593gqsKxGQMiO61uXF+CnvG7dqfmYZh5UNRyloN+
        TutRIRhYWd8vO5EzHU3xLdfqTDMxA7k=
X-Google-Smtp-Source: ABdhPJwHChWD+exYLVvsyrSx84Zfv5DBQmhjSb9u4PA7kMzadxj+9G3V5t5vFoMtTQzw8S1lHFWXRw==
X-Received: by 2002:a5d:4843:: with SMTP id n3mr1049676wrs.416.1602414973799;
        Sun, 11 Oct 2020 04:16:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 64sm191344wmd.3.2020.10.11.04.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 04:16:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] regex_t.3: New link to system_data_types(7)
Date:   Sun, 11 Oct 2020 13:15:26 +0200
Message-Id: <20201011111525.9735-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
References: <20201011111525.9735-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/regex_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/regex_t.3

diff --git a/man3/regex_t.3 b/man3/regex_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/regex_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

