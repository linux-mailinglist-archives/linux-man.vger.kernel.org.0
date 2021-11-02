Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1831F44353C
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230392AbhKBSRe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbhKBSRe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:34 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA5B8C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:14:58 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id d24so4077730wra.0
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mRj5HrTrr2dp9IEvSGbBm5U2L19OhVEjuyLi+FoEO/k=;
        b=C4sBwD7p6TT8FcWXvwhvLFLwUs42yR15QydXu9HgJ2HsObS7EeLkdslzQ6XsLWqjV5
         MfEwadaNmHAmobPnzzNGW+TtT8OYARG2GptuI3NgXDY8xoF2Tq2DEK2ULP9G5LvvoBV1
         Euwjt1FQxTdoikeSMlRWqp8UjXk/T00eHPFQUIUEn+WkfvXud59apj1TRf9nhroTd7fp
         WKds6gceQO3PjxjhorFsWhDZeXeMJzR26pMkOmDxEb7dC5Tp+TJnciFBeL5qQMp9/R/+
         FvNuaNuALmHM3RjOfEiuAClhDx30Hfccf6/k+oDm0994cO3xzvlaySFg+0kwRGpSpcuJ
         +yqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mRj5HrTrr2dp9IEvSGbBm5U2L19OhVEjuyLi+FoEO/k=;
        b=mzQxThGxAN2YBbPNXmELGbQ44lb63vH/4S7sxBoDpULk8lD5p1htE/LoYgvle9Pkr4
         ZfpmYIGvBs5WbQOBJcw3YRwycxkvSGJhrJF9WScEFHGNrxmr3PgmTEZQpQETnbPsEbk1
         DwosUzgq0WuBoQ4lJS6Gyzs3JpZmbhz3MX6vXMt5Yu69GdKgo3KhxMLvgrIFKdBmn5wA
         14CI3l5Wisue2ed0J21ZHPK7AKm18b0V/jYSLlNWoCWKUgaM5dWYnZTrnUKMm3+ntPxI
         zP8kteaFOGuUHTzpAeDoFpEXQdoi0mouR8lLJ/KcEMKErAkUZcNMQjG+3YeyTU4NZBHw
         EGUA==
X-Gm-Message-State: AOAM533gVFdPhSfxwzTKrQBVeHTEseVUyCDOCuIpR7aoNKAZ5VAEztRx
        hx/3TxyY6Rnf0WqdiPUPK1Edm/KB7hU=
X-Google-Smtp-Source: ABdhPJx61TGm5p/CjaRURP22Q5Ub519gMRNdkCkMQ3ZmPU5lTsFOJkRWsNYiGC4rddEhlPC3oNJGaQ==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr23042056wrm.79.1635876897577;
        Tue, 02 Nov 2021 11:14:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:14:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 00/37] Various patches to system_data_types(7)
Date:   Tue,  2 Nov 2021 19:14:17 +0100
Message-Id: <20211102181454.280919-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Branden,

This RFC is mostly directed to you.

The changes are:

- Add a few types:
	- struct stat
	- useconds_t
- Slightly related changes:
	- Remove a note in usleep(3)
