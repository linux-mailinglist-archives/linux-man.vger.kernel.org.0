Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78AF23A4D96
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230459AbhFLIdw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIdw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:33:52 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7890C061767
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:52 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l9so9277830wms.1
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pL8LZ2K0wUOULtxfeeWVdQP6Tlx+z9olK+/hxJMrxVg=;
        b=OZ3x6LAvYGuXCATer4/H6i3WQMnI2GLoJMyyhy+jkwIgO+2W4+S/Q8A/kj9M++fSjO
         6q4HbV1Ny8zozOZhO6yfwTzurqnGt0oxvYRgya4wwCqAf0+PEiLX5LCxpA1IQsU4dlJu
         tT3hIU9fM7NDVOee9/htgjt3QE/MxOs46D0TJEZXYheP7vojYlbNUMakIqBq+tj/orRy
         Wmcw+6w+QXfzLXQVD3YIX7eNgdZWCGviS9iDo+rMP4V8VqpfoCYfELDpuGAwWra13xKh
         7Vpd2TbstqqTCBVGtiOLVkHtKrx+oL0f7VNlC5vJPWU/tbJgQ0mDU6IjTersJIeD0/gb
         TAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pL8LZ2K0wUOULtxfeeWVdQP6Tlx+z9olK+/hxJMrxVg=;
        b=Y1h8+8jODM9F1t/6050uWy+WxBCokv7pdNMpGU3LQ2ZEKUCaQfulHiJ20ZAj3HT+FQ
         +i6fVNsnDM83gQFJAecTxaEdiW4EeCqyHgwMXCeKgigCFamGva8VunG430TNQrgmrvpW
         so1/Rrrr+nwP3S4uwISX4u5DYL6TZK5XZfWDdlyC4m8++/Wes9SzMEoXDqjigqyIL4k6
         87ZdnMBgfCJOSscQofMwnSPur/65I+DV1ybI3pzNq0LtYrYWGvtj/07VeGI7dI4iW7g4
         WR1ti7T0zXo0H8b02cF8tRYNqKTjqEEECqMmVdx46z2xJNlMyRqNkZXQXZqiPAs4rtj5
         RFtA==
X-Gm-Message-State: AOAM5339bN3XufC/wOtOYIO7qcDdv+0jzi2DEUHJW7d8s8zd0brGMwpK
        0PyuQgSstCrtygYXKd8FfLU=
X-Google-Smtp-Source: ABdhPJzKUIwR9KZO4AJYazZB8DYhR+iZsLP1RHBCcFrKdieYgxolPmVm2+s3fUAPqcyXyUJRNk1b0g==
X-Received: by 2002:a1c:9dc5:: with SMTP id g188mr23507346wme.141.1623486711624;
        Sat, 12 Jun 2021 01:31:51 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/28] pipe.2: SYNOPSIS: Fix incorrect prototype
Date:   Sat, 12 Jun 2021 10:31:22 +0200
Message-Id: <20210612083145.12485-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A function declarator with empty parentheses, which is not a
prototype, is an obsolescent feature of C (See C17 6.11.6.1), and
doesn't mean 0 parameters, but instead that no information about
the parameters is provided (See C17 6.5.2.2).

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/pipe.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pipe.2 b/man2/pipe.2
index 93fbd36f2..41a482f37 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -56,7 +56,7 @@ pipe, pipe2 \- create pipe
 .B struct fd_pair {
 .B "    long fd[2];"
 .B "};"
-.B struct fd_pair pipe();
+.B struct fd_pair pipe(void);
 .fi
 .SH DESCRIPTION
 .BR pipe ()
-- 
2.32.0

