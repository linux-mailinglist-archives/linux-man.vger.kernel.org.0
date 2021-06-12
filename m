Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19BE23A4DA8
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbhFLIfF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:05 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:39824 "EHLO
        mail-wr1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbhFLIfE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:04 -0400
Received: by mail-wr1-f54.google.com with SMTP id l2so8484689wrw.6
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jAwJvbmbTV32qzZVy0p/+Ks+UFu84AMzzDZJspKMntY=;
        b=E1RBytAzJVC9jJitKqyNf5FY8WvNVNBk4XopGSS5CJABqyEHA1/B4lpt1HPmxy9rsp
         SJLmjuZpA9saXlbq2In7eeq2i3U2vssLhMsfziJ7vuN4ns0vYMgVmdwaoGuL+ZV3pq/W
         tmWRXihsSi1YZ5mCPV/Hwt8ycFB9dkLPhYBryysb/0TwPGm7yae0j48pPIVZA7zzCcqU
         Q7JKJrTPEjmFDd3SGb1rQF5kj4D6PtJO+gjm+fjcUMZTz3tIVph3KinjA/6h/rDQj9Hx
         Tm94ad2uY2gYBj9yjxha0qzqH6A0tNjXxJjigbLsRjilvLsIkneaSgAAjSOy6TyohP6n
         S5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jAwJvbmbTV32qzZVy0p/+Ks+UFu84AMzzDZJspKMntY=;
        b=huVlKwngnTagio9d3xS7gNZ6C+k/K2zYLeUrc9AlA3oNVbJWMwPowS9JgKoyelcUik
         jVlijRyaqByNvKNXu57aGySQgegYIz9nJnIEMualU1PHSeszQVC0YRs15slJZhd67uaJ
         x+kqIezD/W1Dcawa2nMYeDe0rfSFce9mKRkW1hm4QNB3s6shpCf8fB/znWIEOvBuPFCR
         ffOVb9pVy8g9gPosULiEtW8Db1wLcmPTC+2742c1L3I3QQele7//zKQPPWgLJj1ovSfk
         1s8OxlMnNoVLY/daHOE5ttGCx7BFhY341/+Da73MgN7an/cAxDaNCf+quKerO+v2RwYF
         kQqw==
X-Gm-Message-State: AOAM531kVST9p3VKcF3jHSNhaLNYVnyqUIRA19TNG2pF0yAyT8g+RZQR
        tL8e9zyVdPLnRoKvoMC5IqQ=
X-Google-Smtp-Source: ABdhPJzs3Z3r2uY9DBnuKzjrtHNhmpnBawogJz44dvdjXnezMQDDtEgv5b16FOCUC/d9pA3fWMeB4Q==
X-Received: by 2002:adf:a1c1:: with SMTP id v1mr8092896wrv.234.1623486715741;
        Sat, 12 Jun 2021 01:31:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/28] symlink.2: ffix
Date:   Sat, 12 Jun 2021 10:31:28 +0200
Message-Id: <20210612083145.12485-12-alx.manpages@gmail.com>
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
 man2/symlink.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/symlink.2 b/man2/symlink.2
index b6744109e..87c25d5f4 100644
--- a/man2/symlink.2
+++ b/man2/symlink.2
@@ -39,7 +39,7 @@ symlink, symlinkat \- make a new name for a file
 .PP
 .BI "int symlink(const char *" target ", const char *" linkpath );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "int symlinkat(const char *" target ", int " newdirfd \
-- 
2.32.0

