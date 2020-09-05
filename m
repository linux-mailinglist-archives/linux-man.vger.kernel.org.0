Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F44725E89C
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:17:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbgIEPRR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728257AbgIEPQg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:36 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF721C061251
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:24 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id e16so10328882wrm.2
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ktRkTYE5nMbEqCwKovv04Oa0XS1vXwkDe73rwsXBdLo=;
        b=cCJz53+7R4aXeaG5RhICIEBME4GVBdh0fljTTPDv4fvMfhuXUFCp7ZxbrTyOPWvKyh
         QSr81MNSQQijqeLTxh2Ndg302LpxLLM00f6SMaiSf9bq4PG4JpI3EQ98dvMCnvaDd1cO
         arng/UkXcY13xOnqJ0ih2WtjLbSUeA9z6LyJOU68EzRtGBjGfdHumI4KRwkSOd8dt4ZP
         UbkNucT7zFAYY19KtTKuXsTRF49756E5WOCj9teoQ5E75XAQKYrDhhM/MBYt2j+Klcoj
         2Y+jLqKz4VGcF8nSJdEHDvbm5wNJP3CjW5rOR6VlI1nk6NBKPmWP2tdMW4Mg3aDqF2JU
         8aRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ktRkTYE5nMbEqCwKovv04Oa0XS1vXwkDe73rwsXBdLo=;
        b=DIwAHQAHt2skR3AZNzJQQMwdm/VftHgni+8p9/QnuwsnF6NtzxkjfM2n5+21sIEHGE
         34d80b9MnqxaVBw0Whac5Pe5r3uutnP5Z1QUiZNRTkegu8ESuz0GpTwkUjHd6ZJlqIOf
         XjkSnSz5dfKVNetoGP9VCd0HES93/CKuUogVXgI5AXnUBIF4AHwPcWKDckVd0DmWA1HG
         aC1rTbtTGbRFW30h9qjq/GEwzs4PYndQKMEwfIQjId4BLPs43jRB3Q3isXXdv+iw+z9F
         cfg8MInI7SCzYI4/NMITo6M+cdBHNRyU238Ys/Zi17TX4tJQ3cjBEInpcaNTDa45fZlk
         Iefw==
X-Gm-Message-State: AOAM533JmkgIuA4wXUtfCAzH0/7smzK75OEqkEeBcv85398+2l4n72AI
        yRPkOrIlhHbsRHuAEklZm7Y=
X-Google-Smtp-Source: ABdhPJyik7goisSK3tQYDml96ZuB/LofeVPXpSO04elE1KklK9EXfxpr9Jce2pkRjeZuPx49CsddSA==
X-Received: by 2002:a05:6000:1282:: with SMTP id f2mr13702411wrx.251.1599318923105;
        Sat, 05 Sep 2020 08:15:23 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 7/7] qsort.3: Fix casts
Date:   Sat,  5 Sep 2020 17:15:01 +0200
Message-Id: <20200905151501.609036-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

`p1` (and `p2` too) is `const void *` and it comes from a
`const char **` (for legacy reasons, argv is not `const` but should be
treated as if it were).  That means, the ultimate `char` is `const`:
"a pointer to a pointer to a const char".

Let's see what is going on before the fix first, and then the fix.

Before the fix:

`(char *const *)` (I removed the space on purpose) casts `p1` to be
"a pointer to a const pointer to a non-const char".  That's clearly
not what it originally was.

Then we dereference, ending with a `char *const`, which is
"a const pointer to a non-const char".  But given that the pointer value
is passed to a function, `const` doesn't make sense there, because the
function will already take a copy of it, so it is impossible to modify
the pointer itself.

The fix:

`(const char **)` The only thing that is const is the ultimate `char`,
which is the only thing that matters, because it is the only thing
strcmp(3) has access to (everything else, i.e. the pointers, are
copies).

Then, after the dereference we end up with `const char *`, the type of
argv (more or less, as previously noted), which is also the type of the
arguments to strcmp(3).

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/qsort.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/qsort.3 b/man3/qsort.3
index e1af43cf0..24f0b6c92 100644
--- a/man3/qsort.3
+++ b/man3/qsort.3
@@ -137,7 +137,7 @@ cmpstringp(const void *p1, const void *p2)
        pointers to char", but strcmp(3) arguments are "pointers
        to char", hence the following cast plus dereference */
 
-    return strcmp(* (char * const *) p1, * (char * const *) p2);
+    return strcmp(*(const char **) p1, *(const char **) p2);
 }
 
 int
-- 
2.28.0

