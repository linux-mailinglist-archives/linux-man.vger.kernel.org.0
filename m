Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFAE32812AF
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387792AbgJBM3f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBM3f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:29:35 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D95CC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 05:29:35 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e2so1575856wme.1
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 05:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vnjks/Iu/u07UujIbudn6X9f6k1p5Vp0ZFcd3HnTlX0=;
        b=hJpRUmBwXalWY5dgPs3w79HfadfM6rTcvUjU6ccGZDBkQJbrTkrWaw7eCadoQYhfTs
         OOd/a+SC8UU1oW0yT5qaqMCErUrBTMQwEONEO73Ufg+cE8NRbjA/KgS/opRj3L3dSPpf
         mNAfKMfzvwCy0az+0WjkTwgsMiNHRf/yndbfX5pZ6uIZfYleadm/qxF8OpZ1PNTTeg4i
         WfiKbRBJyD9jCoqw7cZ5W77JYR4k7UCiaIyB/MZ0usKM8OZBIIEhDxWLMbdHivLr/G/t
         CjgBCy0alUjlZeGtEdwWsuJj/rDhLG+U112Jmd+7nl61RZHhV61Ur6OeegvSFDTzXfbZ
         R8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vnjks/Iu/u07UujIbudn6X9f6k1p5Vp0ZFcd3HnTlX0=;
        b=sQAw1P/W9eUvs3vNAYx6rujnuC1f+6RSBLHJdjKZJB5svdlYDzjsikXkSUvroekfdl
         2hLRvA0kxtkQnVlTjvQpeLjOIgZl6PT8nkeoAqlfuNqfsLGiWMOOlmONJ5+YeW8g8cEf
         cGcU1BDBYtwp+B2giYgFLbNq6OjZucACoBzp1e9Fc4YgVTmQNyihI2/PLjSn0dc4AIWt
         VRXXZGsOnb0w62Xz7ps6/gwWXyivIF650yuqrRYwDPlnvUH4apUyr3eEk1TrmtyhZeJ7
         lFBXDNA2578WAlejshuzN67I42IvpjZyfA+om2757juojHuWgYiAIvvFq81y1vFicdRD
         Mzgg==
X-Gm-Message-State: AOAM531pi3kBeLILbzvzn9mlc+onX7ecCmgDO+x+oggslBnwPLfG3mHl
        Yd6uCgT/joZ7/zVt/bUCVolx0jHyH6UXmA==
X-Google-Smtp-Source: ABdhPJy46HJly4TZpcevcrByVyUzrGAMUgPgCCKFqXxATceVd760jKrHQb8sFO3qlQ99SsuDgJ+Grw==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr2676650wmi.84.1601641773874;
        Fri, 02 Oct 2020 05:29:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u2sm1829331wre.7.2020.10.02.05.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:29:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, fweimer@redhat.com,
        joseph@codesourcery.com, jwakely.gcc@gmail.com,
        szabolcs.nagy@arm.com
Subject: [PATCH v2 4/4] unsigned-__int128.3: New link to system_data_types(7)
Date:   Fri,  2 Oct 2020 14:28:23 +0200
Message-Id: <20201002122822.24277-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/unsigned-__int128.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/unsigned-__int128.3

diff --git a/man3/unsigned-__int128.3 b/man3/unsigned-__int128.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/unsigned-__int128.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

