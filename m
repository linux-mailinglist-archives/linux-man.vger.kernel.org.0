Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66E7C3D9687
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231475AbhG1UU0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:24 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD8AC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:22 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id d131-20020a1c1d890000b02902516717f562so2483746wmd.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FpmiKZ3+ygBbi3axeElHUvn6tYAkAiaNXqeWi6NqzyY=;
        b=NijBmOqbSLsqYezT8R95Kkf8umFQNFZgMOgUYdqGC6Pl7x4bMHylSSY9A7DtOVU9q0
         a6x2NZzw1NoqjaiaER2SU0c8xfgb44NDA9vBqeZAnHZFlnAOrJhAqozdOWzL2ujWNgKL
         a+SXa1TZCFSibLniVtaikGwq+8reD4UV7xPYTHz9XATzQBeOa0NwDpaxbfWdZ6LSz7+p
         rGqSNbPNZo1sCyF763mF+TCsdoWrXHG7YWh5Z+L1F/N9G2Kv6jGp+tY1qZR3Pvkavd3Z
         4TMPy3zpYlO98686a6Wvusv/AvySykJUbtMN8vLvWYbl2kw7oe2t1b+juJe1J5ptVkPe
         L+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FpmiKZ3+ygBbi3axeElHUvn6tYAkAiaNXqeWi6NqzyY=;
        b=CIML/Sjcmf3w/LdViGfswm+UbuHco5qz+9HOYGr6jXcaAyci2sayyb+un4ruEkvWWn
         zpxuxa4hEtvM/MMXW9mVdTK9Rg/dWHQfUGcWt1AJZSwWHvkK1fqJPqyB9Vwp8f40eeFw
         8lX2hD8UMlF1NzPQBWh5AsKiyWOzT9CX+QS6cKUd2FrEPFa1x/AHyJokADpUgCj2VM75
         CUn0Xii5QaTi74XB3S6BHPuRAFZvS3LiXwnek7y3BrpLoDNxeG8x35Lo8uLumR7EFGAc
         TLH/jttsphZmUdjKXGywNM1wgR3r3jMhsNuUaYhYHgCfGv0UbYl9nVKVF0KFrSxON+ma
         fmsA==
X-Gm-Message-State: AOAM53196z2B1N7DFUuPNewoKygO68dIpMQD7B9UP/6/nytuaO6rB198
        VkCJOcTXgwEB8Km+NHahdDg=
X-Google-Smtp-Source: ABdhPJwk8IdGFbiOkifbH2CDS7M4C7CWU6JXyu8yq7dry6sycLjKFs6E+1JQ+o5NCJmZKCpoOEftuw==
X-Received: by 2002:a05:600c:4649:: with SMTP id n9mr3670814wmo.168.1627503620759;
        Wed, 28 Jul 2021 13:20:20 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Thomas Voss <thomasavoss@protonmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 08/32] Various pages: Consistently use '*argv[]'
Date:   Wed, 28 Jul 2021 22:19:44 +0200
Message-Id: <20210728202008.3158-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Thomas Voss <thomasavoss@protonmail.com>

Scripted change:

$ find man? -type f \
  | sed -i 's/int argc, char \*\*argv/int argc, char \*argv\[\]/';

Signed-off-by: Thomas Voss <thomasavoss@protonmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/bpf.2                | 2 +-
 man2/copy_file_range.2    | 2 +-
 man2/membarrier.2         | 4 ++--
 man2/perf_event_open.2    | 2 +-
 man2/seccomp.2            | 2 +-
 man3/bsearch.3            | 2 +-
 man3/getopt.3             | 2 +-
 man3/getsubopt.3          | 2 +-
 man3/pthread_setname_np.3 | 2 +-
 man3/wordexp.3            | 2 +-
 man7/fanotify.7           | 2 +-
 11 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index 6e1ffa198..246053201 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -1212,7 +1212,7 @@ riscv (since Linux 5.1).
  * 4. print number of received TCP/UDP packets every second
  */
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int sock, map_fd, prog_fd, key;
     long long value = 0, tcp_cnt, udp_cnt;
diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
index 467a16300..03bafcffc 100644
--- a/man2/copy_file_range.2
+++ b/man2/copy_file_range.2
@@ -236,7 +236,7 @@ or server-side-copy (in the case of NFS).
 #include <unistd.h>
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int fd_in, fd_out;
     struct stat stat;
diff --git a/man2/membarrier.2 b/man2/membarrier.2
index fec82f228..2771ebdcb 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -358,7 +358,7 @@ slow_path(int *read_a)
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int read_a, read_b;
 
@@ -444,7 +444,7 @@ slow_path(int *read_a)
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int read_a, read_b;
 
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index d2523dd3d..daf5edddf 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3762,7 +3762,7 @@ perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     struct perf_event_attr pe;
     long long count;
diff --git a/man2/seccomp.2 b/man2/seccomp.2
index a3421871f..8c80fb7bb 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -1199,7 +1199,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     if (argc < 5) {
         fprintf(stderr, "Usage: "
diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 25ab3e8de..43e8b9c57 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -124,7 +124,7 @@ compmi(const void *m1, const void *m2)
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     qsort(months, nr_of_months, sizeof(months[0]), compmi);
     for (int i = 1; i < argc; i++) {
diff --git a/man3/getopt.3 b/man3/getopt.3
index 0d6ad1c54..ce4c28088 100644
--- a/man3/getopt.3
+++ b/man3/getopt.3
@@ -491,7 +491,7 @@ with most of its features.
 #include <getopt.h>
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int c;
     int digit_optind = 0;
diff --git a/man3/getsubopt.3 b/man3/getsubopt.3
index 99d112e63..2649984bb 100644
--- a/man3/getsubopt.3
+++ b/man3/getsubopt.3
@@ -160,7 +160,7 @@ The following program expects suboptions following a "\-o" option.
 #include <stdio.h>
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     enum {
         RO_OPT = 0,
diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
index a1fb3fa21..77c18a3cf 100644
--- a/man3/pthread_setname_np.3
+++ b/man3/pthread_setname_np.3
@@ -180,7 +180,7 @@ threadfunc(void *parm)
 }
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     pthread_t thread;
     int rc;
diff --git a/man3/wordexp.3 b/man3/wordexp.3
index c583d559e..0aef4cc68 100644
--- a/man3/wordexp.3
+++ b/man3/wordexp.3
@@ -240,7 +240,7 @@ is approximately that of "ls [a-c]*.c".
 #include <wordexp.h>
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     wordexp_t p;
     char **w;
diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 6a7e70d75..9c218fd06 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -1069,7 +1069,7 @@ $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
 #define BUF_SIZE 256
 
 int
-main(int argc, char **argv)
+main(int argc, char *argv[])
 {
     int fd, ret, event_fd, mount_fd;
     ssize_t len, path_len;
-- 
2.32.0

