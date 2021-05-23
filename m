Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7D8F38DB0C
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 13:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231719AbhEWLYD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 07:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231720AbhEWLYC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 07:24:02 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01D6CC06138B
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:36 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id u133so13427698wmg.1
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 04:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mLL2pDRpnn+0bZR0H61AXkA5usgVDNwA9eYa3eZMdXA=;
        b=S+rB4wxeB8l4GnRNQNFt96a6OqAxOzm5N+hPnZcvaGt69AzM+wW0iRBW5a5OZzq+WM
         7s/yQoHhSNiyXqCr958Bi7brYtdmdBrj7JGOFUdKPLmZngrbBABaBMD7MVXMTm34Z4kX
         ifcknPjOTzejltqqCEHPNW1ZzTSicDAe6NRXgb/GySCkS7Bo5IB2cMzsBU60t0vmcx5V
         6v0kwhJC1hL1ukRsLckbf1DYBFHEVTIl2m7VExwNRUfYqA9RXp1titRGjk+KqPOFqhwH
         dxvDnNMJBGAhfPjxIKyYbvzObclbII5AShJSW+VRSLJnPRuT207/jbob3O8dRAQW5lgZ
         L25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mLL2pDRpnn+0bZR0H61AXkA5usgVDNwA9eYa3eZMdXA=;
        b=oGQoHYiU9+FLjHaYG42srgvPAaqQsdVGpXXcBj5Klumu8/O7CZnxbQki4wRt1kSDMw
         GIniQyXEO7ugklZAZts78YNhlpqIG3sXB7xevCxgYnljBrMzNVeHrVXoJu93T3kYKlG0
         USlBFCQx5Atyoz0bXu5LCIZud0ZrUAX+CL40fQfX6srW4NbDUxUfK+VjsdPE+zqLoixW
         acRPu2gI71QFg2U1LqWujcy8TklyUInhGmoUt2GdblxHHEkbx/GvAyab8sZRrJ2hZgUD
         Q4365M4EKslS40gt8Ww2/MDaKVOK4RDT+5tuXQMgwXVl0lx5KVN+jDGln1G3PYU19Jto
         TxmA==
X-Gm-Message-State: AOAM530Brr07m4dtQYAyPy5B//LAtySCGIcUnO0vHQgHr+TGd7uXMM6z
        3Pkqz2eXvmXp74jrLwvSV3I=
X-Google-Smtp-Source: ABdhPJwVQ3vkGYFd1mBXhksPoXPDDVBqHUBr5SbslpQKQk+KkEg5pKnaAETpsIo8l5YweE4Ob/Tq+Q==
X-Received: by 2002:a1c:2645:: with SMTP id m66mr15814269wmm.145.1621768954618;
        Sun, 23 May 2021 04:22:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id x10sm8273921wrt.65.2021.05.23.04.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 04:22:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 7/8] system_data_types.7: Add 'mode_t'
Date:   Sun, 23 May 2021 13:22:12 +0200
Message-Id: <20210523112213.170202-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210523112213.170202-1-alx.manpages@gmail.com>
References: <20210523112213.170202-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 7544ef25f..6f6f8a095 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -781,6 +781,35 @@ C99 and later; POSIX.1-2001 and later.
 .IR "See also" :
 .BR lldiv (3)
 .RE
+.\"------------------------------------- mode_t -----------------------/
+.TP
+.I mode_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+Alternatively,
+.IR <fcntl.h> ,
+.IR <ndbm.h> ,
+.IR <spawn.h> ,
+.IR <sys/ipc.h> ,
+.IR <sys/mman.h> ,
+or
+.IR <sys/stat.h> .
+.PP
+Used for some file attributes.
+According to POSIX,
+it shall be an integer type.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR chmod (2),
+.BR mkdir (2),
+.BR open (2),
+.BR stat (2),
+.BR umask (2)
+.RE
 .\"------------------------------------- off64_t ----------------------/
 .TP
 .I off64_t
-- 
2.31.1

