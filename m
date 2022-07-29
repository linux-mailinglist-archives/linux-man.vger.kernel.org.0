Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 652CA58560B
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 22:22:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239037AbiG2UWi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 16:22:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230499AbiG2UWh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 16:22:37 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 554996A4AE
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:22:36 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id bx8so3922889ljb.3
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 13:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=L4Ec7WUEor0WUWDhNOznHdulSUiSUTlm25WJCn7tdUU=;
        b=VnD8E0N+Wy4MmPW+DoLOIRPAiUdfWQBxuCwamTJVpqC++IoSH9FWpY6sc8xYcm5qBS
         Y/Vqp7qXDAlSAdWYsanwToR5peU07rvL/FqHP7waI/Xs9FSxz1gRYT5J4fNnI3aR64zT
         XkdDiyw39pJwy81VFlzHRcd2joQxHJfH/feg7BdIOSrvfL05eepzphTV4PEMua7qZ1KN
         VSCjUHq1codAQW8Sm2if4F0okgfy5UaefQ8YdwE4p0eloU4eGQveCr3JF0QaxY4xJg2A
         DzXnZjgYMZvHVPyM8afooQwwy9/dJHrknc3Cw3G5YC0T3hYtgpT0H3WKsEIseuPcI8cm
         xk3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L4Ec7WUEor0WUWDhNOznHdulSUiSUTlm25WJCn7tdUU=;
        b=xjbxGgZiuFCWb7AuRtsRVtV0aQbf6l3n2ghNrBylGlcanWsPdHdlY4R7YAJRwAV6Ac
         5+Vyj/poBaT9v+UpmJudLOURbzCluzUdnzGeJDgPH9c+XHmmic3HseM2KrhM2nXCMjZb
         5MjGz1tKwa60iM1RUdzBDgUWItWfXIt1MQOW2aJQijArbVi7gepXcoQ2bGlHDVY/WDsB
         9jzC1I22rEodO31+DIH+yzRBSWo/k8vzqkqzPSmpBjpvYJ2M50IhUJBy8cJvnjlE/AdU
         sOlJx9Xzmi8bZkmlXJSr1pNQ4C9iNx2mL04wOEqJxcXVnd3G0SLIF2fnP2xGMCNHjY1X
         5IUQ==
X-Gm-Message-State: AJIora+7MwETpSl7ZevyuEB024N7GaWELS1ZXfHmjftQ1H6IkJOv9xcG
        UvpHQybygQ3MbpGGjBoFj0mYSNb9DtFOwuElw3kICP0B6PbxUA==
X-Google-Smtp-Source: AGRyM1v4JPMXvRtKdTDZzgwHij8Jm32M/MpWqI3prxbkSzocg6/hVQKf3MjY8XcFLP5uyvceZ/yo6iTQOw0zbIXXHUQ=
X-Received: by 2002:a2e:9d95:0:b0:25d:f6ea:4447 with SMTP id
 c21-20020a2e9d95000000b0025df6ea4447mr1749836ljj.279.1659126154390; Fri, 29
 Jul 2022 13:22:34 -0700 (PDT)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Fri, 29 Jul 2022 13:22:22 -0700
Message-ID: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
Subject: [PATCH] getline.3: wfix.
To:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify in the RETURN VALUE section that it's necessary to free the
buffer, since at least one person missed this up at the start of the
DESCRIPTION.

Signed-off-by: Elliott Hughes <enh@google.com>
---
 man3/getline.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man3/getline.3 b/man3/getline.3
index 8b7357825..bad30956c 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -99,6 +99,10 @@ condition).
 In the event of a failure,
 .I errno
 is set to indicate the error.
+If
+.I "*lineptr"
+was set to NULL before the call, then the buffer should be freed by the
+user program even on failure.
 .SH ERRORS
 .TP
 .B EINVAL
-- 
2.37.1.455.g008518b4e5-goog
