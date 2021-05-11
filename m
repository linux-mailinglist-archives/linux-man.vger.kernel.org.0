Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32CE737A016
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 08:53:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbhEKGyR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 02:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230357AbhEKGyQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 02:54:16 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7401EC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 23:53:09 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t18so18952932wry.1
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 23:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XeA5BwrPxkQEimoL9RdJ/bjOFE4zFhjjMA+2rvDxWJo=;
        b=TGcf6q14LRbRTmEHH26T2+fjqQs6K3qyS0OQkjdSFcXYzPnATi9fbZKFlw6TgycfIr
         fm2OYE0BIilq/Fk8jQn4NDztRESEW4GqSZj2eTohh41nEx/vbnliEclJJRnylEXiZhZx
         /rMXzLgBcgqLaNIny63O5aAgArPxmTDESJo7GugS7ok8ToFKZk7cwaBN3atIcroX4gcz
         Qj4shLkLaII0U8xiblXQT5VjjkIfic9LKqIrtt2G/XochtZHZ+rLPE1skcwbwn8SeZnn
         4+xw6+TNStns5yH5mDW7D0aFiTwOy4s2Q+Mr6glZZQAqF5UpxCt35paHyWmMj14s2s0W
         IV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XeA5BwrPxkQEimoL9RdJ/bjOFE4zFhjjMA+2rvDxWJo=;
        b=OJdkGXXSE1p1XJoN+sAfrPo8Dy2Hxy+K7eL5k+RTv5Y+f6pykc6WmvKDBXPUHHm+Gu
         eLb/1xuijI+qhQotfeuGrX01Gmw7Y6ybWzPKGZ0oa+W/LwjXMlVxSnJeyMgjMKJGjpzL
         lN6248BU3o36UywHfoNNAhsa0NyuERad4LglJl7fJMdzQplQO27K7xgrTRx6IN6VXsbp
         5ddR8jEuylQadRWFwftT1Bs3ggwmHD6nFs5Azp2s+q0TEnX3QXkmiGr3z8QKP4nCkpXJ
         FNrL0ZhXAhb9atXAcKpL+67VVnYqMfJVjOT6UDzcVmqADJaa0CdD7M4iJGHlPFqVZOwr
         y7aw==
X-Gm-Message-State: AOAM533U7kv7xzYZeDDmbcEkaDI30MMDH1FeEIvoBa3Lfe2/PK8VEsVv
        9U4f35XICoQkgLlYwZmTZqXvFdjOOxM=
X-Google-Smtp-Source: ABdhPJxjAHk4Uu9aQSanW677l4smI0RVQ03EocN/QsIjGrq1dYDzjNu+/EU4chNR8ZW6ORre5Qsnqw==
X-Received: by 2002:a5d:4532:: with SMTP id j18mr35090510wra.223.1620715988299;
        Mon, 10 May 2021 23:53:08 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id w4sm25497019wrl.5.2021.05.10.23.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 23:53:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] README: Update installation path
Date:   Tue, 11 May 2021 08:53:00 +0200
Message-Id: <20210511065259.8556-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The installation path was changed recently (See 'prefix' in the
Makefile).  I forgot to update the README with those changes.
Fix it.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 README | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index da36ce9ce..6598170c0 100644
--- a/README
+++ b/README
@@ -17,9 +17,9 @@ For further information on contributing, see the CONTRIBUTING file.
 
 Installing and uninstalling
 ===========================
-"make install" will copy these man pages to /usr/share/man/man[1-8].
+"make install" will copy these man pages to /usr/local/share/man/man[1-8].
 
-To install to a path different from /usr, use
+To install to a path different from /usr/local, use
 "make install prefix=/install/path".
 
 "make remove" or "make uninstall" will remove any man page in this
-- 
2.31.1

