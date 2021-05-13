Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3CE37FA9A
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 17:23:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234784AbhEMPYG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 May 2021 11:24:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234877AbhEMPXy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 May 2021 11:23:54 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C6ECC061574
        for <linux-man@vger.kernel.org>; Thu, 13 May 2021 08:22:42 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso33793wmo.0
        for <linux-man@vger.kernel.org>; Thu, 13 May 2021 08:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cAOX3hOxTBgRK6oOmJ5gUx9SeySTZAp/pRFBqBvIuZU=;
        b=Eia4VFEdgOOC3ucieWlwpB98KzrnUEG8Ujj4VKpe6QOpGmlpAnMdUiXB89zryQXnSG
         CFQepByl+7nFoZsSzgzRLjbq+6GrakccuC+ntTbL7W/2qJrEPVV9Ck84ew/LvaVkSL5p
         9Fl06G27tETVV5alV/6gC0i4wp8Hyo3BcyAeOW/1gMsbuXpQJPMcIMT8IR/Led1CiKD/
         lW4JPGak4uGXBzF9dHxaacIli5mYsrh1micQLjdqqV/wXoE+ixjWTENYpsh3NnaEclvK
         xV/sfBzGVoxSCkEh8OZXsXJOKtMwO5qq7M6S3RKYlK3q7jnKQgI2hqR4ZAbj5EzUhzSn
         WSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cAOX3hOxTBgRK6oOmJ5gUx9SeySTZAp/pRFBqBvIuZU=;
        b=f644o5lf2zV9rX+Tq9ZJlqBrEX5v1mAWWqqXwPgmAo39W+XZwA6XUQzNDRhzC3xdpw
         nxlRt84jWJWBHZAKONSlrYXHHoup4Rpsr1ma3KThNxhHkEPG4eVcyfFFrL2e3ax9RPAI
         1tUrVOrtAIb4JLkUNlfIGlGoZAGr7fKK2M1Ufgsnvm+aV2WWXMmJsoNLK0ULfNbrH4Ds
         2mmiegdzltSdnscSMr1kpba+D6Vy01X/3FdtZmdt66udkTMlzZ0tL51n8jBhIwO67/Ps
         qBwVJC4JhiAavTUnsquf8GC8I9N7xTM47IcZJzhXfhoM62NPGbJ8eZQpuS4jUPIwHrYx
         5YFQ==
X-Gm-Message-State: AOAM530qznDQq2Re8R3XglFkhSNQ2B6zFtk+B4k1Q7JHjqZHbHjIsKJg
        4PeF6WwBKkR6f3DG8ASJWNQ=
X-Google-Smtp-Source: ABdhPJxwtVz66D4MDESr6QB/li2wWEhiq+eRAXp43xX02jLl4hxRaBjoUwGdYcF49EnbEYtEcGYFww==
X-Received: by 2002:a05:600c:19cb:: with SMTP id u11mr551411wmq.185.1620919361320;
        Thu, 13 May 2021 08:22:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id s5sm2555542wmh.37.2021.05.13.08.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 08:22:41 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Christoph Anton Mitterer <calestyo@scientia.net>
Subject: [PATCH] console_codes.4: tfix
Date:   Thu, 13 May 2021 17:21:55 +0200
Message-Id: <20210513152154.114888-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <f795fae3da8d6f8bd527fe66023fa9486ac4acda.camel@scientia.net>
References: <f795fae3da8d6f8bd527fe66023fa9486ac4acda.camel@scientia.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The correct meaning of SGR is "Select Graphic Rendition".

See:
<https://www.ecma-international.org/wp-content/uploads/ECMA-48_5th_edition_june_1991.pdf>
<https://nvlpubs.nist.gov/nistpubs/Legacy/FIPS/fipspub86.pdf>
<https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_(Select_Graphic_Rendition)_parameters>

Reported-by: Christoph Anton Mitterer <calestyo@scientia.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Christoph,

Yes, it seems you're right.

Thanks,

Alex

 man4/console_codes.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/console_codes.4 b/man4/console_codes.4
index 690a2cd82..31c9e0c4a 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -298,7 +298,7 @@ T}
 .TE
 .ad
 .PP
-.B ECMA-48 Set Graphics Rendition
+.B ECMA-48 Select Graphic Rendition
 .PP
 The ECMA-48 SGR sequence ESC [ \fIparameters\fP m sets display
 attributes.
-- 
2.31.1

