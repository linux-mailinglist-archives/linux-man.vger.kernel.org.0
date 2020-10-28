Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87B0229D742
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 23:23:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732095AbgJ1WVv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 18:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732569AbgJ1WVv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:21:51 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBBE2C0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:21:50 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d3so721347wma.4
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zlSUyboiLjJoPazij/Q4Xg3chNhQtUkvmXBfPs3AgvY=;
        b=FPD27nLEHj0OA3FJtak0shj49ljdM+2yGMnSTvZCwnhNl2GVUW2JV0VePi2UuLOlVu
         ixKGrjQP/xOvjihZ6n7VS4IBtk06aStxZ8ix1jzRCPKdd0Zkz6go5s8PtILGEvngSmiN
         hWWdACOW2XdyEZ9aaiko4i0oep/F6JHjkZmw5QeTAJ9HJsEKKTI2MEC42NYQHZOXzmCQ
         7W4w/GLQUyFmhNWT90RFVj9BjmifX+h3jfZUjZCk8Pn6ywVwD7dWtciAZDompcUf7smo
         6kg2oLEH+5Uxhb44MflnhKUDiHAaDv1LXSrhdQNy38jJLSbczZEEbwOHTwTwGaRqb7SZ
         LVZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zlSUyboiLjJoPazij/Q4Xg3chNhQtUkvmXBfPs3AgvY=;
        b=pUBy9Ro+Q7+ZN7jV5Nm9QZcrBf/GI7oRhLO+os9TCYDs3UgnyzXwezim4P0EH9/5bk
         Vsd6A/DM07w61KQmVmen3Fv+DIsfGv9t9ANM0ciKTo4xJMeJGrYFJmivlK7RlEh1h4lM
         6fbumF2JeSoR7Z5wuhmHq+qmfPECHWqg6EK+v9wZo8Cz28Ek9bTfvUQW33qt+H6eSxvR
         8cCgE5WJ/vNnBNkfzAUfRkjm3MFKE6XA78O6jc9Lcg70TWwPQKg36sO7h9X+iV10WEhB
         1g1WzktpZxJTA/uHwoo25zNbNPReKSPyJHRbIzxY18qrZ23ywIOyG9phVZfn/HOY5xMl
         QB4w==
X-Gm-Message-State: AOAM532LEIPMntuWvZ522LbruD27mAWCnGds00HnkfoLczDcAo47Wehr
        Wth/JjbSUNhaaIklyFSTudmY/Y7txlQ=
X-Google-Smtp-Source: ABdhPJycNKqxn3MKfoOTeE9sek2uMYoc4a05IM3SsXbQJ86lsVZaxiJgmoF8opm8d2wHTRbsZ75X6Q==
X-Received: by 2002:a7b:cc89:: with SMTP id p9mr457936wma.4.1603913683243;
        Wed, 28 Oct 2020 12:34:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id x65sm630688wmg.1.2020.10.28.12.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 12:34:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] getdents.2: wfix
Date:   Wed, 28 Oct 2020 20:34:12 +0100
Message-Id: <20201028193411.115422-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/getdents.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index c08019fac..02790b8f7 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -222,7 +222,7 @@ or
 .I linux_dirent64
 structure yourself.
 .PP
-Probably, you probably want to use
+Probably, you want to use
 .BR readdir (3)
 instead of these system calls.
 .PP
-- 
2.28.0

