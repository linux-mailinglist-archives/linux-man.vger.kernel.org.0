Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7890137A3A8
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231357AbhEKJaK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231217AbhEKJaK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:30:10 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41E41C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:29:03 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id i5so10593659pgm.0
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UmiZbJY23AzPHGZlWSFFEryv2+qsF4PpuFPbXX3B3/M=;
        b=rv3pkxv7VovQIcWTMqcjn62ceScowY2b14VJhKxQyAKOEL+2P0yRDlxYEpmwDBOgzQ
         Z5m96xCJMamS0TwtTD2OqQ2EdvfwxXQDn7nlmOhxhztWON6WIHtw5BsbEi2Xb9yV5ccv
         J/xOiGB94272Q5pydK3+ZYnR/8gw94ulkkPCTeMVBDVPMCFm4+Hv30q3kU+Q3P3XICXV
         S+K5S3O6L3iPvuHoTyEy/+U+kFPCskHHKNESuyw3diU1grnE3ifmJxHYwltDrogXXGTV
         PJiAhYzANw34otcc5PNAJKzT2/asSfCpX5maze84YWsl8tB0AjT2rklL3kCcQ7ur4jth
         NUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UmiZbJY23AzPHGZlWSFFEryv2+qsF4PpuFPbXX3B3/M=;
        b=K6k2a0OGzUH6CP3pZQ+DnEzzU9Fb6CoZDklxR+htl1nWfwKwyImijhtR4uFKOQ9zuh
         dyxSKffSBODNSwXZJfXfd24AIAg1LsHSd674bByzdWHejn9SZUuPsJIAmVx09cnrVEGG
         1Unrbhmwk/9kFWu/D20aeN5hC1UuwyZTxgDhDY0G9oqEAdH8bOD+aChgFJ1KbFcRKad/
         hGqEVFaoajIWr0J087kiVDPAbLvFMZECGsUYhVRQpHUhE9xUeksy7ZYBnjq5r0wrH0VW
         61LdohFjxFT6kVvgNu8+EAF14rAvnEslKqSEeS5j/47C86/n0UkgUeo/k47hxlzgKlyz
         DIFQ==
X-Gm-Message-State: AOAM532LTDsF7yMKuWuy5/Mwx5Cdw9dDHx63fUIfO/9kx/+y4sGStH20
        w9n/cjYf80aiDkoqtqBpWfZrWJFEKNisnVrx
X-Google-Smtp-Source: ABdhPJybI/ymbg75VUhbX6I/Xrx/Jn3uyQI1RUZ9Klpw7/jrKzLjfOJs8HJATccBkHltG0j+9pqKsA==
X-Received: by 2002:aa7:908c:0:b029:209:aacd:d8b with SMTP id i12-20020aa7908c0000b0290209aacd0d8bmr29945554pfa.74.1620725342628;
        Tue, 11 May 2021 02:29:02 -0700 (PDT)
Received: from localhost.localdomain (sp49-106-215-222.msf.spmode.ne.jp. [49.106.215.222])
        by smtp.gmail.com with ESMTPSA id 14sm12928935pfl.1.2021.05.11.02.29.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 02:29:02 -0700 (PDT)
From:   Akihiro Motoki <amotoki@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        Akihiro Motoki <amotoki@gmail.com>
Subject: [PATCH 4/5] sigvec.3: tfix
Date:   Tue, 11 May 2021 18:30:46 +0900
Message-Id: <20210511093046.98430-1-amotoki@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
---
 man3/sigvec.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/sigvec.3 b/man3/sigvec.3
index f7ca776ed..b6644393b 100644
--- a/man3/sigvec.3
+++ b/man3/sigvec.3
@@ -135,7 +135,7 @@ This field may contain zero or more of the following flags:
 .TP
 .B SV_INTERRUPT
 If the signal handler interrupts a blocking system call,
-then upon return from the handler the system call s not be restarted:
+then upon return from the handler the system call is not restarted:
 instead it fails with the error
 .BR EINTR .
 If this flag is not specified, then system calls are restarted
-- 
2.25.1

