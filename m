Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB9A379696
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233197AbhEJR5i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233228AbhEJR5h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:37 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4573EC061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:32 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m9so17548055wrx.3
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tCTG34hdZboLuFGiSMahTg8ehQUvLx/up9jZ2mFNHYQ=;
        b=AHY5EVa2ZHA6IkqmqiANcHxAOYVP8U9FIN7ms8RxyiqtFyyVTeH2aKtNm9YwJBGibo
         wX6ZmEm2da3XrnL0HFWE2A93HLsHQl0qeYvSYCgjW7qIlN429zfHHL6Hl6Dt9+qUr6/l
         +aHluFDtPZLDRoTnUITK6ggRHVtAUnjiURvQHLNx8ver9nmjfGe+UjISXv474XNHEzjp
         bIcl25gEkZKoP1tI1qBPsdxnzKU/kCtCL3UdkFz73LySywMmVxoDcj7lLMHJdQ60pxOz
         Us2666JsviOo20ITWNkZMerbt0Y1MXE+KMnY4qLvd3FkcMh43+ujVeqtiXU4ncQZwk5U
         Ismg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tCTG34hdZboLuFGiSMahTg8ehQUvLx/up9jZ2mFNHYQ=;
        b=SVKwYx451BWzenbiiGRGmwDC5a5ZykWoaxKcjRtOsDs4OKrc6v5eSSpfD4G/nDcFkF
         sJAvh6C5TTBZ53iETfNzQ7byJK1ZXf6ATWbfDQsZPLeod3qZmj9dgK6E5m1SJkcEbLX7
         bC/ysm3tCvwP00qw68+VzztEppJ6BTgLoOGLbkrnLH5ZVtq06KdOZwwQAjSB0Ok6GJOo
         LAlZ4CB8qMPp7alu4nIx477x2hlltIDyrflGIrLrXxTAA+HRoqzRPqqA1aiz1HZ/n8Vw
         ibtLCooMFMhMY5eeBUoqjxJIPxlASpsouKpwJQcb3xMlTfEfbAeLiaHEsdt/1Pt+xlT2
         SX/A==
X-Gm-Message-State: AOAM532pDLDyNVVwi7m9zlPwyYcsA+LLZ2MC6Ez+4vEdIek3+3oa6t67
        rwd2X38jj7fNGoiceUnwmVs=
X-Google-Smtp-Source: ABdhPJxR7yEL96C7ouoKk4I4Xkjx4q+xdtiInk8plO8F/8RwwJL68qRovf4LPOsMsY8XkR9W90hnxg==
X-Received: by 2002:adf:ec82:: with SMTP id z2mr31888681wrn.214.1620669391090;
        Mon, 10 May 2021 10:56:31 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:30 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/39] ipc.2: Add needed include
Date:   Mon, 10 May 2021 19:55:19 +0200
Message-Id: <20210510175546.28445-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The constants needed for using this function are defined in
<linux/ipc.h>.  Add the include, even when those constants are not
mentioned in this manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ipc.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/ipc.2 b/man2/ipc.2
index f505fa1c9..4ce29ca69 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -27,6 +27,7 @@
 ipc \- System V IPC system calls
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/ipc.h>" "        /* Definition of needed constants */"
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-- 
2.31.1

