Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E70EE407392
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233405AbhIJWsp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234176AbhIJWso (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:44 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE735C061757
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:32 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id s24so2202264wmh.4
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XhksVVAUWnUwPUXHfHvEs1kX7598ISfFkSJ6GrJoJPw=;
        b=QXtYD/dM7ki/6f/M8z/Gak3jAY3zKJObc0EIqZpTN+rObjZ6eeNINgyzrcJqQzsXCw
         uvOhFhpCVo6s+J+v1MaoLdJ3o+yJCmpj+8UyvTemVjdTxsteByZd6y178+vJCw42kjQK
         elhaOBehx6CMQA8LFOQHTaaANfjiOWEj7OWL7BII77EoAN073VSRdNldk3EQVSBlHmBi
         Xb9Xdy6mudVVXFa+s/ev8nFVBgGcfaeJ15LEBwjRAUAVeDERHut/abdKaivoWFGWOWkn
         5YE4YylNvSGOm2xjXskZv42GQWGJ1EpALYMPbpRacM0TJBbjWhp8nzj7Cc/BJ5OQsToa
         cFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XhksVVAUWnUwPUXHfHvEs1kX7598ISfFkSJ6GrJoJPw=;
        b=uQNWKcizr6tCqsuVa61MVxDHCoZ+73CeveaRIZAJNgi1OIpAGbMiuNWhKVuVgFDvzH
         Bh+HVhEzgLWWXIyTlLumCIM7uTYaKw1Rr8VOEV8LCNS7iBseVcGOizm+BKzjmHdY2l2M
         wDM/zV7jR0C0t4OSxwoPVTYcDkQdCfO4lRywNPGFMaDt2/be3/fbcsFzsZt9VIQ35DoZ
         8ADnOVE+KUKBxyM/cmJGhNXRdiIuqRGOxJgFGNWto7lihqgDBXKBmaeizuMRXKVMfUA8
         LYP9J+RFF8mv0Ej4frobVPxJH6ni1KUDwUv40hMoupjsfY3K5qkTCdy86pL3UEDRyabQ
         vcHQ==
X-Gm-Message-State: AOAM533QsSaacluFwZcyidaO7+f/CCIh74gV9aaIkwgS4qD6huohc9eW
        RfV4zz1s64CB0YOICIGSk+Q=
X-Google-Smtp-Source: ABdhPJwc7BGdzYW9ROFoYsyYw23McqiypeWfWIGR4alst7to5D5iW4GJCuinZ3cKhubYZInjwKRIYQ==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr37225wmh.64.1631314051353;
        Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:31 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 15/15] futex.2: tfix
Date:   Sat, 11 Sep 2021 00:47:16 +0200
Message-Id: <20210910224717.499502-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 1dd77ac2f..72100300d 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1137,7 +1137,7 @@ except that the clock against which
 is measured is selectable.
 By default, the (absolute) timeout specified in
 .I timeout
-is measured againt the
+is measured against the
 .B CLOCK_MONOTONIC
 clock, but if the
 .B FUTEX_CLOCK_REALTIME
-- 
2.33.0

