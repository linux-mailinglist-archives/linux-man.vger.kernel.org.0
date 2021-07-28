Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E83D3D9681
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231236AbhG1UUT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:18 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BC9C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:15 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l11-20020a7bc34b0000b029021f84fcaf75so5251323wmj.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SyODX/1W9251VTHJLrJkx2meFaevcsP3z04cjuoMpk8=;
        b=d1Q77CpQUqzv2G7VQ1EcOkDSqJaFc2InE4LGa/T9Y5klUCga5DMbrrsEzzYtgHR6k/
         zX4zz/INGP/KtwYCvJ88D95Dr529+l4XZobv/FvbqwJsQfs0WX6IewoZhWSvuQPqK2ql
         NtfYvAzIlwr59lXdAbrYf4GCAca05RPXo+909R75OCjkjVIddXQZJRWKvx/JBwzb+K/Y
         jOZMbKcdQgnf5VSP2HzhAFeze0EV+CbklTslwme8C9GATwVWGSYSXQZe0BZ9aVuCzgiO
         rOqD4FwiRXte0aKv94ReFA4ZRHzOSyJ5j0RjiFz/+ZpwmXGAVED5ROARNfjxqf9aXDyK
         Sadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SyODX/1W9251VTHJLrJkx2meFaevcsP3z04cjuoMpk8=;
        b=ph4Kq6RY90vKfKOwLZ3c6yOyJaKPke4YMfQY1s9r3qNe30P3OyvuTR6T+ZlWPPR6lW
         Om2tWxvFnAGONst+VjOhkoZeGkogzrn3PTL+RlCPkB3KrVy9iDp2KIME/KORIuDMWFKS
         rHmpMQsrx6hy6k+LLgB4Rf7ulUIP/DbOcXILDb/7aXvE99hxPy33Gj0KmWph14pdUXEL
         GtB2EnWpHzBTDaogihkXTYnQF9GoSi8iXeUwSAWHvHZTqLWCBQUb7kheZKMq9Dbfw6VI
         3DgpYOFuHn1PIdv42NofPqDByMb8R7ppL8LanEk9pXSTTS169Li2hnAbhjTsbNbsvtkO
         Lk3g==
X-Gm-Message-State: AOAM533PJx9nWerFHYByMDYo/en5uWQLWJ6Jt+n6+MdGHHMSc/UgsTKQ
        6jdKVvvNw8trEzfiIlYV7VVgRgWu7wE=
X-Google-Smtp-Source: ABdhPJxdVQ6O9BQkZLme6n17DacGfp1O2B7TBQil20BjoVJ+BkWVa51kUfeSZmtAj1xjt5jfWYywIQ==
X-Received: by 2002:a05:600c:2908:: with SMTP id i8mr1297451wmd.108.1627503614669;
        Wed, 28 Jul 2021 13:20:14 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Will Manley <will@williammanley.net>
Subject: [PATCH 02/32] readv.2: Minor tweaks to Will's patch
Date:   Wed, 28 Jul 2021 22:19:38 +0200
Message-Id: <20210728202008.3158-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Will Manley <will@williammanley.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/readv.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/readv.2 b/man2/readv.2
index 3355fa9d7..0debc2d57 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -245,7 +245,7 @@ If no bytes were read, it will return \-1 and set
 to
 .BR EAGAIN
 (but see
-.BR BUGS ")."
+.BR BUGS ).
 Currently, this flag is meaningful only for
 .BR preadv2 ().
 .TP
@@ -433,7 +433,7 @@ Linux v5.9 and v5.10 have a bug where
 with the
 .BR RWF_NOWAIT
 flag may return 0 even when not at end of file.  See
-https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
+https://lore.kernel.org\:/linux-fsdevel\:/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com\:/T\:/#u
 .SH SEE ALSO
 .BR pread (2),
 .BR read (2),
-- 
2.32.0

