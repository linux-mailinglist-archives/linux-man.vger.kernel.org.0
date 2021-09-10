Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A30C3407386
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232783AbhIJWsi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbhIJWsf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:35 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75FAEC061756
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:23 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n7-20020a05600c3b8700b002f8ca941d89so2353734wms.2
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3O6Rw1HI4DVxVeOXh+VsEVp5eVCs3RbEJhdpcu0eyTw=;
        b=ctdmqY2lp6f1sFccH/k3Zb2HnpHmfw6HkhjECoYaznUIYXbrtQ4Gs99N/DDM+UAja3
         1LuVB6vX+8HobIh6Jn3B5RLYdqfY0XckjShTJakQOQ+XCcSsBxbeqRX0eFBZvSnNei/x
         Dzvo7nRg4BoQ6v8BjWT7sEMEnmqzdUZphppFjArjXVR+nk4ipNotVPR8o47b3x0VYHR0
         0+9T6D0WbrakS/cgeJUHM72+2wWvWRKITjbubK6ctZ1JIAknh7blbLbK5/xYS0LDK9Yq
         UT8nTOWsp9cnRxr1n6uaZJka1w3/u4mNLWM2SIxseGyR8Au/gyU1EFVCbSaODgVy+WbA
         nUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3O6Rw1HI4DVxVeOXh+VsEVp5eVCs3RbEJhdpcu0eyTw=;
        b=ksUsM7H7HEbN6etz8RDUy2NdFnpujTIJl5el9r/Lrt8MZv2/ZXZB+K1XV8K2XhDY4n
         7c6jtmwht1Bu1c+YQ7cRFOl6zrXPP7D2KycSUpp6q03bjmF2EqNwSeW8e5fo53iJ/tJd
         yFiGjmPPfazrfzrrZWEbp5eklPTnp9EyFMGOsZslhiaZmvmZhLaFeZUrJsbwBpQPUG8g
         tq5DcNv7M8BWJB7SaeFhelH0Sbzeo6rBViMIFHRzUjHzV+tPVGI5lcALYB0j3g141GnL
         xSl9t5NalBmsBQGTsAqj4acdPAwAfDsEibYT3qS43lk/ZcqvOMfZV/WV9H84O0X/bKag
         D36A==
X-Gm-Message-State: AOAM5300YWvEkCIpQdGD1An41OCrEXhb5msneGvrlf2ydKkYgwgq1LSu
        x8sUn6+L7e0GhaOhy9HecUo=
X-Google-Smtp-Source: ABdhPJwh9OXe0Sh8Wu9ethSU5D6HSI7clcXf+WY3FyzWWgjgo8E1nWZCSDH5z7l7xS8e1Qtt+Be3Xw==
X-Received: by 2002:a05:600c:3b17:: with SMTP id m23mr20579wms.41.1631314042074;
        Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Mike Rapoport <rppt@linux.ibm.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 02/15] memfd_secret.2: add NOTES section ...
Date:   Sat, 11 Sep 2021 00:47:03 +0200
Message-Id: <20210910224717.499502-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Rapoport <rppt@linux.ibm.com>

... that explains the rationale for the system call

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/memfd_secret.2 | 61 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index f3380818e..869480b48 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -147,6 +147,67 @@ system call first appeared in Linux 5.14.
 The
 .BR memfd_secret ()
 system call is Linux-specific.
+.SH NOTES
+.PP
+The
+.BR memfd_secret ()
+system call is designed to allow a user-space process
+to create a range of memory that is inaccessible to anybody else -
+kernel included.
+There is no 100% guarantee that kernel won't be able to access
+memory ranges backed by
+.BR memfd_secret ()
+in any circumstances, but nevertheless,
+it is much harder to exfiltrate data from these regions.
+.PP
+The
+.BR memfd_secret ()
+provides the following protections:
+.IP \(bu 3
+Enhanced protection
+(in conjunction with all the other in-kernel attack prevention systems)
+against ROP attacks.
+Absence of any in-kernel primitive for accessing memory backed by
+.BR memfd_secret ()
+means that one-gadget ROP attack
+can't work to perform data exfiltration.
+The attacker would need to find enough ROP gadgets
+to reconstruct the missing page table entries,
+which significantly increases difficulty of the attack,
+especially when other protections like the kernel stack size limit
+and address space layout randomization are in place.
+.IP \(bu
+Prevent cross-process userspace memory exposures.
+Once a region for a
+.BR memfd_secret ()
+memory mapping is allocated,
+the user can't accidentally pass it into the kernel
+to be transmitted somewhere.
+The memory pages in this region cannot be accessed via the direct map
+and they are disallowed in get_user_pages.
+.IP \(bu
+Harden against exploited kernel flaws.
+In order to access memory areas backed by
+.BR memfd_secret(),
+a kernel-side attack would need to
+either walk the page tables and create new ones,
+or spawn a new privileged userspace process to perform
+secrets exfiltration using
+.BR ptrace (2).
+.PP
+The way
+.BR memfd_secret ()
+allocates and locks the memory may impact overall system performance,
+therefore the system call is disabled by default and only available
+if the system administrator turned it on using
+"secretmem.enable=y" kernel parameter.
+.PP
+To prevent potiential data leaks of memory regions backed by
+.BR memfd_secret()
+from a hybernation image,
+hybernation is prevented when there are active
+.BR memfd_secret ()
+users.
 .SH SEE ALSO
 .BR fcntl (2),
 .BR ftruncate (2),
-- 
2.33.0

