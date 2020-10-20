Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B19F0293E89
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408025AbgJTOXb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:30 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83766C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:30 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b8so2415108wrn.0
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XfcudiOVnN8tR48m0R1nnMtWFkg7SaQK82NmpgnOFgw=;
        b=eIuZb7H/10xnXxk2qumy+F4M5cIsQQ3k5ircLh1LUlpXE+zsuWXM9uOEdBTpH2Vveu
         O74mll/fzuuRAIQ6YaCFs0kfiu4+Cp9bWyMZ155xXd1mWjds+i4QEIR0GJs31Yg5XEkN
         59OH30pcrSdfRM/tLKFUAAZ8Q2T93FKZjKcY5hooAAK1NCcnlLu0W5QafAdiT4W5y+Lt
         BIngnigQG1GzFEGpmuF3ibbidfFFFVTZG0ZK58lpTCVD10NiQcMonzZLH3jk4BO+6FNn
         MzoMEJL6iyLrKNSH4N8maRpNGLq8TG1uyxFA04WyG1pVLBHgMSt09uN1Lq8tbntR7f8s
         qw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XfcudiOVnN8tR48m0R1nnMtWFkg7SaQK82NmpgnOFgw=;
        b=KFRwKKHpGrynMm0fP5UpX+KC86BmaE1KhbVq6Wl18sp9OLV1WucOIB6G/9WuVtlgNR
         twhyHtm/p1cOgcHE4hi2yrTu1a8g+waq4AJl/MqV7idlGc3Iq59rO5Roi23SzTl9UX2F
         d4vgZxxbYr+G848x3bYao3KJxfpInz3DNZ8X47wwg7NQxnM2mrKezLYlsI3NrKWn3X8c
         MMAmVTyF3OVIN9Cj1NNgbXduQWACWBEwyBXLMoPdgf/22a1yL5AP4S6iNsoEggvgTcaT
         JI80/2nz59W7pVU7NeSykzvj7PObhu6fvM4fAmcXogP7aLM/ZwEx3CkSUMRQ1gzchp2Q
         EYgQ==
X-Gm-Message-State: AOAM533BjBH9VrvXxWWH8atiakyscBkqrph0jxOYTZrhbVGofY0I2+K6
        pyhPWFkNpw9bjT2xI7r3LTk=
X-Google-Smtp-Source: ABdhPJzoPpZvdU7+AcZfgs8SLpH1SOSxCR9JwTTs9fLOwQynJDRa3iDC5YdegxGQc3eTFWVjtqwtWw==
X-Received: by 2002:a5d:6cad:: with SMTP id a13mr4171299wra.347.1603203809258;
        Tue, 20 Oct 2020 07:23:29 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/22] list.3: DESCRIPTION: Add short description
Date:   Tue, 20 Oct 2020 16:21:33 +0200
Message-Id: <20201020142146.61837-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/list.3 b/man3/list.3
index 8af4ccfd6..ae6590fdb 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -88,6 +88,7 @@ LIST_REMOVE
 .\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", TYPE, LIST_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
+These macros define and operate on doubly-linked lists.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

