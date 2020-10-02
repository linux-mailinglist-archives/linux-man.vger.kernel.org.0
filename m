Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD566281C15
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 21:33:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387692AbgJBTdL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 15:33:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbgJBTdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 15:33:07 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BE95C0613D0;
        Fri,  2 Oct 2020 12:33:07 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x23so2699821wmi.3;
        Fri, 02 Oct 2020 12:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=nAxL9R+Vqh/LTob9gFOSFkzE+bMZrWtHVGdZ15h0I9w5P7H/J1QRMn1nBu/+6Ld1TM
         DUDcBMVLjuenyNUu/OKupofNOkqsXsgzCnr+jiN/R5cHBpFRfAQQhZsMtcoM8uTD+GCA
         AY1NgE9Qy0FUommdUkyOXf1QF1n8JoP2plNdwvIz3qPr2Z6+lyRYmGrlv6MqYvkJWV/3
         3ZC3sT5mvGoWfh66hNFGbUriWv2DVTmF/wbQQtSK2QrEjZGO7kxZRfa+/skEMq8g1vEM
         fQ7YU/8l2iKNyiFDymTgQcZVMrrhD8ELT0S/pwKrSCm/po88bw90OE4Eo8AT/rVdPaPl
         ub9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=pMQMvE6McC9ghm301291IBFv/g3c5kvwDkzgcqb/JKRFZcrLD+HV6qGdB9hTWMqmLA
         qQKybqP2eAQIhxTmBs7jLt7pKLwOFzMIfmvANe7jqMk585yqDM4dGdnlWV3zJiTvrlQj
         xU/PBeUR3mAiJ1c1uyXKMpRQRXTElnhe473dhd31BJzIaMsqveDIxLrdMGA+dZCc0ArB
         CeOeVVvpms6X5t+8ZLBCNTFUiI8qWuRSJAF6nJEW4h4+JJqq1tagsFm1mCVn8igbWTYo
         b+QFoQ2lzrR4mTInMFqwbr4KKnN00wJj7TMiC+w+XpcFo/gWYOGPpFRrfhMsmCmM0UNE
         SQ1g==
X-Gm-Message-State: AOAM531qMq2G0EaOiufJgLHfI10HYQbbcXOdnb+CCC8Ve/jJzsDgF32E
        lRC0Mg2YsFUYBCdWkQB48AA=
X-Google-Smtp-Source: ABdhPJy3uJp+1vLcX4PSAx3DRm7PZId8sunWw59/LNPdfcTz84VTBEmGt89V9VAOOEtAQ5r/iPgm7A==
X-Received: by 2002:a05:600c:2183:: with SMTP id e3mr4714335wme.49.1601667186144;
        Fri, 02 Oct 2020 12:33:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id e19sm3384230wme.2.2020.10.02.12.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 12:33:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, eggert@cs.ucla.edu,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: [PATCH v5 2/2] void.3: New link to system_data_types(7)
Date:   Fri,  2 Oct 2020 21:28:16 +0200
Message-Id: <20201002192814.14113-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
References: <20201002151419.32053-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/void.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/void.3

diff --git a/man3/void.3 b/man3/void.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/void.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

