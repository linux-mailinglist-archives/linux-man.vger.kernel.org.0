Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 473FD3D9683
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231416AbhG1UUX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbhG1UUU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:20 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16DEAC061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:18 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id j2so3997042wrx.9
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5ZhZyU02glAk+5Tee+oSCo+999UhTv7GTzGcZYZaKlI=;
        b=HyqwkY229tb+5gf7r/Zd/RdZChoUsXDIxXS+u2yewVwKxwz1ytCwRSYwB8fL1cDui1
         P5Bs6wcSxdLLAWrA3VDROV9zc8yq2MMtvoGcdvdNF0r9x1pra+G/MvZBpA+8lp0ggPf9
         k3pZno/HgfvFz5XTg7aByxCfyU6aITuuOew7X6qbrNXV4dpL41io8w76V6EMQ6zDPbrn
         F2tr7dKZNlEsPYa2ULKonomnfpqcl9Dq3FYfDaQZLhztFwtVMeDh5K83ddjiP73PGIhV
         1E6h2R8s20m+AtRRBybup/a5BsA6mrpNdexU8Z+/FfDKdI1zr9uwob2sOLuwTSc5y/YB
         fF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5ZhZyU02glAk+5Tee+oSCo+999UhTv7GTzGcZYZaKlI=;
        b=sd9N+dlTJ+Uoo9imkHNIz07uOz9dxu9Q98J2906Nit9nqgL0lOu05hyw6SuI1g/nLx
         swtodAkv6GGlDnAqQuxK8j224qIKDis323GI3vXnw81qxmZMaKb84HR4VBiuThqYMsM3
         uRdNy7QNcsai8lacv9/oEa13zeWs3Cd3N7KLJpalbld954NY8rms0XwKL4mDygJY0bbZ
         aqEjHpZNvmtqQsGwgq5pckZE4yqsRDoZnSM6n0g4GJu7cytSV/5zJSbqFGpYXeW2ktd1
         zm7XgSo8FD5J5mGNqZKV83egiuEiy/8Cth/srvHdfxTgw+fKCJYvl8cKpLcrG6DjD74N
         MYeg==
X-Gm-Message-State: AOAM531WW1Iv6iDbcs0IhLSMrvanX3VYMMuHBUQM9HCO5X9xs1W0t0cU
        wXSp5nI3NNW1f/jmpBiypWA=
X-Google-Smtp-Source: ABdhPJxeEfpRwky1YHFz6sL4Y3975AuI6Vg8u0ULH4HpvVDGwLt8o+KLVvj4BsK3YFNPWAME133l7Q==
X-Received: by 2002:adf:de06:: with SMTP id b6mr1090690wrm.316.1627503616763;
        Wed, 28 Jul 2021 13:20:16 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 04/32] vdso.7: Add y2038 compliant gettime for ppc/32
Date:   Wed, 28 Jul 2021 22:19:40 +0200
Message-Id: <20210728202008.3158-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Christophe Leroy via Bugzilla:

[
https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)

In ppc32 functions section, the Y2038 compliant function
__kernel_clock_gettime64() is missing.

It was added by commit d0e3fc69d00d
("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
]

.../linux$ git describe d0e3fc69d00d
v5.10-rc2-76-gd0e3fc69d00d

Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/vdso.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/vdso.7 b/man7/vdso.7
index 1d527c38e..5fb22ab5e 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -371,6 +371,7 @@ symbol	version
 _
 __kernel_clock_getres	LINUX_2.6.15
 __kernel_clock_gettime	LINUX_2.6.15
+__kernel_clock_gettime64	LINUX_5.10
 __kernel_datapage_offset	LINUX_2.6.15
 __kernel_get_syscall_map	LINUX_2.6.15
 __kernel_get_tbfreq	LINUX_2.6.15
-- 
2.32.0

