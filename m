Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 740A02983A0
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 22:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732093AbgJYVJu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 17:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418833AbgJYVJs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 17:09:48 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAAC2C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:09:46 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id y12so10230284wrp.6
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8MXD95DlgzzPeRqoIqj/W/qEPQhJ5+WZjsGK+tWh3Ns=;
        b=GUEZcfMRfi5M6ktIg1aYosWKUEo9dhJLCjAFmSNaROfPbw+x0FKOKcXUmDKEtvmFJQ
         h+F7pUXdRSYT33G50r+PtqY8u/Xl5T6+L9gEkpldvjjOS1ZIiBDna4CPQ4Wl1pHdsFkj
         /o2uY2uzNjHli0zAHBJtywLnOrr/DECotSYl0V9vkzFI/Tc+Aa85bV4op49Rfqo1CZBh
         z+oXWHnSd2kcXxlx78CEeDYOHdwvt+q9jAMejq6BmNPIP3rXdrHK7s7gwmmmf4hHeNeF
         drhOJclGy4mOiMvfqaqPF6qIF+ZRAbvhUAi4iAbYA2CY2kubQwnSIz/+21JWt8smL8xc
         8X2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8MXD95DlgzzPeRqoIqj/W/qEPQhJ5+WZjsGK+tWh3Ns=;
        b=oP9Fhy7/YTnLEVv1kDhaTfGbGTnz+buL2lHm3zRILAvBQGwxZd/BVJHCZx+8Ia8o+0
         OaclWHsVfO7NaIcU0tm/M9nvc67mtKaWwnKH6DgBTzybnuZG04+c8L3BZD58RDokxx22
         StZWuL+8iX6Nn31f/6+9bDyEM5eOMcjCNCsjOTO2CToQVQrvynNNuR24LnItIKLxtKnV
         5nxadjMw0TzpUV8Y4Z3nyBIPrDpu/rtUIMuIfqvtYmbE/XA1AUKybrzSgIoDzgxEtoHv
         gn/4xhcNsUwGamrqYc8oxA6CtGSnTi46lM1XPD31JiVasSkGvrX09rYBhVk6q7bSILUZ
         dlWg==
X-Gm-Message-State: AOAM533DvKfv5M5JQYDELw8Fbc5sUwWUug9iD5tIvAXCtDdrPNqityyk
        Po14FTFYxiPzzSxQLjYc6SJcjwhB2GM=
X-Google-Smtp-Source: ABdhPJxwytl+XgBLckFIhvgOmQfQZVldIXQst8B/hGDFUOkC+yaj2AjCU+o0S62B9u38Ly63iMRegA==
X-Received: by 2002:a5d:4c8d:: with SMTP id z13mr14381502wrs.412.1603660185666;
        Sun, 25 Oct 2020 14:09:45 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t6sm21929480wre.30.2020.10.25.14.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 14:09:45 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] clockid_t: New link to system_data_types(7)
Date:   Sun, 25 Oct 2020 22:08:17 +0100
Message-Id: <20201025210816.8072-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025210816.8072-1-colomar.6.4.3@gmail.com>
References: <20201025210816.8072-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/clockid_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/clockid_t.3

diff --git a/man3/clockid_t.3 b/man3/clockid_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/clockid_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

