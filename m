Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 561C440795F
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232333AbhIKQDK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbhIKQDJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:09 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E635C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id j17-20020a05600c1c1100b002e754875260so3454376wms.4
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T+YZAkMKVt2bQZNcRT5XU6zRLejevfgfGAPcN+UlZkk=;
        b=OYRcD8cKkjVXrNlGU/895Jnd/zkLtXUvFevIVvOJJsWr7+6VymweggBiIPu7YhZepE
         MW2d4TJjnPsFLLLTlfM78H0rpLQ+PkiyXd3VI8tqqh7K7f4u812nY/+PYDTKLltQ9Ph5
         lpsONNr9ru06Ylcs9Hu7v1u+AQHVNNIgqKEcYfCxgFhZumaWleKaF1dxVU4a+zFe8Rbi
         kmIMWas23cd6wlARPzHQU2DZOJwYvcEBygJWMLK/6Ixd2pIoWzFTeXsy5ELpTBnj3SPf
         I8jp3exisEKq0wPutFkF3pma86rzF0Llw7o1ta+B1z39zeDVQyjrKObYFZFM7GxUfCOv
         vNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T+YZAkMKVt2bQZNcRT5XU6zRLejevfgfGAPcN+UlZkk=;
        b=AvHuRTO9rH2/fgYBKSNnFmrF8CX51WSwaftLM/ARF2N62jHQ1tmudG/oVEg7hoUFsB
         oQ5k8uLY4LKF6WNE7LhBegJeOABgly3tyCZtD/pGGM186asoWgxV7t3HQdF8GTiPqQCR
         mDxWC/+/w43Rx5Sa4c56ZNJsLHnQPiI2dii7SGeFOvXaQnm28Z6+ZjT84BszHwsxZOjf
         R9tA5XPdNlmiRr+sG14skg4RpARLZH5fqxBmz3eaYUCXxnMuleq5phElZpG96S+pxoam
         7M1APRnawLnX+hSXq6BhbdLfloMS187Ix93C1y5Fj9gQik1N35wBWlGVk5Icb4wGKjYN
         KNGQ==
X-Gm-Message-State: AOAM532/voom9y1eUY+p67f/plXxg4Madcjo0BJrzXRMQLVJo2Eg3n/T
        cEBOAJLdeLqW4T3KiRES4Bc=
X-Google-Smtp-Source: ABdhPJzFONOIT13o0QsCnfR+qVea1MZvyyHnfBDRTJOGD4xSI+rCpm38NLC5pYkzJYBSeAaClAxWAQ==
X-Received: by 2002:a7b:c35a:: with SMTP id l26mr3259444wmj.124.1631376115867;
        Sat, 11 Sep 2021 09:01:55 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 32/45] syscall.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:04 +0200
Message-Id: <20210911160117.552617-32-alx.manpages@gmail.com>
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
 man2/syscall.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/syscall.2 b/man2/syscall.2
index abdf1c702..96a200ce9 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -42,6 +42,9 @@
 .TH SYSCALL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 syscall \- indirect system call
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
-- 
2.33.0

