Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC812407969
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233270AbhIKQDT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233252AbhIKQDT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:19 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D7F4C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:06 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q11so7343533wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eVie/zcReXwPOyaTXfzhlTkFQseEHncQfzVBrrmvOAw=;
        b=H63bMgN7KLs1iRP2MjJQtX7LVnBOTFIDA2TFahtiXpLK3+o0JsKvIgtc8Ltq0Cjylm
         kIuqSVIgxVDrzgcuiGjwsPSOw4gNYn2vN07qOAYwmSANng71Vf2dXROr4tATNqDTo3y4
         oe+7ME6WErge+jG+YLZOyFvEsv46QfaLzYcvPZsKeu0min0jDJzBiw7jXh3pCB7SN1C/
         sSAjwEHXPnSmUdIHrOPtY0f8Xvp9vHeEd+BbATZ7AUHZW2Bt49UmHUzbbCOjn0aFThoV
         oSQlCw3BA/UO7Fz+wqYWbtX1clXqOUBDujd0Xkxdo8zJxFBZpkJKG2afKv6PII47UB05
         ipTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eVie/zcReXwPOyaTXfzhlTkFQseEHncQfzVBrrmvOAw=;
        b=U6pjpRsiXQlZ8DGefsuLen+IRluGx/ElZBRW7577CVJipkJSXe6BIbRgf8fMw/si5C
         sbWyyMEzRnYP3L84i7l1uZxHe3qvWzo8Oln7i9/c1cBDfHFPNzlHFqqoWMNTzm7n+jkJ
         JbWgrqqVfrcjR/5tMUEKs7R+2/wulWSSgekPe6A6ZyFtCpiz3gP0/AmokRkYKa71g+pD
         GwfJcfTdWO8Jf6Wj/nCJGx2lX+N8g42vbADgG4Z4fzESqTzWWq7cuyP0pMf1omHGOwhJ
         yirlVuRqPiLjWaRx9S6kRr5JDIlPTIb/SEgED88WbnfEmIsWkpcGQkgzBHBDuS0PhP57
         i1Yg==
X-Gm-Message-State: AOAM533eemj98TGHDmk/iJZ0xNNkQ6PnYfOkUq4278O11i6gqifR7P5k
        ++tCOQOmYFBwJygRd6Mb0nnHzO532/I=
X-Google-Smtp-Source: ABdhPJzWDWsB8XQBGdHFpuWGOT4/W5ISi3eH3OANHVnc4y6DhutrrjKi81+ukMqECB/fp2HHNLj72w==
X-Received: by 2002:a5d:5258:: with SMTP id k24mr3675967wrc.390.1631376124938;
        Sat, 11 Sep 2021 09:02:04 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 42/45] splice.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:14 +0200
Message-Id: <20210911160117.552617-42-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/splice.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/splice.2 b/man2/splice.2
index ddb0b2d53..d71a1ef6d 100644
--- a/man2/splice.2
+++ b/man2/splice.2
@@ -26,6 +26,9 @@
 .TH SPLICE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 splice \- splice data to/from a pipe
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-- 
2.33.0

