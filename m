Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C27D326D97E
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:48:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726611AbgIQKsS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726699AbgIQKof (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:35 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52757C061788
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:19 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id w2so1493917wmi.1
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2oZQg5cHraRYVgNjLOSs6eiuxAebWAjTDESGDh9GQas=;
        b=ERpdEFPsV0OZc4AvlJTtdROK+BVH3zL/KSX24CZGeiUzyPU5SMqq5I5nLoIZpnDnaL
         o6tEiKY2aajei6q/TGC+y0WCsKumtHtpiT5u0ZCaf607oqOUms0NNrxmB9de+FSFRVrZ
         bMz/7o8ziBBe4OJn5JCb/8ohbn7GfyrHE2/TGBv41mcGUmXD/dRZj2/1SOcGbIe23nVi
         w60HVJY4Qa+kr0vZ6L/PTYFomZa7BPYr5dJETZIdYl/JzyS1pdn0DCiQlQp60B+ckAuB
         sn+aBUr68NeA8c1wtTf/b8nqsK4bFDzLyJNVTNSYFlUjBGdHD4oPpAfKaxlsXrPNNkJz
         AcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2oZQg5cHraRYVgNjLOSs6eiuxAebWAjTDESGDh9GQas=;
        b=ng6YXIrfmWovfzTErRtGGL7UrCjOeX0MCGt4Z3c9y61HRUkkfs6IOFcXYa6zQxfZ3J
         6pjepMUfE34ZfTEQ/iobIJpmLUXRpqd4+rO8ibJEXCCyReIMjUEB1gtc2X3f26QC/WGI
         iabQ4FO8B5wpi8oNzNPUom2HaCqVjnP4ZwyyehTH1LMEnDrf/rXpxyuOhh40LFmegWM8
         pStft3m0VRh/jfGRcEANcopGN+9YZRZmDpQviA3X2aEJuHOVONP8PNs56JAiiYq1Qpie
         gzddbRM+xfHvk3V243Juaayt6sAcH2s1caElI52w0YKmR/c8MAb+mOCA2opPLEagIeq+
         X+9g==
X-Gm-Message-State: AOAM532Y1u+sxmpU3mOP2TAmQXMOQ9sku7r4z9zGvmF9IB8HS3TSRWMq
        U/XRnkSEVWC4NbvjTSa74zY=
X-Google-Smtp-Source: ABdhPJwEVyYQ8eV7E0QZ1uBqssKLSv7lPHRUO5Eybke/DLD0j/6H1aFPa7aFHkHDIHkteusZ2i3h3w==
X-Received: by 2002:a7b:c3da:: with SMTP id t26mr8873161wmj.23.1600339458093;
        Thu, 17 Sep 2020 03:44:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 2/8] sigval.3: Add link page
Date:   Thu, 17 Sep 2020 12:43:00 +0200
Message-Id: <20200917104305.12270-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/sigval.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/sigval.3

diff --git a/man3/sigval.3 b/man3/sigval.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/sigval.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

