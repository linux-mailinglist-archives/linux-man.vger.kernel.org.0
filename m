Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78C1B353571
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236850AbhDCTmN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbhDCTmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:13 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E98E8C061788
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:09 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id f12so1502147wro.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Em+awrERrgpR+vP9EtLB4H/xnCP91tdyUvlumguvIM8=;
        b=IffD3OFPdqrPTTZJfYRsRrs9gcd+RmVQEn6dvnWuxg5sdx0rJl0P9GEriGxd02G4Uy
         aWicppZq3JuFXLIXDYwb93MFlX7T59Kw+9DbMwFyZjkX9jloNW1oMLXERA/00pyEWk68
         KYnwWK4CxEgZTxW355sEJT5605HjPBZjBAaDO+Pg68tR8BEIR2ucyZHYNUQt5B39WKry
         PCR+nB//SqaRFUp6GZD1v53XNuitTn1kygYL0jpwSVgJHwNglqu+kI4AzxHMPWDXwtYN
         FFODWClJGiJ68w7hMA/2IgOM9mFMlrcUB6+D5pSv/P+OCgJw8lvgmfnIjdQVoxEhgthn
         LGKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Em+awrERrgpR+vP9EtLB4H/xnCP91tdyUvlumguvIM8=;
        b=U2gR6OL5VXTXgEgpVm1WWk9vNy/s9z+8Zy74nqfhcBcwJXj27kO43vQJcJwGp3cr81
         NmWLdlrCdGhZhbrWXI4ESUz/14MFKixpud9VHblGBC6ABuIU1zDie3g9R/Lo5bcGasKa
         wwXHkt2PVZKzeoIf6hW+qSwv500qD7p8mFAicBPLqmUWfFgY6ToWIGmy+GlPSSd14dOE
         KnGOP4OFFPliBrWLo38M8zWL1NWHc7mL9J8dNevxL0TUYkDYJjEvvRI+VpTxI4xqWwVy
         IhocHDHxtHqAQazo8gttTI3nkELOp/LTcmdboXrCgXTUTqFkZK36JbTLS1UV+B7sRqgw
         wruQ==
X-Gm-Message-State: AOAM530yO0rmxtOicjkzUtZQ6/BKZxoo16sGn13qXomS3R0e27+gtKPo
        I6PTit6CMJynPaIQOQ+SpnWL+sQ+qos=
X-Google-Smtp-Source: ABdhPJwibp7SJf1TTXvnfp835KPsJcFL7MkZlP+GJq3Lw6v7Hw38r7JmV4G0g11MN4FZMXBNIVfJNw==
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr21149905wrw.277.1617478928796;
        Sat, 03 Apr 2021 12:42:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 31/35] ioctl_ficlonerange.2: Make clear why is each header exactly needed.
Date:   Sat,  3 Apr 2021 21:40:23 +0200
Message-Id: <20210403194026.102818-32-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the one that provides the prototype doesn't need a comment.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_ficlonerange.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_ficlonerange.2 b/man2/ioctl_ficlonerange.2
index 34c171941..75ab14bc4 100644
--- a/man2/ioctl_ficlonerange.2
+++ b/man2/ioctl_ficlonerange.2
@@ -25,8 +25,8 @@
 ioctl_ficlonerange, ioctl_ficlone \- share some the data of one file with another file
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fs.h>" "        /* Definition of " FICLONE* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
 .PP
 .BI "int ioctl(int " dest_fd ", FICLONERANGE, struct file_clone_range *" arg );
 .BI "int ioctl(int " dest_fd ", FICLONE, int " src_fd );
-- 
2.31.0

