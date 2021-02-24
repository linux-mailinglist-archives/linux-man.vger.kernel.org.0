Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0C57324130
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235850AbhBXPoA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:44:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237461AbhBXOta (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:49:30 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97648C0611BD
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:05 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id e10so1916808wro.12
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OfKoJRWGDhdizTIq2u/S2P0H1+KKTmWdSqs2rUniLeg=;
        b=ZZIjh4sU9DmW+T9tWK7cxKeWIq9HXPgszQPxx6Ev4ybYjGCyKc9XaJV/XnTFu874v6
         zBPixKgwwxUiXU+RTdoOpolPy+rXdLcI6dK9CCYws9JayO5OSNRjWNFyR2zV5r/gGU43
         b+60HcI1kP1yyR559ZeTarg15qpjLvGk4Bu1++xBYGmg//dxYPXzpaozqSnHB8NMXuu3
         +fD4isU0C17srBPH6uu948S+AK8urLCxYvqxi0V3QZhOhI9nr6GYLAme6gclFTndEdMP
         S8wz2s2wsdd6W0gxXC5fCqtFaFX3yTZ9XVPqsnsmyBbe9DsMnNtgWbRhNfeUtVEo05UV
         I4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OfKoJRWGDhdizTIq2u/S2P0H1+KKTmWdSqs2rUniLeg=;
        b=dstKrWYrdFWg8ZMyclmHRmFEDtBqym0o7tqx/v7lRO+Gm0uH1MwkWpwAp6+cre67do
         7QMZ73EJcWWp+cvSMvjfnxN+yA4/e/f+dq0REV3NtJIfWXrRPZIIkU/yh5R/zbEBFWvL
         wAUM0l+dk9fvKu7mh9qAXQzKZJmwS5+MdaHMvEfJjkpn6xmk8p27AxaaOO0fXeAEPSR9
         k8QDhv8eiOJnKutXe7lRgu45mm/EOu8K6naVWfHUjRQgWXzA+5MAf83vNLcE9gb+zgsM
         zlC7zy/ie8f2eSJVYfWAZDSvJHma/VMq8aDuPPkjEOfdSQ5vOREoyPh1kxXk/B9wv518
         nNpg==
X-Gm-Message-State: AOAM530LfNGVh6Omp/HpA3GIs+nTRq4Y56WHbfH6+SUWCvtJGwSaH/5g
        nXVpjuW0AzjLOdgsQ0ow8DM=
X-Google-Smtp-Source: ABdhPJzhf/23EM88GmlmgxNBI08IgNwF3TLfMQhmUmtkJspHXcFefAYXiqXgwbXPOaUEAasJ8Hh2DQ==
X-Received: by 2002:adf:dd44:: with SMTP id u4mr14212575wrm.327.1614177844469;
        Wed, 24 Feb 2021 06:44:04 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:44:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 12/20] ecvt.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:43:03 +0100
Message-Id: <20210224144310.140649-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX.1-2001 and glibc use 'restrict' for these functions.
Let's use it here too.

glibc:
=============================  ecvt
stdlib/stdlib.h:872:
char *ecvt (double value, int ndigit, int *restrict decpt,
                   int *restrict sign) THROW nonnull ((3, 4)) wur;
=============================  fcvt
stdlib/stdlib.h:878:
char *fcvt (double value, int ndigit, int *restrict decpt,
                   int *restrict sign) THROW nonnull ((3, 4)) wur;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/ecvt.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/ecvt.3 b/man3/ecvt.3
index ec4a4b6fc..8d53b1287 100644
--- a/man3/ecvt.3
+++ b/man3/ecvt.3
@@ -36,8 +36,10 @@ ecvt, fcvt \- convert a floating-point number to a string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "char *ecvt(double " number ", int " ndigits ", int *" decpt ", int *" sign );
-.BI "char *fcvt(double " number ", int " ndigits ", int *" decpt ", int *" sign );
+.BI "char *ecvt(double " number ", int " ndigits ", int *restrict " decpt ,
+.BI "           int *restrict " sign );
+.BI "char *fcvt(double " number ", int " ndigits ", int *restrict " decpt ,
+.BI "           int *restrict " sign );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

