Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24AE828100D
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 11:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387684AbgJBJpm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 05:45:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbgJBJpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 05:45:42 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C876AC0613D0;
        Fri,  2 Oct 2020 02:45:41 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e16so1080913wrm.2;
        Fri, 02 Oct 2020 02:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G+ywyTrniNZc042b3yFhIv1wH4T4KbyH6D7/fYEWnm4=;
        b=huOhoB0LPDThNLhet2hZWwxkYPyamZ2oLoUpPofklfEPhAHFBUbupGV+DJGdXpEzhs
         1yk7J1zpfYvjdDdO22cF0SGhGW70w/bZO0ewGHJLXpfIZMM5ODQAGw9yVWeclU4ngEfL
         E+l4EPOMmhaxUHjAOTMdt1Ru2K9AahdGihGmM4BO5KhXAQXz4QebcMAODaNCK/Yf5DK7
         N+BMrEscNkNGBLkupXinOdXEQpYuU/YOXBP8tjEg0lG8ksSc65zW4VepQHu+cKNyK9Fp
         whhrGKtIle7sCWc59jLcCeh7/EiQeKherPOBR0d2zZKby6JbVcxtOWP3rz9xy7L/mb28
         KTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G+ywyTrniNZc042b3yFhIv1wH4T4KbyH6D7/fYEWnm4=;
        b=BTjZ+3WtgJHaClXSq7S82Q9Zh1LPyLSSs/NoEHn8nS4ByiseFwRz2wOy48U3NYrreX
         alhTSsa7PWctmlO6DptahQdAw94Tvuqst0xc9woF36IFsg7L+z1eyKK7txAo2hJtRVqr
         Yk5ROFBjY2dtNUFxact7UXjQgPLcwwH94srsj9NnbbYGt5OijJnNK4Vsm2i/ZLrf3tHF
         fOecJ5K+knkTWSEiU+bQG6lkQnSyUGptpci04HUQ/Jx2ZzUEm6PKLjNiGSlsvgDJrDfB
         ebwihtcHmTL8Z0molHNJmo/t5m5uDtL6mtqZhRvn6k1fx37vDrcCRR6u0cmn8un0f1E4
         nsUQ==
X-Gm-Message-State: AOAM531HbpBnoOyFQsPFSb89uful3HIjxi7ovB0VjowH7phOd0dBy3gn
        aSS5hgknu+hAgHYUubNdpy0=
X-Google-Smtp-Source: ABdhPJzXe8k6dcR3DjnkMU9AMtiAvQ/kGURK1+JsLr3OZy4mgplWhp+Uw8QP4e9vxeRF6bXACNIV2A==
X-Received: by 2002:adf:ef4a:: with SMTP id c10mr1950027wrp.13.1601631940551;
        Fri, 02 Oct 2020 02:45:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id x17sm1210985wrg.57.2020.10.02.02.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 02:45:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com, eggert@cs.ucla.edu, David.Laight@ACULAB.COM
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] system_data_types.7: void *: Add info about pointer artihmetic
Date:   Fri,  2 Oct 2020 11:44:52 +0200
Message-Id: <20201002094451.17997-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Reported-by: David Laight <David.Laight@ACULAB.COM>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Paul and David,
Thanks for your input!

Alex


 man7/system_data_types.7 | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 6451782db..bc7d5a8a0 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1918,6 +1918,17 @@ A value of this type can't be dereferenced,
 as it would give a value of type
 .I void
 which is not possible.
+Likewise, pointer arithmetic is not possible with this type.
+However, in GNU C, poitner arithmetic is allowed
+as an extension to the standard;
+this is done by treating the size of a
+.I void
+or of a function as 1.
+A consequence of this is that
+.I sizeof
+is also allowed on
+.I void
+and on function types, and returns 1.
 .PP
 The conversion specifier for
 .I void *
-- 
2.28.0

