Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 103BF3551C3
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241346AbhDFLRW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:17:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236207AbhDFLRW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:17:22 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1623C06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:17:12 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id q26so8097868wrz.9
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kMw/rNb9crSDgIEBCDP7y6z4a6d8NTji9hJTsUZ5/oc=;
        b=dotmBQ8P9gYjLW99MhI36hXlK7BZjG4b54hK9G8JUbM7haV3LPYFw1XhPOYjUfzHX5
         NIm+R5ET1M4oplK4dkbudUIQ6M/uBnEtV37BUTRxPo7CzGvetd+alayRBnnpyZWmr8Or
         0BSH9nEKAcZE8IVne6w2le1rck1CxjWpxAOK/1VuMln+i8fhbmZBVYPh+SsIMQI2hjcs
         Vq+Y8K6Zg5jSaC8Td/7i7h4gn2xMjIbzorcet+sCULwHNjgQwUQyVzDTuAJQPG3qj8cu
         5K5FLv296iWqNQyWEVAdT1FPpdllZtnvBIHn/ifsq50JzA8RXVc+tGgdAkqXIQROzCNn
         ZL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kMw/rNb9crSDgIEBCDP7y6z4a6d8NTji9hJTsUZ5/oc=;
        b=O88Dnm4kkh45JyNS0fcWkUC08stzdjaxy9+munq4VqVOoTwvA2B4Jrk7RsfZR2zdYZ
         YCzE/DvUAGo4ADSL5GaHiay71lxQ/cQlMRiU4nOzGVo28Xk7iqLjfeP/V5yxE1Lm4gaR
         WMD4dBFkh5+n4bmj0I2LX4PfHS/9PT1ZceWbIhz3dSs24l4P/R0rr8Tl/Bksc0FWzmvC
         WYkUb62z4XThxgfataIkZKmoqaa9ap3+EgqhZoRnmqg0MsxK6RuSDvNEoIqvy79YCvk8
         JwD0In3VWQIQMWZobF6aVouRUYiMDoklWPSJMGKvZNpJX+Jn4G10DiIzQPTrtBragCej
         M6YA==
X-Gm-Message-State: AOAM530PZyUlOUTljhynWBYeQ7kXiFVZrwv86q9cPNhPI/kxmI5hoHZ/
        eqemerI7XPyZMKpTzY8IJsg=
X-Google-Smtp-Source: ABdhPJxpioplVRYByM5Q9kVsvuFTUWzQxl90NQztmnZzICDTyg9aJi0klr39qqEcl8kNOyM5gdYddg==
X-Received: by 2002:a5d:6192:: with SMTP id j18mr1796677wru.264.1617707831792;
        Tue, 06 Apr 2021 04:17:11 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id r11sm16552920wrp.70.2021.04.06.04.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:17:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v4 3/3] .gitignore: Add file
Date:   Tue,  6 Apr 2021 13:14:54 +0200
Message-Id: <20210406111448.20392-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210328190601.68165-1-alx.manpages@gmail.com>
References: <20210328190601.68165-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore everything new by default.

This avoids having to update the .gitignore when we need to ignore
something new.  It also avoids accidents that may add an unwanted
temporary file.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: Dr. Tobias Quathamer <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..9c58a2718
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,9 @@
+*/**
+!Changes*
+!CONTRIBUTING
+!MAINTAINER_NOTES
+!Makefile
+!man?/*.?
+!man-pages*
+!README
+!scripts/
-- 
2.31.0

