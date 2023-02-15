Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C13E698560
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 21:16:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjBOUQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 15:16:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjBOUQO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 15:16:14 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 896443E627
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 12:16:06 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id SJd3pB3sxl2xSSOCDp078w; Wed, 15 Feb 2023 20:16:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676492165; bh=oFpLWSFqFNqGyXiL5ontMna+f6NHShfhnyF/A51lV2w=;
        h=From:To:Cc:Subject:Date;
        b=Vyc5zTNWMjgXKHvD/qF84zCTfJzrqZwl1P7uFLjjoE0IhcXN0st1rBaWtzntRvVH/
         0QWRCkJy4BA86B24jhqwXyLKDVCBU6jCVbutd8e3OTp8auum8RpCj1OIkWDxRPkHs1
         wT5IU/Huz85W3Hph2UvRRRNNVoayY1G17gA1cQz+KxM++EtyKwgpG5mWn7hRJ66Vik
         DjsVzli4wFaJ1UZKCSt7pockXO5Nytt3iITnWTkHpTkbkTCP+oabsZPmODNmWC7AOA
         zBUznpstgi64dxyFusA67gCehmuKYqeqPBuoVSbmh/3nv6Zq/Yu3dnBd4yOvjzJbB9
         6j2OSaEndZsfg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id SOCCpXXikHFsOSOCCpSbgr; Wed, 15 Feb 2023 20:16:05 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63ed3d85
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=Vaq00rP4VS_72wAtNhIA:9
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     "Linux Man Pages" <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v3 0/6] man2/: use C digit separators, IEC, or ISO multiples to clarify long numeric digit strings
Date:   Wed, 15 Feb 2023 13:15:46 -0700
Message-Id: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfDr0Axh3nfn12HcViycCKIGSLJ7FYuZmCis8lHAY4FVgUVK7zvl3ehiJvfyNS6czJR5pjWxBM5ohJKzY35GYux+W49zQ//ZH2gNVjsuKfYmRmk1/CiSL
 9cU/50DaSUmuSSGgjk23XL8i1YPFpslis9/1bwnThZOBqXsO3RRFrim0ArhTfexZeowS9NGK4IJYCLHVUG+Zhv73h0tD/x6MpTddaULgmnMdiMPFUWRSBpAE
 b4iRp8Sf2DCqvqcWxnh8hbxej9sBWfpPLRcBDcoB7CGLoTWuVqmwrkbGGbICSzsC
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

