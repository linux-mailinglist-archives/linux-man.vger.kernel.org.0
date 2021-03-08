Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EAB3316BC
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231395AbhCHSyo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbhCHSyR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:17 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299C3C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:17 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id w7so132799wmb.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K/drAXEjQJHJ+Fo9ef70417YopJZciKi0Gu4CJxjrPY=;
        b=aXPStQub7qPQMyETvdmpYMe+h0YDNASlhaAJtpn2rtnZTa3aX2uC9JCuttqWSXKTma
         vJX0PpXg/Kkv7uiqW5AmLZEX/YfuKp4bLoJ5EqBPOk6XCol6+TchJBscm8Z0gIf7SXLb
         Mc3qvlb2uXCmfGYr4HtvK2CwEGFXSUF1tSsb33EYrrgkQ2oq15Do1QXvosqmFsdsSz+P
         ENDymw+nqxmQdP7jbtzkiQlgpWqnDlHPY03UmtQ7o2LABv5s9AVxdpy+kLmz9jGrM8ZD
         7fS53mcKdGcsMeHvd90up3UBLMu6xyco+ZzRpLdzDewWT60Hw2mX4aCwSpUGEH6Jso5b
         Z8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K/drAXEjQJHJ+Fo9ef70417YopJZciKi0Gu4CJxjrPY=;
        b=RctJ4G7sxaTp005EVNqB46m1r1avI4iLkZj6+Lvv/PiEZWg5z3LrW4KtkBiwm91Jyo
         hJg5N3ipnjr1DmG1DCfc4UOpYj0SM0bOIa/U0JcT1KxM4WsrkWswtkD4fjr567uo8hGW
         Zo/ZosQ4oIZMEMnNMwaDzPwsdZ5SilMWzEG1DxYVFJvrCeeGSHlyPtdqVLja8shxjN9B
         C9IhN2+FsGC1zruYZccKzFiS1InOPDQsWLgVzII0z6GycM2dA4x6Rcr96YgId1eZrNaB
         Ev3cvuRzs4iN+Ps6R6rEacsepwEyNSGJttxAActMeA5RYCa2gpvXX2vOj8I+b96ZbFI7
         jfZw==
X-Gm-Message-State: AOAM532A3QmzkSSePatRpz0n2qpYj/6tezfxXP0O29XhWmq0gsHDR010
        VqTY89aCAIg0vEwJx+gUEkM=
X-Google-Smtp-Source: ABdhPJyoc8QX1Rn5YRbOKWpDbiYTdWRJXKWyBkqgT/7PfFg0lsBHNjBj3muClOlVh0NMB5wKE5NkpA==
X-Received: by 2002:a7b:c410:: with SMTP id k16mr178482wmi.121.1615229656015;
        Mon, 08 Mar 2021 10:54:16 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/23] pthread_mutexattr_setrobust.3: SYNOPSIS: Remove incorrect 'const'
Date:   Mon,  8 Mar 2021 19:53:18 +0100
Message-Id: <20210308185331.242176-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Neither POSIX or glibc use 'const' in
pthread_mutexattr_setrobust().
Remove it.

.../glibc$ grep_glibc_prototype pthread_mutexattr_setrobust
sysdeps/htl/pthread.h:355:
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
					int __robustness)
     __THROW __nonnull ((1));
sysdeps/nptl/pthread.h:888:
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
					int __robustness)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_mutexattr_setrobust.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_mutexattr_setrobust.3 b/man3/pthread_mutexattr_setrobust.3
index 9034d6faf..d2df02b00 100644
--- a/man3/pthread_mutexattr_setrobust.3
+++ b/man3/pthread_mutexattr_setrobust.3
@@ -33,7 +33,7 @@ pthread_mutexattr_getrobust, pthread_mutexattr_setrobust
 .PP
 .BI "int pthread_mutexattr_getrobust(const pthread_mutexattr_t *" attr ,
 .BI "                                int *" robustness ");"
-.BI "int pthread_mutexattr_setrobust(const pthread_mutexattr_t *" attr ,
+.BI "int pthread_mutexattr_setrobust(pthread_mutexattr_t *" attr ,
 .BI "                                int " robustness ");"
 .fi
 .PP
-- 
2.30.1

