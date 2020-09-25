Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2823C278227
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 10:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727132AbgIYIED (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 04:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727067AbgIYIED (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 04:04:03 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D84C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:04:02 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id k15so2481548wrn.10
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 01:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qmFJFM+WATG0Qvm4KXGqYSt6pf13w9ZANlUYXD0PwH8=;
        b=tBjVJ2Ul/EG5QGVcRMOo64XJ3exEikpCovJpL2Cn7ns2kyBo0ATaT/WZM5Ed4g6KOl
         oC5Qx2IDWgWVZCvUHmoZSOvD/SNTm+nCRqDlo/KYZmrp9G3YLgJ9NwUB0va19uW8Em1N
         i2+pc9Tx9UdKwoBObF4vF6LDOKc7NrrBVFs81tX7MDnUC7FwLSKtruDrMwNhhIeqezvn
         zNSyjvCJUpvPePaZyXbk3wYDVAzInmbeXPRaIOk5fp551gxgA0741G+VlNJzL7/rir2j
         0B86UlooG+nwPeDriWvcJE7ivdj09mphHa1uKr7fabDZskT+UYvv4UGv+VMre6HpbBH4
         n6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qmFJFM+WATG0Qvm4KXGqYSt6pf13w9ZANlUYXD0PwH8=;
        b=nTMBHUa2U6wf01x45dnm0X9LDEQ7X+zkKAxYLoQfAn08cexuwviPO+r9weDOwbma5q
         3NdZqoOvLYh63n5W8BPHdvlFD+DrbfLMflv8QJpajprQ6m2ILfQ8DokIzsdmOoGn2T8z
         L7PD+H+xiIYBPDE92R9/S04WoJo5QuQxngKL2KMAW0gCCn4QPd8dKO65dKYo2n8MCq1k
         Ef1PtYQt5gPEOpCGcRV3qT9DsK2JMnXmDuRrCBRwlGXZtgh4xuWMOEcZq5A0Sr4pEg65
         qAC2kCPCZrfMfhBNCm4zseHo7QC79DO+8zR92kquNiDCRr8n5r/BpCH1Z5OxBHTMEuky
         ZFew==
X-Gm-Message-State: AOAM533t/sd7Yk67zg5m0fGRyBOWUKEZmUB+pRoCXb8pWE5qNI/Qva3m
        cBbDfVBh9hGuBViZvLGTbPQ=
X-Google-Smtp-Source: ABdhPJyo5m7DJrdkIv/1LyPIaX1A41gnKl+xm6jZM3k7mOGRogKlVFTTJfhuMHJFGISZFcKUAolt5A==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr3198058wru.374.1601021041632;
        Fri, 25 Sep 2020 01:04:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y5sm1936474wmg.21.2020.09.25.01.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 01:04:01 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] system_data_types.7: srcfix
Date:   Fri, 25 Sep 2020 10:03:30 +0200
Message-Id: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 43e88942a..caca5bb3c 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -454,7 +454,7 @@ Used for a count of elements, and array indices.
 It is the result of subtracting two pointers.
 According to the C language standard, it shall be a signed integer type
 capable of storing values in the range
-.BR "" [ PTRDIFF_MIN ,
+.RB [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
 .IP
 The length modifier for
-- 
2.28.0

