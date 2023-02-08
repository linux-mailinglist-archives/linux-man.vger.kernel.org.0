Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32D5B68F8CB
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:27:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjBHU1s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:27:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjBHU1r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:27:47 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6EB3212B8
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:27:46 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id PnpwpsMYjc9C4Pr2fpcKTl; Wed, 08 Feb 2023 20:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888065; bh=/hRoRY0+FkpZXiGPrOdZmfhFTmTjkrvdtkIRG7c5drc=;
        h=From:To:Cc:Subject:Date;
        b=jztTLK61oMglCSaorQFjHbcaBfo7YgGfkM8JKazttUrr+QEzCZUAeKJ01tUsSBG8p
         5eVUSxaj2+cERp2NSAStPmJzN29hTB2qzEkTRTTj8/+06u24wiO4O6Mk396oP86f/n
         e0UkMDKrRSKJGcKBqUpR7BMNrcKCRwmpci3/EjuaowAzapjMqZdhvol9xa1srY2hjk
         udHmnPum88WglopLP/7Y7jdabvrMT4VzSjgcwFMK04oQINIVSUHflIbL7681qwuJRT
         SZ4ZGAkxCSvQR8u8QoHbjcVtB3J8o8RO4ZlBhCZkMiQRfVwkLSkv8twEuZb1/uoLF+
         vFAYCc/LX3REg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id Pr2fpEAowyAOePr2fpJy1Y; Wed, 08 Feb 2023 20:27:45 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e405c1
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=sRsznFByQTc4HbhFjPYA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 00/11] punctuate long numeric strings with digit separators
Date:   Wed,  8 Feb 2023 13:27:22 -0700
Message-Id: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfLZGofrgUU34UuFRi2+8S7HHjTQ5BK6AH5JW3Ny7plg1Wz/VCI5e6RTt/JkpMsG3mKQF+Cbo4BRVYT9N3eLhVLq2Vzs+OwhcMtlih82HF8reA9iHtD5c
 3qCLtn/bqPZ3GHb3DdlirmlyoOk0vNLZNEDE18Wu61RXK4+d4adUTMYIokAKgfgQ7DUmmeDcGr06RaUPdhE70Vq71FJSOTB2viNdPIQA2XRaP1qWX8E0skNw
 DivOU1QItPEwbTWUzSnNQzd7p8SIXGhJBpClKJ73KOGlRLkWwdOoOS7t+jmUQ9Od
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man2/: use C digit separators with \\[aq] to show "'" or ISO/IEC
suffixes to clarify long binary, octal, hex, decimal numeric strings;
use consistent interval notation for value ranges;
fix minor discrepancies.

[PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
[PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed value
[PATCH 03/11] man2/: use consistent interval notation for value ranges
[PATCH 04/11] man2/open.2: punctuate octal perms with digit separators
[PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
[PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit separators
[PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit separators
[PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges and example docs
[PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
[PATCH 10/11] man2/futex.2: change limit to use ISO suffix
[PATCH 11/11] man2/: punctuate long numeric strings with digit separators

Brian Inglis (11):
  man2/shmget.2: fix limit units suffix from SI to IEC
  man2/spu_run.2: fix example comment status code or-ed value
  man2/: use consistent interval notation for value ranges
  man2/open.2: punctuate octal perms with digit separators
  man2/reboot.2: show BCD dates in hex not decimal
  man2/reboot.2: punctuate hex in docs with digit separators
  man2/statfs.2: punctuate hex in docs with digit separators
  man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges and example docs
  man2/getrandom.2: change limit to use IEC suffix
  man2/futex.2: change limit to use ISO suffix
  man2/: punctuate long numeric strings with digit separators

 man2/add_key.2         |   2 +-
 man2/adjtimex.2        |  12 ++---
 man2/clock_getres.2    |   2 +-
 man2/clock_nanosleep.2 |   2 +-
 man2/eventfd.2         |   6 +--
 man2/execve.2          |   2 +-
 man2/fcntl.2           |   4 +-
 man2/futex.2           |   2 +-
 man2/getitimer.2       |   4 +-
 man2/getrandom.2       |   2 +-
 man2/gettimeofday.2    |   2 +-
 man2/ioctl.2           |   4 +-
 man2/ioctl_console.2   |   2 +-
 man2/ioctl_getfsmap.2  |   4 +-
 man2/ioperm.2          |   2 +-
 man2/kexec_load.2      |   2 +-
 man2/link.2            |   4 +-
 man2/msgget.2          |   2 +-
 man2/nanosleep.2       |   4 +-
 man2/open.2            |  32 ++++++------
 man2/pciconfig_read.2  |   2 +-
 man2/perf_event_open.2 |   2 +-
 man2/personality.2     |   8 +--
 man2/prctl.2           |   2 +-
 man2/read.2            |   2 +-
 man2/reboot.2          |  24 ++++-----
 man2/semget.2          |   4 +-
 man2/sendfile.2        |   2 +-
 man2/shmget.2          |   2 +-
 man2/sigaction.2       |   4 +-
 man2/spu_run.2         |   8 +--
 man2/statfs.2          | 110 ++++++++++++++++++++---------------------
 man2/statx.2           |   2 +-
 man2/syscall.2         |   2 +-
 man2/timer_settime.2   |   4 +-
 man2/timerfd_create.2  |   2 +-
 man2/truncate.2        |   4 +-
 man2/utimensat.2       |   6 +--
 man2/write.2           |   2 +-
 39 files changed, 144 insertions(+), 144 deletions(-)

-- 
2.39.0

