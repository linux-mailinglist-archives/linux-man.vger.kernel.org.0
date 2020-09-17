Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7657A26D97A
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726340AbgIQKq5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726704AbgIQKoh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:37 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A127DC06178B
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:21 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w5so1516838wrp.8
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hWMD69NCoFj4NDt9knyQD0UUEuYzhcWeV+ObvoFhEto=;
        b=LJe1e5UvHHMspPXZGrujZBFSP5GrZPGEZ1xGDaG9kggPEu3rct6ytb5B3uteMIGnBd
         n86WsrSDWKeYmZWhE5D2aPvRZVr+CgH1S2nzcFXZr2blsmexsyzx0+LqNe3dch0Wd/na
         GWWLm4SCq92P6B9RQNMGjvm/xK4HDyYpCv4UIFYGGnw9fEs6hrayRvmSjod0YKGilZiu
         7B9lM7wj93/bgcLeGFNYlJdwdQ+UmxFVONPeYRZuHqH5MX2ldw+8ADHG1z4l4FKG5r5I
         Wkio0cJDpRqEdUqcmqKu8YAJP7vgxKEZYxOXkjD1duf62Cm4MpCB4xsSFNA9e1KaNHYh
         Vigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hWMD69NCoFj4NDt9knyQD0UUEuYzhcWeV+ObvoFhEto=;
        b=e3cbDhK5v3PTTwOxRFZpvtOeUDBFReDD8ry849LmERKaI6OnMNbAjQEQhl2QHWOMz9
         NDo4t0rl5DciA39ZnkIQzEQA4YplZgbe4PmepnpW4BXNQtCdVWLy1LWYbgBNXTdFxJP3
         kObGb9gZVqZ6XcoB9enqTZu8g9r9fhJT7l/wT6h40uX52ZWP8ZytY8LY5W/GBP3XxKCd
         XBbXH+lyR5uJMj71yJEEDotyEb9L9uDgGcEq46STiSGJDGSP/Nn2xO5qhbTHTlI4SivI
         JmDPFw+z7n/Py6EOLHIzoMmGXvUdq0q/kf/RF7JphPIcLdk3uhI37l0huGbxcVV6kLek
         TGaA==
X-Gm-Message-State: AOAM5314pThBU55rjIV+p6r/22+zda7lmrWlZpa39DDPqUK22x3d/FMl
        HxhyCGpzTKZ+muINtPzRM78=
X-Google-Smtp-Source: ABdhPJw/eE+6/P7Y9vSsEpIT0Am5FlaGGH/v89F428kj5qX8TqI9x3SdsdA2Ass2UrXpRkGdvthdzw==
X-Received: by 2002:adf:dccc:: with SMTP id x12mr32618702wrm.241.1600339460372;
        Thu, 17 Sep 2020 03:44:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 4/8] suseconds_t.3: Add link page
Date:   Thu, 17 Sep 2020 12:43:02 +0200
Message-Id: <20200917104305.12270-5-colomar.6.4.3@gmail.com>
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
 man3/suseconds_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/suseconds_t.3

diff --git a/man3/suseconds_t.3 b/man3/suseconds_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/suseconds_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

