Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D315E342C71
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 12:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbhCTLoR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 07:44:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbhCTLoE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 07:44:04 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4396C061762
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 04:44:03 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t4so1321253wrn.11
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 04:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cNQVH2uaHV/1JudbY5JiQFHvKBvQiCbpeIprndeVuG8=;
        b=qtQaoZ3Sb2DF3R3Apzzu/7cVzE9de7eCHgCveFe4UTnCfZz2TptbQyxZHhCAK/BEzC
         QiduvqmrMvmZl9q3AueAUmWvnn9303R/XQBOGbtkix4gEUPrrB40A2v3WhzSwOOubCaH
         uKpXY8ckwDANfrB0pLemWFSXCIbFT1kC3CbmX1Zecya9j7dGI5M2rqhknXwYM//DGEE0
         nOQ5xYufaNqym2uX0hIYmPUHtF5dsRUmHH6bj7guYaxRHWHYAX2ntkbvfQraIxZk1P1N
         ufAcGMJsMPMLlviepThfd6j9BJh0CBFnHn/gD0Buj8htjPY9fe3akGDjjdGwarAK5ZBN
         13iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cNQVH2uaHV/1JudbY5JiQFHvKBvQiCbpeIprndeVuG8=;
        b=oTkX/mcj2bJIoN7gao2mhZKCGYsVX6VyU2ajpEbbeP0JPFQ698CUnhTVoqT9UglEzD
         ABnMk1Uovq+CTm9nw8z5h8cg9RfR3Pfwi4N4yB9LZiek5ESHNSTglN+xiDqg5aAZpRat
         ia3cAyk10W1TaGlzHOaL7NjmRWXD1Wv5Jli/U/cxwIu1u4eLn4HqsiVhSEsB+Nqx/kE1
         qJm1oUcbSymbsPbEF4z9BHmnGMhwwjSTnFNuLJ3FsDEIGEmZwFf08tCrMsx/NYESt++k
         h3MWWz4UkuGxYfPKLgu8QFfnjm3NOj5+HYV9W9VNphxQ+bV6FBefqZAJT/Ot4wS8q1lJ
         1TVw==
X-Gm-Message-State: AOAM532LiRO5xQCDAvSKPVZ8h1A0rWlNDOzjpNHUsLtfuCpbYLYLJjnW
        RHZlm/iiBJScuWdr8UjJbRI=
X-Google-Smtp-Source: ABdhPJzSGUhNM3walTmO6LyqwcasCE7h2ERbkQgwOaKW0OSyoYGv8afyC1KuLwQXVngC2JF4Y9UXfw==
X-Received: by 2002:a5d:6602:: with SMTP id n2mr9283289wru.262.1616240642336;
        Sat, 20 Mar 2021 04:44:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id e13sm14642412wrg.72.2021.03.20.04.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Mar 2021 04:44:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mark Kettenis <kettenis@openbsd.org>
Subject: [PATCH v2] errno.3: ENODATA is an XSI STREAMS extension
Date:   Sat, 20 Mar 2021 12:42:04 +0100
Message-Id: <20210320114203.2329-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
References: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Mark Kettenis <kettenis@openbsd.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/errno.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/errno.3 b/man3/errno.3
index fe9b7f715..48e3e63f3 100644
--- a/man3/errno.3
+++ b/man3/errno.3
@@ -403,7 +403,8 @@ No buffer space available (POSIX.1 (XSI STREAMS option)).
 .\" ENOCSI is defined but appears to be unused.
 .TP
 .B ENODATA
-No message is available on the STREAM head read queue (POSIX.1-2001).
+No message is available on the STREAM head read queue
+(POSIX.1-2001 (XSI STREAMS option)).
 .TP
 .B ENODEV
 No such device (POSIX.1-2001).
-- 
2.30.1

