Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AB633D9695
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbhG1UUi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:38 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9A7C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:36 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id j2so3997828wrx.9
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/S+uW3ffAqdITXIwBLGSk2UEk7app2e6KlRkTg9O+6E=;
        b=Hqprw9Rg5yxUWEfsBPMGh8+Gf/4N8lwWML3ejRPmhYuiTBRB/4+2yBp0GEK2gG9bAi
         NkMZ9BpgseD08qFqz8waEW5hw+666gMMPiJ4p4FLW8hcBXpaz/7dT2NRtsQxMnBttXrO
         YTA19EHLTzgOheuwSwBYHEpoiGA1FOYWqJ0l0tEsBCHKkHzWK99koKvUGOHzfg+Xz1s4
         xMBI+RZqwyRZmQWAQevlx5ynsCpbndgFmOxtAxTbnkqVdMlpf3kqM6utwzVR7+W4bUh1
         nYe14A+Y+VnsOdPEjf9bTbfw5m5athpb9Mzsv9dHIRu6aJjk/FRe/VtanE5K9aYBqKPx
         ctyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/S+uW3ffAqdITXIwBLGSk2UEk7app2e6KlRkTg9O+6E=;
        b=WZ3EXkmpae83xzM3uZvsVJzdNBUXdmq616oLwHSDho58lw0oxktp+dv/6t09Fy1uMo
         9uPWhLq/1/ux6F+Rvg6aHKEXKBy3+1j/52s8VmgQWNPl6+o4Kgn4Ta0wC9yHir8JOMmG
         rNNlDgV8iC2HeuSzB8cZgXKuw5c36qpyXbEZrIQ0UDm5q5QRRVnH5lyFWuECNmOZsA/E
         xkG41kslGpFAq3khZCHfaLWetvl97HQRDqrX2JjCJgcSdZisNK/2OZ0pa3OA013XZzu5
         YiZRML2n1SXl3csjyPKkaitKMkNxDC7nMlghOqpBjqqhUGOwwpe9sutpGWziviCgtBsL
         rE8Q==
X-Gm-Message-State: AOAM531Qbl/NZQSOiaRPawA/Sitb5FCGdridnHcKKPpTm1amQAyPWpt9
        cnia9Syir7IGuH8r3q7xTU56qKHHiHY=
X-Google-Smtp-Source: ABdhPJxVxm/u+Z3UOd5YgS40EVOLzEvZ52zd84p3BAgGydOQ9hGM7xODAOVWAZgYl45MGZclrKGcYw==
X-Received: by 2002:adf:e548:: with SMTP id z8mr1104117wrm.57.1627503634709;
        Wed, 28 Jul 2021 13:20:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 22/32] proc.5: tfix
Date:   Wed, 28 Jul 2021 22:19:58 +0200
Message-Id: <20210728202008.3158-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man5/proc.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 69f6e15dd..416bbb5fc 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -5606,7 +5606,7 @@ first.
 .IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
 This writable file contains a group ID that is allowed
 to allocate memory using huge pages.
-If a process has a filesystem group ID or any supplememtary group ID that
+If a process has a filesystem group ID or any supplementary group ID that
 matches this group ID,
 then it can make huge-page allocations without holding the
 .BR CAP_IPC_LOCK
-- 
2.32.0

