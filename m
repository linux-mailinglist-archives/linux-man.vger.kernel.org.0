Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C54727FD0E
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725975AbgJAKQb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgJAKQb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:31 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4639AC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:31 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id x23so2315468wmi.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0M1cAQGG0LsNusewUfRbX6QQVHaHRmF5ij6Oa3Ir0+c=;
        b=rbgKNb0VvFoPthjlulB23Ud6c569CDOGxjYGAD4ULuADOrEFoduDf3bdsoQEW5ONkB
         rM2ZZmNmS21HNOJboiW0P+MC6C+8Hr/fGuU9MKKYKHM0KO63F63Lb0v8jqh8t1Nfm8ld
         D14cFgIyn/jbbUSNI9cpfwfINmcmxE+KFZ2GDEp7ANUZzkaLJYCgokZeNQPR33Y2jrBf
         2wBogxMPmbkkLQDRU3TJcdLKcyE48Rmn2qg3H2SlPBwbBvHhqrUulcyBxoghHkEKFckW
         K57zIV8b5z3+yAcU/3GYrETpSBYCihAqPTMzmU9fwHI+Vg8LYKUYEDdawYNVKJOnZVdu
         q6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0M1cAQGG0LsNusewUfRbX6QQVHaHRmF5ij6Oa3Ir0+c=;
        b=YZdWm7od5yXmo89tneMBStsOzkdqhNttkYpOkaRR0kpKadEqkhwYHR5C79PL1pyni0
         2Aka0oHiwyxjIZTdkqv8q9+4sjVg6h4RbFKLFk+OaXR7L4cVb8zmqAUvB56WUdpLxjBN
         HqFKvoCRV76VzXjNrnVwi7P5FN8c3otzmq6TokQ/snbOcBMvRTR3LESSmOWvuiJzTuBM
         4s7++N+3rC46H2SfhzaZehoWdyydIEtB08LW0r5FL6rfI1eVqvQvhUVVSDXTE6sYPDIE
         TVhO3vh9GJl1zyhUvTL2vI9uUYwnnf1LTofZgHyHiE9FD1PXZpgrcfBNrdqb0GB6ApC8
         1q7A==
X-Gm-Message-State: AOAM532kcDCCPmQ9bcDX4xpk3FZm/3/yjfqAx1fnIsx4nIQtqMumi798
        XQtm4mvKvO0ofOgNjad3T9k=
X-Google-Smtp-Source: ABdhPJxDSYBGN0hMOwdRxf1gVmUfp+KOYyRyDmkGUtPNie60TgaE6rcLKSO2aQ5KagfR3SxaSWYgVA==
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr8099577wmf.185.1601547389902;
        Thu, 01 Oct 2020 03:16:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 01/16] malloc_get_state.3: ffix
Date:   Thu,  1 Oct 2020 12:15:45 +0200
Message-Id: <20201001101559.77163-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/malloc_get_state.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/malloc_get_state.3 b/man3/malloc_get_state.3
index f94efccf4..57781fd6b 100644
--- a/man3/malloc_get_state.3
+++ b/man3/malloc_get_state.3
@@ -29,7 +29,7 @@ malloc_get_state, malloc_set_state \- record and restore state of malloc impleme
 .nf
 .B #include <malloc.h>
 .PP
-.BI "void* malloc_get_state(void);"
+.BI "void *malloc_get_state(void);"
 .PP
 .BI "int malloc_set_state(void *" state );
 .fi
-- 
2.28.0

