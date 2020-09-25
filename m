Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7414A2785AB
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 13:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727749AbgIYLWe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 07:22:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbgIYLWe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 07:22:34 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A6F1C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:22:34 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z4so3208847wrr.4
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 04:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G2NH3g2KKrRYsLYFfLKdM8DSgiUI2WOt8G72rfnQFwU=;
        b=heWVpnHvqUVJljnpcfXzzwe0CQowEMrxh1z9A0X1aknC0VR6RkyyNUp0RdyNB5OMa2
         8D49KNOWUOBGHX85lo5LeUfXALHomu/RDhtkkEtG/752nvJWmuQjVZu1xte7sYbH1eOD
         MXfkY6x5ITsdIByEElPLEm4XiB7VYgIn/djRaIO+iF6W+1tHpwb7zha1Sfn0NSzd9YSH
         GYNiAglySKH+DpmXk6gb80S2kGcRMJPK+8rCoWrU/mkuq/bej6oRida35a2ki4I8mMfF
         jBY2XJsZQZsVY1AG5qE0gUpoKkOtAoNeo8EKqWXhUy0I6v6VazjOciOP41QE0TO8eqLz
         oyqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G2NH3g2KKrRYsLYFfLKdM8DSgiUI2WOt8G72rfnQFwU=;
        b=WGILTnfHOwFZ9HCEstwjqBt96m86V84EuYE3j16Iuz0iu089hB8zcI4fb/cB+/azdd
         AZnE3p2bK1LGkJ7zPH1ScAFMI51zhR9Mr8xZOBFMxuk9eAtLae8d240NvLrEed4kMNDo
         Ma1JNjaEp2EU5tddhlk87TU0+3jj5buhIAu3EWBdy0wdB16YsbBP8mg8Rc3pj5jXcpiP
         rRSGrtsqaNuMYlogguqok/DLtZqGSOzS+o/H46czc+ftULcYnktDUHSoX6tMZArDMkwy
         V/4QcYHXQ+TMHp8cQekL6ZXDufJE8PvOolWLbLdu0TOcg1GdHYtLWwwdF9XR3CUfI64l
         2YBA==
X-Gm-Message-State: AOAM5306ezN++1VUM32U32yASfR8PwZOZlW+WdJRExEYdzQ7CozcY5fJ
        SPqJVAOdzsnZfSKe1HQ8hXc=
X-Google-Smtp-Source: ABdhPJxHHDvzaUNAaORotiNeSC4z1vZmjKiSwa+DTfKCeMjLA7CbzV7irtae1WDcESyooGwDbX2xdQ==
X-Received: by 2002:a5d:4645:: with SMTP id j5mr3972522wrs.230.1601032952866;
        Fri, 25 Sep 2020 04:22:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id a20sm2479550wmm.40.2020.09.25.04.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 04:22:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2 06/10] system_data_types.7: Add double_t
Date:   Fri, 25 Sep 2020 13:22:18 +0200
Message-Id: <20200925112217.222382-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-7-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-7-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 42 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index aa5ab95e9..7730815d4 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -117,6 +117,48 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
 .IP
 See also:
 .BR div (3)
+.\"------------------------------------- double_t ---------------------/
+.TP
+.I double_t
+.IP
+Include:
+.IR <math.h> .
+.IP
+The implementation's most efficient floating type at least as wide as
+.IR double .
+Its type depends on the value of the macro
+.BR FLT_EVAL_METHOD ,
+defined in
+.IR <float.h> :
+.RS
+.TP
+0
+.I double_t
+is
+.IR double .
+.TP
+1
+.I double_t
+is
+.IR double .
+.TP
+2
+.I double_t
+is
+.IR "long double" .
+.IP
+For other values of
+.BR FLT_EVAL_METHOD ,
+the type of
+.I double_t
+is implementation-defined.
+.RE
+.IP
+Conforming to: C99 and later; POSIX.1-2001 and later.
+.IP
+See also the
+.I float_t
+type in this page.
 .\"------------------------------------- fenv_t -----------------------/
 .TP
 .I fenv_t
-- 
2.28.0

