Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54946407942
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbhIKQCo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:44 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C31CC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:31 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id m9so7371659wrb.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=P2FBGRAmI33YiqgvtUE+kD1iE2olsSNkqCjLqhlPr5E=;
        b=J+e5ry46NhiRpINscNAkWLjU+PRWf4oD4m1tqQ+ZTpnzNQbrN5dQelKTgWanU5xxvt
         9J+CXNS6Wbdh4mKnaYBhEUzR1RCYgnmUtYkfmf6sEAOfH6Ls0DnesnBwFxbVjisrRwEu
         WAWwgpbeod3AcahJvQ7DJBoCTHy7dxZXJMqmH7f4y4ZW3Dxs7YXhLBr5SpCvQbPdhDjX
         fSlxZyP6+OJyMIAMN7t+E92IQhCfxc7EWYnt0eab5EErxQ2Lz0RI5+aPDqc868Ol2ehP
         ZXftH2u+dOPkvow8CoovEQq3ex0xwIlWW4Z6VtuW/7MG3GM4VsY+NNjMYoehPv5bWt63
         v+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P2FBGRAmI33YiqgvtUE+kD1iE2olsSNkqCjLqhlPr5E=;
        b=EtW3iPeAnsxrX/jXJjz8wvtZk5qpUg6T1lLj9YmCNxMZcW/o0+AzgqiRtjzaKnfIOi
         lFhm1/YLEEiSBCCDOWE1D+Jsc2JOMabvIjXcW9NSpsxxRRLJgXme2WTizBJfx7jKg7wd
         xE6P9w77M3xvJlvHloXY5wqYFQ4ArpzdiqtwspQnwIJ+bhJ/clrPlIng0MiQOs+XNAtQ
         Ekbsk6VcQdI0EQrZ3e6ADc3uS0LMs16sPbfsZIZuOkniF2TV/6Xz0E0vFaNwPAqGAcGV
         IKFMtHMu56PAhuwynJP3PdxA0qXtdOJ6OdFcYlSogfluVqONJW97WnPG7cacdjLpan6P
         dIpw==
X-Gm-Message-State: AOAM533xo2PVud1aiap3k3dMJfGenIVTgHX44PjRjQZbU8K+GmuzpccW
        34irBDLyCCpGFHM8Gqf8U2N1lip0MlQ=
X-Google-Smtp-Source: ABdhPJzrjaDCWTTZma7+gYYY4LE+I2MqXyI03ZH2DFf4SKJJow9MC2HDbmwLSp1PvD8s1tCFC1xR/A==
X-Received: by 2002:adf:b741:: with SMTP id n1mr3777977wre.354.1631376089986;
        Sat, 11 Sep 2021 09:01:29 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 03/45] gamma.3: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:36 +0200
Message-Id: <20210911160117.552617-4-alx.manpages@gmail.com>
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
 man3/gamma.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/gamma.3 b/man3/gamma.3
index 003964158..e7115ec47 100644
--- a/man3/gamma.3
+++ b/man3/gamma.3
@@ -9,6 +9,9 @@
 .TH GAMMA 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 gamma, gammaf, gammal \- (logarithm of the) gamma function
+.SH LIBRARY
+Math library
+.RI ( libm ", " -lm )
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -18,8 +21,6 @@ gamma, gammaf, gammal \- (logarithm of the) gamma function
 .BI "long double gammal(long double " x ");"
 .fi
 .PP
-Link with \fI\-lm\fP.
-.PP
 .RS -4
 Feature Test Macro Requirements for glibc (see
 .BR feature_test_macros (7)):
-- 
2.33.0

