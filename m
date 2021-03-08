Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD74D3316B9
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231203AbhCHSyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230525AbhCHSyN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:13 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E80BC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:12 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so4454093wml.2
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5tCAIM8gFk4o+EUPh0gk7gxqnUvfC3+O6Wb2uyGi9JI=;
        b=sDyiOaP0icFCPd/3q7411Us19zUZ+wfS+EYmnh/i9cFgMF2O4xYNUC88bf41Lzob02
         jYBasqg9CDegnASkdS1Yo14gM2a6i3R6UVtC9lq4Utag6gtU82ukeKld+eGaa6uOtDFo
         6ylwRIn78JpEhTRwXoah+g8yWXn2dW8TsY1GAcmX4v9l73jR2fCmNsca5tk3BHIht468
         5eY5fQL4/MQSvY6A8suzsNaPuxnQcwsBi3+ZvTV4t41T8Hz5CtX5XQCy7Iw4cbWYs3JQ
         TgyjrTBHuPlInPF3BGkgxjCGsRGqF8oi+f7021A56sjcWh9BKp4kfBsmXck8OTup1Rie
         466g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5tCAIM8gFk4o+EUPh0gk7gxqnUvfC3+O6Wb2uyGi9JI=;
        b=R8MJecps/UkoegBl+UySZwb+htR04yXVk8SOHwrnnlWPQwGByDDaB76PG7XDVZAsjJ
         ALcKFldeRKU6yXnlOP91kUug88QC9jZHLmdJiM/Yg/98rZRJXJevSAWRLIicaKOUt71f
         B00gR393B+Gd73XFX58Vt5acow8VzihhPFLiTrOyW+ridTeo72JJdHE5MIRjYXsOBskV
         xvwbz33daTHTGK601FzGFEEeh7+F3Q0XJwmekPPyx6vfT+gGK5bEENM3sMlmdQWsNCg8
         k+eyqvHt1/v506/f+ZEoOTlQMSWB6d2Kz0/TnyGdaw/fPm+07lnC2Hq7Mm6GjymaWdMO
         6DAQ==
X-Gm-Message-State: AOAM533G/4gfq94hHTjmD4id9okPraD1zEirpHukioqZhl7rsLJFtC7u
        d7IZ/6faWaRR7Da1irsUFn4=
X-Google-Smtp-Source: ABdhPJyjiXOytudjiJD0jc3qAkzJdhhjFGENb9klfGsoDNoA51v/EjxPXhIWCfCCzamT7Km+ZlMaoQ==
X-Received: by 2002:a1c:1d14:: with SMTP id d20mr233815wmd.36.1615229651015;
        Mon, 08 Mar 2021 10:54:11 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:10 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/23] pthread_attr_setstack.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:14 +0100
Message-Id: <20210308185331.242176-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_setstack().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_setstack
sysdeps/htl/pthread.h:158:
extern int pthread_attr_setstack (pthread_attr_t *__attr,
				  void *__stackaddr,
				  size_t __stacksize)
	__THROW __nonnull ((1));
sysdeps/nptl/pthread.h:367:
extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
				  size_t __stacksize) __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setstack.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_attr_setstack.3 b/man3/pthread_attr_setstack.3
index 23b95cb32..6d0488a8b 100644
--- a/man3/pthread_attr_setstack.3
+++ b/man3/pthread_attr_setstack.3
@@ -33,8 +33,9 @@ attributes in thread attributes object
 .PP
 .BI "int pthread_attr_setstack(pthread_attr_t *" attr ,
 .BI "                          void *" stackaddr ", size_t " stacksize );
-.BI "int pthread_attr_getstack(const pthread_attr_t *" attr ,
-.BI "                          void **" stackaddr ", size_t *" stacksize );
+.BI "int pthread_attr_getstack(const pthread_attr_t *restrict " attr ,
+.BI "                          void **restrict " stackaddr ,
+.BI "                          size_t *restrict " stacksize );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

