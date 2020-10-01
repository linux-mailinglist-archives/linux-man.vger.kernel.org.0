Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC31A280332
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:50:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732704AbgJAPuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732450AbgJAPuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:50:07 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43917C0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:50:07 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id e11so2538272wme.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=FgWlVfc8VuzD3+QzLF6wwrBvaHlqAq6SxzJKixigitB+i7YbX3+fISzZMkfNvx6uc+
         f/Ae7D2CWJftHAqobQn9ejS9guSn0xBq+rbqswe/eVhQ9M9SLWswUZi1qXhHkVFQ92Hv
         pIA+b/ju9LMuN9yCMGOg1LN+iu5K5Tlg0MiRmsAy1twkJGnaQi1QO+4eMx0OsbyR+58i
         B6Zm2A8j/K9cFKJlSeIL2ChbCQHECh945viTbGO9evSqGxJfQweIRKx4nZlJF3Piysro
         U9BBnAZ2TllFN9K+TXKGYNaBv1M6x5hYpvlGaafvlRGhwtDXZDBNQrqXIJoGS8hkh7Jw
         ZCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=QTp3W5fiYJsU280hofwIOXdc9Mfs/oqCmzeIxTaqaW/Pefu/he4fnEwyTlKydokfCv
         37DRURed+/w3sMTIcb4S2qwdn9AGnct6V8LCaV9emoanAuABus+B3WiIQrMwUAlYo3Lb
         RXurdf/E46/2re1z0Ughq3e6nBXaGfGSwC8JM89m01gNXKsF7iCOf0P/94hPZ4IdmY0Y
         itY9D6zqWYfWmVa7HofQKQv16S7pPkcrGTCRecq7cQWVLTvnijmaAznCfplDLV0m91pD
         BUlXnS1mJt5lkOPIRirNVTxN8jyE4WsPixy/YIX3dgmCJ3a0RZvcbk7l24XV3x/Ort4U
         dWeA==
X-Gm-Message-State: AOAM531Ccb9Uo1AA9eC72g5KgdxwAVXZcYCHD12fOf+rMIe4/2yLVX4N
        z/frM3ySU5XGYIU+F7G6UrQ=
X-Google-Smtp-Source: ABdhPJyWyJYhIp1DvIAomPfrITEn0hr/h2w65gHSelb0U4jzbfeok26n5NLBm+nGVQSoKxKHtdA9+A==
X-Received: by 2002:a7b:c2a9:: with SMTP id c9mr644648wmk.87.1601567406020;
        Thu, 01 Oct 2020 08:50:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t4sm10019933wrr.26.2020.10.01.08.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 08:50:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 2/2] void.3: New link to system_data_types(7)
Date:   Thu,  1 Oct 2020 17:49:47 +0200
Message-Id: <20201001154946.104626-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
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

