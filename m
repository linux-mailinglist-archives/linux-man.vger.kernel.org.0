Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A89BB28B417
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 13:49:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388197AbgJLLts (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 07:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388118AbgJLLts (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 07:49:48 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAD37C0613CE
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 04:49:47 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id n15so18850049wrq.2
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 04:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YkdUvtt0wQc+YWB64dl/dvOh0mjfz0rbs2JPKy5jOvU=;
        b=qawEKBkkC+hrex5xiuDqe1T10neDdDo054wQvQ4o8xFqd6vbhjlR/YVtlgRJB7k7En
         zxiQP+fEbifu+0oXoSiLtF0gn/PrM3R5e+JmunLmVb+/0nHAZXMRAxVQEGzSpE+N97ry
         1ojLQ9vw1oDQg0UmTGhbtU53LhvQG1alyTs3nXNiGWcKPfp+yyhajzxJVvkT1jDtj+JM
         uiNbNEZ+OkoJVywbwgU6DmD+3SVojXOB3MiSkzvMyn823cdl3LjrNfjcevDpAqn14/KJ
         k2vKr65E5IyjJfulriimURJCXzYpJLSPv6HRCpldhs3NK9UPwmICECQfF5ioawTR4rVQ
         VpEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YkdUvtt0wQc+YWB64dl/dvOh0mjfz0rbs2JPKy5jOvU=;
        b=ooZsPdZFzl3Z1rsjKLFIahAb50f1N3TNMxC2IIliazaqZxwPG6+LEv7zBwrQvSfEIl
         RARLL+q+aQtWG9dCH4Gp6xOn1CaKp1dySgDAy4EIZoYEfAfTziwDTmYCrXJn83lrx/gO
         WGP7uSwHbKXjywmvpgpyl6nNSez2jtYu7BogivbZ894y72s6tx4+D++izBYjN7/D4BXQ
         12ggbOnSD7ctnBO0xUSM/9u8P2aktj+p3OAWFIE8yQ1+a+eMAqNu2iZy+hsyEjmsUdB0
         sv+aVwXw0fqOTNxl3BH4YWpVbSVYom0eTg/TZlNawYqyy7QlYATkeybIaC1c+a3OFOct
         ZQpg==
X-Gm-Message-State: AOAM530d2bVI2iEEBYTjhrwgEXewsu9Sx/Xq80cDqZt6NuO4af/2Jtte
        pQCErcisz9L+EgxnmsEnQ6ry1w==
X-Google-Smtp-Source: ABdhPJw7wIx6Hccz5yWvTA+jnGiQR6ZiaxlG6c0qpnvxuhjGBbf0rI0tv6ycB0aDw7R/KT3ANOcSTg==
X-Received: by 2002:adf:dd8f:: with SMTP id x15mr27695391wrl.124.1602503386188;
        Mon, 12 Oct 2020 04:49:46 -0700 (PDT)
Received: from localhost ([2a02:168:96c5:1:55ed:514f:6ad7:5bcc])
        by smtp.gmail.com with ESMTPSA id x3sm14459191wmi.45.2020.10.12.04.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 04:49:45 -0700 (PDT)
From:   Jann Horn <jannh@google.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Mark Mossberg <mark.mossberg@gmail.com>
Subject: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
Date:   Mon, 12 Oct 2020 13:49:40 +0200
Message-Id: <20201012114940.1317510-1-jannh@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
the per-mm counters. With a 4K page size, that means that you can end up
with the counters off by up to 252KiB per thread.

Example:

$ cat rsstest.c
#include <stdlib.h>
#include <err.h>
#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/eventfd.h>
#include <sys/prctl.h>
void dump(int pid) {
  char cmd[1000];
  sprintf(cmd,
    "grep '^VmRSS' /proc/%d/status;"
    "grep '^Rss:' /proc/%d/smaps_rollup;"
    "echo",
    pid, pid
  );
  system(cmd);
}
int main(void) {
  eventfd_t dummy;
  int child_wait = eventfd(0, EFD_SEMAPHORE|EFD_CLOEXEC);
  int child_resume = eventfd(0, EFD_SEMAPHORE|EFD_CLOEXEC);
  if (child_wait == -1 || child_resume == -1) err(1, "eventfd");
  pid_t child = fork();
  if (child == -1) err(1, "fork");
  if (child == 0) {
    if (prctl(PR_SET_PDEATHSIG, SIGKILL)) err(1, "PDEATHSIG");
    if (getppid() == 1) exit(0);
    char *mapping = mmap(NULL, 80 * 0x1000, PROT_READ|PROT_WRITE,
                         MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    eventfd_write(child_wait, 1);
    eventfd_read(child_resume, &dummy);
    for (int i=0; i<40; i++) mapping[0x1000 * i] = 1;
    eventfd_write(child_wait, 1);
    eventfd_read(child_resume, &dummy);
    for (int i=40; i<80; i++) mapping[0x1000 * i] = 1;
    eventfd_write(child_wait, 1);
    eventfd_read(child_resume, &dummy);
    exit(0);
  }

  eventfd_read(child_wait, &dummy);
  dump(child);
  eventfd_write(child_resume, 1);

  eventfd_read(child_wait, &dummy);
  dump(child);
  eventfd_write(child_resume, 1);

  eventfd_read(child_wait, &dummy);
  dump(child);
  eventfd_write(child_resume, 1);

  exit(0);
}
$ gcc -o rsstest rsstest.c && ./rsstest
VmRSS:	      68 kB
Rss:                 616 kB

VmRSS:	      68 kB
Rss:                 776 kB

VmRSS:	     812 kB
Rss:                 936 kB

$


Let's document that those counters aren't entirely accurate.

Reported-by: Mark Mossberg <mark.mossberg@gmail.com>
Signed-off-by: Jann Horn <jannh@google.com>
---
 man5/proc.5 | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index ed309380b53b..13208811efb0 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2265,6 +2265,9 @@ This is just the pages which
 count toward text, data, or stack space.
 This does not include pages
 which have not been demand-loaded in, or which are swapped out.
+This value is inaccurate; see
+.I /proc/[pid]/statm
+below.
 .TP
 (25) \fIrsslim\fP \ %lu
 Current soft limit in bytes on the rss of the process;
@@ -2409,9 +2412,9 @@ The columns are:
 size       (1) total program size
            (same as VmSize in \fI/proc/[pid]/status\fP)
 resident   (2) resident set size
-           (same as VmRSS in \fI/proc/[pid]/status\fP)
+           (inaccurate; same as VmRSS in \fI/proc/[pid]/status\fP)
 shared     (3) number of resident shared pages (i.e., backed by a file)
-           (same as RssFile+RssShmem in \fI/proc/[pid]/status\fP)
+           (inaccurate; same as RssFile+RssShmem in \fI/proc/[pid]/status\fP)
 text       (4) text (code)
 .\" (not including libs; broken, includes data segment)
 lib        (5) library (unused since Linux 2.6; always 0)
@@ -2420,6 +2423,16 @@ data       (6) data + stack
 dt         (7) dirty pages (unused since Linux 2.6; always 0)
 .EE
 .in
+.IP
+.\" See SPLIT_RSS_COUNTING in the kernel.
+.\" Inaccuracy is bounded by TASK_RSS_EVENTS_THRESH.
+Some of these values are somewhat inaccurate (up to 63 pages per thread) because
+of a kernel-internal scalability optimization.
+If accurate values are required, use
+.I /proc/[pid]/smaps
+or
+.I /proc/[pid]/smaps_rollup
+instead, which are much slower but provide accurate, detailed information.
 .TP
 .I /proc/[pid]/status
 Provides much of the information in
@@ -2596,6 +2609,9 @@ directly access physical memory.
 .IP *
 .IR VmHWM :
 Peak resident set size ("high water mark").
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR VmRSS :
 Resident set size.
@@ -2604,16 +2620,25 @@ Note that the value here is the sum of
 .IR RssFile ,
 and
 .IR RssShmem .
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR RssAnon :
 Size of resident anonymous memory.
 .\" commit bf9683d6990589390b5178dafe8fd06808869293
 (since Linux 4.5).
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR RssFile :
 Size of resident file mappings.
 .\" commit bf9683d6990589390b5178dafe8fd06808869293
 (since Linux 4.5).
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR RssShmem :
 Size of resident shared memory (includes System V shared memory,
@@ -2622,6 +2647,9 @@ mappings from
 and shared anonymous mappings).
 .\" commit bf9683d6990589390b5178dafe8fd06808869293
 (since Linux 4.5).
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR VmData ", " VmStk ", " VmExe :
 Size of data, stack, and text segments.
@@ -2640,6 +2668,9 @@ Size of second-level page tables (added in Linux 4.0; removed in Linux 4.15).
 .\" commit b084d4353ff99d824d3bc5a5c2c22c70b1fba722
 Swapped-out virtual memory size by anonymous private pages;
 shmem swap usage is not included (since Linux 2.6.34).
+This value is inaccurate; see
+.I /proc/[pid]/statm
+above.
 .IP *
 .IR HugetlbPages :
 Size of hugetlb memory portions

base-commit: 92e4056a29156598d057045ad25f59d44fcd1bb5
-- 
2.28.0.1011.ga647a8990f-goog

