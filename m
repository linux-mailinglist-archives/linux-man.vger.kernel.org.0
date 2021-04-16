Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C53AD361D9E
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 12:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240439AbhDPKAB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 06:00:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239093AbhDPKAA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Apr 2021 06:00:00 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1702C061574
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 02:59:35 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id e7so17120704wrs.11
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 02:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k1lmzkniMka0+UdmAu3q1UEn64IdZdSpMqa2hRtUMmo=;
        b=Wrw/gw9FqeYS0ZcmnbRuoBR3q6IJL2wNEvuHtSsO5Bd8tFd43CHoZ9ic3VTTfwyWJs
         uoupLz0RwmkkGHS3pWa6aBIY6YuqntIv/Kzmaoo366gVYDNRmMw+ZaEHxwK+FoH4hIZz
         s2mZwdOxIjqeTpY83H+wTzrIsWt1TwBR8pSoblJrSgW7g/ebRUKSBCnrjz9CTAO8QXZA
         /7ERw9fCFrlwygkb4IaIjt5S7jijenrcwZHT5xpyHfEXYWI1WtPN5h1Y6D8tRbCMV5kb
         z/C4r+8xIzKpa18sf4FgAQNo0qwIyNLK+ZX7DgkSwNGsq/kOY1Mr+Li/t1NQSL+VTJ50
         DL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k1lmzkniMka0+UdmAu3q1UEn64IdZdSpMqa2hRtUMmo=;
        b=RpNIzF3GSSSH06bQ7uGg+7in9dyrQTKSmbJxakJ/Gu3wmFgalPA/6D0aV70RFrbnpb
         xOqygIgQBnJRqxFojLYBd62GH/AlXGVRjLm+aQxOx6jLsb1XmyikScaSKYcv2FK14vcA
         WsAfkuGQtxo1hcJDNnvmVCnZSGfHmUszB4Sq4X9OyTqE3YOtfFcB9erEgjTWZyXqFddl
         N4TmrVjrR4Cq11ZB/0YKgsdmJLk3Io5xGT5ipIoZDoqKN/lRk0loz6EUDKdXaLXvPN89
         fDfEWf5NhsJYRJcdVgS8zZ80v1Psn+hPQG3fJr8spWhDnyAL+9q9r8WKxti4bCtmSeOn
         N3BQ==
X-Gm-Message-State: AOAM53320N1Cwz8aurlyMzrEf2tLtE8cAm64d/6gNCwoFV/+qLHrpCrx
        hgK1V7/FMLdNOmy6Pfh+Qhg=
X-Google-Smtp-Source: ABdhPJzkNSgS8bPD97CJu3qCl7iOuhaqcM/LpOv6x2T/oTACjOn/G99VgY2iFYKeH9ZACe16wnfJ7w==
X-Received: by 2002:adf:ce07:: with SMTP id p7mr8400621wrn.53.1618567174729;
        Fri, 16 Apr 2021 02:59:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id t4sm10655089wrz.27.2021.04.16.02.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 02:59:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Borislav Petkov <bp@suse.de>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 2/3] sigaltstack.2: tfix
Date:   Fri, 16 Apr 2021 11:58:54 +0200
Message-Id: <20210416095853.6188-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416095853.6188-1-alx.manpages@gmail.com>
References: <20210416095853.6188-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Borislav Petkov <bp@suse.de>

Add a missing "to" in an "in order to" formulation.

Signed-off-by: Borislav Petkov <bp@suse.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaltstack.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index c8d5c184f..53268ccbe 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -111,7 +111,7 @@ Clear the alternate signal stack settings on entry to the signal handler.
 When the signal handler returns,
 the previous alternate signal stack settings are restored.
 .IP
-This flag was added in order make it safe
+This flag was added in order to make it safe
 to switch away from the signal handler with
 .BR swapcontext (3).
 Without this flag, a subsequently handled signal will corrupt
-- 
2.31.0

