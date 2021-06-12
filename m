Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8C883A4D9C
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231145AbhFLIeI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIeI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:08 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0E87C061767
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:57 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v206-20020a1cded70000b02901a586d3fa23so9902902wmg.4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LI/AXTw8JaIbfLp1uK+ObX2zjaPj9tH/hHGcvF/F8FE=;
        b=Za+TsY7mSeVyoP+aXuyA38MP+wWS9j+hu+Yz0i2M1HxTfobWYacbx0CVH0a8m+UXhF
         tdhcD9ZDwPnwoJzE9gCSbIqL4b59Kl5ydg7KYysfONcnCe5xMZCWARxAdRT52XX+pIX9
         3Y8Os2Qcw7ylNV/71XK5QFP5wUXwIMBE3gXl7GmwI509AVq/gSGzE2UYHlm35+TLhhKw
         oe6rqIXDLrjWyAvp3i1x+Bj0a1yKeelX97yENx193AMrLTLwRU72667/kA2bLHMscU40
         iSooHUGY1BpsLG97GxX8w0PM+oHeEbub3cXbdyU69mnh3ez/OE9KexaqwmQsqgiPRMq8
         GIRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LI/AXTw8JaIbfLp1uK+ObX2zjaPj9tH/hHGcvF/F8FE=;
        b=Uy0GmLBj84LERzvmNqw6d0yAd1ct52AS/9j1+7SRsptOz3lc91g/+4ni6sdk59nZGc
         0hgHs54XtmVmRmX/2RddKxZdskvAxB+ezo4nIWs1+pWPEFrjWvrFzDpeHolEOXeXyCQH
         J9y5DUzez/ahotrs9ZcoqKACQssQh1pJzih7fy+IIWTIddwmAovPWsczGnB2BhxSkFrR
         4q3TzUGN5HzA6LpRv894Qjofn3kSiH7WuHcY6ntKTh1VUPUyiQlOqxEHtEk1e39c+1D4
         ihwdTG1jWTB5U0X/g4ZBg5ifrnvqSgmLo3HaO/HSCbNhNmd+3PrLaDWuz/7C9LbRO/0R
         fKgw==
X-Gm-Message-State: AOAM532xOt1lqz3dnfZAb1MFYZRCXuMeoRsVWkEP6rM5Ax5Lae/dZz4u
        iRPmG3hda7Idz/W9GlM5evk=
X-Google-Smtp-Source: ABdhPJwzIvyxHr3FKPuPhNvOf7Om4EOHusbVW765PHartFUxvtuUXw4IJkZMjcJJNbM5adOfUh3FwA==
X-Received: by 2002:a05:600c:2046:: with SMTP id p6mr23581495wmg.19.1623486716397;
        Sat, 12 Jun 2021 01:31:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 12/28] syscall.2: wfix + ffix
Date:   Sat, 12 Jun 2021 10:31:29 +0200
Message-Id: <20210612083145.12485-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/syscall.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 0b542ab10..abdf1c702 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -44,8 +44,8 @@
 syscall \- indirect system call
 .SH SYNOPSIS
 .nf
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
-.BR "#include <sys/syscall.h>   "  "/* For SYS_xxx definitions */"
 .PP
 .BI "long syscall(long " number ", ...);"
 .fi
-- 
2.32.0

