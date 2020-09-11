Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBBC7267669
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725882AbgIKXOj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725856AbgIKXOf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:35 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EA9C061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:33 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id x14so12904779wrl.12
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LGzpshH2C0tR68WGpyM7syR5xKU0GDtHbYn/6vxR7kY=;
        b=mptIaKRESGoWEWWj1hCz4PJvCwe2hpinZ2KnhwJpqFMpBK9CrU2jM/IwgtzAjI9cdH
         0sc1iWmO15PvqgndBP0tFrUWMwTqahcgoPDTNdnTQ2Tqo0bCf0InFRzGBTckgAC4sJlb
         VldErQ2I3J6QIzkk1+0MOWSyzvOMu1Rmsu95YTYMoah1WK7JC+bChgCVOXk5SgLXzDhR
         3XRgdmnnm/zWjEynSuqgE0D3uj3NVyKqJBjgJhdMTGy/ggUBuFFUw7CsuUrFfPyqjrvV
         klDLGosFrw0UUgfKIqVli1R7x66OmI00o1iPa0sAAQQrJVcw+nkZauegqPCaNpgafOOf
         9H/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LGzpshH2C0tR68WGpyM7syR5xKU0GDtHbYn/6vxR7kY=;
        b=LOI5LbGgAKRBd2lArp5XY3OeObDPJflrt3VeM0/FMdsGjIkZZ2uj+lK8O13x/gTbnw
         9W1rbsyTgkEJCTqURbRrU0pEk877H/CpkMm7uk6myWBeS+AO2l6ua1ZA4uXA3DuV1g6z
         +aTIX2Q4ksU8Ld93GtC60ZX/nMUoExJ2otfOUME9z18U3cQMOknprh4cp3rdzRFfbVZW
         0kP3NA1e2im0yHtTEyAIonlj6E62SU5WOROpJaBCggfs6f2ijTSfOSASb7MhosyKQpcC
         0Wd6GdbZAvChkIhUaXT+6igGf58SBkuUxtyn5WeaEKQHjjeXttkEDBYcrJJENV5k6W62
         hGLQ==
X-Gm-Message-State: AOAM5327W0A5ySFUygL45hoE/Pjgg7tnZvZZkU9iqcjbBCLRDOxytDwU
        Eu/X04ShX773pVtoNuUsi4U=
X-Google-Smtp-Source: ABdhPJz7wIRvR7lUwgQh2aETFtsWiyCqsR9tvwwMzFFS9vL3NT1kP1IoFbX3ctVeRBiDhj91kftGiA==
X-Received: by 2002:a5d:4e0b:: with SMTP id p11mr4110623wrt.32.1599866071760;
        Fri, 11 Sep 2020 16:14:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 00/12] printf() fixes
Date:   Sat, 12 Sep 2020 01:14:00 +0200
Message-Id: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Here are some patches related to printf().

Cheers,

Alex

Alejandro Colomar (12):
  dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t' for printf()
  malloc_hook.3: Remove unneeded cast, and print 'size_t' with "%zu"
  pthread_getcpuclockid.3: Cast 'time_t' to 'intmax_t' for printf()
  getgrent_r.3: Cast 'gid_t' to 'intmax_t' for printf()
  getpwent_r.3: Cast 'uid_t' to 'intmax_t' for printf()
  rtld-audit.7: Use "%u" rather than "%d" when printing 'unsigned int'
    values
  userfaultfd.2: Use 'PRIx64' rather than "%llx" when printing 64-bit
    fixed-width types
  clock_getres.2: Cast 'time_t' to 'intmax_t' for printf() and fix the
    length modifiers
  open_by_handle_at.2: Use "%u" rather than "%d" when printing 'unsigned
    int' values
  spu_run.2: Cast 'int' to 'unsigned int' when printing with "%x"
  mprotect.2: Use "%p" rather than casting to 'long' when printing
    adresses (pointer values)
  pidfd_open.2: Cast 'short' to 'unsigned int' when printing with "%x"

 man2/clock_getres.2          | 7 +++++--
 man2/mprotect.2              | 5 ++---
 man2/open_by_handle_at.2     | 2 +-
 man2/pidfd_open.2            | 3 ++-
 man2/spu_run.2               | 2 +-
 man2/userfaultfd.2           | 7 ++++---
 man3/dl_iterate_phdr.3       | 7 ++++---
 man3/getgrent_r.3            | 3 ++-
 man3/getpwent_r.3            | 5 +++--
 man3/malloc_hook.3           | 4 ++--
 man3/pthread_getcpuclockid.3 | 3 ++-
 man7/rtld-audit.7            | 6 +++---
 12 files changed, 31 insertions(+), 23 deletions(-)

-- 
2.28.0

