Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A569B28015E
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732020AbgJAOfy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:35:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgJAOfy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:35:54 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F45C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:35:54 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id t17so3361742wmi.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z70wUYtajlpXo3Z1GFNhCXhRiVqz/Vs1KvBWrV7UEfQ=;
        b=LVxHiJaO+riXj/N34YZVMA2xNJAAu5cErAGLD71b1oL9GJUfstbwN8JsnAqPy7JtTa
         x9d/dpYbAjkUPYMQo7bK99+zaqoyWJS/s0ck25WqbNrpNX33s0RE8lQD02FB/o/PGPiY
         wT2m9AaWVKtZDHray/p0mAe3lyXQaAd7qUOVh0UdF8TPkcGt8ccdi5NvgSaKEGorND75
         kNCUXQ3/sciHvlg07W0kE8cdrnX6LtvOVYsMQpwOJtx8FmXKMHyP2zWQy1Qo9CaofMFt
         Ok+aEUyCGm5T92xpUuHqk2QzJ6WqMxZLMSeO7itzqsn69PA/oMvsVjmp/kN5+oif2054
         H+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z70wUYtajlpXo3Z1GFNhCXhRiVqz/Vs1KvBWrV7UEfQ=;
        b=E+EuQJrN6gWTHTdjBZFCYAGxEatkO8WVJt68DqmIhQE6yG3cLiaAihO8t2Kzcm89zj
         1lpMq1DzuLKWbEcFQ3u4F0VEUgRVHE3xDuKX7DFT3c9yo8z2p02179hFxOG/htImnVpU
         YFRIX7Ho47sfVaIjzhCsdVWpGbiSBWO261d4SWr/Gax+OSbYpewvBDtauzArLZ8ZaLKS
         g2YmRHABwxgMCjhYnAne7dELmrmfonDBfymJigG6038RaFTLBuJz/bVEZdnU6bacTfF3
         B8F1wo7B04QETOm7etdIANNO6vfDANIo6wVRQ5P7LtMSsqzHX0s8Pexr1Z82xvxr/WPb
         g9fw==
X-Gm-Message-State: AOAM532lfmPfNwpMDDbivzur4OeE19yQTHdYEjNeHkwn9uYNTV5n8KO0
        hU9RmMUG05M29V5WoVDRVMY=
X-Google-Smtp-Source: ABdhPJw/dRGyJygd1eVLbiL634II4N++X2TU0NsEGpsX0dnJSXhcytA5hAxwrfFSDfrR8JwYcj4EMQ==
X-Received: by 2002:a05:600c:2103:: with SMTP id u3mr317005wml.132.1601562952798;
        Thu, 01 Oct 2020 07:35:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm209976wmg.34.2020.10.01.07.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:35:52 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 0/4] Document [u]int_leastN_t
Date:   Thu,  1 Oct 2020 16:35:32 +0200
Message-Id: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patches are the v2 of the patches 9 to 12 of a previous patchset:
https://lore.kernel.org/linux-man/886f5647-2911-951a-b62a-4f9b1ed8850f@gmail.com/T/#t

Alejandro Colomar (4):
  system_data_types.7: Add int_leastN_t family of types
  int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3,
    int_leastN_t.3: New links to system_data_types(7)
  system_data_types.7: Add uint_leastN_t family of types
  uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3,
    uint_leastN_t.3: New links to system_data_types(7)

 man3/int_least16_t.3     |   1 +
 man3/int_least32_t.3     |   1 +
 man3/int_least64_t.3     |   1 +
 man3/int_least8_t.3      |   1 +
 man3/int_leastN_t.3      |   1 +
 man3/uint_least16_t.3    |   1 +
 man3/uint_least32_t.3    |   1 +
 man3/uint_least64_t.3    |   1 +
 man3/uint_least8_t.3     |   1 +
 man3/uint_leastN_t.3     |   1 +
 man7/system_data_types.7 | 147 +++++++++++++++++++++++++++++++++++++++
 11 files changed, 157 insertions(+)
 create mode 100644 man3/int_least16_t.3
 create mode 100644 man3/int_least32_t.3
 create mode 100644 man3/int_least64_t.3
 create mode 100644 man3/int_least8_t.3
 create mode 100644 man3/int_leastN_t.3
 create mode 100644 man3/uint_least16_t.3
 create mode 100644 man3/uint_least32_t.3
 create mode 100644 man3/uint_least64_t.3
 create mode 100644 man3/uint_least8_t.3
 create mode 100644 man3/uint_leastN_t.3

-- 
2.28.0

