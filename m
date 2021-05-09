Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E12BE37786F
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230055AbhEIUVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbhEIUVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:16 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFC4C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:11 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id l13so14419741wru.11
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+XSzesabz3O+44R35oSoWtGnQIPjz12gXTZ+6K4nsGQ=;
        b=ujhbytLNyE4hKfTl7N350AiyXzdPYfFeFeheltKS+EXvE9BwEn2NmR8Mef2oAvg2Vb
         7LnK3oyomLRsF9S/WFVNHliDJcD9tQmsN/k5BpyOi7VF0ShwDJ+YNpatunBK2Co3cD3y
         TlwtO/ULhVjLTQ+Ek01Y5hGgg5h1XNznvy0yPcgNxxFO4ud67iHK0d7OnvjZu/7U3Jsi
         qvpwOzuLtCfgSn9rlvN8asK/J+D/2xUWWoTrTbEtQ/+/p+M5j9V01azThpc6V1B7VFEC
         iQAXEPg5kKyf3F64gBtd622tt51Q+JYEkWbIv0uNaeI8uTTpJzBx1XGFX9fLkJXRyauZ
         yvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+XSzesabz3O+44R35oSoWtGnQIPjz12gXTZ+6K4nsGQ=;
        b=RHAEBxlZaXKidlUJwphlHOucXHdNp/5f9DLmdIw74sxz1wkoMlewhBUDOiE1/c4UMw
         KDU6E08R+xNpat6zLAupzwQ9X1tQFUyfAqHKXzBSBH8YM12JNWojh7ycs8e8Hxpkk5xj
         knMtXjgSg7Z4vRUZljnpu0jBPRkMhE/+usREh2YnzXrcx6nRghCsJaQJ3jyUTwApUUyh
         sU9tIJp0+D25Z9WOsugfMj/fovz1Q6B8kIJ7di/9bX+0Ftm56rkHidv6DO3ZVarOlUqp
         R18R7NOTFPtftH/1inLBAXc4A3V5odJOzol7456PQdksOxdL2tScTIS5u4hYJwA+IRx+
         4+Jg==
X-Gm-Message-State: AOAM531TRIkA0C/crj14JePyzR03lQrfA5wr2VQKqXJXlig1j2u+tCAC
        aZApUcpEV8yar/mAt7Lys70=
X-Google-Smtp-Source: ABdhPJzV1cUNDd24ZLUyKNSKKmzG2gcrlk+xHMt7VvPkI0khQDSFDSVS/CQjcoqiFTI9wXPbbkDFZQ==
X-Received: by 2002:adf:ef8f:: with SMTP id d15mr26576805wro.326.1620591610064;
        Sun, 09 May 2021 13:20:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Chris Keilbart <keilbartchris@gmail.com>
Subject: [PATCH 09/17] sigwaitinfo.2: tfix
Date:   Sun,  9 May 2021 22:19:42 +0200
Message-Id: <20210509201949.90495-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix wording issue introduced in commit
bf1298c9e5053f55dea43e74255dae5ec57f251e.

Reported-by: Chris Keilbart <keilbartchris@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigwaitinfo.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
index 5cd88c557..00bc50485 100644
--- a/man2/sigwaitinfo.2
+++ b/man2/sigwaitinfo.2
@@ -120,7 +120,7 @@ set to indicate the error.
 .B EAGAIN
 No signal in
 .I set
-was became pending within the
+became pending within the
 .I timeout
 period specified to
 .BR sigtimedwait ().
-- 
2.31.1

