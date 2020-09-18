Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2348A2705D7
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 21:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726154AbgIRTz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 15:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgIRTz6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 15:55:58 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82DAEC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 12:55:57 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id m6so6787961wrn.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 12:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bpBb8qVn1ytCWPw5tGy4VvRl08ObSYmIlZUFikvf5Dg=;
        b=gfh1GElvGkUar+62RsLf2HulFO3dw66DHDgkuJcsvljcabygWtHYNngg6enCQpdNsX
         AfgsHWvc21/6w0vhZVe2UsjlcMs0+vfArAc45LRIxJLYcfdXB1d/NIzOPoi4DHuKCeLC
         a/CZzzu4G8UJlHOUyP0th0Rz5aRsYyae/KUtqUPjooIcjUBbh+xhnnZE9dADYwUzaJ8M
         g8Yh+JOd9vkvs7neAgXZjkmQ6LpCaamsEqYcojtWR/AAAsC+Sw+jptvWbFXPQv+i4UBP
         Vzm0YDj+hgJZBZkeyD100+n21UN2wg8BtScXbWu1QbvvXiRjCNW/Ez4ZqlC6Upi7tHzQ
         sFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bpBb8qVn1ytCWPw5tGy4VvRl08ObSYmIlZUFikvf5Dg=;
        b=lbG9SSTjadPetRtwMaDnviJI7V6P+xv9LERMsy2edsmuBhhkM9CUAGnODuOm8Br5+U
         RbVuhrkEsxw7czcj5P2bDMQOYifaEooOCk4GHPdh0/as/TozLOBxlOiPRUO+b9g3LGPD
         x33/ZGmS4MbngU0PeU8+7M8EsBMcgTKHOphqnGFo/QpMGdMwVQcK9NkrjRDRoWtbgcJO
         /N/Hy3KLy94BzVy04eOwjoue3OLJfL3rtXd4GdqN6Sq4kyEBu+8756oJrYUX8k6jU59r
         Y9k8/8OhYEa99GACtxn85CFgEnvLblvCrxr2MnGsZHwW7NoPb2oeblaSJ8xmBiWckT3b
         xJEg==
X-Gm-Message-State: AOAM531Y12h+RgOgAwuufIV0xYL1NkMroO5Y5PcO7YCrl4MPc6iHY8fi
        CflzxfPkcBotHIk2xW+bPLU=
X-Google-Smtp-Source: ABdhPJxfshuojVeg4zE64lrH4oMWcsD6dVhgXe+kO5BM/X2Z9Gs9LBjbMrTSwYoH0VlsvrF4nq288g==
X-Received: by 2002:a5d:67c2:: with SMTP id n2mr37490971wrw.4.1600458955877;
        Fri, 18 Sep 2020 12:55:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b64sm6976107wmh.13.2020.09.18.12.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 12:55:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: [RFC] system_data_types.7: Specify the length modifiers for the variables that have them
Date:   Fri, 18 Sep 2020 21:54:02 +0200
Message-Id: <20200918195401.117531-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Florian Weimer <fweimer@redhat.com>
Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Florian and Paul,

Thanks for the input. (for completeness, the thread was here: https://lore.kernel.org/linux-man/87imcb0y53.fsf@oldenburg2.str.redhat.com/).

Would you maybe improve the wording?  Or is it OK like this?

Thanks,

Alex

 man7/system_data_types.7 | 52 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b705ed5ae..4830a4a7d 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -107,6 +107,22 @@ capable of storing values in the range
 .BR "" [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
 .IP
+The length modifier for
+.I ptrdiff_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR t ;
+resulting commonly in
+.B %td
+or
+.BR %ti
+for printing
+.I ptrdiff_t
+variables.
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also the
@@ -339,6 +355,22 @@ it shall be an unsigned integer type
 capable of storing values in the range [0,
 .BR SIZE_MAX ].
 .IP
+The length modifier for
+.I size_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions is
+.BR z ;
+resulting commonly in
+.B %zu
+or
+.BR %zx
+for printing
+.I size_t
+variables.
+.IP
 Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 Notes:
@@ -396,6 +428,26 @@ According to POSIX, it shall be a signed integer type
 capable of storing values at least in the range [-1,
 .BR SSIZE_MAX ].
 .IP
+Glibc provides a length modifier for
+.I ssize_t
+for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions, which is
+.BR z ;
+resulting commonly in
+.B %zd
+or
+.BR %zi
+for printing
+.I ssize_t
+variables.
+Note that POSIX doesn't provide this length modifier,
+and therefore portable programs should avoid using it.
+Instead, such programs should cast the value to
+.IR intmax_t .
+.IP
 Conforming to: POSIX.1-2001 and later.
 .IP
 See also:
-- 
2.28.0

