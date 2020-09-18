Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBA6026FE81
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 15:30:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726640AbgIRNaO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 09:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgIRNaO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 09:30:14 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0439BC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:14 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id q9so5351978wmj.2
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+1pcFZynZH9WFsy3Jb0zMQ2eSPp398wRiq9HBJaL9uU=;
        b=TWBZpJ+c7Y4dzzr8UMLBqLCKMfKUQp1aRjjZ1pBfX++8Q+8+xVcAfpHLMkZFbEQDjA
         eCkSBo9WNlWP0zm4bKo3yFG9+v0rnozChDLMhI5JlstmyHXGVwBcvQxQpYhgt+S5ZsdU
         /gk4eO2MkkbfPPCRMAn8kNW7cY9p54GLvIoBkEiZ29P8J17Bsod/I5B4Jaae5NeXoPnX
         eSkOzyRHoyzT0SzCKxsLS0uLyCW45nGsHHCA2tzGrDRBegf89y8ErtQ+lVxqXazmk9/s
         8R/tzAyG2hDc8qR5T+ULArcw96Z1W4Zh5pdK/PGsBsL8O47a/75Iq1yZapv9KJuOtkTO
         P3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+1pcFZynZH9WFsy3Jb0zMQ2eSPp398wRiq9HBJaL9uU=;
        b=TMjN7ZgaTt6Qo3WoGHYNtAvTQ/7QQt6Rgs4JL/CYUq2yI1oqqOP4NZNhl9F2sxOdvc
         ucwXvmlmJ4PI6lmx9MNdieFMzIeII0V9DJZc5so0jTMg3zm17/pHi32FVUYQ97OHoK/V
         QVcKlrILJ6VKhSnoVYrcUgjO36CHkr5eX6uk57xL37GHps+sDvkon3XVomXairkNOqjD
         4hs8mU2qYS02lYgzkvW7YpnbrLKHX2mHq+ZjUwwMd44SPcR7vGJnUYvJxHHIz848Adp3
         xfJopxmhR3rBfgerdDX2qbptFQeje+NsterONbXBoHKyn4WBO0C1E3AMmYu5oWCDmiMi
         F0Tw==
X-Gm-Message-State: AOAM533iBzH2CKatxvo9KSVS3R6p7SeGxt3nz9y8CSqp7X9WcFmR5NtP
        6h7+r27AJXpffFFQzIxddfN24zycg7oGgA==
X-Google-Smtp-Source: ABdhPJyJ7tYaVm+h8eiao9FVdkvhTGs0GV2rwuh4hL9bFJN3QQORdiACvie9hZPfO25v0dZBPnnSAA==
X-Received: by 2002:a1c:4d14:: with SMTP id o20mr14895557wmh.115.1600435812713;
        Fri, 18 Sep 2020 06:30:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k12sm5304764wrn.39.2020.09.18.06.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 06:30:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/3] regmatch_t.3: New page for new documented type in system_data_types(7)
Date:   Fri, 18 Sep 2020 15:29:44 +0200
Message-Id: <20200918132943.55424-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/regmatch_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/regmatch_t.3

diff --git a/man3/regmatch_t.3 b/man3/regmatch_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/regmatch_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

