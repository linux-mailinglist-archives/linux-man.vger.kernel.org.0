Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59239377870
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhEIUVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbhEIUVS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:18 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABED1C061761
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id m9so14454189wrx.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8KSdXJq2tqbK4eLT/t2L1iRUlcmA0Ej7DXhwWqXXIG0=;
        b=Lgn7e22YUq6oZutLTwSUx59fxDMRWNMJdI01Kox5tvHB+60nCooDM3aXmhRRaKMYuA
         dENciuDDMrWSBdkApHVAWmaidqFk3kdH01+KSO9sfFcQLjk6UJUTormEEhaeoV6BEVF9
         A3tCEKVEiSNbSCbrYfs2baB7mlKQo4yrVLO0AoB5jlS2iMCa8JkE8dCBK7CekzeI7Zd/
         d+d8151jVD7gEgDfHbDRHFWWHeeDVcL9TNfACVQSA+6ygZ+YS+KVyYzDxE/OYiMi1vTA
         bocKgNHP1DUgA9NTZXDRCBuAAoX6Qw2njHWalUQ0Q+JcaoZvMGX+sIP5iH58vqf4+BTs
         XE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8KSdXJq2tqbK4eLT/t2L1iRUlcmA0Ej7DXhwWqXXIG0=;
        b=hIQkDnlHHCFz9CJwchFp5jL+C/zy9vYYPeqqsbSNG2yOupJe9tL2LC9ORHgQ2t6dO7
         9UXaYeiGGZE86vzng5xRhpZX6KsMXlpWUkCwy/MrK57Se9YHro0UJ5j/lxopiwZsgTvp
         A3TZolJhFqNf1EtDSuE2kan8OFTzAJhJZOoAi2+K+qWMmdIbAx5hWbXk08XnhfgKfYq2
         QLpqWDZlEz8YTnMwWOQ5BjmVs+CHjTT7wiMjN31S6EBCszyYuXqfbLqdgs0atue/D7GN
         AUKHcO3/J/1donsIT8Ji1tp923810+lVk9sJwe9Q7rfOC9pazDwwt/NYIJBZsaFv5y/n
         2dUA==
X-Gm-Message-State: AOAM5311RKbRAh0UU2s//2oc6I/uxWgqO82TWHSFtzDMDKdSGqvpXQzS
        7ZXOkHtLKKQl4XCqqVNgKqnU9gprx0EAlw==
X-Google-Smtp-Source: ABdhPJwAZGc6ijjnxYjaTYPj/YeAX97q/uWDnN6dqWpmpj8H1kKNvNZC415iDF5fgeSLMz2HkJl1Nw==
X-Received: by 2002:a5d:45c6:: with SMTP id b6mr11150070wrs.333.1620591611505;
        Sun, 09 May 2021 13:20:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/17] getopt.3: Minor tweaks to James' patch
Date:   Sun,  9 May 2021 22:19:44 +0200
Message-Id: <20210509201949.90495-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The rest of the page writes the characters without naming them.
Follow that convention.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getopt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getopt.3 b/man3/getopt.3
index e88321ed0..0d6ad1c54 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -130,7 +130,7 @@ A legitimate option character is any visible one byte
 .BR ascii (7)
 character (for which
 .BR isgraph (3)
-would return nonzero) that is not dash (\(aq\-\(aq) or colon (\(aq:\(aq).
+would return nonzero) that is not \(aq\-\(aq or \(aq:\(aq.
 If such a
 character is followed by a colon, the option requires an argument, so
 .BR getopt ()
-- 
2.31.1

