Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FCE5407385
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231342AbhIJWsh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231742AbhIJWsf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:35 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28C63C061757
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id c8-20020a7bc008000000b002e6e462e95fso2481501wmb.2
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ex3h5MlwKZEaBA2bkMW7km+AO0otbH3dZ3zeaGuuRJ4=;
        b=Qjzgw43WVrr4nhBexh/yLxOFG2610JCTNbAf4CO96PGFni0thVYgUCPHNzKd36xkOX
         cnWnqEbBp3E+eCSrguC0YbPkc+CSlyO2pkMk3TVBv/R2D90jgF9JOeTAhfaZf9TzGRym
         sphounx9R4HGLkMlEkzHKyOf1qaSCNe6jjzBsMPTxUjxReYRYVhiSjf6X+2XgghIwWkM
         MPVyV3/AtyCvHNX9pQMnysUh3ZR88ojhg+zYpukeqCroDhQ5AOXr0VLJdwYzlLISprF6
         1ZazZalHrB54qKMSjMINuwXQfpOv14Heq4wnI2VnWMEHKnE9w75J2M/XhEKMFd3mDFX9
         jmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ex3h5MlwKZEaBA2bkMW7km+AO0otbH3dZ3zeaGuuRJ4=;
        b=arM8769brVuc9bWj0/3FCAT0gxHcg3+fmVzqnlccp6yy//GI0vATsKwB5KaopTQe+P
         aTDrGorwspJPnOkOK++tNVWS2f2OVIUwgFvKeP85vWy9xm+wMo7VIBuUByqiVd634uBq
         q88ImNs1Pi6laO2d/l3OIojg8JFUFufd/Io5ciaKydubzL9FiTIweoQxhtWsiGwPjvfS
         mzTk66u6MBcLsSbKPywkya2+6xNdtKkTXebZg2Wb/HuaTPtemE425tV5VEvBW3QIIWf6
         8Ea62fV8q0+JIxsTsXqbwHfv2TBUsbbVJnVYZNHvQX9q7ZJ+L4ETNZV7iUsFNvEOZEXH
         IwUA==
X-Gm-Message-State: AOAM533cQYL8dF73U8Il/PXBjB0+Ojk06hWyTo1Jf0ETkr0F2QIT3Ji0
        6U0B/jJWS1jWRU5T49zpXVsz+5+qYQ8=
X-Google-Smtp-Source: ABdhPJwiYDtslxpSVXKd/019yHb1pOtsZmiI6ASJfjSaNsdsFYjTDni/CTxLGSvXn1GG3bRJqRDLQQ==
X-Received: by 2002:a05:600c:2057:: with SMTP id p23mr21585wmg.25.1631314042792;
        Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Subject: [PATCH 03/15] memfd_secret.2: Minor tweaks to Mike's patch
Date:   Sat, 11 Sep 2021 00:47:04 +0200
Message-Id: <20210910224717.499502-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Mike Rapoport <rppt@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/memfd_secret.2 | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index 869480b48..1b4e82954 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -148,7 +148,6 @@ The
 .BR memfd_secret ()
 system call is Linux-specific.
 .SH NOTES
-.PP
 The
 .BR memfd_secret ()
 system call is designed to allow a user-space process
@@ -160,7 +159,6 @@ memory ranges backed by
 in any circumstances, but nevertheless,
 it is much harder to exfiltrate data from these regions.
 .PP
-The
 .BR memfd_secret ()
 provides the following protections:
 .IP \(bu 3
@@ -177,7 +175,7 @@ which significantly increases difficulty of the attack,
 especially when other protections like the kernel stack size limit
 and address space layout randomization are in place.
 .IP \(bu
-Prevent cross-process userspace memory exposures.
+Prevent cross-process user-space memory exposures.
 Once a region for a
 .BR memfd_secret ()
 memory mapping is allocated,
@@ -191,7 +189,7 @@ In order to access memory areas backed by
 .BR memfd_secret(),
 a kernel-side attack would need to
 either walk the page tables and create new ones,
-or spawn a new privileged userspace process to perform
+or spawn a new privileged user-space process to perform
 secrets exfiltration using
 .BR ptrace (2).
 .PP
-- 
2.33.0

