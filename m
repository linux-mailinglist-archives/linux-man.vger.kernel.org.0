Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEFBD2999E4
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 23:50:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394787AbgJZWuh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 18:50:37 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:55005 "EHLO
        mail-wm1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394727AbgJZWuh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 18:50:37 -0400
Received: by mail-wm1-f47.google.com with SMTP id w23so12140468wmi.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 15:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LkLWAwI+VesJkV88PxW+AQXdJiJdYeukr1dfvgMq25E=;
        b=a8Eee0cW2oDVn87tiUbVQV9F7Y5daWBwfAN0XY6zp4iZL88S+YvGycuEFPrGikVf+8
         UXjoBF3MBHosjaLmw1H1h7M9gjQaG8Z81dbWf5p1YTVdr1jhxwVCHCOVo0mx96N8jTJ9
         quwFULyLthEoSxBmh41qig94uEefpB86tSAetlYYej/oquK+A+AwW0AoYafqngV+VYS/
         QGABs/4pkLEqVQ8xf80Dp8DNRfZA3nKdhPEou8E4bl/eFhRir3/icEfssDPHfy1/euRB
         R+e+iFJhmO0A5mUUDlTmxDrjqSpB+fEusW8Us1oMts6zJIXG/ezlSlONU/cyWcNcG20G
         EdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LkLWAwI+VesJkV88PxW+AQXdJiJdYeukr1dfvgMq25E=;
        b=X6U7OSsugvy0w6JYoGwVOur/kQ4qbqEGT6rScCbSDU8/XbA4Lh5f2d2krHsjNKZox3
         Zg8gmAxskLY1mVZOu/2StC/n0L5YEAEx0wmLyXmgDo4lIQek8ZpOHH7iL+0Z4ijhkwxN
         DMI/0+QUstZ2sGbKVeg0J6des/7B9Cs67si1KOho5YRP2Bhn9VRp1h2GUjWVztmtX7Tp
         W+Rai9/a9kc/1m/3HzFUaM1rxKTaxCmx14Ws7FBZQpLrXnoYIHSqn4sC1EXYPfhh4TNV
         9iE2zzS+/5fyAaoL1haxA2Qrt0vwoktjtxTvhrMGRaR1dT0dBU41h6cTYZBRk3RxU+sM
         T67w==
X-Gm-Message-State: AOAM533twRWfYM9Mw+KQGGgAj4oudcopLNMF9wkO+chb31Ej3SEqI/1/
        eOkk4ukSKzvHhC4MIZcVH+4=
X-Google-Smtp-Source: ABdhPJzbV8Q5QC8ixKbURIw0tT1ddwIX5t6k+ABF16sxZnYpuG+/uiEhFLFOX+nL0v+Wj7LeZtYBEw==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr19409088wmi.83.1603752633756;
        Mon, 26 Oct 2020 15:50:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm22593046wmm.34.2020.10.26.15.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 15:50:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] dev_t.3: New link to system_data_types(7)
Date:   Mon, 26 Oct 2020 23:50:09 +0100
Message-Id: <20201026225008.28903-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
References: <20201026225008.28903-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/dev_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/dev_t.3

diff --git a/man3/dev_t.3 b/man3/dev_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/dev_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

