Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7355C40738E
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231225AbhIJWsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233231AbhIJWsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:41 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE42C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b6so4684301wrh.10
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Xqt5fb8mSoV4q6aBoe6dvkekKKpQUxco4vKeB8ntzCg=;
        b=TbGZvrfb+l+blXwF2qw4mEuJPv6rgkmXrJFOTB3L7o2M3GRELJUj2oW/LJRSHu4f8n
         /dRPPyUJzUSBLfxeXd4Mx+V5HeEfowFeoZqhwrcy6u9YnnsmJdPEzaerHur4tp7fYCmr
         8jmrJ7UVvJem6zXHjGg8thnC9HrYNzlLmjca52eQ1qlIePizTsZxGYV1Rqmkz1WuyAMT
         OSpzp05IiGrrTlAw0lQUinx2zBpLIwH/+zxvITiTu2HfDTB16DPoo5e6C7vRzb3L/27X
         /QFIflLRTXRF+o6aVB1a/zZl7iXH1aDXpf9gjloRiLjEP8zGdX2mZt72cpfvzcQBzfAq
         a50g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Xqt5fb8mSoV4q6aBoe6dvkekKKpQUxco4vKeB8ntzCg=;
        b=nX11geDnmnlMJfkPXIXzkmk/z23v6Mxz0C154uUrz1lMtQbmd3NCs26JFs4KXQvMor
         sbFbsC0/0bC+PTrxXZVVC8tSSdgJmMAAp1xmNawLqx2CKZ9P5t3DrbR+qOfQTzYYm1oI
         n4I9K4ranhdwNJZ5N6URwebW3bQoVseDaNk2VXYf/81lr3K57GFp60Wz8cOPTTg2eFeR
         L7niQnlHOYPYO3CbaiIhe22KHS+I50nEw9kYfM3QrGTdYzPjqqd986M/dlZN1hrmAFYX
         MGiSzzCKODdvnY8+aoaziQEHKYT9r4hi+88ZKRzpfjGtrIdpEbDyB6Ua2JmGGhkUDhmM
         5y6g==
X-Gm-Message-State: AOAM530PIDcSd1Pcecny8PrwyT02wZjmx61DA0WwdDVfdjD5q+RuKVa3
        0T/a/GuKzIw2xUi4inwxKvg=
X-Google-Smtp-Source: ABdhPJxdxWm7ch2sqb08akgyJFD+wscmyAdKpnEizxHLWbrDorUBQE9JptJKiUSrFjA5yku3n5IJMQ==
X-Received: by 2002:a05:6000:160d:: with SMTP id u13mr92202wrb.17.1631314048653;
        Fri, 10 Sep 2021 15:47:28 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 11/15] veth.4: tfix
Date:   Sat, 11 Sep 2021 00:47:12 +0200
Message-Id: <20210910224717.499502-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Štěpán Němec <stepnem@gmail.com>

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man4/veth.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/veth.4 b/man4/veth.4
index b2d5a2fc7..bd2acdcc4 100644
--- a/man4/veth.4
+++ b/man4/veth.4
@@ -54,7 +54,7 @@ are the names assigned to the two connected end points.
 .PP
 Packets transmitted on one device in the pair are immediately received on
 the other device.
-When either devices is down the link state of the pair is down.
+When either device is down the link state of the pair is down.
 .PP
 .B veth
 device pairs are useful for combining the network
-- 
2.33.0

