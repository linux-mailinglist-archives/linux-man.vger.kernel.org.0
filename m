Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 522F43796B3
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233293AbhEJR6X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbhEJR6T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:19 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F37EC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:13 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id s8so17545648wrw.10
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hVlV1tY3StezpKjmRS02yJ7Iam8WLSeNOHXffn06kAk=;
        b=myNyEvV5IBhOE1n4h0/PvRzkSrPJLqheDUzVato3/rpOSH5hjMyibtiVc76RQ8nUe2
         WrDmWgQfirXHdYvOByUThX50IVeLdq0JU4prm6MyRUqqK4KeBJKFQSNYPeGlgscnTovU
         eT2IhYIorW6n+/QO8L359NQ5maR+wvfWaGn8UM27VJCQCQOQpvWCvSGDtlmXjs5d9Ds2
         Hd1ddNe5744s1c2B6NaM6nfCD9zkQCepVGIBOiisQ13gJoujgYCrGky2n3EOf/7Y7//G
         3EybsMQpBvoNYHQDmmNNWz3FArnkMFeiO/7sa3lrT+zQDNSZMxGiDTBALOmu2IGnWaA0
         7HdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hVlV1tY3StezpKjmRS02yJ7Iam8WLSeNOHXffn06kAk=;
        b=Ue/upjTW9NxCoBCgCfnzchrYcjtKsT2tsGP/A1tkPKnrC5Q8yxI1vD04ascJuFMuPj
         xUVn+zy548QMya6Sxp/PgC1ajG5eVbh4HhYbtdvwxncZZXZvEE9/xcmORxdC6kCn1F+Y
         bS1UFLgypd6PB+239qNEzHhOfto1e5na65lwELORKVtIjddjNc1Yi3JJI4rcRw8Td4fL
         tecRdBXygDXdNQ1EIkCuZbi4iYBu4tqOBIEZpbHqBLh8gSRTV1jWXXWbH2tzss7t/fg8
         NtCAjMQLRSNHVtJ8Ey4DKWZeqyZSCakkIAcHReRyOnZr7UtrG31bBH96XWMS4ANf2qQH
         J2hA==
X-Gm-Message-State: AOAM531HBGu6MOweAYwc6O8C+AdCv5R4o612JMfVU6tFW5+MEtwdHqDz
        RpTLjLKXDPJuI8j9qo34b+c=
X-Google-Smtp-Source: ABdhPJyps4UyLSGH1ctQbeu2oSrEDt1z5GuaCazNl1X/c4cRTRxeL6xCgr12jzy/Oc0j18Quj7E1xA==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr32484957wrv.254.1620669432378;
        Mon, 10 May 2021 10:57:12 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 38/39] readlink.2: ffix
Date:   Mon, 10 May 2021 19:55:47 +0200
Message-Id: <20210510175546.28445-39-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/readlink.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/readlink.2 b/man2/readlink.2
index 8f53f8866..7387ee4e0 100644
--- a/man2/readlink.2
+++ b/man2/readlink.2
@@ -51,7 +51,7 @@ readlink, readlinkat \- read value of a symbolic link
 .BI "ssize_t readlink(const char *restrict " pathname ", char *restrict " buf ,
 .BI "                 size_t " bufsiz );
 .PP
-.BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
+.BR "#include <fcntl.h>            " "/* Definition of " AT_* " constants */"
 .B #include <unistd.h>
 .PP
 .BI "ssize_t readlinkat(int " dirfd ", const char *restrict " pathname ,
-- 
2.31.1

