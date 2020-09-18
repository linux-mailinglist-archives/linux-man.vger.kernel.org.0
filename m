Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECD9E26FE7F
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 15:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726541AbgIRNaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 09:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgIRNaM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 09:30:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D005C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:12 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e17so5353723wme.0
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 06:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7fCb+PwTb6LStE6GDE1r8cR5yiz2/U9ALjY1o6t4YR4=;
        b=FMZt/PMoie48K07BlTb3raRZy18MncioDeDTlSnfs7yuy4JbBnDA09rGmS0craL5HO
         hujd+RcWI0Ug5fMzOxQIx0itkR3M5n7wKCLll6j8kO7tw88Ggw9b+jLZaOtRHwEjAI7f
         GHZGP5IN2T0XApb5dwOQq0wyB2A2nF998Kl4/A+2iIN2D63Tq7h71SSjbdlcsxU/5RfC
         oRnhO3qCkn1efHSbg6/f/qqU0IPXO5T8xp0dV5P3DzWK4b58V1pQRNFAFgm0efggG5N4
         mA+n1ZFMSvP6MUMrsePlm/SAqYKTpVC/7yWglLLbvkOWfj9UH2qtKzeoht4nusJZoTkD
         jXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7fCb+PwTb6LStE6GDE1r8cR5yiz2/U9ALjY1o6t4YR4=;
        b=T28JQqSZ1HXYIXkFosKC2jCzICUWroHRykpHUPY4/6VFwLeINKqR/eIICWc+2smfo1
         zswL17dUCSS8jnmvjfsgptlERFCkZ/JWwZPLdHsibWJxNcjCt7JY310qDxJoK1jMr5DA
         P4O+JEP0JYD5MsVIw+E5OcxW/mOq2uEeWhohZxGOaVTEGCAhxgsl0fgxJr9TjR8jBq4w
         EXtBGagocQ2+saVz6PTomCbesRSPmsnI1Nhkr3zjLtrCXOXoluMTwQKpl7KcIvjzg+MW
         ZVMh35+QjfQMTEuavanQCNYfjAREgmiOJxKqCPPiO6eIvbt9PaTwiwtoppcKQhn9MOAr
         MbrQ==
X-Gm-Message-State: AOAM531EwlZc9kqr7ykam2RxWqji/TWwjqOCFZYmq2KkJHziKwWE2rGx
        rV+DHlO2yxcW/uS76Sv+3Fs=
X-Google-Smtp-Source: ABdhPJxsgjv6lrkhrLXw96Szt/DEXMqTGLnvs2yAPnOgy2iqyP11o+myYxAeDZ2Wk2SiI9tZmSmhtg==
X-Received: by 2002:a7b:c4c3:: with SMTP id g3mr16383916wmk.128.1600435810547;
        Fri, 18 Sep 2020 06:30:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k12sm5304764wrn.39.2020.09.18.06.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 06:30:10 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/3] system_data_types.7: ffix
Date:   Fri, 18 Sep 2020 15:29:42 +0200
Message-Id: <20200918132943.55424-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
References: <20200918132943.55424-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 16dcb7d66..2ccbfe817 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -65,7 +65,7 @@ system_data_types \- overview of system data types
 .I ptrdiff_t
 .IP
 Include:
-.I <stddef.h>.
+.IR <stddef.h> .
 .IP
 Used for a count of elements, and array indices.
 It is the result of subtracting two pointers.
@@ -85,7 +85,7 @@ types in this page.
 .I regoff_t
 .IP
 Include:
-.I <regex.h>.
+.IR <regex.h> .
 .IP
 According to POSIX, it shall be a signed integer type
 capable of storing the largest value that can be stored in either a
-- 
2.28.0

