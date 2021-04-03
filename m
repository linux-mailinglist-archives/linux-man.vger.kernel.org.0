Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 317DD353567
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236814AbhDCTmH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236794AbhDCTmH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:07 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC75EC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:02 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id f12so1501988wro.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=od3nVNvd6lfIlcamsSsLIjaETo+dX83Tof4HnlB2lP4=;
        b=K7FQUpNoYbsXDzxA8zYPrT0/5M2Uf9NnpCWlL6cIwqa+X9p9+XSBXO6TQQ5my6JV3v
         p4sN68Ow2I2kiPX5wjDEiED1P43Yr8rNC6PIgQpbFXca73KrqcvFsegKoTAyydsEeuIR
         uIctlDSChEqX58vWkNvLcn4VH7hiAGrFa/TOy3kR5MC/zUw29k4zTIgvT9vWBNgDWEnU
         qi3C8vZGbNC5GTyaiIfzY6MG9LQiY2GVD/OlcFD11W5a+6dd0pZhCDOtk0xarw2QR+fb
         KhlkITvrJyPKgyRmPPqT7Pe/O7yHH4WpvfC5VZfG2A5IWs0k67nwOZYJV7nMPGNJbQKl
         wOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=od3nVNvd6lfIlcamsSsLIjaETo+dX83Tof4HnlB2lP4=;
        b=Sm9/TaZ4P27JE0R/JsxjuSPYaQ77uZ+VZ4D5vJr9i4FkdwHAv2FhQU5I/7p7CsN7b7
         kElvDk48YsqzCU73GhtvpFp6LE21DAFrdeKnriYn9WOYWhL5+4Bfhvk0FqTknsQ+7cCy
         zSUk057II6kXYTlgQLZ8BZSJvmi6xs20FgSkQS7xqGR9o0hZ84HkFabIjx/HRTcmhD5o
         AtxX+zJns5gH5OKChRNNJ90rlXVTFZlofjoDNtJdaZpY2yiuKwinwj+WPBpOgDTyrgTJ
         K4awtR2qYc3VwBR5tpJtEbt4aFG5JI8e31Rvx47DwOhIdbwfl8NWez3IaIn+8rPpMvFw
         /45w==
X-Gm-Message-State: AOAM531+95iswkVlLjlbFxDjJ+t197qHgLvmUPk8cifU9uLDg0BzjyPx
        Z2WJnbsFHLY0mLAobfMDPUaeqXUnWVc=
X-Google-Smtp-Source: ABdhPJwYZQYMcPN4/LhnDaQxzUNHINfFgaeYpnXxu7ukhexPRywAfBZ1LjIoJnq8m87NUUZ4VN8R8A==
X-Received: by 2002:adf:f190:: with SMTP id h16mr21360380wro.187.1617478921541;
        Sat, 03 Apr 2021 12:42:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 20/35] futimesat.2: ffix
Date:   Sat,  3 Apr 2021 21:40:12 +0200
Message-Id: <20210403194026.102818-21-alx.manpages@gmail.com>
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

