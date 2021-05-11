Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49FF837A3AC
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230333AbhEKJas (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbhEKJas (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:30:48 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126B5C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:29:41 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id l10-20020a17090a850ab0290155b06f6267so971394pjn.5
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IeR16A07tsQY3NlfgvP2CCIJw8w3cV9vG6l3BmoPa/c=;
        b=ETb7aLSum9uaILDLZaMp61qb21TzPkIogu8HVDJmY+UDePfwFYtxaVuyYWxeyf+Pw9
         pV+/PRU84XrVknSKSCRl8Ej0/ICPSpX3pSsPnTBFbzGroKUYPYnB6KCw4spEkTQgvmwJ
         E/WeZpiN8dMPCjD4Idnghol4s78wFTjyQ8cLceQAGAOoKqu93Y7qm1TI4MRgH8P5tkd8
         012saZ91+DCauG5ZhHevrQ1FYD63jdFr75fimMSm89tzmsXwqhH5U3h6/0+zV67bX/s3
         hqn6SUZn0YTh6idNBO/j3T7HP7f3JupO1ZDVOdxJtvjvWc4akP/PsPDerkrjfhKiSZ1C
         +Sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IeR16A07tsQY3NlfgvP2CCIJw8w3cV9vG6l3BmoPa/c=;
        b=ozzhxKExEg75P9fPKcOMekrs5952t4YZoRJK0pU8aL0Oo3FUT35S0Ztnu7KKKikb9/
         CDQR8UhA+JA3/Xdzf6xhaa9Y8CYTjkG0uHE10xAFti3R/46gTfXy14cPSXHeHVaKIF/O
         gu5bT21O2vsdBFQsYx1AZV8tJtULCNAZplAb9Q24IVcQfUqvyVSdl4JDSoCY85S15evn
         /Ki5sY3iO+odytygJx4UCoCixNVzxqZ6paLfimwrH/nz6WKKY2NQhcfSvgzd7pO5mCIB
         WccmVMxrPdzPJObRyCMG878HFBYzsbdUX02nRpszTPRHC3R3fAVnggfNPxKrzGoPU8gd
         jTsA==
X-Gm-Message-State: AOAM531sFOALU805Wb+8rN5/SLuQNv1uR6XfGtA+JfUwJSshKS2f0uor
        Knj/c5nvR5VXBi6Y7jKbolOxG3aErNRSwmyF
X-Google-Smtp-Source: ABdhPJzDbHrUsuolseeGTgUbjBef5+H/OcnN7VIJLWjO+Yi8eQFrT8N5thPssiK1OuzwLfLst1RZ/Q==
X-Received: by 2002:a17:90a:e298:: with SMTP id d24mr33089872pjz.144.1620725380492;
        Tue, 11 May 2021 02:29:40 -0700 (PDT)
Received: from localhost.localdomain (sp49-106-215-222.msf.spmode.ne.jp. [49.106.215.222])
        by smtp.gmail.com with ESMTPSA id n5sm13067216pfo.40.2021.05.11.02.29.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 02:29:40 -0700 (PDT)
From:   Akihiro Motoki <amotoki@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        Akihiro Motoki <amotoki@gmail.com>
Subject: [PATCH 5/5] expm1.3: tfix
Date:   Tue, 11 May 2021 18:31:10 +0900
Message-Id: <20210511093110.98541-1-amotoki@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
---
 man3/expm1.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/expm1.3 b/man3/expm1.3
index 54b0315d3..2d3bef375 100644
--- a/man3/expm1.3
+++ b/man3/expm1.3
@@ -154,7 +154,7 @@ on certain architectures (e.g., x86, but not x86_64)
 raised a bogus underflow floating-point exception
 for some large negative
 .I x
-values (where the function result approaches \-1),
+values (where the function result approaches \-1).
 .PP
 Before approximately glibc version 2.11,
 .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6814
-- 
2.25.1

