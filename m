Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453CB3A4D9A
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbhFLIeD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:34:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIeD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:34:03 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560BAC0613A4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:04 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id m3so4034425wms.4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F6zr/tGORvmIEBtNb/R1nkf6s/LYRqic2Q8eDAiTcOA=;
        b=kZnIxBm5tHwizMaHzkvv8Fo2hXyW4mUf1XYvdbMXx/FNKM4X3ClmNL2OOKl2SgER6j
         FJlj2EqNLSiQ0J7Wpa1d0IIGcqHO/uFlhLW7DsFtODvrLYFbvAXyZHaZjDuEP69S3rX5
         Zx8Fsq8gqZwdN8si3L2VD2rkPDwFy9qeWRo20CEN0t4ee9lj8NSbmaW+U3MrnfMKxS+p
         lMvOx8AS3l/23JDaEPVZKTlrgSlZ4UIQTFUpM7CKFjxD9fiiUxjASXUIgqv7nQxBANTJ
         J44EniAYUTtzGJc7IoJqNtR5d6ham8OREeSoGk24hTTG/LdPxto5CPnUoXsedBkV2q5y
         EG3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F6zr/tGORvmIEBtNb/R1nkf6s/LYRqic2Q8eDAiTcOA=;
        b=L7awP2u1p4Mz8TE2SShW15+QNkyoCrCOkE2+BA2V2OJAH8B4MCCbnrg1f0NT4+YRhP
         HO6KOO8eMRi5z43zVvTaGaXRrsw85mG6S1vzUJfX3WkMcHiD7xEjF0efIvAguTb4h1W3
         e9cM2JDfR2HW5zts6wa/kMFOkMnQntn6qe8JDcQx/E+KdM9YdodMDEQblXOFeAnLG9Hs
         W3ae7jg4WCQ7e4wj3vqfHs7DyHxTMTrjiXlIICDDEWPknrAytm+5UXhnjzCrjdGjRKFo
         4X1XNVlKEZDSrDIBWZgr20R4WrMBioZAfJteGgElMr8L9V6LfWtA83ReXNdhl6smGxUp
         0dug==
X-Gm-Message-State: AOAM532umlX1o4WYu2aMeCCxXP3tBe9AiyIc3s4u3CNhFp2rQKZsIYDR
        s6QnjKVE0qLsTV5RPNlXKjKA/rHJmZ0=
X-Google-Smtp-Source: ABdhPJwlr8fBCrudCIEhzw2UJOu5ShwxQKUGu71jIgd4pX75KkOaWKU4h9WhQXnCrgz+semWOva4Lg==
X-Received: by 2002:a1c:7402:: with SMTP id p2mr23451479wmc.88.1623486719768;
        Sat, 12 Jun 2021 01:31:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:59 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 17/28] s390_sthyi.2: tfix
Date:   Sat, 12 Jun 2021 10:31:34 +0200
Message-Id: <20210612083145.12485-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_sthyi.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/s390_sthyi.2 b/man2/s390_sthyi.2
index df4a91d5d..58e3230a9 100644
--- a/man2/s390_sthyi.2
+++ b/man2/s390_sthyi.2
@@ -38,7 +38,7 @@ s390_sthyi \- emulate STHYI instruction
 .PP
 .IR Note :
 glibc provides no wrapper for
-.BR s390_sthyi (2),
+.BR s390_sthyi (),
 necessitating the use of
 .BR syscall (2).
 .SH DESCRIPTION
-- 
2.32.0

