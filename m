Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C70131F1AC
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbhBRVZn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:25:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229762AbhBRVZj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:25:39 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96038C0613D6
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:59 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id w4so4950830wmi.4
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+zwNaDNUObWnTmEkHDpKuTrqdWRGtLXCKVi79IDWKoA=;
        b=MRuhBmOj/QYC70Hz8pqD/M7Vi/HrfuHi+v6jpyhbi3SBodfBuc1LqYODjDQFSwm00l
         CPbsFKbY+0jsYE809xOZU1zrxm/pfFpxpppktTL9Os5zSK5xflVLWjYxdfu/XTZjSsL2
         yzlCtyF3vfnrQZIvXsoyZbhC2Nku688FkbpkdEjWNvyc0My7QUs1D+EUyGoiWeqTdV95
         j0Xc+t7U91z+7b/wCLwoI6JepdCPbadxO1+ygu2gdi6Yph5y+FYV2Z9BWqyegeCvFGvw
         BYewh9DZYfoEAJ8DW3XbJeOv7boXvEMtnecKYa8jcqoYlX9yY60BUEHIhgNpFl5gr2f3
         bapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+zwNaDNUObWnTmEkHDpKuTrqdWRGtLXCKVi79IDWKoA=;
        b=TZFe46OXlNQg5gBcqhljqf4jvURAZPTIK/GHALjl8yRKIUQkCUHE7E4FSJe4mXkzd/
         82FbjAJf3hI0Y6cXgcZiVIaIA98Y414FA3rvZtbUvXP4a1wluXysucFPeqF4neUlwRFo
         FtvZWItcbXR5bbOVrSnGfLDpXSZcNJEb6Zf2O1RczPZh8vZKImWLwmbBddRn4uYUmlLA
         gPDDk1NSFzQNUhE65Kjq+oD2yuOM1RSy0vyBOjDE1+8vn+6QJZ9QGup7lr/MFYEgJ18P
         QyRazurbuudr7z6Dzxz1boUujPJmSkLYOZ1ntCPW3fq1inf/nY88hfQ9FiJ2ogs/UzZS
         NunA==
X-Gm-Message-State: AOAM530sWailM+Z0bdoOtuqwWCuswdBPoxVBg4qMAt7EpXH7Rr6/Av75
        WVqsbK/Xa2r7oZNebRyx3lo=
X-Google-Smtp-Source: ABdhPJwI8Kfo9IrDdIXRVTAtICsoH1hlgMxOgKsyJRQS3ojjfRIClCOAuyZvrKBQ7+Q74JYm4wLPoQ==
X-Received: by 2002:a1c:3b06:: with SMTP id i6mr5208207wma.141.1613683498284;
        Thu, 18 Feb 2021 13:24:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:24:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/6] _exit.2: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:55 +0100
Message-Id: <20210218212358.246072-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that _exit() and _Exit() shall not return.
Glibc uses __attribute__((__noreturn__)).
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/_exit.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/_exit.2 b/man2/_exit.2
index fe43f47ce..6e8e77a84 100644
--- a/man2/_exit.2
+++ b/man2/_exit.2
@@ -33,11 +33,11 @@ _exit, _Exit \- terminate the calling process
 .nf
 .B #include <unistd.h>
 .PP
-.BI "void _exit(int " status );
+.BI "noreturn void _exit(int " status );
 .PP
 .B #include <stdlib.h>
 .PP
-.BI "void _Exit(int " status );
+.BI "noreturn void _Exit(int " status );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

