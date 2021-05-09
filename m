Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6F233778C6
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbhEIVpI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbhEIVpH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:07 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E67C061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:02 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id m9so14568591wrx.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/KXIKayWKMK1I6jNzZIi3sSsLZh5KuG3vwu3ZhGfQ7k=;
        b=HsBkwmsOJaPFRWvqCsftXnijuOat9sO9KDewrzO54iOPa0Yxe3AMtQ2doNWbcyvDIl
         i4So3wX+o+zC639t5aLc27dAC6175Tdf7oBmFHWKYHCxwWr8lwfr00jwbhS6srylGzRo
         GeWHwVxC2noBORshp1z27p/mvNZZ7tpI4TSY/KXqNQPf/3k31MEmMepMLZtzdYSR4Nqg
         1QqIPDIc/HfHqsKFjWZHgcSvtZVlc7QSP3Jw6XHWhxiw6pRccO9lL/iEh3fTr0z0M0fY
         QxqrkRjvUh/8eme40n1ZhcA/RiAnE/sLOVq0raxC/eiLeaK3O0XGYlshP0EUcA+4xf55
         WY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/KXIKayWKMK1I6jNzZIi3sSsLZh5KuG3vwu3ZhGfQ7k=;
        b=dW2TSICnUuJiEvkqvW2Q5R5cMvsamsIYDnUzaA55C/5EB57BsAs2sxeBHkQ/KRkezq
         2UE/Cs0iielebP6wpETXih6BI4064MHBa4r8qGShnv7sh+a/u2CsY9k/FGE6U6NCSB10
         mw7xOvlN1oVgTxdK4RBODvl0nQrMADTmuPaOzdoo942Y9OPLGWDjD5T3BG0PPC/CDcuR
         8Fd9OtIibRX6spk4arxB6LtNr85quVMsl7H099jQQb/1+saRiXWDS9EiNRdZxznpEWeM
         jDRucxizbv67caZr08XH+hsLP8+UVOxIxs6s3ql4zjbF/RYWkC7HXMVf+4l7ef5Jc4v+
         534g==
X-Gm-Message-State: AOAM531h2jLHhNbibS5/VGxV23cipoDRMw92N3krojXbItnA1zwSuT3S
        kzeuu50//flz62izc8UbeXY=
X-Google-Smtp-Source: ABdhPJyMfW09FdpXZM8hJCLDLuEtr4DdRi1z5lXLyb3Fki4pLqswA8wmHva9reptyN1Uuv7NH1tMYQ==
X-Received: by 2002:adf:e846:: with SMTP id d6mr26721178wrn.356.1620596641586;
        Sun, 09 May 2021 14:44:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] malloc_usable_size.3: ffix
Date:   Sun,  9 May 2021 23:39:02 +0200
Message-Id: <20210509213930.94120-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/malloc_usable_size.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/malloc_usable_size.3 b/man3/malloc_usable_size.3
index 4b4ba3dca..5f892ef6c 100644
--- a/man3/malloc_usable_size.3
+++ b/man3/malloc_usable_size.3
@@ -29,7 +29,7 @@ malloc_usable_size \- obtain size of block of memory allocated from heap
 .nf
 .B #include <malloc.h>
 .PP
-.BI "size_t malloc_usable_size (void *" ptr );
+.BI "size_t malloc_usable_size(void *" ptr );
 .fi
 .SH DESCRIPTION
 The
-- 
2.31.1

