Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC275698566
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 21:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjBOURZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 15:17:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjBOURY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 15:17:24 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF832597E
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 12:17:23 -0800 (PST)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id SMUQpBL6Hl2xSSODSp07Tn; Wed, 15 Feb 2023 20:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676492242; bh=oFpLWSFqFNqGyXiL5ontMna+f6NHShfhnyF/A51lV2w=;
        h=From:To:Cc:Subject:Date;
        b=htxPyNPLQxWGy9TVBWNbFS4tV2bUfHbl3m009e1scMAa/9+wl1GnMzvMGDHgNz2J+
         SgPshBc7tUF2TxD1FmBn/EjCR8NvOECdN7dRNoqOEDDKJlvNT2o2KM2bniH9q3TLk1
         iUBcLVsP9CTvFDOi+uTiQE1rF3nXKVYQ5H6whp0r44tL0cs6yaWtHJt+Uz9qIwhq9p
         k6LtF/Lqxw+3yXNdMp+vUTthxgnt/R4xP7WLSDLmBKC83lYDeJod3iwYyU0UA28Ba2
         n7nsBCzE91B07I1hChqkm8RPDmcrnai4hdXYFU+tDmn2WABM4Ti30WTjnYiT3EWW4e
         ILoqGuKFtAUhg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SODSp9XY3cyvuSODSp4AKR; Wed, 15 Feb 2023 20:17:22 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=63ed3dd2
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=Vaq00rP4VS_72wAtNhIA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 0/6] man2/: use C digit separators, IEC, or ISO multiples to clarify long numeric digit strings
Date:   Wed, 15 Feb 2023 13:17:05 -0700
Message-Id: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEB56CjdytcV91YnHpUQIK1BKmfiaxtP/EAWe1VbGo3fWG6WEsh8jm8oGTRYhUkn82H56EaSVgqxDNKVjPiRTIxkvdBL3INoRq5Eu+C6XTwAdenS6Xde
 tGUpoiIMOpL6Hcgc2Xw1m4WvNMoJzTnbQXyh3WL+2B03+6ilqqVVD31GJTGEc/8MuvQ5DKVOpa2pqvCuPfJIsdnnBc/t/he2WGDH5QrRsJ5yfI+WWr/mgelo
 R1dRPMJ9ePEF+Ms9c4KN4WdqXk+WKQohIjtDpeSgjlXf0nRluC+XfTm4rLnHuBXA
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

man2/: use C digit separators "'" \[aq], IEC, or ISO multiples
to clarify long binary, octal, hex, decimal numeric digit strings

Brian Inglis (6):
  man2/: use IEC/ISO multiples to clarify long numeric digit strings
  man2/keyctl.2: use IEC/ISO multiples to clarify long numeric digit
    strings or add digit separators
  man2/: add digit separators to clarify POSIX feature release dates
  man2/select.2: add digit separators to clarify POSIX feature release
    dates and use IEC/ISO multiples to clarify long numeric digit strings
  man2/chmod.2: add digit separators to clarify POSIX feature release
    dates and long numeric digit strings
  man2/: add digit separators to clarify long numeric digit strings

 man2/access.2            |  2 +-
 man2/add_key.2           |  2 +-
 man2/brk.2               |  4 ++--
 man2/capget.2            |  6 +++---
 man2/chdir.2             |  2 +-
 man2/chmod.2             | 30 +++++++++++++++---------------
 man2/chown.2             |  4 ++--
 man2/clock_getres.2      |  2 +-
 man2/clock_nanosleep.2   |  2 +-
 man2/epoll_wait.2        |  2 +-
 man2/fcntl.2             |  2 +-
 man2/fsync.2             |  4 ++--
 man2/getgroups.2         |  2 +-
 man2/gethostname.2       |  2 +-
 man2/getpagesize.2       |  4 ++--
 man2/getsid.2            |  2 +-
 man2/ioctl.2             |  4 ++--
 man2/ioctl_console.2     |  4 ++--
 man2/iopl.2              |  2 +-
 man2/keyctl.2            | 14 +++++++-------
 man2/link.2              |  2 +-
 man2/madvise.2           |  4 ++--
 man2/mkdir.2             |  4 ++--
 man2/mmap2.2             |  8 ++++----
 man2/msgctl.2            | 14 +++++++-------
 man2/nanosleep.2         |  2 +-
 man2/open.2              |  4 ++--
 man2/openat2.2           |  4 ++--
 man2/posix_fadvise.2     |  2 +-
 man2/pread.2             |  2 +-
 man2/process_vm_readv.2  |  2 +-
 man2/readlink.2          |  4 ++--
 man2/reboot.2            |  2 +-
 man2/rename.2            |  2 +-
 man2/request_key.2       |  2 +-
 man2/sched_setaffinity.2 |  4 ++--
 man2/seccomp.2           |  4 ++--
 man2/select.2            |  8 ++++----
 man2/semctl.2            | 16 ++++++++--------
 man2/semop.2             |  4 ++--
 man2/sendmmsg.2          |  2 +-
 man2/seteuid.2           |  2 +-
 man2/setpgid.2           |  2 +-
 man2/shmctl.2            | 14 +++++++-------
 man2/shmget.2            |  4 ++--
 man2/sigaltstack.2       |  2 +-
 man2/sigwaitinfo.2       |  2 +-
 man2/stat.2              |  4 ++--
 man2/symlink.2           |  4 ++--
 man2/syslog.2            |  6 +++---
 man2/timer_create.2      |  2 +-
 man2/timer_delete.2      |  2 +-
 man2/timer_getoverrun.2  |  2 +-
 man2/truncate.2          |  4 ++--
 man2/umask.2             |  8 ++++----
 man2/unlink.2            |  2 +-
 man2/utimensat.2         |  2 +-
 man2/vfork.2             |  2 +-
 man2/vmsplice.2          |  2 +-
 man2/wait.2              |  4 ++--
 man2/wait4.2             |  2 +-
 61 files changed, 132 insertions(+), 132 deletions(-)

-- 
2.39.0

