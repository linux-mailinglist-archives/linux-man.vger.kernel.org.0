Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B94FA35355F
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236778AbhDCTmA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236736AbhDCTmA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:00 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EF43C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:57 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x16so7479209wrn.4
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TV1ZaGzpzoXjid5LXMYW52L7tDzb+jhqCC6Ks0Q7om8=;
        b=RNbAlXI9UhVW2lnXrabHL1safb7YQ7OUlpssbWeTlaHzulnukIu/PAOedX7dznRYtZ
         s4fun+nP7vHGW6uD4Nh8Bw1y/V30mKxXqLclcGYC9JtG10lQhu3ZfYvoSKjfK2WZFbsC
         u7qh2f7DsvRD+7xI4jJWBciBoEtq+5bk8KXvUHuLEAugH5Wo5l8rj2aCZq1OBpXWlChI
         GohyJGu8bSxdn68ainjvoF7j4PqyDTP6C83MENIq5Nn2a64qKSbW6+q2m/TSEB+GLWYA
         2DpBsTRhnd+wKB5GVL2EtRYQPANx4EAy4T/PvPzYbRtWYp73w6vMIEpuwjBWMVIOqYOp
         w+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TV1ZaGzpzoXjid5LXMYW52L7tDzb+jhqCC6Ks0Q7om8=;
        b=b+kwlwFEaJC9eRiJSaV64xNgEaJElm3kjmh1oQysnQExTpBaPSt8eMbs/SAVPM+7uu
         7rGMIvPNgD5C+UKkwKmvcF6En42BusmlVyEimAurQdq5RedUJr44Sc1WkQEgw4zFQxPm
         GYtJAMELkuHYEvgawRgeeCJbdCF1IHlNjg4xzzumWmeOg8MgTZlxFZ5evw8kfaktaDfV
         CxJy09iMU6DC5RTkTQOsFjRjdd1GkDhZTmP9bT3RPdPXjGzWYoFhsD86Q0Vay9R2VhO2
         IO3EYR3QufyTA+dz02anHssX0K+oW2lOtiDeWRoWEUshEzDxFYWxBfMiXXY68mxwHCb0
         p2Zg==
X-Gm-Message-State: AOAM530f7hZlcOB35gekKnc6WGIZLQcOm69FueLoQeNXojYEHdvTtNVH
        ImChPpd4IxrRiBNLmMU/o1c=
X-Google-Smtp-Source: ABdhPJxc+JMRjSHdkwCgDMUqJf+SW9syuxKbgmiRTchlLNpKo+p5d7u/VRugpx0zrX7jlmle3m/Etw==
X-Received: by 2002:adf:ea12:: with SMTP id q18mr21290409wrm.238.1617478916196;
        Sat, 03 Apr 2021 12:41:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 12/35] delete_module.2: Add missing include
Date:   Sat,  3 Apr 2021 21:40:04 +0200
Message-Id: <20210403194026.102818-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index bb0a812a6..174ef04d2 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -27,6 +27,8 @@
 delete_module \- unload a kernel module
 .SH SYNOPSIS
 .nf
+.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
+.PP
 .BI "int delete_module(const char *" name ", unsigned int " flags );
 .fi
 .PP
-- 
2.31.0

