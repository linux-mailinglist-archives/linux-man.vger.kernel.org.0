Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67FE927C268
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725536AbgI2KbU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2KbU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:20 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11FE1C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:20 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id a9so4252645wmm.2
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E1t3SPrz1tzqgozq3k3EdjQeA/tisCaIpHg3rULbeX4=;
        b=kUrC1ZQx4OHtQEnx5AyxxfHh4GVu9PGHEnJsWHAdKBO3Ni8LnosldjDs3Xd8KAr8Vt
         QWov3bSkbE53Sa845Cu+4cRhUMHCHcKwChJ5n72vfvrOSidp4fpqVdsb33WtJagC/+MY
         amwqWp+SqISkef+2IvMyI24bArCmn1IvM+iIgkdOVGNSDYNU+9/8TL+8YBd5Q6uTq4Ye
         cW8v0Kd7jPlJDGgUweuo2Tgqohrkx0TME8edx9K3KH9N0WpewQwB3iRunGRu/bMMwqNE
         I7kflN04Ipokl47mNhKMQz5s9AK0p5jc2HD7J5mT4MrhIhrYqOrmtoQ7cl5SwYI/dHd8
         KP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E1t3SPrz1tzqgozq3k3EdjQeA/tisCaIpHg3rULbeX4=;
        b=sDlpngxf4vT3kbU50U+6yB/KBgJyvbLu/Tx3T6zym2CZPulr0KSSZowRBXATamDHE6
         vzpaZSV6MZ5LPA6MVqy/gdUAjdmnQLajuSR37i1SktIeRp+sPUh+1JCU605QoQiwxfQo
         s1jkFojP7gXlrbAoIdo1Uc4BSi7saW7ONiI5X9OdzEFdqi7eIdqWis/lEYEMxpJwjlW0
         9TNsySbr1YabcfLR5Dj8mHMUz21QF5OLviXf72Zb3qLu0pLOTOOKea6u8RStuK0mZZjw
         x7I3m0raXkgaEuxln+xfkFPA+MhsOlIer/nocQG8/dfz0wzDxQb6VMJrXjGcMcjQ46c8
         4hAA==
X-Gm-Message-State: AOAM5320qLNLOK8STwQ9cx5wRFKnM6fYlYtcMpU/PDaq4K/aVQrVvddu
        ElMvCnkaPHiB6M/XWLnGTQRJg8LzhCcpLw==
X-Google-Smtp-Source: ABdhPJwbxOnyOy4pawxtBK8mNlT4AiqXrvNhTd5gNiOIltNZQ1sdtkOvL7rgpIMASnlcAg5xiR5YKw==
X-Received: by 2002:a7b:c307:: with SMTP id k7mr3971742wmj.31.1601375477910;
        Tue, 29 Sep 2020 03:31:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 0/8] Add some <stdint.h> types
Date:   Tue, 29 Sep 2020 12:30:22 +0200
Message-Id: <20200929103028.56566-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I made a mistake when sending the emails, and I only CCd linux-man
(and other lists) in PATCH 0/8.  The rest were only sent to you.
Actually, I was playing with the --cc option in git format-patch.

I'm resending all of them as v2.

I fixed a typo in 5/8, while the rest are all identical to v1.

Thanks,

Alex


Alejandro Colomar (8):
  system_data_types.7: Add 'intmax_t'
  intmax_t.3: New link to system_data_types(7)
  system_data_types.7: Add 'uintmax_t'
  uintmax_t.3: New link to system_data_types(7)
  system_data_types.7: Add intN_t family of types
  int8_t.3, int16_t.3, int32_t.3, int64_t.3, intN_t.3: New links to
    system_data_types(7)
  system_data_types.7: Add uintN_t family of types
  uint8_t.3, uint16_t.3, uint32_t.3, uint64_t.3, uintN_t.3: New links to
    system_data_types(7)

 man3/int16_t.3           |   1 +
 man3/int32_t.3           |   1 +
 man3/int64_t.3           |   1 +
 man3/int8_t.3            |   1 +
 man3/intN_t.3            |   1 +
 man3/intmax_t.3          |   1 +
 man3/uint16_t.3          |   1 +
 man3/uint32_t.3          |   1 +
 man3/uint64_t.3          |   1 +
 man3/uint8_t.3           |   1 +
 man3/uintN_t.3           |   1 +
 man3/uintmax_t.3         |   1 +
 man7/system_data_types.7 | 272 +++++++++++++++++++++++++++++++++++++++
 13 files changed, 284 insertions(+)
 create mode 100644 man3/int16_t.3
 create mode 100644 man3/int32_t.3
 create mode 100644 man3/int64_t.3
 create mode 100644 man3/int8_t.3
 create mode 100644 man3/intN_t.3
 create mode 100644 man3/intmax_t.3
 create mode 100644 man3/uint16_t.3
 create mode 100644 man3/uint32_t.3
 create mode 100644 man3/uint64_t.3
 create mode 100644 man3/uint8_t.3
 create mode 100644 man3/uintN_t.3
 create mode 100644 man3/uintmax_t.3

-- 
2.28.0

