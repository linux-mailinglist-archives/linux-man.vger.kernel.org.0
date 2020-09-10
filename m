Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E547E26527A
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726919AbgIJVTB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727116AbgIJVOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:41 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00862C06179A;
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so8737758wrm.9;
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2ReUn4s9LGs+Wc1qa0Wl54OLhH+3YOfASWWo0CBEymQ=;
        b=PWyypZoJc6BPiQwDax3WwcV3cXwmEQeLGMNWjpLxjW3ZDOvhwAI8gaIQnSrT7JjpPt
         WXtxb5ypgcHqga0h7GYIEQV4Lvcw8jhMxLgFbKljO8gMIfXv7rMCw30sKoaHFLk1cRXx
         xmd4XZ4F2ZeaOZloE8c2SL9ZHSJuCYwadRgmCt0vtH0xKE+x30ElA3nPfQA0pphHfTxB
         idZHLhwNvtDwhfUzSwOyWZYJSyoQlFkmW5oaC7wpixfRJO2UJVqSgpb1inJRj/5i8Dqx
         tIsWtXmWwEDxqICje7Ibl4ZNrAwB4sdhBaiLcstnH/t2b0psshxt8VmtYyq3GzlbVOsK
         vo1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2ReUn4s9LGs+Wc1qa0Wl54OLhH+3YOfASWWo0CBEymQ=;
        b=j63HT2wX9tZ/RHaJC5AoyFU/06lprhejxALfYFCMpNIW4L3gqAJtMa75fk5/MKHUik
         zqFBUEdcm1BEIcmoWw2L48DqUtYw/NrqwfV+LFpm7RGmYfarEdWe5VsbGDdlVCBoFghD
         6dYpvqYADWwKzO+XBjUes5JFvaHq2fjUPiEQ/KQhi0IRz0nN6kpy3+5IavzlLw9CrCx1
         Rqje4dvYRvivCCi4918gXw+RYVymYLuwXhcpsOPIXOU8jwRUZwHfzVPW627o6nups123
         ESgHCCe4//yjNJjtv3afI5pQ4vUhu0lEQR3tFrMdBGaQNYZpN13IZtw7Z1/ger4yo3Aa
         Jv0A==
X-Gm-Message-State: AOAM533PKPzjVeml+pgGMj7gDgQRshmr4LskaBT8r4yICXBCl55ID7ne
        lp0GxlIDBkgg/xhSHfRFwurcKccfXqDLiw==
X-Google-Smtp-Source: ABdhPJzB/zOuW5pRmJib0Zkf/bplgkS1XsWd03JCQyHYUlzMb6jcDRjzye/d92mwZHbYg78z233z0w==
X-Received: by 2002:adf:f750:: with SMTP id z16mr10413808wrp.377.1599772459739;
        Thu, 10 Sep 2020 14:14:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 09/24] clock_getcpuclockid.3: Remove unneeded cast
Date:   Thu, 10 Sep 2020 23:13:30 +0200
Message-Id: <20200910211344.3562-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Member 'tv_nsec' of 'struct timespec' is of type 'long' (see time.h.0p),
and therefore, the cast is completely redundant.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/clock_getcpuclockid.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/clock_getcpuclockid.3 b/man3/clock_getcpuclockid.3
index 283f92557..050d7ad13 100644
--- a/man3/clock_getcpuclockid.3
+++ b/man3/clock_getcpuclockid.3
@@ -154,7 +154,7 @@ main(int argc, char *argv[])
     }
 
     printf("CPU-time clock for PID %s is %ld.%09ld seconds\en",
-            argv[1], (long) ts.tv_sec, (long) ts.tv_nsec);
+            argv[1], (long) ts.tv_sec, ts.tv_nsec);
     exit(EXIT_SUCCESS);
 }
 .EE
-- 
2.28.0

