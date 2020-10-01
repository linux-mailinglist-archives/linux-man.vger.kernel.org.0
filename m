Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5A52280408
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732046AbgJAQfT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQfT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:35:19 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C510C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:35:19 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id t17so3816590wmi.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=11QD+CRy8gW2VJAXfVXYdIxjO8J7FYtePN0T6bliunI=;
        b=loyIIOZkEN2vPmm0mCft8Bipy6CbWxS+J/ARB17VhQU5DXfsfUukkcW+YH6wFzmwX9
         DMhjrNtRKX7jyHWKX2qQx8jZT/uSNxXOdZ+pqmCAjLFCpWrU4T2no+RL3n/e8OGaU/9W
         Jft2yvI83EFRY0hf/4GjZKVnDq93yO9OyLW041b5qjYoZRCBz69AN+hdriYnCJ/VbzNa
         N3bPO6vvW1LtNIYMxymuk2X6Gnvpv5ND9gIBAi0s536EJgpORuL5UuSgICUTKU1VbDh2
         Ch0zjo/KAZxmaSw8pPaKM9g6kesqLo9vHRtxDVrfGA8TWqCrC40TJOeKlasxe48EoMe/
         vSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=11QD+CRy8gW2VJAXfVXYdIxjO8J7FYtePN0T6bliunI=;
        b=MwzXAzCuvuHo80TDZB3iv0WBgMn5fRKijswFAkaWQMqnShJh/bh4C9bBOnLRvot+sf
         HYsNaDn+F7Ij6vbFQrylxNLQSjM/6IJuI/IQWVfgpa66JDNXnioNXdaAQapwFC+mEAct
         DyW5TfC9eZR8ewvv1KjVk3YWkPTux44v7gmoKpj2z2HZgxyaU43m89Kx5/Oe5lA6UuqC
         qlIxfuleNSVIQYNK96tx25kiATUhKNZ24cgaSFJU/XfCDXD9gCqsu2GF1QQGyzgvX935
         /BJGrqatziNJt+TJWY7f9nW0PO+Qk+lKsgMnmWfC+k3CuJSA0t9kVkIASx8yTsAUMh1y
         YYQQ==
X-Gm-Message-State: AOAM530gZML4ioRlr3IeKrFHwc3PVBpB2pLAOC9iwFitxGUg/ICilVmx
        3jwn8tiyPbhHBAfC8hldMeWIFGzZhpjUSg==
X-Google-Smtp-Source: ABdhPJzKc7AO/sR6c7jkVg28HBmCxytCKiOg93OVmu2DLBswAWpL+rBcsNK37XyKQHtFP3jYFxbt0w==
X-Received: by 2002:a1c:398a:: with SMTP id g132mr840193wma.41.1601570118193;
        Thu, 01 Oct 2020 09:35:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm10660997wrt.53.2020.10.01.09.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 09:35:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, szabolcs.nagy@arm.com,
        jwakely.gcc@gmail.com, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 0/4] Document 128-bit types
Date:   Thu,  1 Oct 2020 18:34:40 +0200
Message-Id: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I think this might be ready for a patch.

I'm done for today :-)


Cheers,

Alex

Alejandro Colomar (4):
  system_data_types.7: Add '__int128'
  __int128.3: New link to system_data_types(7)
  system_data_types.7: Add 'unsigned __int128'
  unsigned-__int128.3: New link to system_data_types(7)

 man3/__int128.3          |  1 +
 man3/unsigned-__int128.3 |  1 +
 man7/system_data_types.7 | 75 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 77 insertions(+)
 create mode 100644 man3/__int128.3
 create mode 100644 man3/unsigned-__int128.3

-- 
2.28.0

