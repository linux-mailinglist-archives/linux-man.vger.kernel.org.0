Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BC84404617
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 09:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350553AbhIIH0A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Sep 2021 03:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbhIIH0A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Sep 2021 03:26:00 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2572CC061575
        for <linux-man@vger.kernel.org>; Thu,  9 Sep 2021 00:24:51 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x6so1032070wrv.13
        for <linux-man@vger.kernel.org>; Thu, 09 Sep 2021 00:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LYeQXjAbLmOUd27rGVbTOYJRQ3bbgW0cra7yVu3D54w=;
        b=i2Se+t1keiisNMoxXaeTBW6R8vYVw5dT4DUY4/JauAsfC2PoVDXOjJrGiik2fZUiyu
         NiLEIe8d2Wy/6Yfty6ryNqQ4koTprBTxMaV/hIY+WOsgV58mrgw9xI+weWrmUhq+TvqR
         V48excvN2bqhtmv0XRwmP7tiiBfJGLsu46oNxKP3XH6Dvg+PX5xZaYhFJO+LPfHxgPB/
         x9f+bIQrkOcTjlLJLBH3c32V0wEi4Jv1iBafECwH0bPY3M1Grgas4B08K4k5LMw3O2vr
         dEjobuVlCC5IKkPdGHquT3lH4F/WtQrVxcTKiJ4OuyQdqXCwWkb6AMaelJR1/Mfe0N4Q
         GlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LYeQXjAbLmOUd27rGVbTOYJRQ3bbgW0cra7yVu3D54w=;
        b=cpBgi5167CKkUOJN3iDU6SwkoYyRjpWNqcpySze6FfrHSUeBxLGjIhaQPWF56FU9Nj
         9ENjVfS+G9PV1BROFz1XkgRs4KyiTGjunQ1BSovT4AWYrEV3svCdRjOjgHXL0HCAbUUX
         30l1ahjng9zKsQu7c00DwJwJN6qgs78X8iao0KYyZXNnV+H6obCuspEyPmvrKVaCviZE
         s2T2IJYCCF9m+5YCUdwDt77tzFsPcRM5uuLN0JAwEJE8vmgp2g8pPFgQm74zHyW8s2jR
         WeYzGqWEexpKwn8+bugWlvl8yZeXOEuXn3NcAo+fGLoDTJdp+sVpudrKMumpGRLWGIZZ
         2Qow==
X-Gm-Message-State: AOAM530KlgcsMeI8bfziegzLPYg0w4JVm01Z2QBudGmIfPZwKC+be5KK
        LZWOtefeDdAUbJQjb9azvjU=
X-Google-Smtp-Source: ABdhPJyJOkDsgPqI7W8qyBnZZw9lgLffhhKtNHs4wuKsLmEjVA6boGMwv1d1nkOGFwF9rXIMOoLjZA==
X-Received: by 2002:adf:c44b:: with SMTP id a11mr1765670wrg.416.1631172289738;
        Thu, 09 Sep 2021 00:24:49 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g1sm939041wmk.2.2021.09.09.00.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 00:24:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "Thaddeus H . Black" <thb@debian.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] Fix indentation of paragraph, which continues talking about \0
Date:   Thu,  9 Sep 2021 09:24:41 +0200
Message-Id: <20210909072442.423117-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <YTluPPbquS6ZHmHL@b-tk.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Thaddeus H. Black <thb@debian.org>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
---
 man7/filename.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/filename.7 b/man7/filename.7
index ec9cd8b09..6e4c0cd31 100644
--- a/man7/filename.7
+++ b/man7/filename.7
@@ -61,7 +61,7 @@ in memory, the byte in question is called the
 .IR byte .
 Though familiar to\~C programmers, the terminating null byte is usually
 invisible to users.)
-.P
+.IP
 Note that\~\fB\e0\fR, the null character (or null byte), differs
 from\~\fB0\fR, the printable digit-zero character.
 The null character (or null byte) is unprintable and registers in ASCII and
-- 
2.33.0

