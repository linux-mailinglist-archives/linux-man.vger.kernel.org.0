Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 541F93537F6
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230435AbhDDL7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbhDDL7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:53 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23B65C0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:48 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id b9so722612wrs.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=od3nVNvd6lfIlcamsSsLIjaETo+dX83Tof4HnlB2lP4=;
        b=hbddO/MuCyJrUyt+VzZ3OePhpNSAstRF44tHp792DlOQvuLh3KGgEOp6OnUAn5p+XP
         Ue4EpuIy1mWSYp65hYyslMeasGl9jy2EJXYvQ4o0PdNtTcNDg0Xlq4BnQJKcqb3eb83P
         NFfV+jGvok/Ec97eTlaSg+U739ny1PTlGfRKkM7kS09MMraQzpSHcZoksu1Bd0MIPUpr
         B0XKjPWkrmDIFEHFxFcUS3pFiKEiN6Jsek6lle7XsJ8WcfwLmOBPvuKQur+h8cR/jYD+
         OQTzi9+88emxWjxebdjA98bMYHv/YQfPKxqSHfgkruLJGY3dkZNNsUhAJfy/huPJb3by
         cvLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=od3nVNvd6lfIlcamsSsLIjaETo+dX83Tof4HnlB2lP4=;
        b=Q9ilK2Yqh6+cjznUhzS4RUuVqK8Zh9IqwWPrGqvzBaOGK7fjAWF7L0bp240waJrAEJ
         rp7UBP9Zv0CtNzPb4fKX8lACuGfCGkKrf69tn4hCvqgG9wGZ/BAdlzsjJHt21VPbE1DL
         xGhoSjpjDLD/Z9Sb1E4P7OPu5P8rPkBKIYB7lr6HTuW1quQkUaVWQym5lv/IRcXk2L3X
         nBCm9Z10TfLrMyvkzCs6DYgEkZNYxLqdMWcv0Tzr1kW24QjKyQIkxuNefYjNrPJOayrD
         2hVnODxlnjTMk3PRSSYWXF+4uosLwxdRxtF/ngkubLOSvMO+ivykzzuNMYpWC6pyaoME
         ey7A==
X-Gm-Message-State: AOAM533Z3oOtTj7k0BatTOfbZegs4HGCbq82fIhQKCePFDGejGXN3VVQ
        l2JnWw47MT3FhlAXJ0purEk=
X-Google-Smtp-Source: ABdhPJwX5H3M3kxIZfgEiSfqi2wwArSQNThTiAYteoYcmUkjN6/ekJZ5PpCWoDUzPfesfxrpnL7nAA==
X-Received: by 2002:adf:edc3:: with SMTP id v3mr23761491wro.79.1617537586944;
        Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 20/35] futimesat.2: ffix
Date:   Sun,  4 Apr 2021 13:58:33 +0200
Message-Id: <20210404115847.78166-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futimesat.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futimesat.2 b/man2/futimesat.2
index 6ac9a9200..86e941fe5 100644
--- a/man2/futimesat.2
+++ b/man2/futimesat.2
@@ -28,7 +28,7 @@ futimesat \- change timestamps of a file relative to a \
 directory file descriptor
 .SH SYNOPSIS
 .nf
-.B #include <fcntl.h>           /* Definition of AT_* constants */
+.BR "#include <fcntl.h>" "            /* Definition of " AT_* " constants */"
 .B #include <sys/time.h>
 .PP
 .BI "int futimesat(int " dirfd ", const char *" pathname ,
-- 
2.31.0

