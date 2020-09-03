Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6518925BFE5
	for <lists+linux-man@lfdr.de>; Thu,  3 Sep 2020 13:10:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726789AbgICLIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Sep 2020 07:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728073AbgICLGM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Sep 2020 07:06:12 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5642C061258
        for <linux-man@vger.kernel.org>; Thu,  3 Sep 2020 04:06:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w5so2734880wrp.8
        for <linux-man@vger.kernel.org>; Thu, 03 Sep 2020 04:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iV0glNL8qGnLZK4vLFajDqfpV+c1mxo3QkFloavyg/k=;
        b=epS2IonfdjeR8/bjDmJBAnvk+u1ci/FxDRipQK3jLwB4jbGgKNz5AXQ+XcWtsZT/kc
         abOYNt5YlnR1neQ80T7N0AFl4He96KP+PktloN0Qe3pIHahvzNK/127Whkwbrx2+EHtx
         9XYic0oOFrEWnqZ9eF08TketSpD+8dSLIdR5QrXwGvVny8GvFWtlM9cB9KKoEIcUo+Al
         OFBjyofBDaMVbfVUotBFrl2AesItiKKOQ8y/0piEdGArJ53lpTz8bZhYwoWdbFO+KzDT
         prJay9+0+PDxY01n3nTfKUw4RTT2L2RdMhzWNyqEcangb7cZMtwcpI8TYoURjRg1gTzi
         j8vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iV0glNL8qGnLZK4vLFajDqfpV+c1mxo3QkFloavyg/k=;
        b=HAa2sb4tLF4FRsIgyiR8QzzqVeTnPs1uT0bKwo+/btr32m/AjYB/ZqMlctJ5IeKJQf
         GeHns+qLn296WFpLB5lbAM0kxqBrrJoFwnZ128uFFqb/iXleSbTstFoIN81pKvJ9fma7
         8E0RAH6RXSQ/yIjrj0WmrFy8tkTan4s6mFrZpfJ9opRaykn7bzFVuM4Vl+J53cs+TZQI
         P665AmUNSC2T++emGeMn/lEEDoy/oZUocs07we1oeZE+qGoVGSiT12s73ZG2qMNc6bjO
         9w8Wp/k41hjPjcUJ3YlqCuy+WDdXYSAG0qBDCfZhPqYQvmK187KDhxAJSDRGG24pnjB8
         cW9A==
X-Gm-Message-State: AOAM530PQoRVdVVIsD/LkzB4nM9ujsbg3/QwtPGy50eQZZszi2zZU0ks
        Y7iE1Hr+PJJJUZ4o3RMV6T0=
X-Google-Smtp-Source: ABdhPJyt2WyGCiV4MYdkNwWprY2J9QSLyTPBnvodbjR4X8tyCuQCXAmbXzRKCdh1m3ZAfokW7BdSqA==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr1867562wrt.155.1599131167200;
        Thu, 03 Sep 2020 04:06:07 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id 92sm4187174wra.19.2020.09.03.04.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 04:06:06 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] mbsinit.3: wsfix
Date:   Thu,  3 Sep 2020 13:05:22 +0200
Message-Id: <20200903110522.147678-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/mbsinit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
index 663f9d9ed..aeaa6ce88 100644
--- a/man3/mbsinit.3
+++ b/man3/mbsinit.3
@@ -59,7 +59,7 @@ in initial state is to set it to zero:
 .in +4n
 .EX
 mbstate_t state;
-memset(&state,0,sizeof(mbstate_t));
+memset(&state, 0, sizeof(mbstate_t));
 .EE
 .in
 .PP
-- 
2.28.0

