Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E854C68CC4D
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 02:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjBGBud (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 20:50:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjBGBud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 20:50:33 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969FF6A46
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 17:50:32 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id f15-20020a17090ac28f00b00230a32f0c9eso5773687pjt.4
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 17:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VzDHvY0YxoF8Lzep30wHaQi35XuwLpfx/aBt6YWu95k=;
        b=Yh/u/YBUF654Z7QO2IpVAIPyXAe1TW4snx9z2Koj5sMaz+XyVQxq457K3GJwnm3/qa
         5zcNrVaIwQiIhf2/q28txJEJYRPU+gGppZYc/3Egg9HuLZbkBNNAabKU1RuUcF6ArTem
         ZNH9di1xszh76tHEvUtC8F19l4InoT9Hu5gUtmoMcuHNKK19k+JdG1nzTK4n1H4Stq4g
         CZbE5EPG7Pgt+q7LNLm2OqD56wxM/2y7oiDU4HqsYfq6RawcwZwcWPppkifrbHKSYHac
         j6aq6eiOcAowR6WGqkvMEBYDX9OQKP4QJPB+pqQ7jRxKPvyTKYBBuaZuNqOlqgyahXRU
         etqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VzDHvY0YxoF8Lzep30wHaQi35XuwLpfx/aBt6YWu95k=;
        b=V5CZnQLhZstCxe+1ro/9m5Pysxykwk6XMyPtGL3nMTxl0hndjQa8BFznhWLS4Kvmv1
         5uZDrBo55snTAVc/gCwv5/kMshcmgrdX7RKztEJi/z3ga1zopOg1/oenS9CbNuAZjLsn
         pNwqDYJh3voEB8zlgpqeH5gdEzFwJ3LxkfJ0nnk5sZpHnOWjvhu3m8v4g8db+i73RWGT
         j1YeC/X0yHfdroO5qj72++NXla96dnBAAvneXAXyUsnTwYTXonDie6pCb0OXzi0bDM80
         Mn35bpwIymnqGSa6G01iAL32gNqUlSjSxjQSer6HOqYlzx9GtC8Xz/XXt3HcRxZg1vRc
         RTzQ==
X-Gm-Message-State: AO0yUKWKx5vXkti2cTNXE4Wt0ueQ+2Pp08TV9SiM+LcuIk4HS3ve9Fuk
        63E9BGPHRu2uWgl9v+t7SXQ=
X-Google-Smtp-Source: AK7set8syeA3hl+UUlLuhwmPXl7M2p32E9vB5l22A7AI6zWfT1RRwEEOsHTRYDXG6DVhvmk/IwuLRw==
X-Received: by 2002:a17:90b:4b8d:b0:22c:9078:181 with SMTP id lr13-20020a17090b4b8d00b0022c90780181mr1936980pjb.33.1675734631890;
        Mon, 06 Feb 2023 17:50:31 -0800 (PST)
Received: from balhae.hsd1.ca.comcast.net ([2601:647:6780:ff0:a1c5:5e40:2b79:847a])
        by smtp.gmail.com with ESMTPSA id i7-20020a17090a65c700b0022c9eddaf9dsm6989088pjs.0.2023.02.06.17.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 17:50:31 -0800 (PST)
Sender: Namhyung Kim <namhyung@gmail.com>
From:   Namhyung Kim <namhyung@kernel.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] perf_event_open.2: Add missing variable name
Date:   Mon,  6 Feb 2023 17:50:29 -0800
Message-Id: <20230207015029.71177-1-namhyung@kernel.org>
X-Mailer: git-send-email 2.39.1.519.gcb327c4b5f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Namhyung Kim <namhyung@kernel.org>
---
 man2/perf_event_open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index df515f7d1..dd90ab007 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -2336,7 +2336,7 @@ struct {
     char   data[size];  /* if PERF_SAMPLE_STACK_USER */
     u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
                            size != 0 */
-    union perf_sample_weight;
+    union perf_sample_weight weight;
                         /* if PERF_SAMPLE_WEIGHT */
                         /* || PERF_SAMPLE_WEIGHT_STRUCT */
     u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */
-- 
2.39.1.519.gcb327c4b5f-goog

