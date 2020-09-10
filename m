Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC03265250
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726539AbgIJVOi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:14:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727983AbgIJVOL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E13BC061573;
        Thu, 10 Sep 2020 14:14:11 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id x23so1958419wmi.3;
        Thu, 10 Sep 2020 14:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WqVFnPfTwsj1jLeHudFFuoBaGTTTD941hpLKIhgow7s=;
        b=TNG6xvXzzgV03lxWBSRMSH11XEG2IF/ORiqq8w/jskduign1QrwnNNB/RCWpjmKrFc
         Mz9JyP83EtiYnIze3H7ohpXN5hA8KuaBzZhUpLmOqWr8+CRkgz1XUlKrtHc5YzHXRuHW
         bP2+0q+jDDXz45xmPfHlgw2MHp+6Keb4dY5EwIYigIC8kSlVi5Lv2VE4BA0Dvd1LnnrX
         KVwRC8LY59dzmZj80UGAXnR97pR9QQHo7s72SjALoGq7/x63dBoKB3crzroLh0LIXOOk
         YgkyzcV2e5zNU3H6728bMDSE0QGZ7m7tOCfWh9L67LkUT0FqDuTehsd66kiOlKeL+Juo
         R7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WqVFnPfTwsj1jLeHudFFuoBaGTTTD941hpLKIhgow7s=;
        b=G00iOLg/cII5PBCPeni6gWSiey9omagmv+vBXN+4X79rFcTQgZox6s7z78OKmb5YJD
         Xhj/c7dh65mULtNP1FL0W6BozNZPsicDrZtBRRvbUdukLKkUoRtIdzdiJVF111cy9ODO
         KLHcpdY3p5pqNntHdISUrzdwJ/L+ArwHk8nyQJ52LNW9UvyXr9ScWzEB8X8Vw7iUfaKS
         ImuasvvMIZfrFSWy1v21VJe/8VnIrf+OgxANcPe6CQvBz5ZOu3yZLFzOVmJM50V48JZn
         mc9VKKvS0v/ABhFFH4OUGG7E7x8PkQ5t8HWxfv5BuMAj6yeMPIDjBHKHg8vM4h2ZNyog
         CNlA==
X-Gm-Message-State: AOAM531UWlCTvETVSve4YvW5J+MMRSLYqdrFKpO1cTK1FT457PCu5LtV
        h0N5QjiBwlPfz0HJAMjg1gE=
X-Google-Smtp-Source: ABdhPJyGSx2MlHKKpb7s7+ajsgoMrbVKUNyIzBs2DyQjUmDKFhv1dp2kiGZqaoq8Fl8zFqk/nmUHug==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr1953824wmd.104.1599772450097;
        Thu, 10 Sep 2020 14:14:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:09 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 00/24] Many patches
Date:   Thu, 10 Sep 2020 23:13:21 +0200
Message-Id: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I have a lot of patches here.
Some of them are trivial, and some of them are not.
I have them sorted by their contents more or less, but if you
prefer completely unrelated email threads for completely unrelated
patches, please tell me.

Cheers,

Alex


Alejandro Colomar (24):
	* printf():
  inet_net_pton.3: Use 'PRIx32' rather than "%x" when printing
    'uint32_t' values
  endian.3: Use 'PRIx32' rather than "%x" when printing 'uint32_t'
    values
  timerfd_create.2: Use 'PRIxN' macros when printing C99 fixed-width
    integer types
  eventfd.2: Use 'PRIxN' macros when printing C99 fixed-width integer
    types
  offsetof.3: Use "%zu" rather than "%zd" when printing 'size_t' values
  timer_create.2: Cast to 'unsigned long' rathen than 'long' when
    printing with "%lx"
  request_key.2: Cast to 'unsigned long' rather than 'long' when
    printing with "%lx"
  add_key.2: Cast to 'unsigned long' rather than 'long' when printing
    with "%lx"
	* casts:
  clock_getcpuclockid.3: Remove unneeded cast
  ioctl_ns.2: Remove unneeded cast
  stat.2: Remove unneeded cast
	* sizeof():
  getgrent_r.3: Use sizeof() to get buffer size (instead of hardcoding
    macro name)
  getpwent_r.3: Use sizeof() to get buffer size (instead of hardcoding
    macro name)
  fread.3: Move ARRAY_SIZE logic into macro
  unix.7: Use sizeof() to get buffer size (instead of hardcoding macro
    name)
	* types:
  getpwent_r.3: Declare variables with different types in different
    lines
  get_phys_pages.3: Write 'long' instead of 'long int'
  core.5: Use adequate type
	* trivial patches
  pthread_setname_np.3: ffix
  loop.4: ffix
	* other:
  aio.7: Use perror() directly
  membarrier.2: Note that glibc does not provide a wrapper
  select_tut.2: Use MAX(a, b) from <sys/param.h>
  bpf.2: Add missing headers

 man2/add_key.2             |  2 +-
 man2/bpf.2                 | 12 ++++++++++++
 man2/eventfd.2             |  4 ++--
 man2/ioctl_ns.2            | 10 ++++------
 man2/membarrier.2          |  9 +++++++++
 man2/request_key.2         |  2 +-
 man2/select_tut.2          | 10 ++++------
 man2/stat.2                |  4 ++--
 man2/timer_create.2        |  4 ++--
 man2/timerfd_create.2      |  5 ++---
 man3/clock_getcpuclockid.3 |  2 +-
 man3/endian.3              |  7 ++++---
 man3/fread.3               |  6 +++---
 man3/get_phys_pages.3      |  4 ++--
 man3/getgrent_r.3          |  2 +-
 man3/getpwent_r.3          |  5 +++--
 man3/inet_net_pton.3       |  3 ++-
 man3/offsetof.3            |  4 ++--
 man3/pthread_setname_np.3  |  5 +++--
 man4/loop.4                |  2 +-
 man5/core.5                |  5 ++---
 man7/aio.7                 |  6 ++----
 man7/unix.7                | 14 +++++++-------
 23 files changed, 72 insertions(+), 55 deletions(-)

-- 
2.28.0

