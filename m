Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC223297F71
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:30:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762602AbgJXWax (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:30:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762265AbgJXWaw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:30:52 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D58C0613D2
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:30:52 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id q5so7580876wmq.0
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OrGqEQF7glsKo1/EKkfwpUBJyWsAOso9Ujd8Br1CDlQ=;
        b=iMczI7GQoL8syWQauSLvmcAeHMSTyMU+nS8giDvTXxmZOmuGhVRsrXDfzvSHPFstxD
         XRTy1isa+A8CmozpEuvXXRQKSLqSJmqYw1T9+emyFBHihzU+oOhx0u2Z9W/PONVHhcrT
         kY53Sy+vWx1Lg/oPbLemBEnw361CLh6LaOnBoI0PjdySyEO/8bsru1cO9Vk45DIAUFeQ
         AOqplHl6ocAH6ZdX4ImiJI8nBn80h/QYE9eAj8wREsMI/xgDl20gpMEAegmbb8SQFvtc
         vAWAf3fBQP4UYSLPZg94i1kWf7D38klG/8aJdA5wH//1DVH/xRlc+rRlAjY/Budnn+Dl
         P2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OrGqEQF7glsKo1/EKkfwpUBJyWsAOso9Ujd8Br1CDlQ=;
        b=A75DtOKpUBXu708jhgLzEBEct/Eidzri108acg3fU0I+s2xfksMcDza4kTjvsBFIlH
         mqbyq0/w7vop+Kl4lBTDClwoxW1cdoyuyNP8uvXAPceQEgqOxM1Iwi8/n6VFBp5U8Vmc
         QcloE3z25dZ1VmnA8IU5Y4U9rsF3qhkkhNAv5s9YBiSHWecyzNAJBfewWKqN8G2ZdOyD
         GdDjk3ubZfEfuLeozhgwMm47/nokNDBIe1uKuBH1wt1+uHSjkzojvvpPpOXuPnZoTI55
         SY4S1e6VUEBjQGzgK7Ou25SNcoRHrOl0uNCSNDGINkouP9PlYoE2VGrjO5yEvIhuASsW
         oh3Q==
X-Gm-Message-State: AOAM532BDy/iWPgPveN6vT+jyEjXXejCR4XDT/VRt/y2OIyvuGoYA+f3
        /DqSfv34dijigfM9joAQx5c=
X-Google-Smtp-Source: ABdhPJyeKxwXnh5DiBFb3O124ztRhqQrP/H6AP3SaBPr1r29x9vAn5/G9sO6cL1ZTGYhd+EWmAm7kw==
X-Received: by 2002:a1c:bcc2:: with SMTP id m185mr8733297wmf.178.1603578651268;
        Sat, 24 Oct 2020 15:30:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 71sm13739180wrm.20.2020.10.24.15.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:30:50 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/10] queue.3: SEE ALSO: Add stailq(3)
Date:   Sun, 25 Oct 2020 00:30:21 +0200
Message-Id: <20201024223020.11935-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
References: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/queue.3 b/man3/queue.3
index 00fd36b91..4c597e123 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -181,4 +181,5 @@ functions first appeared in
 .Xr insque 3
 .Xr list 3
 .Xr slist 3
+.Xr stailq 3
 .\" .Xr tree 3
-- 
2.28.0

