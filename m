Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76C6D31C8B6
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 11:26:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbhBPKZJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 05:25:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbhBPKYd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Feb 2021 05:24:33 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93CB0C061574
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 02:23:53 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v1so12265495wrd.6
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 02:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/TyHsf7aZ+DZWksKe0YEBSTLqYFLvBe3L++RfzqOY+w=;
        b=QHgdTLXNpHkhNZ1YInuEoHAmMn1x1fa40qpm/Fu5U2CuSvW9k982v8hBI3R/nYOJPV
         oTkOCNVNHiiUJMzE6DTkTu6BdlFeTy/pTMv1xHiRtFXW9g7lq0r0p4qhNAa4oRWNrDk/
         FEfR0WPicMxZo97lqBJ9q9kvWhjHHTqBVSzMwS3BW8MdqjKXcx0Pfuvby0z8TyvII1gH
         i6hp4DIMjQAidkB7ji/jSDlSQm7av4eLTebS0duXnxkGf0IVE6oNYrbJzzU0An7wA7YK
         gQ+b0Xd7JFY5HZt6D0ko3PuIWA8fliqa8yWKb0m8gHPfQ3+rs1gKwC5VhnXUdssKHmMT
         moMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/TyHsf7aZ+DZWksKe0YEBSTLqYFLvBe3L++RfzqOY+w=;
        b=MS1KgbFD4sYDMmcOQJNNtgdQ7pik9QxlcVfDy9tYDEuyAkpv5aKNlMwAJAHSkc9r2o
         gUpbcVVnGFKhWK/apSOgXGII+N53CwHtfukDZYoL6/zSLqdUFQyGNqMWIDBEuLo5xeYY
         ORGWxQ3mljwa0e3wRqF4IWpsv6FAD8AZz7pcynBMvBs9dCCfEM8JgIh6soXXFn3k2pe0
         8oZ3DpjCW3/M4pi7g21s2bYUtBcyiK1OTO80uXyswquqBIbO6rUY15nxbYAGt35t/N2r
         602ddqtSu5XB3ZafHfsdV+m38fCoWbOuR7bzqrxUIkGDVjKM4eOTmT73ew/HaoRAPrGZ
         63ug==
X-Gm-Message-State: AOAM531Ddh6T3DrBBN013D1bWro0AaiHRCIe5stajWq+tZpUBwa3fe4O
        6y/XJ3wH4CxUNCAt7zRHGYprldj7NeLtCA==
X-Google-Smtp-Source: ABdhPJz/Mjkc6W8ZyEew7/GmX0j7oXW2N7UUt5bKCucfOkfuZfB2KY+aQ8gMNI0JKSTzg6U68AIspw==
X-Received: by 2002:adf:d1ce:: with SMTP id b14mr22648999wrd.329.1613471032139;
        Tue, 16 Feb 2021 02:23:52 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id 75sm3188144wma.23.2021.02.16.02.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 02:23:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: make html: Errors
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <62633911-34b5-e5da-1fa1-aaaf3e19ba1e@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3dd7707d-6ea6-c68b-8f53-15e743f273c3@gmail.com>
Date:   Tue, 16 Feb 2021 11:23:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <62633911-34b5-e5da-1fa1-aaaf3e19ba1e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 10:11 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I tried to render HTML pages with the Makefile.
> I had some errors, even though the operation succeed (I have the
> resulting HTML files, and the contents look good in the browser.
> Has it happened to you before?  Do you know how to solve it?
> I copied here the full error messages, in case it is useful.

There's a bug in the script, it seems. Not all of the pages
were being correctly processed. In particular, link pages
(".so dir/page.n") were not being correctly handled. I think
the patch below fixes things. Can you test and confirm?

> I guess this is what you use for generating the online pages, isn't it?

No, which is why I never noticed the bug. I suspect hardly anyone
tried "make html" for a very long time.

Cheers,

Michael


diff --git a/Makefile b/Makefile
index 328418e8e..ea31eab80 100644
--- a/Makefile
+++ b/Makefile
@@ -17,7 +17,7 @@ html:
        for i in man?; do \
                [ -d $(HTDIR)/"$$i" ] || mkdir -p $(HTDIR)/"$$i"; \
                find "$$i/" -type f | while read f; do \
-                       (cd "$$i"; man2html $(HTOPTS) `basename $$f`) | \
+                       man2html $(HTOPTS) $$f | \
                        sed -e '1,2d' > $(HTDIR)/"$$i"/`basename $$f`.html; \
                done; \
        done; fi

