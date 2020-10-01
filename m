Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EA3B27FD0D
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731548AbgJAKQa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgJAKQa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:30 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD1FC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:30 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d4so2297651wmd.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uoB2FuCKSAsI6kIXOPfmwCNt6BZv8rUUkPrUn9rLEWU=;
        b=e1KSbEtHHwyr4XCMsXK4Pd8d27kEaZuiDXs0HTPW1H5HXnP0mu6cEVIJcw43g4IFNm
         BlNIFy4O+RO7FNrA0z19P/QNPjC/hdygNZYr2ZKnz8VlREQbgx2HHMF7eoDrr3ECauv1
         fOzoyHEfxRyOp9x5GYNyABrzeZGUd4+NDcuDWu1jXGUp+RIgx4l7N/fx8yGtr+bHJxBj
         lOrIBnrpAyK2zlxqDbsXNrBXipGb9ITLtdLmqXEmtRbvVt/nrtUl7+1Q2YZ/xQEsCiTo
         AXi9mGIO1NeDTD2BVaFigeZLMBm56RTk/zFNiiYPFnp8Yg3cbKwvivIbE9a/o9aSKsjV
         mpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uoB2FuCKSAsI6kIXOPfmwCNt6BZv8rUUkPrUn9rLEWU=;
        b=fWmYXIzJFGQHKtFk5phXmIQRT/5lsfVNwWEulV80uyazaIGgZX/vLniBol5Tw2Hhrt
         uVhjw/ZxDcp+di563dxHXj1XoAL4dR6EXpgdII7XlsdGqKIbyMxn6MX6YEV7Aof0aUXy
         bFxNB0O5ESLm4a5yDW4WkyOyAADC7ggY3dhx2ntflUuQetNoLHcO+6pMX6J/TpQtfFSc
         AXOPRb8JzHjnpjuiolTBq7REatBA7RPJVVi8z/vQ1mdVM4TR2LmUERRTpbiou5lMU19h
         nkQZEMo1a1xlsmN+suYiPftlrRDLA5oVEWrNwAUFCVmQ+y594XWpBFz6kzDTG+n0/mmT
         3KsA==
X-Gm-Message-State: AOAM5302Vkw5wt+65tpJX2XS/RAO679VQ0V9nNNZsxjeBlHx28B6JU/I
        LD77wiGSFQVAP0NwTxewyzs=
X-Google-Smtp-Source: ABdhPJwrLlkMbUrUr7pWU9fr54ldFC4OrnbmY9WLOQUz0WXXNYYLz7+lWyepSv70iU2xnjdZBHMyRQ==
X-Received: by 2002:a05:600c:24d:: with SMTP id 13mr7822149wmj.86.1601547388840;
        Thu, 01 Oct 2020 03:16:28 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:28 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 00/16] Fixes; Document remaining stdint.h types
Date:   Thu,  1 Oct 2020 12:15:44 +0200
Message-Id: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here are a few fixes (including one removing .br),
and then the remaining stdint types.

Cheers,

Alex

Alejandro Colomar (16):
  malloc_get_state.3: ffix
  system_data_types.7: srcfix
  system_data_types.7: srcfix
  system_data_types.7: srcfix
  system_data_types.7: Add int_fastN_t family of types
  int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3,
    int_fastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add uint_fastN_t family of types
  uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3,
    uint_fastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add int_leastN_t family of types
  int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3,
    int_leastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add uint_leastN_t family of types
  uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3,
    uint_leastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add 'intptr_t'
  intptr_t.3: New link to system_data_types(7)
  system_data_types.7: Add 'uintptr_t'
  uintptr_t.3: New link to system_data_types(7)

 man3/int_fast16_t.3      |   1 +
 man3/int_fast32_t.3      |   1 +
 man3/int_fast64_t.3      |   1 +
 man3/int_fast8_t.3       |   1 +
 man3/int_fastN_t.3       |   1 +
 man3/int_least16_t.3     |   1 +
 man3/int_least32_t.3     |   1 +
 man3/int_least64_t.3     |   1 +
 man3/int_least8_t.3      |   1 +
 man3/int_leastN_t.3      |   1 +
 man3/intptr_t.3          |   1 +
 man3/malloc_get_state.3  |   2 +-
 man3/uint_fast16_t.3     |   1 +
 man3/uint_fast32_t.3     |   1 +
 man3/uint_fast64_t.3     |   1 +
 man3/uint_fast8_t.3      |   1 +
 man3/uint_fastN_t.3      |   1 +
 man3/uint_least16_t.3    |   1 +
 man3/uint_least32_t.3    |   1 +
 man3/uint_least64_t.3    |   1 +
 man3/uint_least8_t.3     |   1 +
 man3/uint_leastN_t.3     |   1 +
 man3/uintptr_t.3         |   1 +
 man7/system_data_types.7 | 590 ++++++++++++++++++++++++++++++++++-----
 24 files changed, 540 insertions(+), 74 deletions(-)
 create mode 100644 man3/int_fast16_t.3
 create mode 100644 man3/int_fast32_t.3
 create mode 100644 man3/int_fast64_t.3
 create mode 100644 man3/int_fast8_t.3
 create mode 100644 man3/int_fastN_t.3
 create mode 100644 man3/int_least16_t.3
 create mode 100644 man3/int_least32_t.3
 create mode 100644 man3/int_least64_t.3
 create mode 100644 man3/int_least8_t.3
 create mode 100644 man3/int_leastN_t.3
 create mode 100644 man3/intptr_t.3
 create mode 100644 man3/uint_fast16_t.3
 create mode 100644 man3/uint_fast32_t.3
 create mode 100644 man3/uint_fast64_t.3
 create mode 100644 man3/uint_fast8_t.3
 create mode 100644 man3/uint_fastN_t.3
 create mode 100644 man3/uint_least16_t.3
 create mode 100644 man3/uint_least32_t.3
 create mode 100644 man3/uint_least64_t.3
 create mode 100644 man3/uint_least8_t.3
 create mode 100644 man3/uint_leastN_t.3
 create mode 100644 man3/uintptr_t.3

-- 
2.28.0

