Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4882427C26C
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727663AbgI2Kbc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:32 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9718C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:31 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id o5so4729452wrn.13
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LNyJVB9pXtXpFAgurfHMzzh9Ktv4N+KueNZX8jOpqLw=;
        b=NK08ioWM/pqdUU6OxhsqGuRvfsHJEGxMSuCnBNQ+Yh+PVtpHey4OzYCqqBgJZ78vnC
         fPRIeVxWHqx8bsU3MHVR94P8kBL0nefiqluYZDIyBXvy59DEV6Kl+T9ZqNAuE2cuOqgd
         faHoV50DKnSNrFm3ZpzFCYAAbQTze1ZUIB/2faHrlSnaiQKHF+OGi+7S9aF2TTHcdOMT
         hL03dTS3rA6wX+VI9wWcapuiPupUpOYtQVLR3tDuh8X2MPJHRJA5vHT4g3IKMFK8Kn55
         Ysxn+YGHQQ5if08BUx9cXPJHi3xzYlLqnUsUAnbX8OXAF7zBCQtCDXcpbKbPpqtAxjdl
         UvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LNyJVB9pXtXpFAgurfHMzzh9Ktv4N+KueNZX8jOpqLw=;
        b=ZjbuIxHVZnx9JmpudrT7xpy16s+/6dkGpZz5/4jULFXL6a30FwjK/H5wbcE1fQ4COj
         o3CCsvY7RWmf5OPRA6w4NSALP5t5YqUt9dV0bnrar4RQBxrDrxzLePA5zZWeTl9JLc8P
         8A0c4FL+7I+z3csYk80sGeNKZk2aNUU2Pi0xI+eQwSA+pHKxJEXtQVEys0dm8PQoItJx
         UpFrIXgEFWO5Qefud+IVsZUBtU/hEG5vobNY8m5oI4N2Q8IhOFgxFqRNP8yZ6+/WAzgu
         FiTCDMyvtH1GaRdi9cupqpF8ocjIuY6Q4wQYTMvjL8F3j4H2gM9MjVucC+NZHOcGeI+E
         bnuw==
X-Gm-Message-State: AOAM533YHiplB0ZOrJfv1f/ZNbtbpex4muBYMkWNZ8pHUSZDdYa55RjQ
        h1cGg4BJDFBwUpF3GJFoQ+A=
X-Google-Smtp-Source: ABdhPJz9a4qXTVy+DAiR833XJrFFjM0AKXhzsAUgWR/Q/M2AzUTRiVXFKVf9SKuKQjxz67mRfuF/OA==
X-Received: by 2002:a5d:6691:: with SMTP id l17mr3612474wru.10.1601375490564;
        Tue, 29 Sep 2020 03:31:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 4/8] uintmax_t.3: New link to system_data_types(7)
Date:   Tue, 29 Sep 2020 12:30:26 +0200
Message-Id: <20200929103028.56566-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/uintmax_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/uintmax_t.3

diff --git a/man3/uintmax_t.3 b/man3/uintmax_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uintmax_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

