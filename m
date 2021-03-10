Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730863346C4
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbhCJScf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232734AbhCJScI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:08 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91008C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:08 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso11339469wmi.0
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uolUfYcCUT91l2rELFMahsSmULprXhf9wlzi61GU2G8=;
        b=vNByjmAPAzBs+Ha4lv1rc9QcqnrjIgElPQJ00RKRHc7IOIuVrL6AGi7wffzbCPHlCL
         EHWbWZPxwinL5t9/OMaVZ8KhrWd2EkaTCVlqzHKO5VrDy/MCot5MqBqtzKQhPN03aLTQ
         Fl1cVFHSunl9sNAvi1vIj+rvBaVECtYoWUZVPUKLuhdqZ5xzrxWCnhaCVSBpy6jEjGfW
         QJB+8ggKShUVbaTZEfQde0NcOclG3Vf07nlEp2yr7NhjBCquxkQ6vZqkPo1qj8/qq4JU
         jjz19R7sRDJrM1VPReumcQ8bf97QCPZ+jeXvuvkM0C6c9qK4pfDrmMB6xfqQusLjAvMn
         8Gqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uolUfYcCUT91l2rELFMahsSmULprXhf9wlzi61GU2G8=;
        b=A30YTz9yVLvYFlnSS8686UqbbP1RFCUtrhRosmKTQiwbFFLwbGdVmvK4MQ6aHuNTy3
         LnFwmwGxswm0wd3D/8tjalzB2YwmUxoV4tUw1669peVMn+mcokutwaqkh2ZEbviaiT3u
         +OZTZZCr0q+tEqcNxqiVoshu0SjYpF/FNrXkq55vMVUKemBkLHk7aPCcoMv/ovKrJCUD
         C+208AVGFpXERAKdwI4GzIiPGjNjlLwIaAsVGer/Kio00RgF3p2hhzTP4fJUVa3eprv8
         pEie7ETfHunPPf+uyjF4XIVndKLfTUvUgSjmOwSFJjWKVwzVKW7d/m7k47mi+y25rCXs
         Tutw==
X-Gm-Message-State: AOAM533H1ZuHBowYDMoYFGjS1Cy1FFNBPOgX96naKjW1W6t+fCGz/+2r
        vq3fjqf9CorrE417WnAje1I=
X-Google-Smtp-Source: ABdhPJwXuLpskv01ZUXvVx59eEouDoJvOjUIRnwOqHuxBJ/tl2dM1W4itlWFlbo+/r1EJsqk1JxIdA==
X-Received: by 2002:a7b:c119:: with SMTP id w25mr4544839wmi.127.1615401127343;
        Wed, 10 Mar 2021 10:32:07 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/24] sem_getvalue.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:27 +0100
Message-Id: <20210310183149.194717-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in sem_getvalue().
Let's use it here too.

.../glibc$ grep_glibc_prototype sem_getvalue
sysdeps/pthread/semaphore.h:81:
extern int sem_getvalue (sem_t *__restrict __sem, int *__restrict __sval)
  __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/sem_getvalue.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/sem_getvalue.3 b/man3/sem_getvalue.3
index ddfb1899a..084dc510d 100644
--- a/man3/sem_getvalue.3
+++ b/man3/sem_getvalue.3
@@ -29,7 +29,7 @@ sem_getvalue \- get the value of a semaphore
 .nf
 .B #include <semaphore.h>
 .PP
-.BI "int sem_getvalue(sem_t *" sem ", int *" sval );
+.BI "int sem_getvalue(sem_t *restrict " sem ", int *restrict " sval );
 .fi
 .PP
 Link with \fI\-pthread\fP.
-- 
2.30.1.721.g45526154a5

