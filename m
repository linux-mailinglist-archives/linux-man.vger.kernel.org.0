Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D56A2E73F5
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:39:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726158AbgL2UjK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:39:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726111AbgL2UjK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:39:10 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BE1C061796
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:29 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id g185so3122005wmf.3
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tfk/7UGRHtmVc32s0x8fId9w7cnvSfAzAQl3XeATYBM=;
        b=qco1MEVwg3VzaPwZuuRtccKYWgn1fj13JVcjzSmkEvp4hU1woBbJguKjaPVZFcm4Tt
         3Vn/z7YKEP8g5kuwuq6yopuVZEF1Yfbbfz52l/fPsAWMQw4+DDjYcxZCQGWoOMCJz0VY
         CgvOzAfuhrNpEsAjv9/qkf05XitB7ilr5HhV/uQfD/ToZsQW/sv9s4OoeiLPheo712z+
         H49Bj00SkjyBVX5ed/L2iRkgAVQi77+mAtDYzp7EYNBQM4YJlPdV3Fq3KxaOpyG1a+SG
         d1l8jRi3yl1wvoOd/Yf/YaUIyCZC7uAZcqa6+ygIcjNQQobGxslCm/Ke/v9e45FK4zBm
         kgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tfk/7UGRHtmVc32s0x8fId9w7cnvSfAzAQl3XeATYBM=;
        b=aP1DmJRV80yURiB3Oa9zn5LnBgtOYccU3DIKtQa0O/QuCsL9SRRfkg5FUwIDv0UR+M
         VIqtZxDSGh8l7wLD2A8Qc5oNabeLfKHCpIQ9nKGo/skTuPjqMi0L2Z4yA2fn2ImUgpmL
         vTUF55ba0xoeEbcIt2V/5ir1FaGi1P1wblGv1bNqQOS4CxoALFVWgpd/rjg5lXOA4d1a
         QZAIxhlWhOgwPj45wCrLCWbVu+S8/Sqma3Q4GgFDQwAQVuD/3nQy5S4yGZCe7T9dCFlh
         2WxEGaBaNaK8r+Wz0L4+NBmePTIPZFXOWe0BvxAnS3GQu9Z2/nQZljMjCqE91pKSrip2
         Rqpg==
X-Gm-Message-State: AOAM531l4KoJEjcTDKoi0AnOuHQK3giFPPQjtGecOGVB/RBPOImGNLhO
        Cgfmuze4yAczjP580nkA+eo=
X-Google-Smtp-Source: ABdhPJxkcAFJSeb13Yq7X5r7q/RjDzqzFxDj0tOI0ulo+VmNISWHpOXqgPP5LnEG4UqZ9Q4IPV731A==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr4760443wml.153.1609274308656;
        Tue, 29 Dec 2020 12:38:28 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l8sm4783226wmf.35.2020.12.29.12.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 12:38:28 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 3/4] ftime.3: tfix
Date:   Tue, 29 Dec 2020 21:37:47 +0100
Message-Id: <20201229203747.3199-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201228094211.4917-4-alx.manpages@gmail.com>
References: <20201228094211.4917-4-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ftime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/ftime.3 b/man3/ftime.3
index fa28daccd..658ed300c 100644
--- a/man3/ftime.3
+++ b/man3/ftime.3
@@ -80,7 +80,7 @@ function and the
 .I <sys/timeb.h>
 header have been removed.
 To support old binaries,
-glibc contines to provide a compatibility symbol for
+glibc continues to provide a compatibility symbol for
 applications linked against glibc 2.32 and earlier.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
-- 
2.29.2

