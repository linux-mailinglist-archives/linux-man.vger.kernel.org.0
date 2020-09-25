Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C946B2781A7
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727440AbgIYHdF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727435AbgIYHdF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE7CC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so2104870wmj.5
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SyralE8jhQhXaHL9b8OsMMmZkKQInZFAlgCOdcdDo50=;
        b=gUtiPXymMa0GKUQHwM7yNYdbfh6qlHtw9LRc15WazqTqnM4W2thFu8n5HqkCJTAOQ1
         jgk9UWvOyI65AfQMNeNd5FUAS2OxSlw0UDf/vgRsDg4AvBvuy4tDAS1C0fnyQUB+fNvM
         LWMxE8YKBFH0qA52GdPBfj66emkeniwSsj35Im02e/QlBWhBWW14MZWZj1I0CHJZvDdq
         N//Z0OdxWq6oIeeN7Iq977ii0Y7RNlFqD+ERlZeeQwKx4igl36P/GTQDl6UFHskF2kAH
         M4O2HiI8JyatGrPLTLm6cn0tLkgSIs5dwwyjHUwU6r2ZSaY1mZB/J8bMyGncIsgEteh/
         6YFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SyralE8jhQhXaHL9b8OsMMmZkKQInZFAlgCOdcdDo50=;
        b=ui+oDzhy0NMKjDK2tHk4NblTtcmrwE9d8gIrZl5g/7fdEf2ZhMZiWBU+Hy2JMqnmWz
         NGUEJCSX5AkCbLVupaW1o7CTVxpz1IITEy7+MVkaJYeE0e82yBIYVxoqutig7JB/Ksye
         rQEAzSdU9jhPAziHde1LFbpeKHZ+FyGTDFtb3o3zeNw1fUYv/nIzwmZkeVT4T52NMGRU
         Oo6f7wTCQwrqvtDA6P0OYpKFmWYmhR3lusyxdv3ye0ns3u2/5NDfHXF01N4e20bFl0jx
         v1WadA3mdz1UW5E3qy7y1xqg6+DfkXLHUur99/PsDbsK3v0D7FTYjxIkfsPDaoGZW2rG
         Y3vw==
X-Gm-Message-State: AOAM531FSgtkFtRAPUqvanjRbUShqAHGTAqpYSY5Ee78QuYSfVfcQGzp
        fdtOnnPSZyfYHrg6zPHkKhY=
X-Google-Smtp-Source: ABdhPJyxCM8AZANH7NEjm/ZDrsffEiULcheOMl4t2HBtNVQ3n3GEFMeFwT51zNORTRvuvF4gG6hZBg==
X-Received: by 2002:a1c:dfc2:: with SMTP id w185mr1575473wmg.15.1601019183620;
        Fri, 25 Sep 2020 00:33:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:33:03 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 07/10] double_t.3: New link to system_data_types(7)
Date:   Fri, 25 Sep 2020 09:31:38 +0200
Message-Id: <20200925073140.173394-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/double_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/double_t.3

diff --git a/man3/double_t.3 b/man3/double_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/double_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

