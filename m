Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 334652702E0
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbgIRRFL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbgIRRFL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:11 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC060C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:10 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id e11so7113165wme.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JsVDb2hMRgSLPnc4mk4Nlvsn5K67SWK3I/WWGjwUNgw=;
        b=rR3cfDxhtoFyTi0B9AEgQJfYTAEQVX7IKLKkHY984PeFNvryto4n+2a2mD/IOcRdIM
         6sseQqn/BsjnadRE51WTo6RKP8iHSqqTGTp1eEmSnE1AMCerAWpG28w42nyzD341m355
         NgMD/dwQ+ufzt28HYjyEAroKJ54N6EmemNaxefpWxldmlD6l1QAeUnDvGYsLZih3PqWv
         /ofx3xiz3lm8Ii3lY2PtFMMF95j8sWkg3sXpB2fnaLaeRmOva+sniz/5ToiFTUIsYvEo
         NApbGL/tUxXXBswmun+E054vKLpTKB6Eyklxsuj9XCqbRGCjju9IrSp5owtBrkhk5v+2
         cYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JsVDb2hMRgSLPnc4mk4Nlvsn5K67SWK3I/WWGjwUNgw=;
        b=qVLX+s/Dyavq2Tcq/kfnFEpCi6a4tYW46u0xqbWaImTdUo5amks2JV6yg651gJQqvG
         kRwDC+qiD/hDjPGGhealgCTNpddYjQOa0TUM/pHcmtHgXte5W0Q8KRhVDvaYGm3DQenN
         Nkwn3gX7BPtw8Q8TMIkzIG0roFveUnr2JB/uLteM5LzoCwEwq0PcVIIprKyqsFoHcDFF
         vKbDeLzQ7PJH6zQ/7NszZXi4tOMhLbpM1GLzdfd/g/iZ0gRoaFS6jAfOmeXwfD4kj00P
         i9c8YU/hXW8MlXUptBX1onyrufhD3sBcH0DNQ+N+S3zaeVkG9RXej1UVnNvv8DufaYxO
         9jPg==
X-Gm-Message-State: AOAM531rzKoYXjRJ60U1a7ck+6n3KMSxyGg0cmw8iIFk7mE4uqyCdPLS
        DCyEC70Qq5cb8mmBWWO4chA=
X-Google-Smtp-Source: ABdhPJxpUwaHSihEnsvSOvKuVuXbpon4IjjkuPC7BgEOGwuiI8YtNDbaAzNuGQhSD4QB9VQp4oVIuQ==
X-Received: by 2002:a05:600c:221a:: with SMTP id z26mr17431876wml.131.1600448709668;
        Fri, 18 Sep 2020 10:05:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:05:09 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 9/9] siginfo_t.3: New link to new documented type in system_data_types(7)
Date:   Fri, 18 Sep 2020 19:04:43 +0200
Message-Id: <20200918170442.94920-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/siginfo_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/siginfo_t.3

diff --git a/man3/siginfo_t.3 b/man3/siginfo_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/siginfo_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

