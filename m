Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF67443543
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234967AbhKBSRm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234957AbhKBSRl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:41 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34570C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:06 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r8so21822016wra.7
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LeWkPNetLTA2tPhM0OnWzBcqFg5AYwvvsbJzQTgSX3Q=;
        b=gohmn8w8OJeHx+8aSly7i36yNtbiojWrBKyC0a4jr7+esJ0uZH22Nl/dqKPiB6BFBi
         t4FKKYLrv9T/cTYCici32NifkujklpQ+MxrOmweg6uqLiHyhZ1YQMJUyqlK3kDMJTJW6
         eiKcV8VqfVbmLF7YHCGQHZ+/R4yXBKXv1jCmx9BH7YZJP+cyos6Vu41k26rAZxwYQIaw
         3jZ0/JoXCTWbnLZ7Ncf9WdW3A8ls82xhhHfzx/8o2DGAfLKGw0LYg3Gle59GKC2vIy0S
         g+y1ZJg8H3M0ea82bbnBv/AIbr59x7tIOu8cQNx3VccSbUfZE2/mXdJZePQj1Ez89Fvc
         wOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LeWkPNetLTA2tPhM0OnWzBcqFg5AYwvvsbJzQTgSX3Q=;
        b=RFwyG47QOlJRjwvjAvws8Cq0q4qxBUXTLC9G5VD2bG0fWSeaeRdFYxu5x6ActMGzjh
         lsRVP6Vj43044s4a4qyp6frt5LtoMO/77PgrWpKW0tSuOz5mKrPWat15GWAsd9qwwJA+
         uNIO5nGnaVEnqWMhbZFo+o4dlHQJMDHJlRmzKvpwPyR7RNQXT3Xm4F6bWnju62FtYiRw
         wL16vPxt7wICOby2NXcz9TcHVH8DYtKYInPuXK/SBw0c4cTZkzBd94kpJh1FveDiPS1w
         196KZOrz+jUT1/9ucDWT+VCOOS6wzA6ddXBgWkERuklcDlixhdzP8wW2jv4xMYdIPKT4
         o9og==
X-Gm-Message-State: AOAM530vj525IN83kWCsjDw2kVTZ+M9oHfkqwBO7787235zle0C3FvgS
        uknOi6LyqT3oULP8G5Re0R5WYIjaXaA=
X-Google-Smtp-Source: ABdhPJxPhGlthkK8wQuhzNBT0D7/qeQ6VeDwiUH9E/dtA9nH53tfWu70BgCOWtRFMcKCsgqSZ3tpwA==
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr33270038wrx.173.1635876904898;
        Tue, 02 Nov 2021 11:15:04 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 07/37] useconds_t.3: New link to system_data_types(7)
Date:   Tue,  2 Nov 2021 19:14:24 +0100
Message-Id: <20211102181454.280919-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/useconds_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/useconds_t.3

diff --git a/man3/useconds_t.3 b/man3/useconds_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/useconds_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.33.1

