Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEA6B25F567
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 10:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728277AbgIGIfz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 04:35:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726971AbgIGIfy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 04:35:54 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C3B9C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 01:35:52 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id o5so14807251wrn.13
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 01:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZmMj5v+OxeU0ol3mzUn2wFGUypJTJUcnObUlWCib3EI=;
        b=DMEtQFM5cT6DYqvG7dF1SbVw+36+inXbKA3T8zOqzSYWKqQFUFnrzRm5tnt+OahdpQ
         /rgH5mP8u887W/SRaB1WYJApayB1gamhx7pcqiWyBQU8g8R1ly7phbvbvlcpOSwbhDPM
         jOLDDmJswGZ3nsmA1vvW/7JdckuHKlKfhNXbdk+KSAc5BObvetDgxz4fwIgDOgoCxmLj
         XW28Hafb/2TlwIjFa6E9SlURqW2Azvxh5j64C97wu2SoC5ajOLjV+KwA1A4flHJqZJvP
         joVk4U3CXGns7wS37Xl2tev9O+Eut3B5j+wqw/MGmNmONyk1sNCyhJJXlrdOEzaU4WMl
         lkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZmMj5v+OxeU0ol3mzUn2wFGUypJTJUcnObUlWCib3EI=;
        b=adhAM/eWsFR5bQu7p6r6GdwOEZ0Qut4TYZZX1c6cjDajL/KKYYklywwBh2tsNrbXa4
         P6pE2Vu0X06AKpf2bCss4fjbL4SJoVFcicdzKRA5k+/QSE3hLCQWgewVZAeXm8WRiKm8
         CcbbF02MORraVBEQDSP50iN5eifEcnXZNjJ+KHs+6rXEi+k4Y1EAiimRVFLdofylXjOi
         faAKeC6MOzuAitRcZvBLQ62QF+l35wfo/sydWWqc+Lpa4fcHQ66t/Sugd6yOt9AwmPAL
         wHQkgRt5WLeDL38I/qlBeYFb1b5OsqT84LBD0+csTHaMS1v6DVqy8BirviV6k4CwUj+x
         2Fgg==
X-Gm-Message-State: AOAM531Gs15qfQny/f5fYvqU8cl0zG8F5kOxQ1U7ClbFRjMPgkrkGGns
        OjB0bhOONC1bPHrgjaxiS9s=
X-Google-Smtp-Source: ABdhPJykqICBm+lZ+yc4gBSXoS4OyjFETgzlbgcC4zVwK96C5Q/TcUY2JxOKql96zqxOiQ+fYfQA6Q==
X-Received: by 2002:a5d:6301:: with SMTP id i1mr9459183wru.323.1599467750253;
        Mon, 07 Sep 2020 01:35:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id j14sm1100305wmj.19.2020.09.07.01.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 01:35:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] getline.3: Use %zd rather than %zu when printing 'ssize_t' values
Date:   Mon,  7 Sep 2020 10:35:28 +0200
Message-Id: <20200907083527.12201-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getline.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getline.3 b/man3/getline.3
index 0dc3a562d..8cd974c05 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -184,7 +184,7 @@ main(int argc, char *argv[])
     }
 
     while ((nread = getline(&line, &len, stream)) != \-1) {
-        printf("Retrieved line of length %zu:\en", nread);
+        printf("Retrieved line of length %zd:\en", nread);
         fwrite(line, nread, 1, stdout);
     }
 
-- 
2.28.0

