Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 035EE407967
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232881AbhIKQDR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIKQDR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:17 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A97FC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:04 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t18so7414992wrb.0
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HI9EGsw9JIuR1xY8IHenKc3Eg/nd8w7rZCgoBlnEGW4=;
        b=Z6dsPUNt4sHzWENPqWWHpFVwd/LuvX2kQG6OMUo39mhW0Te3aXD4lk6ii/fPVyzp6t
         cS2+TH8Pa6JHQ+Fq5RgEEXGmgUOQJ1Hl61/llHH2etsIvXVfR0jsBO5kvC7Zi1PlYVwO
         v5g+BJ0VV0bPVhiZmJdTJQclRn0mFQciy5ai49rU+/PbW6D64hwmjldOzKgE9VJU/tgu
         I5UBecWP4iBYz1/qvtznVs50yg3CBkv9g0lc1C4Xwc0BsdsAf9hnPEoAhKcHdac6T68D
         tRL2lpNmmHhqcK30z+cDECXWfg/Ec/kYlaCqP8wJo1bHH5dMfoD5Plshv5ERR82RsyrN
         BK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HI9EGsw9JIuR1xY8IHenKc3Eg/nd8w7rZCgoBlnEGW4=;
        b=CEX7AD04gy1vZxYCVX0toF6aULl4NBqGjcPNEsp46GZqhAPZzlcP3W7KTPAzYSgYmX
         HAAUFHuxn6u3J/bxgAKlZOAi93kMjbvnxkHEoiFBG5orI3Ua4BkNLEoWIiqwzjaQeSiZ
         WBQS3NhRlogcJQiECUxgsuJ7Zkilrxg+aisUxgQw9qCK6B9+dvi94I0uE2GyLjvy0xGk
         mDTRBORw/mmFsruqtAt5gBr4t+k7AdVcwil8n7qnlyAjv2pyGzi7v/WkPB81VqwrK2u2
         pgozFfUTQ4lcOuxxVrytm4G5bzN2tEekHsHO6I+zBXeMCLlghUI/oBwZKxj/r6h8Z00J
         d1/g==
X-Gm-Message-State: AOAM531CKzLYCkTSfFWvVGYTpGGbc+BP8NGIQfE0u3xk5YqEDQ/cQjKV
        KNOsQCOb0NQZ62nptrSjQWY=
X-Google-Smtp-Source: ABdhPJyWiLEZF6bn3bwhlTc7lon6I8BGs71lLltCaBi8cBM44mnI6RYl27RFTQpgGC/hqjwS5Fielw==
X-Received: by 2002:adf:e30d:: with SMTP id b13mr3692394wrj.438.1631376123179;
        Sat, 11 Sep 2021 09:02:03 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 40/45] spu_run.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:12 +0200
Message-Id: <20210911160117.552617-40-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_run.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/spu_run.2 b/man2/spu_run.2
index d5fdc2280..607abaac6 100644
--- a/man2/spu_run.2
+++ b/man2/spu_run.2
@@ -26,6 +26,9 @@
 .TH SPU_RUN 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
 spu_run \- execute an SPU context
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/spu.h>" "          /* Definition of " SPU_* " constants */"
-- 
2.33.0

