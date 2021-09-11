Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E949407959
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233181AbhIKQDF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:04 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDB7BC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:51 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id u15so1304785wru.6
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9moqEIR0Vqv43LEHB/NZlDdHgsocCNcFeXGVA+lVFCo=;
        b=P+IXDeZ0L7m7R3P9D2REWExaLlf4eMmQmp9b1bO1+5vhEe1P9B9iQg0w0DI5VTThzr
         uD0i4AFXj6/NdPY8camBXG9Wx+CUxVqEGUqL2o/8CsShSQUeO7+AasCYnVDesZeHkhjW
         P7s86LPylCljru9f1kuKzJ/ezwgdtIsLcv3jRwhF3LqApHcwjp3nGlwv5VgFhgCYkksB
         qaO/R+fYzjJaJbi/vPKSWJGsHE3ShiLfamH1dAt0Bfbv7OCaAeI4N7QgA1NRca8DOK+K
         ZcQ/MeF1bzwaQ2WfRdL0KCdvn95XbyDBGMWyYsWATAvZmEzA7VOMQVFcpSVmYnFxrAzg
         i7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9moqEIR0Vqv43LEHB/NZlDdHgsocCNcFeXGVA+lVFCo=;
        b=M+UZiLjZmWZzVB6FUQl/9ySYa01B2RDPK/tbxvNGdZV9YWVYm1xGoSttwxeBoOuVZj
         4CB/GfR8zk7xuCFbMSbyN5b1ut1iyW9OaFAaLKhAcWoXABQDdYSWpcUOz9BWq50nDVhZ
         2BVpp9kQr9LNBqZNkU+UHz3AkU5LTMpqKvaP9ercogxCHk4CdLQwO3a+bfP7LS0OACyN
         GdxCO2B/jT2mc1me+AUR4j5HpjDVdkTGWxy07g6x0SNFhrLTXbOQAa6GJC8EiOk/+rdQ
         60hHYG1VrqJAsz9wTY0oNc7z6eXGA5UAzyQ1+0Q31N1Tv/ZsjCh8HGgivIYvKkwj4IAG
         02og==
X-Gm-Message-State: AOAM531NTkf0HryC5CXlr4/X7eJ9uCly+I0Q7P59PocnFE72IN9WXU40
        jmmAjoZXUTZYtv4oojc3pV8=
X-Google-Smtp-Source: ABdhPJwVbzZfWdQFZViuGNOFLXewtnKEZ6cVHdzPa+jdhAONiJbGh60/9pQ850x+wycIzkQ7v+o+7g==
X-Received: by 2002:adf:b741:: with SMTP id n1mr3779811wre.354.1631376110495;
        Sat, 11 Sep 2021 09:01:50 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 26/45] timer_delete.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:58 +0200
Message-Id: <20210911160117.552617-26-alx.manpages@gmail.com>
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
 man2/timer_delete.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/timer_delete.2 b/man2/timer_delete.2
index dbfe35b92..e1990470b 100644
--- a/man2/timer_delete.2
+++ b/man2/timer_delete.2
@@ -26,6 +26,9 @@
 .TH TIMER_DELETE 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
 timer_delete \- delete a POSIX per-process timer
+.SH LIBRARY
+Real-time library
+.RI ( librt ", " -lrt )
 .SH SYNOPSIS
 .nf
 .B  #include <time.h>
@@ -33,8 +36,6 @@ timer_delete \- delete a POSIX per-process timer
 .BI "int timer_delete(timer_t " timerid );
 .fi
 .PP
-Link with \fI\-lrt\fP.
-.PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-- 
2.33.0

