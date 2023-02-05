Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6032A68B24A
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 23:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjBEW7l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 17:59:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjBEW7k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 17:59:40 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6EE717CEC
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 14:59:39 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id Odz4pm2kJc9C4Onz0pRkMx; Sun, 05 Feb 2023 22:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675637978; bh=C7fOjJctgT7fy1M1zkYqVCE8XmFWnzagl30910NuXX4=;
        h=From:To:Cc:Subject:Date;
        b=uvReywtQrnoeN/+EKC8QiY0e/5KzenkMGY/fgchD/bvNT4SSh76A5PJU+nYI+ToVV
         XasoAF9M1vGa+5Px1aEtjzoRgLOHhaBOnMdzm0LH61eANyMKrNwxSXbi8atI+rzaWC
         YaGriGLBx9Q2iZtHaQRVMv3r2dcF14Sp+DpcPEXGpIP9hJ/8IsFRFXO1NmXzQ/vq3q
         sd8P7Vnnp3tpitEk0X/bNN7AnBORw5rmWGXx3OlEUMGRbsLpNMoPaxTbG7joeZBhXR
         MwuCE9i8Nj8vz4dAiey8MFgJuOJsQn8e8sPuwVUdC9oCKiFVpHmHeJFdbNaVYkvSnN
         TatNTVsQZ909A==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OnyzpUKfwHFsOOnz0p3JKv; Sun, 05 Feb 2023 22:59:38 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e034da
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=McgehSX0I34ueD3h-A0A:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 00/11] man2/: punctuate long numeric strings with digit separators
Date:   Sun,  5 Feb 2023 15:59:13 -0700
Message-Id: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfINtYg0SFfAkSh+MrVTk27OTXvbs0najE6CSZSYHdZG6HqibL6NVXgXFejwCkaB6JKEUGGbD31UTUW5O+vrXn2FLjF1UKlmyjZRBt+bhVvTDup/b/5Yo
 YlglIf/TnbjJRAh6fct4E/+9qovFNDJPq1SAvLqtvyHagjsf6HHZIhCKle3BqUXgO9PuItJ+5DTB/Bx39m/PsC5Qp86o4SiIboukfDrROqW6QTEexdHMXacm
 TFP6S5Eg7xUPoEm44fgBvQMdxSU7mpF6P3O4OOTZPyfuY/umAWpi6pCAVMDrKL3R
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

Brian Inglis (11):
  man2/shmget.2: fix limit units suffix from SI to IEC
  man2/spu_run.2: fix example comment status code or-ed value
  man2/: use consistent interval notation for value ranges
  man2/open.2: punctuate octal perms with digit separators
  man2/reboot.2: show BCD dates in hex not decimal
  man2/reboot.2: punctuate hex in docs with digit separators
  man2/statfs.2: punctuate hex in docs with digit separators
  man2/adjtimex.2: use ISO/IEC suffixes and digit separators in ranges
    and example docs
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

