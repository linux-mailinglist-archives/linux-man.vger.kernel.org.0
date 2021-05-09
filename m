Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D80D3778E2
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhEIVpb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbhEIVp0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:26 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D74C06138D
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:18 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z6so14559546wrm.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C0YEez2VLKczzyy6kaegS7N24dVZig035wT5nEOUtjI=;
        b=B0L2Yp3ggBjRDloWZeo+5jyNTSzolYZ2vmSX1f97Zdy72fKePiZxgQ80sWiQD6nqZU
         F9+Gbp9u7YdQRa9jLGbJJ76jZFLF3lPipQ6YL36ehFrnHYnCDlahMp9X7R/JlZXPXbpA
         EHr3BUG64fO9npWN7N2hgn0i8ATPQkNZ7+5erbk/4IS9bfEXAJ9d5HhBbF8fZD6h2w5N
         19xua0Og+1/XaOxJu9QjS/a+rW0yx0ONuNQTVSgJeGepi29Z+8ijVAkR2RX/Is9tQyu9
         PXa/uSJQAFkBOd+jTIZbo5jA7mVE737yrlLo/bK89OBUYYh5evyOMlc7Sio1u+i9BGkg
         xGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C0YEez2VLKczzyy6kaegS7N24dVZig035wT5nEOUtjI=;
        b=inmi5XULI1dwazLC1k/NwzXjKXj5TDALgsLw0W4HIt7BSjc+raGPPJ++gAixAvisVE
         DpjC8YuUNzedkpRAxdqS6xow7TfPyiwhU7LAG+6mmSnBVAKx8Y6ogTw/rvWIu0HStl93
         TWw2W/eYMvCSxsG7hfGHABbL4sRrgkxP2Qi6y0ncuc6Py1GEPMkIRTYX2+u72VCGacTV
         HOXzK+GpaLzpL2T0bBZAEWJgCrlbHPFm2BkFDojh5Wxp5vdzAM4OfEePO1WwqD5x4ZA/
         WbOJ8QaQqrcgxQ5UUCyJakuR9VsSlzXA7HvtYq+huIM0RiQe6xx6BfaQ+jIUaK71jWXF
         SPmw==
X-Gm-Message-State: AOAM5300PzjBy5xIWM0i5vO105gP6tKCZqJv34Vbmoe+4WcL/X9m69LG
        qGdyVdtwagspolHEPysiCRg=
X-Google-Smtp-Source: ABdhPJyOa0/vo0BZ3P4o1jA2GU3sMfQMynOXUye79fXp5xkT3t4Y//cCGzzeAgFv5zoxpcXNyPJ7PQ==
X-Received: by 2002:a5d:6811:: with SMTP id w17mr27270699wru.348.1620596656828;
        Sun, 09 May 2021 14:44:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] cpow.3: Use 'complex' after the type consistently
Date:   Sun,  9 May 2021 23:39:24 +0200
Message-Id: <20210509213930.94120-30-alx.manpages@gmail.com>
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
 man3/cpow.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/cpow.3 b/man3/cpow.3
index 494b88f74..be93bff74 100644
--- a/man3/cpow.3
+++ b/man3/cpow.3
@@ -11,10 +11,10 @@ cpow, cpowf, cpowl \- complex power function
 .nf
 .B #include <complex.h>
 .PP
-.BI "double complex cpow(double complex " x ", complex double " z ");"
-.BI "float complex cpowf(float complex " x ", complex float " z ");"
+.BI "double complex cpow(double complex " x ", double complex " z );
+.BI "float complex cpowf(float complex " x ", float complex " z );
 .BI "long double complex cpowl(long double complex " x ,
-.BI "                          complex long double " z ");"
+.BI "                          long double complex " z );
 .PP
 Link with \fI\-lm\fP.
 .fi
-- 
2.31.1

