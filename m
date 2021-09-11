Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF63407961
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232693AbhIKQDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:11 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A88FC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:59 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id q11so7343211wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NZ0Bnri13G3Y5DNP96z485gTTN767cev+P6lPEf1mig=;
        b=iQW21R3G4lGROli4lOjhoZWOUbdSxiVNLWhedEkcBLngxmRAooqi9GLewvKnnq1lNY
         +GNRf3jdTGwOp0lfGflopcszTZcoxhTEPH1jX28QD7s8zNQtJ4QtA0D6zvHZhMCukwvK
         ihlsgrRPSwckP/cRn2tcDMPN63MhxST9eCku7PaTH6ZV7zrx958liL82Ov9rkg9dH9dp
         PfqN0yajueDZKZg7cX6lxFUAsoDJAIHTaG/ZP7DsQwy+UFg6eh0Alx4+XAynY+Qa8JyI
         ZnxlxNLJsU/L9QqA1GCF2hmq5Fnw8QVBS2AJ1HgZwlLr7J/FNbqKSI8/EHkywqNE4Lxa
         TFiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NZ0Bnri13G3Y5DNP96z485gTTN767cev+P6lPEf1mig=;
        b=j9YLQC3xMx5znqR2fUbAFBx+TcEYJT3cShy4eACAbG2kXydJUtcNyOQYJeLRlPb0OM
         87YMhI/K/0O+lIXzBTaZNkv8r1Onp1yxZlodeoHE9kgBn8sPf2E3K8X/cm5iEitf0vTC
         h7L6kO9C4BwYPL5/1WPGxckBvsA+eLQJy42zP8GNI7yeS6gr0Uh6AQTVqBNolwPjURhn
         BddmGLm7Y6gRNk0WrxYVTqmFenRAz0clZHVVRl6Mtl7HUSkR/VbdGaed7bMESqfQq2Fk
         2Gleyc2/n3gbbW1Dq/CqfNTIqplwM3a56g+yVEQ/5WVAgCdcQpMLecGJzOw+XgTgfCDa
         f7bw==
X-Gm-Message-State: AOAM532LMRqxWKB3TUe7dv/nryexGe01TGrjA1BsbqMPQqZ3Qpq8N6W/
        RxVnDbTg7wiLCx9vH78iAuk=
X-Google-Smtp-Source: ABdhPJwo1mgfIBF9Wxrgn7YDiG5PANvDbT0U3Dw5AHHXCkMDfzc+2kt1kkbH6OILjD/GlP2o8GKFSg==
X-Received: by 2002:adf:8b19:: with SMTP id n25mr3917753wra.216.1631376117781;
        Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 34/45] sync.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:06 +0200
Message-Id: <20210911160117.552617-34-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sync.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/sync.2 b/man2/sync.2
index 0fa39ae71..a282b1802 100644
--- a/man2/sync.2
+++ b/man2/sync.2
@@ -36,6 +36,9 @@
 .TH SYNC 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 sync, syncfs \- commit filesystem caches to disk
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

