Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F2EC3778C0
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhEIVpD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbhEIVpD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:03 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C26C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:43:58 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t18so14560639wry.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uq30ux02SAfyAe0MHxT/DWpEIuQUsciB78RTBhq+8nY=;
        b=I394s3yH3yFRE5ZPdehj7u2Siow38h0YPCwxFIpW5VpC1FDQVH5zALXvVa/cUsvXzL
         eiaEfuUNDtHhDmrBMkvhzmEMOGaAo5K0NtneS1NltU/KxGX6jVaNt79aCd9Tg/OJZvrm
         gcFR46WroHmmDDDMeO1mfMBb3tOP60TAMZzojDUr9Z/05Jsjje/S59JMoP4bjE45tH9i
         D+kBbM80bQVrl29fk0OSqV1jmX+2eV9X3Ng2EccPqvglsEvhkWwTP/V7yaY+NQdHKtoh
         L3vVUlws5ulZ6CEK82CZX/hha5VAJNRkmXyItNddT4FvqjiZQdBKSPJpr5Xwir824i/6
         KdSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uq30ux02SAfyAe0MHxT/DWpEIuQUsciB78RTBhq+8nY=;
        b=GfR0iNwedeSEHXaJrjVDyY9Jbe7a7a8/pMjxEj/GJ4Y9kUIaUfje5AsLnmhNu6m6Us
         AP7zHLwoebbAE1nydKHoSbhvxPL/94c8HHz/i4wpxK3MiisS+t9P5pxhp8+3CgY1RFNa
         ZrD47iwFEuHjqroS4NphuVIuodQ0CPCPiYwhoFhJnFHaZK7hrwb90w+dE4KB1F5ixPAJ
         1wtxpkOYdyQAwAlt4/4TDDHdem8xvbl360k2LENVyu5veYOv3hB8NlOegfl/gVkFGHiC
         C1/os1I3Ys4tip5VDSuJ0kK+qJSIuGCAtHG6JafWM+d+Oys5vbTPP8ldCtt39/xiytMN
         68Tg==
X-Gm-Message-State: AOAM5336KAVCRepUYboxP6/+ULLPsEBYT0NNSlA2AAiscjbF3wt79U4Q
        yRpVcsVHi/qPN32DBzakHF0=
X-Google-Smtp-Source: ABdhPJyoh4PTsfeNuSA0Fo1pJ4j1691MJjVddKLqv3Stsjm7+/5ZbMrYkQ8Zpi5xdPyKxm/9nOGV+A==
X-Received: by 2002:a5d:6811:: with SMTP id w17mr27269716wru.348.1620596636945;
        Sun, 09 May 2021 14:43:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:43:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] fflush.3: SEE ALSO: Add fpurge(3)
Date:   Sun,  9 May 2021 23:38:55 +0200
Message-Id: <20210509213930.94120-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

fpurge(i_stream) does the same as fflush(i_stream), AFAIK.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

This is the first of many separate patches that I had pending for you.
Some of them I already sent you, and you should ignore the old versions.
Some of them are new.
Please review them thoroughly, as I may have sent some patch that wasn't
ready.  In theory I have reviewed them enough, but there are a lot, and
I might have overlooked something.


When you review this "set", I'll send you another one about the SYNOPSIS.


Thanks,

Alex


 man3/fflush.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/fflush.3 b/man3/fflush.3
index 138c9bcfe..a600da2ae 100644
--- a/man3/fflush.3
+++ b/man3/fflush.3
@@ -133,6 +133,7 @@ or
 .BR sync (2),
 .BR write (2),
 .BR fclose (3),
+.BR fpurge (3),
 .BR fileno (3),
 .BR fopen (3),
 .BR setbuf (3),
-- 
2.31.1

