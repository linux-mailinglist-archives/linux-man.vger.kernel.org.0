Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 758902781AC
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727401AbgIYHdN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727067AbgIYHdJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:09 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5943FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:09 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so2105077wmj.5
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JGLlghhCNxGdQ6DonRvIxy4L2936vdWDz40BGOfKii0=;
        b=tcepQUKYcA3v6mhLuROPS+KCgnRZHwum4Jin6NV06ywZwZB35Uch6XOcfJ2x0mTbqf
         OQio3ZhQOWJxjVN1PkXxOZwWQy7cl8igBd7Lcng86wK9R3KuriVg1IwexW2hgW0IxQRE
         +ssIG1o2MRRSw5d8rCjzst3n7xc8rwsYXUKMGTwEWircS3sEIw2hPWmd1YfvzRWJN4/g
         iNR9WC7rH4VPwnGn24fYXaSZFkPsLJTbLZ9aW8dJUjZ3E1aYfh8Jx0dcShTtDVrX5xr/
         vpg0cVe+biLT2Ew4I6WWvq/yMkbJzny1jJIRSAcnDqs2S9U0RLU7DFflC8BLexQMmOqE
         Oakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JGLlghhCNxGdQ6DonRvIxy4L2936vdWDz40BGOfKii0=;
        b=HA6SHMSfMkca1p8L45Zqggu5eJnF2US0Av/jn2psZZFUo6ckU0dittpFrJK8uIE/6X
         IE1igFFOHgDoU5+YxbRbAMiD7MeKZ02ZRzlJgYj19M87Vpyy1LUJM0SH6GzTfnBOKHW7
         hXZx3dTDKNgNlHF2ASonLekfYK3r3ct3iOOL8s4aL1W1ko0me1V6osfW0x9oehfnDRs1
         SM3p8fjXGUTnaw/8D3p5fFtOdZpT8XOaIIXrK3ysXXRJ23KSqMCZjHPoTOU2yLUEaiW7
         kZRpXN0yxGp4K9jpG7RwbrptDVfKtfGcNU7CUWPM2U4Iz+8sjLsyZiWHnMeGkgq4L7TI
         wyGw==
X-Gm-Message-State: AOAM532Ly+CycQrNXpIxLw6MtQdZbdkwXT2E74WZ4kcJiFXSQBRng13B
        Aebn9bJlwC7nyrFu4LW8jy4=
X-Google-Smtp-Source: ABdhPJxE9vt+fbuAzzYCH3KolbLOaXnXojpqjYj+w3ikLKhyCUfs5opVr8oOEv6kTcpq+I4NuwN1PQ==
X-Received: by 2002:a1c:3b09:: with SMTP id i9mr1566463wma.43.1601019186966;
        Fri, 25 Sep 2020 00:33:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:33:06 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 10/10] getgrent_r.3: Declare variables with different types in different lines
Date:   Fri, 25 Sep 2020 09:31:41 +0200
Message-Id: <20200925073140.173394-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getgrent_r.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 8170cd417..64d7f3ac1 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -181,7 +181,8 @@ in the stream with all other threads.
 int
 main(void)
 {
-    struct group grp, *grpp;
+    struct group grp;
+    struct group *grpp;
     char buf[BUFLEN];
     int i;
 
-- 
2.28.0

