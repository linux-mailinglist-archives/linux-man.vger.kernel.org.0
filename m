Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 589C738CFB3
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 23:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbhEUVSe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 17:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbhEUVSd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 17:18:33 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14265C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:09 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id x7so2684394wrt.12
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e7zrJu14fy2n6rwrMWj9JbEJiLWMgrV/O1TZhysqI4w=;
        b=cIaoWOVl3H9xiS+YF8i3DfVH7dA0rqAGPEXBn8FXCHaJYcLspAKXzLRXQ672cscTiP
         ZDKYmcX3nXdWvCfYK6bhYI4GqrnOj3hlMpjB7Oj5UPEcZxhawGxFvHEZtB3omQ1+LtVQ
         R2nzLNb8GHAjjW8Gi8sKNQjqUNPQuvit+QupI5Q1uRKSNfO3Liwg+NIYdR2th7eDWqMx
         xB+Mh5TRgu1cSZ154HXhIjvT4G/ricGBfc91GigltRVlX4UCTscXnAy4q6I5df1xzKcQ
         VJbRKhwITYUgQgPDoaz3wDlZP3+xQ2F02cM4T1i89yonaBsab7UkeHqXfdCnne37nbqS
         2Ibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e7zrJu14fy2n6rwrMWj9JbEJiLWMgrV/O1TZhysqI4w=;
        b=O4H+57znst0z9P6YZIT6QYpCtoBUwrdfhoM2XnYbRtsrraAYsJOgzjhNHhuqQuOtJb
         dcfkCX2MHpUWa5RgO8EIByKjc+wPHITAbnpnoyfUxJWf+IfL+1msD/uKsH+02LIqMqML
         c7Ne4fzTill1CMP38Z690tlvgUnbtGVuijzkGXV0THxIDjpy7Y3PuxHWOHkduNjOLzrh
         c27DbVssA2pgUOxC8RrV3GnrriXHeU5Hy1Jo1PchHeRQyHMNE05+cCCqhKxgXkrXdzcE
         V9T4ppPmh9gcStnFZw/zlJx/cLjTnl2IOw93L0HVhmIcEwM2Xu4QFMgy8Xs1Tb5IIL9Z
         +Gpg==
X-Gm-Message-State: AOAM533EJMX3UE6QCXajew1dQpgnh03mpomAmSDivyhpyjgK4Bpl0yFU
        5W5Rh6fyaCPy1YqKnIeNgBQ=
X-Google-Smtp-Source: ABdhPJwOaqTr0+Ow5QyNG/og1xOG2Ev5tj80W2TKKIMRPOWoirHL467tVm8LP5DXJWM03Za0KU/5zw==
X-Received: by 2002:a05:6000:18a:: with SMTP id p10mr11426277wrx.99.1621631827759;
        Fri, 21 May 2021 14:17:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm3944489wrq.0.2021.05.21.14.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 14:17:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/4] _exit.2: Add LIBRARY section
Date:   Fri, 21 May 2021 23:16:51 +0200
Message-Id: <20210521211652.49949-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521211652.49949-1-alx.manpages@gmail.com>
References: <20210521211652.49949-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/_exit.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/_exit.2 b/man2/_exit.2
index 6d9067eb6..38ee1d7ec 100644
--- a/man2/_exit.2
+++ b/man2/_exit.2
@@ -29,6 +29,9 @@
 .TH _EXIT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 _exit, _Exit \- terminate the calling process
+.SH LIBRARY
+glibc - standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.31.1

