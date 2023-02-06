Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1299B68B49A
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 04:47:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjBFDrp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 22:47:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBFDrp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 22:47:45 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C961740DE
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 19:47:43 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id OiJppse5Rl2xSOsTmpRgUq; Mon, 06 Feb 2023 03:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675655262; bh=RtaQhehYvSPn1H8HcoeVdKSO90ijZKT+uInx0l6v4Xk=;
        h=From:To:Cc:Subject:Date;
        b=g/vTtfu25ajF8rb/aMB8i/SRtJxI6Z71H+SytGe7KUafGRSW4azcBRHv6ZL+IL7n+
         pl5EtqIU8Pgfm5ceJfpt9wZ64BSNbZcZhahhh/vSwFdMeTIlDFG3e6ei2xkG8QnEzY
         55coGBF1vMoWNkA10YYf95MRsd33ZVfuj/aKPzE1Bhh8oO/yWtMe3PmeMBtMLp2Ftq
         +htBDoMwjAg4PlSLceB4ANTjgw5E/8cjBYXeVg/x5pct3KH14oLfdiWutRPv+eDllx
         3htiIzA1Df8WQMplmIOke+dvruPosmLpts8cVSy0fZsWL+V08oLCV7gd3/dVhxdDRQ
         qIX2boaj2HY3g==
Received: from localhost.localdomain ([184.64.124.72])
        by cmsmtp with ESMTP
        id OsTmpfBoW3fOSOsTmpEgcC; Mon, 06 Feb 2023 03:47:42 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e0785e
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=ImTWgHHYzgMeW_-uSB4A:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: man2/: punctuate long numeric strings with digit separators
Date:   Sun,  5 Feb 2023 20:46:54 -0700
Message-Id: <20230206034706.35220-1-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOPYTgljRywNFXs6RrYvdMPr2lOtna2lXOnnLI69U/qRVqPhoGDMH5VLPiIOHK6C2HtFobkE76ZK6j/YG9usAlab89LA5v5HDCOSHjjEOzfx3g058mpJ
 64OJMs7PTFpLRQgcytVHKWfIRPEMVg6bWG47KXtmZrLixIDzjf0UzLoiWWx67HnudJqEcTH9AcyNqIFUezqKLAqXdL66Z8dDwzaWZfihzCeQbv6l4z4Gx126
 nur00i1naKE7/4zUpXsTNhzIswiiE3mcgJz8Tb0nX1pzt134duagdqP4AU49G0Dt
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
[PATCH 02/11] man2/spu_run.2: fix example comment status code or-ed
[PATCH 03/11] man2/: use consistent interval notation for value
[PATCH 04/11] man2/open.2: punctuate octal perms with digit
[PATCH 05/11] man2/reboot.2: show BCD dates in hex not decimal
[PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit
[PATCH 07/11] man2/statfs.2: punctuate hex in docs with digit
[PATCH 08/11] man2/adjtimex.2: use ISO/IEC suffixes and digit
[PATCH 09/11] man2/getrandom.2: change limit to use IEC suffix
[PATCH 10/11] man2/futex.2: change limit to use ISO suffix
[PATCH 11/11] man2/: punctuate long numeric strings with digit

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


