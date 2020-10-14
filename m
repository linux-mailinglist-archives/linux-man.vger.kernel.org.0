Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21A0828E07B
	for <lists+linux-man@lfdr.de>; Wed, 14 Oct 2020 14:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730039AbgJNM0R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Oct 2020 08:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727247AbgJNM0R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Oct 2020 08:26:17 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F32C061755
        for <linux-man@vger.kernel.org>; Wed, 14 Oct 2020 05:26:17 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id b8so3652092wrn.0
        for <linux-man@vger.kernel.org>; Wed, 14 Oct 2020 05:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sdfyI6skpsXnAp8d8fK5YPA9CAd16521QYARHh/QfLc=;
        b=eQBKO27mSLr5oSPsa5EOvRbZtrLJ8Vm/ZbJc/JhHDEHc97gt3vQsPfezW706yOLmEk
         2MjPEHuluSoMv6IBQYqajCPfYy9dp1LMvx/ykl42UdXqcb6YecbCJzEYgioG/WF9SoI5
         e6QNqyDLQjqlxWBaOx9wRnm3D3pRNiszCqLuaTLboYbUwnBPBF8ak5w7Z0KxH6mBw4LM
         MAbp6vElAqKazc0c3Y/EUw3oI2/wjxY3s+KLWgEnoHSnO/nvwdRZRZ/JMnvabrP33gNN
         a8JTHT+wpQtmNvYdsWQYhvtSak6ugEVRymG49nZLaJUOAKuOCHyAGgZzOXCm8ZQ0WNmC
         ETjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sdfyI6skpsXnAp8d8fK5YPA9CAd16521QYARHh/QfLc=;
        b=AkGi7PekxAghTLTwxkbv4LAruKqG27csfXLnrIGkRUQdFLL2di8q++C4BFHlSnmrE5
         ibtvApDkc+wgN2ij2B22fwrWn8WtTAF/9z4DOsAKcBduNC56d0yyJDo/X2LiwmO/k3yJ
         xHk4zrK+/wef046KBQ2GSf1Eb4ZSU/WeRjW4pXwwLLgJsQ/bvZrvDPGcnTLAD9wLmCFb
         2Z4JC4F5gfTwo0Q7t9dqZgcq4cBmfJ1ycClsCEaT4DHlL2Irjci+RbYhfqyqMIBFAbPO
         RMYp0Cm1JpX6uf/jf3jJ7fndNXSWAL/zlAiYRraCwuRGx4SIJwFQEwauK8GbgCZtMXdh
         F01g==
X-Gm-Message-State: AOAM5317tAFyULwxaP8AmLCHV6W4HmOCw8iNU7KGjlxIBqIYacSUDJ8b
        kYsPmyIOv+WjpDnw2lglpAD1vOlxT/0=
X-Google-Smtp-Source: ABdhPJzP28+lYa/36dymUYy2deCahshIx0EYfh25TdDzpem/45UMPrvxpo49GSmFJb2SH93edKmAVA==
X-Received: by 2002:adf:f305:: with SMTP id i5mr5294582wro.346.1602678375866;
        Wed, 14 Oct 2020 05:26:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 10sm3625151wmn.9.2020.10.14.05.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 05:26:14 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] regex.3: wfix
Date:   Wed, 14 Oct 2020 14:24:15 +0200
Message-Id: <20201014122414.66000-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The wording was incorrect:

It stated that 'eflags' may be the OR of one or two of those two flags,
but then a third flag was documented
(which according to the previous wording could not be used?!).
Moreover, the wording also disallowed using 0 (i.e., no flags at all),
which POSIX specifically allows;
I tested the function with no flags and it worked fine for me,
so I guess it was a problem with the documentation,
and not with the implementation itself.

POSIX ref: https://pubs.opengroup.org/onlinepubs/9699919799/

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I was working with the example, and the documentation was a bit weird,
so I want to be sure I'm doing it right before sending you the example.
Please review that this patch is correct, which I guess it is.

Cheers,

Alex

 man3/regex.3 | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index d4f7a09e7..a7e04f7b5 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -136,11 +136,7 @@ are used to provide information regarding the location of any matches.
 .I eflags
 may be the
 .RB bitwise- or
-of one or both of
-.B REG_NOTBOL
-and
-.B REG_NOTEOL
-which cause changes in matching behavior described below.
+of zero or more of the following flags:
 .TP
 .B REG_NOTBOL
 The match-beginning-of-line operator always fails to match (but see the
-- 
2.28.0

