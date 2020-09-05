Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1C2B25E8FD
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 18:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726456AbgIEQMU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 12:12:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726468AbgIEQMQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 12:12:16 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C45EC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 09:12:16 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id c18so10383110wrm.9
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 09:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=apzO6XZ2nZuhsby3oq82HWN0vjrMfN5jclvaAOFE0D4=;
        b=KKcKFUclFqFUUbATq/OpsuNBfsEBR85aziEN9gUmLr6l5WDABjQpuH3kPq5itVLxEK
         JKFodc0zfWBpApPfLSv1TQFA8RmadDY+WVpfauUn6lgTmQrCC89fJQcNXENVH7+1JssG
         iMq9wb+lpIzSvpCXjauDfsOyWSXrFQ4GqTDdFhFb2Mnna697ijDmfULyPwyzHTuTXRD7
         i4daKyFQrfJCt/SOIdRFDUsUscD3fMiKveROB3M26H1g0K6NIvmH0X13VgXs/nTjG1AK
         VrKhvHO4GbQYUGlmKT0tyrXS2ZQkXy6qdgQqUEPKdYgeAAT5cRdAeOT5aB1lZuFdVP01
         f6cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=apzO6XZ2nZuhsby3oq82HWN0vjrMfN5jclvaAOFE0D4=;
        b=STCVmShkqUB67p8/wC6GzcpruP7eU+YlRvcvUyvNHEcgNn754KRZRL5aAXzGydleh4
         hzYlHUuHWIDrtHPIyeuNqeH/6hJop9a3XvDbHmpaheZNdy3n9ROPbqNk+lAhlYP4au7W
         58Dv+p0Y7C+MGPYiGt5HxPtWd/Xi4sdcfq6cJFiSb7sJ1pluTdC8RXiyzGAqRZOC9FB8
         PqFHy3MSpsyCanbTk2LbmXa4fNzMoDcpMZ5jUqj5q0LPPRJT7Gi6oz95v3hPHliwFtTJ
         jwi9wVpu0BRAA+isqV6/F4qM8ZVtaI9eaddTZNJ9VkAM6lfFCe4GN9u75lYbAuOTAmKP
         mcBw==
X-Gm-Message-State: AOAM533eIdcB7NfKSuqKat+UfFgdfKMkd/VhbE/094ayztqinNsOc/Pm
        9iuY0LScmtB/NYzgSTDbs8QAJVN18wk=
X-Google-Smtp-Source: ABdhPJwy6z4emmuyginy/DaPwEcuMl9Qw+bcS/ZKjNAKFATLemW6wtxpy9tvpNZwyMg3tJUnyTQPLA==
X-Received: by 2002:a5d:554c:: with SMTP id g12mr12846241wrw.294.1599322335045;
        Sat, 05 Sep 2020 09:12:15 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id f6sm24462852wme.32.2020.09.05.09.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 09:12:14 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2] tsearch.3: Simplify type usage and remove unneeded casts
Date:   Sat,  5 Sep 2020 18:10:52 +0200
Message-Id: <20200905161050.711839-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
References: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The type of `val` is `int **`, and it will work with tsearch()
anyway because of implicit cast from `void *`, so declaring it as an
`int **` simplifies the code.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/tsearch.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 2e8403130..7b82d9bd3 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -323,7 +323,7 @@ action(const void *nodep, VISIT which, int depth)
 int
 main(void)
 {
-    void *val;
+    int **val;
 
     srand(time(NULL));
     for (int i = 0; i < 12; i++) {
@@ -332,7 +332,7 @@ main(void)
         val = tsearch((void *) ptr, &root, compare);
         if (val == NULL)
             exit(EXIT_FAILURE);
-        else if ((*(int **) val) != ptr)
+        else if (*val != ptr)
             free(ptr);
     }
     twalk(root, action);
-- 
2.28.0

