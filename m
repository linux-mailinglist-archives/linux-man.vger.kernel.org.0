Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3225D27BF55
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 10:26:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725710AbgI2I0j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 04:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725550AbgI2I0j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 04:26:39 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF62C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 01:26:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id s12so4285764wrw.11
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 01:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A1I8s2ldZQv2KwzI4RyxhubywS78YAmMBqJ1PsqvNHI=;
        b=CTjWiPufF1J2ItmtK1vOqyjDIgjWj2gzUcr3ChKYuZ5HLnj31MBcFciAOOuaP6LNcr
         PuBpD5Kxg9s5MiNdNMG83NnsC4D6foTT6bh+Tm5OedTbDiF/D38tzQ8VQr0VPi57a03+
         U9yeDlc8ZhfGyB3hvSdCc/NWIfQuo47NwNa4fAPE9tL6fym6Wkm3g/5GTifyxvBzsz25
         bySAUIWjjojN6PAicGujAzr0etpbADYSIayYplmJjxSzB0pyceMrzuyujH2gvCLBUVT9
         AaWCr5KZVxR+/impH8+bXgHR0lclZR6ypbYzA+UDY6OemqRtxNdjsEZwhFsEAS/mkBNX
         9AyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A1I8s2ldZQv2KwzI4RyxhubywS78YAmMBqJ1PsqvNHI=;
        b=iJ73NjNIOEbhfa8e6jgwMF9ll1f2Ld6wZ497FmVwUcRG4XV9+rt2Ol7/Ham2BQzpSG
         TT9WNTZ/12VvpvW6RHwa1Pc/e7c60pFJCI5ZXrlEOOchy0tV919r5eR1IA1xLod/ano8
         dT9X+hZrAZHbdO0CjeWDvDYLmvWCeYY26g2UWOXtf4Xc7i+Cw+dJBa7p3Qys+MA0c8xH
         kZ+x1b9g+ZhHENN42oAIOdmAFJD7i9m6nzRtBAPoMa1PQlC9Dz0kOgk2JRalzNHpPPUU
         04TBvKzwtm55+GEYygQx/fEMH3K1xTPFXPAei/MMr/P1zj4TETWmwtGrIO9MO1c67vLG
         oDyg==
X-Gm-Message-State: AOAM533T3l+/+2MLVjuHN2UImhWBwVyDn8CP8X3W/f/pJGJRjFdfw/PK
        Jg2uSwC62boH561gwpRDMWyFe4mguwMLIg==
X-Google-Smtp-Source: ABdhPJyxEDKa2wCoaNcgDYpXXG2OLQ4aBbRDQD4ljMNXDr5PxXCLJ26jKAs/Qn7bFkiPXgLWHkl0+w==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr2840278wrr.402.1601367996022;
        Tue, 29 Sep 2020 01:26:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n3sm4485482wmn.28.2020.09.29.01.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:26:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
Subject: [PATCH 0/8] Add some <stdint.h> types
Date:   Tue, 29 Sep 2020 10:25:17 +0200
Message-Id: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I started with <stdint.h> types.
I joined them by groups:
intN_t instead of having an entry for each int8_t, int16_t, ...
I think that way I could better explain the types, common things,
differences, and exceptions.

I'll wait until you review them to write about the remaining <stdint.h>
types: [u]int_leastN_t, [u]int_fastN_t, and [u]intptr_t.

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

