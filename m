Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1FBA1F7AFD
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 17:35:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbgFLPfk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 11:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726089AbgFLPfj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 11:35:39 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F45C03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 08:35:39 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id i3so7023529ljg.3
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 08:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oleksandr-kravchuk-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AWquAV2UztpmP2tUun4+YNswu+X/rVEiSITk6wmWFjc=;
        b=wOUeGahcKp/Nz6p90GZflu/dGPcPoDGBmYH5rymD3q4gWZWSeEuDlfERv853+vY29C
         WTijGwlk2EuAVN43Qq6c3Dc9XPp0jFPCi1BviVKrvKiZmodC8oAZ5HLztI2DJURslVxE
         JMsgQqFn8XKYjGEkM9u9/uOZoDWNQZxEUn/hbzQbEnNNiFxjycQWdWjOcFdxc/QITKFp
         6ZcB6Q7wd5SUIyofQLkF79t2HFlGukxa2RmzHsX8lk4lT8RVH1PZ6Yes/OqSL2WPZvmm
         yX3qoIlb/09dCvRi+dX9BWEY8M+WC6HccLqiwOYIMoM8mJe+I+4hsfxSGKYri6BkO+p1
         OxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AWquAV2UztpmP2tUun4+YNswu+X/rVEiSITk6wmWFjc=;
        b=YPvCHZQC+smFtRidVjOVDjpTInuTVa/Ohe+6o8o2TO3FvlkbbDNa9ejCUWjf9L8x3f
         0+3mDSLgPQSBcakRhYM8QTkrvlDvos/nGCn/CbmMUUMKtqmRnVQmxGKnN2Cxe9zojZaB
         7o6JEQK613yoJmlQ6UVTrUUuI+jhD+2JNcwzHbY8LjMoEUuduoj+srWXBKqrtfrSjQgM
         W1ZJ761nWFpw8TSgqnqpb34lg6cvtqVVb9sIAJZOCrvU2q+JMQPWtNSsm+EK2Zesb61e
         nyiUAvd4nONlChYsMjkoaiPgsE+uC8PSMbClsMD5WMq4d3WMSrxTJpF1qO8u/JUcvG02
         U1bw==
X-Gm-Message-State: AOAM532XJtGowigr9esgKL8xkJjkL7KZQpZJFdql1kBbIuKOtBrMK4vE
        JO3JD577qem7GTlyuJI/I1IP4Q==
X-Google-Smtp-Source: ABdhPJxVb0lBDD6yDI+STXrHSVz4UyMHFqy8Zp9fMQ4/r62GgA23uL1ZtC5JxAUa/exEPemo1WCv9w==
X-Received: by 2002:a2e:8754:: with SMTP id q20mr7480985ljj.270.1591976137828;
        Fri, 12 Jun 2020 08:35:37 -0700 (PDT)
Received: from localhost.localdomain (c213-89-0-115.bredband.comhem.se. [213.89.0.115])
        by smtp.gmail.com with ESMTPSA id l22sm1759490ljg.41.2020.06.12.08.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 08:35:37 -0700 (PDT)
From:   Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
Subject: [patch] keyctl.2: declare auth_key
Date:   Fri, 12 Jun 2020 17:35:33 +0200
Message-Id: <20200612153533.23783-1-open.source@oleksandr-kravchuk.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The variable is used in the code example, but not declared, leading to
an expected compilation error:

    `error: ‘auth_key’ undeclared (first use in this function)`.

Signed-off-by: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
---
 man2/keyctl.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/keyctl.2 b/man2/keyctl.2
index 3dea4266c..08ae92d6d 100644
--- a/man2/keyctl.2
+++ b/man2/keyctl.2
@@ -2103,6 +2103,7 @@ main(int argc, char *argv[])
     char dbuf[256];
     char auth_key_payload[256];
     int akp_size;       /* Size of auth_key_payload */
+    int auth_key;
 
     fp = fopen("/tmp/key_instantiate.log", "w");
     if (fp == NULL)
-- 
2.17.1