- Use -struct suffix for struct pages (and -union likewise)
- Move some types to separate pages (of course the intention is to do it with
  all of them, but that's slow).
	The page already got too big, so I'm breaking it into smaller chunks.
- Add related macros to some pages (_WIDTH, _MAX, _MIN, _C(), ...).

If you have some time, could you please have a look at it?
I don't intend to take a lot of time from you, which this might,
just some general opinion, and possibly if you differ with me in things like
using \f, I'd like to know.

Thanks,

Alex


---


Alejandro Colomar (37):
  stat.2, system_data_types.7: Document 'struct stat' in
    system_data_types(7)
  stat-struct.3: New link to system_data_types(7)
  aiocb-struct.3, lconv-struct.3, sigevent-struct.3, sigval-union.3,
    sockaddr-struct.3, timespec-struct.3, timeval-struct.3: Rename some
    links to system_data_types.7 to add -{struct,union} suffix
  system_data_types.7: Link to the stat structure definition
  system_data_types.7: ssize_t: Note that some headers only provide the
    type since POSIX.1-2008
  system_data_types.7: Document useconds_t
  useconds_t.3: New link to system_data_types(7)
  usleep.3: Remove incorrect portability note
  aiocb-struct.3, system_data_types.7: Move text to a separate page
  blkcnt_t.3, system_data_types.7: Move text to a separate page
  blksize_t.3, system_data_types.7: Move text to a separate page
  cc_t.3, system_data_types.7: Move text to a separate page
  clock_t.3, system_data_types.7: Move text to a separate page
  clockid_t.3, system_data_types.7: Move text to a separate page
  dev_t.3, system_data_types.7: Move text to a separate page
  div_t.3, system_data_types.7: Move text to a separate page
  double_t.3, system_data_types.7: Move text to a separate page
  double_t.3, float_t.3, system_data_types.7: Move float_t to double_t.3
  select.2, system_data_types.7: Move fd_set to select.2
  fenv_t.3, system_data_types.7: Move text to a separate page
  fenv_t.3, system_data_types.7: Move fexcept_t to fenv_t.3
  FILE.3, system_data_types.7: Move text to a separate page
  id_t.3, system_data_types.7: Move text to a separate page
  gid_t.3, id_t.3, system_data_types.7: Move gid_t to id_t.3
  id_t.3, pid_t.3, system_data_types.7: Move pid_t to id_t.3
  id_t.3, uid_t.3, system_data_types.7: Move uid_t to id_t.3
  div_t.3, imaxdiv_t.3, system_data_types.7: Move imaxdiv_t to div_t.3
  intmax_t.3, system_data_types.7: Move text to a separate page
  intmax_t.3, uintmax_t.3, system_data_types.7: Move uintmax_t to
    intmax_t.3
  intmax_t.3: Document the [U]INTMAX_* macros
  intN_t.3, system_data_types.7: Move text to a separate page
  intN_t.3, uint16_t.3, uint32_t.3, uint64_t.3, uint8_t.3, uintN_t.3,
    system_data_types.7: Move uintN_t to intN_t.3
  intN_t.3: Document the [U]INTN_* macros
  lconv-struct.3, system_data_types.7: Move text to a separate page
  div_t.3, ldiv_t.3, system_data_types.7: Move ldiv_t to div_t.3
  div_t.3, lldiv_t.3, system_data_types.7: Move lldiv_t to div_t.3
  mode_t.3, system_data_types.7: Move text to a separate page

 man2/select.2                          |   20 +-
 man2/stat.2                            |  143 +---
 man3/FILE.3                            |   26 +-
 man3/aiocb-struct.3                    |   31 +
 man3/blkcnt_t.3                        |   21 +-
 man3/blksize_t.3                       |   21 +-
 man3/cc_t.3                            |   18 +-
 man3/clock_t.3                         |   27 +-
 man3/clockid_t.3                       |   25 +-
 man3/dev_t.3                           |   24 +-
 man3/div_t.3                           |   47 +-
 man3/double_t.3                        |   45 +-
 man3/fenv_t.3                          |   25 +-
 man3/fexcept_t.3                       |    2 +-
 man3/float_t.3                         |    2 +-
 man3/gid_t.3                           |    2 +-
 man3/id_t.3                            |  108 ++-
 man3/imaxdiv_t.3                       |    2 +-
 man3/int16_t.3                         |    2 +-
 man3/int32_t.3                         |    2 +-
 man3/int64_t.3                         |    2 +-
 man3/int8_t.3                          |    2 +-
 man3/intN_t.3                          |  160 +++-
 man3/intmax_t.3                        |   88 +-
 man3/lconv-struct.3                    |   45 +
 man3/ldiv_t.3                          |    2 +-
 man3/lldiv_t.3                         |    2 +-
 man3/mode_t.3                          |   32 +-
 man3/pid_t.3                           |    2 +-
 man3/{aiocb.3 => sigevent-struct.3}    |    0
 man3/{lconv.3 => sigval-union.3}       |    0
 man3/{sigval.3 => sockaddr-struct.3}   |    0
 man3/{sockaddr.3 => stat-struct.3}     |    0
 man3/{timespec.3 => timespec-struct.3} |    0
 man3/{timeval.3 => timeval-struct.3}   |    0
 man3/uid_t.3                           |    2 +-
 man3/uint16_t.3                        |    2 +-
 man3/uint32_t.3                        |    2 +-
 man3/uint64_t.3                        |    2 +-
 man3/uint8_t.3                         |    2 +-
 man3/uintN_t.3                         |    2 +-
 man3/uintmax_t.3                       |    2 +-
 man3/useconds_t.3                      |    1 +
 man3/usleep.3                          |   19 +-
 man7/system_data_types.7               | 1076 ++++--------------------
 45 files changed, 956 insertions(+), 1082 deletions(-)
 create mode 100644 man3/aiocb-struct.3
 create mode 100644 man3/lconv-struct.3
 rename man3/{aiocb.3 => sigevent-struct.3} (100%)
 rename man3/{lconv.3 => sigval-union.3} (100%)
 rename man3/{sigval.3 => sockaddr-struct.3} (100%)
 rename man3/{sockaddr.3 => stat-struct.3} (100%)
 rename man3/{timespec.3 => timespec-struct.3} (100%)
 rename man3/{timeval.3 => timeval-struct.3} (100%)
 create mode 100644 man3/useconds_t.3

-- 
2.33.1

