Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A115D26FC05
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:05:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726192AbgIRMFE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgIRMFE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:05:04 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E595CC06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:03 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id t10so5387994wrv.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o8DBn9tDIAX1ML3zpP97G0ZD7mTVtIrzPx96l2usZI8=;
        b=BbLp9paPbd2vaiwePIecBWYNV6bCkTkgOJ2oKyHCigLtoxcVTn53WcPGte7NptWAGE
         k+giCoQWcA8GJt8LnnP6Cy86u7HMIjpP4VDKP2z8O5hfoWZJB2ex2kB2+E61nGvioPN+
         mPZC3SuIIZOa5fMJBY6MUu19/+GeMhT6jGTgkEqfOuXvEl3522Fn9IaqlRDSGSROx7va
         hlG6m6xAeEWPUVWLvNqvxM1FImj00wCcz9lHFBQndiOjIvM4Pieyu5fl2p9yOCq9/mlu
         my12vt6nQA1+boxlQRuQae7KnKhMJPjm9OKX/7BHHuaXVcN8YT/zAxNU9oP8n06FqOMM
         JhAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o8DBn9tDIAX1ML3zpP97G0ZD7mTVtIrzPx96l2usZI8=;
        b=j1hQNDDhUc97a9m2rEqXALcYdPdb/qP+XhnHPaoqVFci6gyWlsz26V0KsUbWmvElyH
         Y8ePC/EeXw6Smjjr5ooKvpXmbN1Ju2NRinRxtVYTpyMWz32eOQuv/CoZz29ClvPBT/mP
         WN+DpGR8n8dS2MDrb7GKUEi9uI4wmUxYNGKHsd+pZM2jwErIeS6dn7fqAllpuSRdWTR0
         1fqisG/WESHUH1gJav2Wc9LeqBsJUJk9A7lE8sGDKP9hDf1m7OSspK8lBfmmo3JD4jDa
         6MPP9vfDzFB8PQFXKJrJX3dkWYrXAyYjEt96FdV0tOw0mFfEfixc6+oXERsKaqBhpnnN
         djDw==
X-Gm-Message-State: AOAM530g4zMJHbmgbcdMMxCyWkmtO1z6WGx/zEzeQSRG2VMhmWWyRt2z
        BHoUY2sQFPLEYI0JUm3NOptH2jcqXzslLg==
X-Google-Smtp-Source: ABdhPJwkM97tg8JqX9iXyeSOc5GoOfZHghSC6PGjJgvi9yuJrAETrzi0p6Mw+ljJ5T6mGWdi2kDLRw==
X-Received: by 2002:adf:f190:: with SMTP id h16mr37983067wro.202.1600430702564;
        Fri, 18 Sep 2020 05:05:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n4sm4862502wrp.61.2020.09.18.05.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:05:02 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/4] system_data_types.7: wfix: sort referenced types
Date:   Fri, 18 Sep 2020 14:04:39 +0200
Message-Id: <20200918120440.30281-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
References: <20200918120440.30281-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 72afe9e81..5ef470386 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -179,9 +179,9 @@ See also:
 .BR offsetof (3)
 .IP
 See also the
-.I ssize_t
-and
 .I ptrdiff_t
+and
+.I ssize_t
 types in this page.
 .TP
 .I ssize_t
-- 
2.28.0

