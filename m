Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F31D35525F
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245619AbhDFLe7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343492AbhDFLej (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:34:39 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B12CC06175F
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:34:30 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso4319600wmq.4
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y7aoOdBIK3onnnGG0rMX7NTwOGkYju9lwF+jl+5KjlI=;
        b=swi/tvRPmThgHxGKnIXkCTCRrP1OHCi/TxklAf8rRyH5juIuygIqRQhdAc31m6FywN
         FKen+XVsVYDSF0Rpz5Cjy3V//3F3qs5IwMvX9SsyoMHfzOKu+ngupOxsfdMOq8KRwFAu
         pwKqVhooXNK4AEB8mW3jlYyExq7/jvGktCeutq/GdCcpWxJUoeAxYzTj88/BiWG0H/GG
         4vPFlmYVnLoziaoFaZ/EB5PE3IvLL8cz15u78xfXtD5Vq6BSFVZlRDet14wuTQXO1E2+
         o+PFzkroBUBgPwUIOWZhuv4JM2iZSi5cgGFmQzUXwKZxNmzSZHtXU8L5yDbDyDya+WLj
         SMXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y7aoOdBIK3onnnGG0rMX7NTwOGkYju9lwF+jl+5KjlI=;
        b=Gp5HGY1q3PhgaiUrc8Jd0EK46FrWYYZz1oB2PxuVm7pRt5e+X06OULLX8mg/0uESwo
         iJDLMLAhKEevpdVwb7+MOmI7vyvpNGbyoRxPChoZBoFb6xTl1ZGEuQtDgkgu2oPS38RY
         gaSZ0d6juWXTy5iuTdw5vdWPbCz83um9JutPAumO3G7sDul9RegMtkV1RGyF3RfhE34h
         VEZ/iUkolxENGIw2CpOuw5QluS5RtJmjYBMNZGhjcuyuYFYReKKXbBN56cuWi/6khgwx
         TOZXYpFkuEmpM/hLIDwDsVdGLWBNIVpFoqZwcTtDdHtE4GZ3fme6YA2fq+CruJ2GQ8gr
         /Z5w==
X-Gm-Message-State: AOAM533azT4cgnY6vTjEQcDlVy1zqtmuGtWDAi/3rrtD0mzlaqOog74Z
        i4T0hZSI83zu1/5oq934UOs=
X-Google-Smtp-Source: ABdhPJwpyKoOBdrprdmn6viDk8gCPksxcNEGeyqsq545UDmY2q8ZUpdczTvYZz+V8GGvXdslyc0QTg==
X-Received: by 2002:a7b:c409:: with SMTP id k9mr3681367wmi.151.1617708868892;
        Tue, 06 Apr 2021 04:34:28 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id 187sm4408030wma.0.2021.04.06.04.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:34:28 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v5 3/3] .gitignore: Add file
Date:   Tue,  6 Apr 2021 13:34:11 +0200
Message-Id: <20210406113410.22384-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210406111448.20392-1-alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore everything new by default.

This avoids having to update the .gitignore when we need to ignore
something new.  It also avoids accidents that may add an unwanted
temporary file.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: Dr. Tobias Quathamer <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..7caf4c49f
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,11 @@
+*
+.*
+.gitignore
+!Changes*
+!CONTRIBUTING
+!MAINTAINER_NOTES
+!Makefile
+!man?/*.?
+!man-pages*
+!README
+!scripts/
-- 
2.31.0

