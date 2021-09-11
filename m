Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A90EF40795B
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233193AbhIKQDG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233089AbhIKQDG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:06 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F16EC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:53 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d6so7329127wrc.11
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DR6r42nyCxsSFrVG9U1f9aacycPczaIXQ3ioVNGYj3Q=;
        b=E9rc9nDXURfg4b9eH+HA+EIC82PkDSHuvsz4bxlo39qV3t3eXFLekbHNqyBqNSdYKD
         8reOWE/q+35rL2iugVKax6OQQzCDFH7uHM9prHCYWpsW1LbZHlpgGGCsRvZrz74ESN8P
         QcccRmU+Ka/thkONKS7fRoLg7EygIevkG919Q471O+htcxbqfdhnYYijCU8JHcT5X4R+
         8KeQ0dkKwR+O1f8EIpt0UMaC6pFY8QNLbNa44q1luTf5hO421QMxv/phvD56QzMZ5TOr
         T1g6UGj+UBqvjhcwLoL2mDADOtOTI+Xsu8UOtp9PZwgwpRiBwkY2vJj7OF9Uw1o09Ayp
         6gQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DR6r42nyCxsSFrVG9U1f9aacycPczaIXQ3ioVNGYj3Q=;
        b=v9ZJwbB0xeEShQmRpFQlcbyEuNOmC9Culxln8wUuJXBAPjGfihklKj18ags6XznYaF
         gc4i45TFvnoSg+WZvfiS3sCowTlN6pJ+1i7nPFWwRANOCX/jNC6Ie0rvVWS6GbLK4ZPd
         +O7AN4miVyf2m2QA9Pa+8AESHCm8HfZm/Tt8gwGVW2QoGH41uff0u80zROcI7BfrrfKZ
         KzRQ8sCkvvPlbAg7XCRJQAK29CTu3eaSMS3ujBKI1D38u1ioEFZwvpwSzzw9sz+DxbR4
         zfTbHvILdy09daVRqE0OWZ5pum7qX4Szhz/4jT+UK6sM0ucBs8y4BmiEtRB4sZwmgDXm
         rs0Q==
X-Gm-Message-State: AOAM533iswuzfI0E62/t8KoVf6XGXFHRtP9VfeEyqJBIqU+9Dd4A0eUX
        ozPsKWZl9dLAQo85b8kwXNtERt773Ko=
X-Google-Smtp-Source: ABdhPJxndLu71QQLazM47tdPCWIFNy0NlHUKjB5CymhWe5CNdaf4ircTPrcvt7VteeeUzPu+bbpFoA==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr3666761wrt.104.1631376112269;
        Sat, 11 Sep 2021 09:01:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 28/45] time.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:00 +0200
Message-Id: <20210911160117.552617-28-alx.manpages@gmail.com>
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
 man2/time.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/time.2 b/man2/time.2
index ab3d3ecba..4caf49960 100644
--- a/man2/time.2
+++ b/man2/time.2
@@ -29,6 +29,9 @@
 .TH TIME 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 time \- get time in seconds
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <time.h>
-- 
2.33.0

