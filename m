Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57046407946
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbhIKQCs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:47 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C01C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:35 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id n5so7323715wro.12
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9RWI6PeOZSVAxVu0v4oHzf9C4PlrhmE8pWQd1PXPh0I=;
        b=dveuXQyBUdbH93PhpSGtnmm0Xkebb0skCd11vjOwjxI0QdJ0wqVS0TiwPSzzgHQl6U
         hqc1P0BGYmi/R/fRjc9sAT3Pg7nsdYNA/TyOFYIIIoB8Lee815/dXbtb2an0r89189fn
         lI8qXyAmQE/6pWnTXUMTPVpm1CR73xd3hXcucKK++eYbvc8dMF8hNAmAEJI8Xo8GVQw4
         p/KV61Qc4LrgTUKtXgRIOwhh4Bmjdb/ut+zxsPNMiSUbpHKKqons7J1MGHsSJuuWhwD+
         pqEtQ7O+5RkppRWb0qBS6+McVkfaW1pymXOtatKgNbRjOw+5XqVFQsUEQFQ2ZCJkg9hu
         WtVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9RWI6PeOZSVAxVu0v4oHzf9C4PlrhmE8pWQd1PXPh0I=;
        b=2ovKudYUyh8ctYl5eQH1ae1wFc2fa/0OQdOmbX/OJnKd4WSXed+db163Sl/anB9/CE
         BGFRCqSxDIDcayk5d7qb5U41y1tgnw1kIqSMkD/Vh1ZsC8Jz+wp0xOqed/wHu9tf+8bp
         pvYYYfEw9mTA8RtZiKSu6XmWN3zL+MCAEofVKuLMwGqhCTqklPUk5OiPYwr2eXYFMdQ5
         454BzlijFf43FjVEya66aAxi7kNMM2+2oo5WdXG402zD6BFrgTLfhkPJglx9CWxxNccX
         tMfXdtSQnNIcQA/myy1xfj6Do8hMnH5bfN+qi19nOZQSENCdIKZPp4lHcv7gOlOhMM3+
         DNMg==
X-Gm-Message-State: AOAM533Txx8faoUl9OwzJSHDr/pxAGO5uq+srGqtMqrzhi3wG5w7BVCs
        cXEWFVyx7WwbURzFbPZuoc8=
X-Google-Smtp-Source: ABdhPJwTDAC67qonOJiUQSWarH/3J34Tuiu4D40l2FKxdOWUo547YOB1Oifk/2TLiRnHi0CM4DrV4g==
X-Received: by 2002:a05:6000:1b02:: with SMTP id f2mr3627016wrz.218.1631376093879;
        Sat, 11 Sep 2021 09:01:33 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:33 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 07/45] wait.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:40 +0200
Message-Id: <20210911160117.552617-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/wait.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/wait.2 b/man2/wait.2
index 4fe501ce7..18781b26d 100644
--- a/man2/wait.2
+++ b/man2/wait.2
@@ -49,6 +49,9 @@
 .TH WAIT 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 wait, waitpid, waitid \- wait for process to change state
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/wait.h>
-- 
2.33.0

