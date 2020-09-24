Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C654276E5D
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727365AbgIXKNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727368AbgIXKNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:36 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0B56C0613D3
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:35 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id m6so3203345wrn.0
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J0LlZ5LG+LJlNLeZA4uYYdDu9UdCy4ibYcaxywZdTgk=;
        b=Aj9xwyC9eVO9xwel3AgOFd8/iyuRm2tekwibysz4GnNMmYFYkrkCOWTGjmCjvdqz4p
         Z+NJx3Lj9oaOI4fVsgCEm+6sJqTr5JKRiK3sG0zSQeEnBNGCX1H7m1zKzLi9vyn/gd5b
         c0cfp9FC5naiB0QRdM41E8sSCgIIY+w8i0vuph1EurJzSBmRQD2IrBgcW5AAFs8ZV/iM
         F4uuQD1NjKcZuq2wUVKepH83upy4Quku2HaI2JQsLfUdG3H05q5rkZqU3cxCY5fXQlz+
         wsHIkK4c6FVnPvRLlg+pwLriDOlkyIuzKv8kLOUmNNfGOaAePvD7k3M0ylQJuyYpS4jK
         m2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J0LlZ5LG+LJlNLeZA4uYYdDu9UdCy4ibYcaxywZdTgk=;
        b=QZs8JL1AUqMLrSd5FOqvxkAfO0WGsGKAtdQZF1uPU2QYVayOKfkycpJ1qnrILIJkzE
         SKCuM0qDhSDTiod4P90iree8s7zd+4PvLRnktG+T7GwYVuLexrKQs3xfAK7cmmq2fGqd
         9krrzaJxPLiXng/1aM1yeVSPkBj6Ihq1KW/sX+UHIdNMncYXwq3shmVXb8230s2Q6sKR
         kE+I4KwjB8a4xFresrS6G94eaqzLe3Cz1QHF3NtLRU1GCBhGpV1nRNKXEw7Aw02U7fQ6
         V4RjvxuwK9TNQme6NqTpLT5YFJ6/Lcde/ydB/FTXWAk8TamwcnOGufiKNuS7PWvGae9R
         C03w==
X-Gm-Message-State: AOAM530/KqBmkHV6CfCt6ohHASMDgATwwzeBR4WZG7uMwFe4Lpw9mlE6
        t1TWFpk4fFesctHOpvo4WDYIYPbPXQ8=
X-Google-Smtp-Source: ABdhPJzny1uY6bJkD5Fmie2nUj8+EN7ErBOzoLbD+I96PfoJjScIPFkqKXZnGxDE+5zVNEDuHyQ6eg==
X-Received: by 2002:adf:a3d4:: with SMTP id m20mr4560716wrb.29.1600942413979;
        Thu, 24 Sep 2020 03:13:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 4/6] ldiv_t.3: New link to system_data_types(7)
Date:   Thu, 24 Sep 2020 12:13:07 +0200
Message-Id: <20200924101308.78204-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/ldiv_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/ldiv_t.3

diff --git a/man3/ldiv_t.3 b/man3/ldiv_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/ldiv_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

