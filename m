Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFAEC2914D5
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 23:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439808AbgJQViV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 17:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439809AbgJQViV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 17:38:21 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0D6C0613D3
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:21 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n15so7292256wrq.2
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 14:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5cd56eslrHC4mcHzDHdyDLDdwLQaU0QfAtczsN6JJj0=;
        b=IbqefqBZBW9gIFEk4KaG9gL0HZb2SyeMclzSilOqvAxemNPZ7MVzj6C8F1y6EutJ2W
         wDadsh23kzG61/Gm1bTv2BghuBWLU2ruq4sstWRpRaHgF7wDKNTTo4XQvTSKqJPvn5y2
         UMzLT1brlKjSYpyxdKyeAH0So+Tr2lAI8RddVZVznAYSklBB7aFG/uKsf3lywwKdTd7B
         HzTi/H4iRQ0joY4nJf/mUfgf3y4YJjl+tBsvbKvh4oyYW4ETIlIXCJReMnrZt2HMgAtD
         emr3dbugLu8cmHULEwm/XdAjTcthV6ncyoJQ+naAJ/S6qQKpj60GHczJpjgldgZSaVqk
         RJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5cd56eslrHC4mcHzDHdyDLDdwLQaU0QfAtczsN6JJj0=;
        b=Jcgp6ZH23dVzHVPmKcXK16HBPPjHG8jrsZjFxtqHeCp/z1VURhQcGRVCKVfR9KJlQy
         fwURQCDXHefXbcOL2dNjO0fZFlLVr2bPzutYXro+mNMWGsS8Cf0Z2OqTBtWd0IKUd6DX
         AcryIxM4p8lAsm2qC60CxUztJXPA2NeuMb05dkDPF7JlJrz/mS/qNszldBbLYx5d933c
         zlobNsRL5HDJMstAINKhYM7lMhsDgRzXGqX+UHsV77FKYwcRbH3UffwwqX7mzpLc7vjF
         pSx+XZbuCL3pQzneBEvY8/g6w0ncAVtl2jiAsIOYkm3r2dS5/57OHExA+ExVCzIaMeVJ
         Lmqg==
X-Gm-Message-State: AOAM5316Y2JQsMXS35adffh7FWUq2+Crbfp+Bm+p0T01oYBP0XNmKBW/
        +sLZG391fX0Q39YGi14Rg5w=
X-Google-Smtp-Source: ABdhPJwDtk42a/FOhjS+sgsjII58S6of6U1zLxXskeQxpk75TSQ8FB7EOU60HgIYn7JH/F3aZfzmgg==
X-Received: by 2002:adf:9ec2:: with SMTP id b2mr11782949wrf.107.1602970699861;
        Sat, 17 Oct 2020 14:38:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p21sm8975324wmc.28.2020.10.17.14.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 14:38:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 3/3] clock_t.3: New link to system_data_types(3)
Date:   Sat, 17 Oct 2020 23:37:59 +0200
Message-Id: <20201017213758.9270-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/clock_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/clock_t.3

diff --git a/man3/clock_t.3 b/man3/clock_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/clock_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

