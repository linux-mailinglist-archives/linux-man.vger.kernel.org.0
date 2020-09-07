Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8F8025F4B5
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 10:12:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728067AbgIGIMC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 04:12:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728013AbgIGILn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 04:11:43 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34A75C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 01:11:43 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g4so14780265wrs.5
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 01:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hHsO0R4ZrzadBQPoY+OSfqc7huoK6myTXc44VpgFaUg=;
        b=aIxjc7bc2VGziHB9gxoMyCbJISbheDOMYm7nUZQ4jzzoURQHqSvK2mum8siO4C3z1W
         e2N969mCM8oPYwi4NbfyAoMRlD1LOnu4+4x+geZwJkmDeWzaWsssLaxvXIkZ0dysoCw4
         NtR1OPtT3TwFObnvQs6JLvxRDXIA2Q3Bs7HNkt0bwZuJIyT8yYrnHOU89ApVADxf8PD+
         YENNz2rAH3x3TPiqXERWS0DHsiXJYMvVFpXQib+g+D8TUc5i3RxWb42YCMxDNBjLTTC4
         PPZSEwCFjI/Yr1GvdUeLWvQAoYDNzlv98QyV8i5RwJPcg+0zd1ljO/wygKb9tGOICUcO
         LiKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hHsO0R4ZrzadBQPoY+OSfqc7huoK6myTXc44VpgFaUg=;
        b=LeYwRu4re7G9/pJlFVsdx49ueUuEGimiyPc2+Aksn4aFaXNQorfDBh8Kfp2mzmiZ51
         2qZAq6iJyWhKUvHzo1bUMn49kKn8tyWfhGUBCf4+5O6rgf7EnGFkldXd9142PA/JvCKK
         +8cS12kfD816z58oqIZR7qst+8hDIkqGXG6WBQmxtcFQxenopEXaPRtCGN3NpmrwvHeJ
         TJcI1cClI0ReCbTcQNSACjrb7HWaRX+7YXqWzsm7ynOCqbXJ8X8a6pj/0sskTcVhc0IA
         xHy20rXvfVDVsPYr51ShwOygXGAFeIx7JI1A/oxFfYPz3hpX7ipKh8iPbdiemN9K+hS7
         yoNg==
X-Gm-Message-State: AOAM530XYHnk4mCkSpld/iDEqWOjdCXomWKMaVhOdaI1gmFcyh2o81Km
        a3FSbFUQ4TfJnvEPrEuNxqF87adgK8d7lQ==
X-Google-Smtp-Source: ABdhPJyqcBH1YvTJz+behIBxVy6bmdlOyPk/x/Kf7fp1bV7GJLSBbXV4Q/1AD210Mk+yN5k0/SQk+w==
X-Received: by 2002:adf:e690:: with SMTP id r16mr16152906wrm.15.1599466301878;
        Mon, 07 Sep 2020 01:11:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id d5sm28843522wrb.28.2020.09.07.01.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 01:11:41 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] hcreate.3: Declare variables with different types in different lines
Date:   Mon,  7 Sep 2020 10:11:33 +0200
Message-Id: <20200907081133.11002-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/hsearch.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/hsearch.3 b/man3/hsearch.3
index 2fd2dc2cd..5c281c974 100644
--- a/man3/hsearch.3
+++ b/man3/hsearch.3
@@ -315,7 +315,8 @@ static char *data[] = { "alpha", "bravo", "charlie", "delta",
 int
 main(void)
 {
-    ENTRY e, *ep;
+    ENTRY e;
+    ENTRY *ep;
 
     hcreate(30);
 
-- 
2.28.0

