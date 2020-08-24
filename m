Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6FD324FED2
	for <lists+linux-man@lfdr.de>; Mon, 24 Aug 2020 15:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726086AbgHXN3j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 09:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725780AbgHXN3g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 09:29:36 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90BC8C061573
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 06:29:35 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id l2so8700920wrc.7
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 06:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=6StYCLvyYyIUNTpCgRyl7Nzx2K5ga6FY6aZXPG+rGNk=;
        b=LgNfm6Z5ypVzM1rBxzF3I/PMz09xD9PS9r0axlukbM/t9gKTbKycL5ahQW3G50Xh4j
         Eydu/7Gai66Z2ym95ZHPjff5matMO78dMriGn0u9BgkexOrH6E5KY9cRW3XlnLN1q3aw
         03w0kOsyplf/CmpJcdlG20DEoayWAvfVT/DSbJ8TZp7JzBf4rA+OGD6sCwgBHXjWel+n
         gBIBIh4iELBBQ2aqBEj+AGoG0zXhsEx0tPGyRpZCcMpgE1zfeEMuvoTwkjTfA7VnAFG8
         wrINWflSGLTVWhasdX7eCvyvH9JtMGHBng6iSrwWgcDI9cSq2qBQCCxG8oAxDvpivnrP
         oJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=6StYCLvyYyIUNTpCgRyl7Nzx2K5ga6FY6aZXPG+rGNk=;
        b=b0hUF2opw6nwPEouEHFWhjQshJTI1A5Na5k4i+/vKMUp+OvCNsu7IYSc1N7Nn2D6q5
         TSBr7D1YBHonJex+byecBVfVSYqgapOA7gar71vfy3x7jOvR5+VwreOkeFpCD0Qgrtdb
         nb8y8S76rybxM1iwW5wgDXJ+822nydm5SMs6g+cImEGBz3CnWzQDOET+L6yPkj6U8IMS
         zVxVaICWRFa0YfP6zel1sI4qMMMnoIz+EekDb49Xi0PbC8idU0r8WNl1EALuBZzcZuXx
         aL61/JSncstWu+JKrGguPMvHCCQqUFXCieLq9eqPFaZ0qrTetuavRL49EqlIgEl74aFX
         tClQ==
X-Gm-Message-State: AOAM531kJiXl4falWKUiBVG+CncpHetWCVBidteSbq9f3oOCgmDgucCT
        7HpgCN+R7y8FmssQ3Cm6U5m6JR1zg3k=
X-Google-Smtp-Source: ABdhPJyMDCzMsfPeq6SBNjFD1e+xfUsWa2mmSXY5iX9wlTKi7/oeXuljkhAzbXgI08E4RkPtrj629g==
X-Received: by 2002:adf:fcc5:: with SMTP id f5mr5821227wrs.126.1598275772236;
        Mon, 24 Aug 2020 06:29:32 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id f6sm32292685wme.32.2020.08.24.06.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 06:29:31 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [patch] memusage.1, bind.2, eventfd.2, futex.2, open_by_handle_at.2,
 perf_event_open.2, poll.2, signalfd.2, sysctl.2, timerfd_create.2, bsearch.3,
 cmsg.3, getaddrinfo.3, getaddrinfo_a.3 getgrouplist.3, insque.3,
 malloc_info.3, mbsinit.3, mbstowcs.3, pthread_create.3,
 pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3, strptime.3,
 tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof consistently
Message-ID: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
Date:   Mon, 24 Aug 2020 15:29:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 5df5cae0fb6973df0ab8b3629934f808487112b0 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 21 Aug 2020 16:58:12 +0200
Subject: [PATCH] memusage.1, bind.2, eventfd.2, futex.2,
open_by_handle_at.2,
 perf_event_open.2, poll.2, signalfd.2, sysctl.2, timerfd_create.2,
bsearch.3,
 cmsg.3, getaddrinfo.3, getaddrinfo_a.3 getgrouplist.3, insque.3,
 malloc_info.3, mbsinit.3, mbstowcs.3, pthread_create.3,
 pthread_setaffinity_np.3, queue.3, rtnetlink.3, shm_open.3, strptime.3,
 tsearch.3, aio.7, fanotify.7, inotify.7, unix.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples, in the following
way:

- Never use a space after ``sizeof``, and always use parentheses
  instead.

	Rationale:

	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#spaces

- Use the name of the variable instead of the type as argument
  for ``sizeof``, wherever possible.

	Rationale:

	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

- When the result of ``sizeof`` is multiplied (or otherwise modified),
  write ``sizeof`` in the first place.

	Rationale:

	``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.

	``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
	results.

	As a side effect, the parentheses of ``sizeof`` are not next to
	the parentheses of the whole expression, and it is visually
	easier to read.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man1/memusage.1               | 12 ++++++------
 man2/bind.2                   |  6 +++---
 man2/eventfd.2                |  8 ++++----
 man2/futex.2                  |  2 +-
 man2/open_by_handle_at.2      |  4 ++--
 man2/perf_event_open.2        |  6 +++---
 man2/poll.2                   |  2 +-
 man2/signalfd.2               |  4 ++--
 man2/sysctl.2                 |  2 +-
 man2/timerfd_create.2         |  4 ++--
 man3/bsearch.3                |  4 ++--
 man3/cmsg.3                   |  6 +++---
 man3/getaddrinfo.3            |  6 +++---
 man3/getaddrinfo_a.3          |  2 +-
 man3/getgrouplist.3           |  2 +-
 man3/insque.3                 |  2 +-
 man3/malloc_info.3            |  2 +-
 man3/mbsinit.3                |  2 +-
 man3/mbstowcs.3               |  2 +-
 man3/pthread_create.3         |  2 +-
 man3/pthread_setaffinity_np.3 |  4 ++--
 man3/queue.3                  | 32 ++++++++++++++++----------------
 man3/rtnetlink.3              |  4 ++--
 man3/shm_open.3               |  4 ++--
 man3/strptime.3               |  2 +-
 man3/tsearch.3                |  2 +-
 man7/aio.7                    |  4 ++--
 man7/fanotify.7               |  3 +--
 man7/inotify.7                |  6 +++---
 man7/unix.7                   |  8 ++++----
 30 files changed, 74 insertions(+), 75 deletions(-)

diff --git a/man1/memusage.1 b/man1/memusage.1
index fa1987c79..a03468442 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -247,8 +247,8 @@ main(int argc, char *argv[])
      int i, j;
      int *p;

-     printf("malloc: %zd\en", sizeof(int) * 100);
-     p = malloc(sizeof(int) * 100);
+     printf("malloc: %zd\en", sizeof(*p) * 100);
+     p = malloc(sizeof(*p) * 100);

      for (i = 0; i < CYCLES; i++) {
          if (i < CYCLES / 2)
@@ -256,11 +256,11 @@ main(int argc, char *argv[])
          else
              j--;

-         printf("realloc: %zd\en", sizeof(int) * (j * 50 + 110));
-         p = realloc(p, sizeof(int) * (j * 50 + 100));
+         printf("realloc: %zd\en", sizeof(*p) * (j * 50 + 110));
+         p = realloc(p, sizeof(*p) * (j * 50 + 100));

-         printf("realloc: %zd\en", sizeof(int) * ((j+1) * 150 + 110));
-         p = realloc(p, sizeof(int) * ((j + 1) * 150 + 110));
+         printf("realloc: %zd\en", sizeof(*p) * ((j+1) * 150 + 110));
+         p = realloc(p, sizeof(*p) * ((j + 1) * 150 + 110));
      }

      free(p);
diff --git a/man2/bind.2 b/man2/bind.2
index 72aac9555..74e34b6bd 100644
--- a/man2/bind.2
+++ b/man2/bind.2
@@ -293,14 +293,14 @@ main(int argc, char *argv[])
     if (sfd == \-1)
         handle_error("socket");

-    memset(&my_addr, 0, sizeof(struct sockaddr_un));
+    memset(&my_addr, 0, sizeof(my_addr));
                         /* Clear structure */
     my_addr.sun_family = AF_UNIX;
     strncpy(my_addr.sun_path, MY_SOCK_PATH,
             sizeof(my_addr.sun_path) \- 1);

     if (bind(sfd, (struct sockaddr *) &my_addr,
-            sizeof(struct sockaddr_un)) == \-1)
+            sizeof(my_addr)) == \-1)
         handle_error("bind");

     if (listen(sfd, LISTEN_BACKLOG) == \-1)
@@ -309,7 +309,7 @@ main(int argc, char *argv[])
     /* Now we can accept incoming connections one
        at a time using accept(2) */

-    peer_addr_size = sizeof(struct sockaddr_un);
+    peer_addr_size = sizeof(peer_addr);
     cfd = accept(sfd, (struct sockaddr *) &peer_addr,
                  &peer_addr_size);
     if (cfd == \-1)
diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 804cf796b..35e83c957 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -415,8 +415,8 @@ main(int argc, char *argv[])
             printf("Child writing %s to efd\en", argv[j]);
             u = strtoull(argv[j], NULL, 0);
                     /* strtoull() allows various bases */
-            s = write(efd, &u, sizeof(uint64_t));
-            if (s != sizeof(uint64_t))
+            s = write(efd, &u, sizeof(u));
+            if (s != sizeof(u))
                 handle_error("write");
         }
         printf("Child completed write loop\en");
@@ -427,8 +427,8 @@ main(int argc, char *argv[])
         sleep(2);

         printf("Parent about to read\en");
-        s = read(efd, &u, sizeof(uint64_t));
-        if (s != sizeof(uint64_t))
+        s = read(efd, &u, sizeof(u));
+        if (s != sizeof(u))
             handle_error("read");
         printf("Parent read %llu (0x%llx) from efd\en",
                 (unsigned long long) u, (unsigned long long) u);
diff --git a/man2/futex.2 b/man2/futex.2
index 05696f617..6192b145a 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1839,7 +1839,7 @@ main(int argc, char *argv[])
        subsequently use the "shared" futex operations (i.e., not the
        ones suffixed "_PRIVATE") */

-    iaddr = mmap(NULL, sizeof(int) * 2, PROT_READ | PROT_WRITE,
+    iaddr = mmap(NULL, sizeof(*iaddr) * 2, PROT_READ | PROT_WRITE,
                 MAP_ANONYMOUS | MAP_SHARED, \-1, 0);
     if (iaddr == MAP_FAILED)
         errExit("mmap");
diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 78c3220f8..846957acf 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -586,7 +586,7 @@ main(int argc, char *argv[])

     /* Reallocate file_handle structure with correct size */

-    fhsize = sizeof(struct file_handle) + fhp\->handle_bytes;
+    fhsize = sizeof(*fhp) + fhp\->handle_bytes;
     fhp = realloc(fhp, fhsize);         /* Copies fhp\->handle_bytes */
     if (fhp == NULL)
         errExit("realloc");
@@ -707,7 +707,7 @@ main(int argc, char *argv[])

     /* Given handle_bytes, we can now allocate file_handle structure */

-    fhp = malloc(sizeof(struct file_handle) + handle_bytes);
+    fhp = malloc(sizeof(*fhp) + handle_bytes);
     if (fhp == NULL)
         errExit("malloc");

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 2492fc75a..aea825706 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3419,9 +3419,9 @@ main(int argc, char **argv)
     long long count;
     int fd;

-    memset(&pe, 0, sizeof(struct perf_event_attr));
+    memset(&pe, 0, sizeof(pe));
     pe.type = PERF_TYPE_HARDWARE;
-    pe.size = sizeof(struct perf_event_attr);
+    pe.size = sizeof(pe);
     pe.config = PERF_COUNT_HW_INSTRUCTIONS;
     pe.disabled = 1;
     pe.exclude_kernel = 1;
@@ -3439,7 +3439,7 @@ main(int argc, char **argv)
     printf("Measuring instruction count for this printf\en");

     ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
-    read(fd, &count, sizeof(long long));
+    read(fd, &count, sizeof(count));

     printf("Used %lld instructions\en", count);

diff --git a/man2/poll.2 b/man2/poll.2
index 940c51da5..9b42822c0 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -596,7 +596,7 @@ main(int argc, char *argv[])
     }

     num_open_fds = nfds = argc \- 1;
-    pfds = calloc(nfds, sizeof(struct pollfd));
+    pfds = calloc(nfds, sizeof(*pfds));
     if (pfds == NULL)
         errExit("malloc");

diff --git a/man2/signalfd.2 b/man2/signalfd.2
index 96d502a50..92e9fd7ef 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -502,8 +502,8 @@ main(int argc, char *argv[])
         handle_error("signalfd");

     for (;;) {
-        s = read(sfd, &fdsi, sizeof(struct signalfd_siginfo));
-        if (s != sizeof(struct signalfd_siginfo))
+        s = read(sfd, &fdsi, sizeof(fdsi));
+        if (s != sizeof(fdsi))
             handle_error("read");

         if (fdsi.ssi_signo == SIGINT) {
diff --git a/man2/sysctl.2 b/man2/sysctl.2
index 65f79516d..161060490 100644
--- a/man2/sysctl.2
+++ b/man2/sysctl.2
@@ -154,7 +154,7 @@ main(void)
     size_t osnamelth;
     int name[] = { CTL_KERN, KERN_OSTYPE };

-    memset(&args, 0, sizeof(struct __sysctl_args));
+    memset(&args, 0, sizeof(args));
     args.name = name;
     args.nlen = sizeof(name)/sizeof(name[0]);
     args.oldval = osname;
diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 67a13dba3..fd4acf3e9 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -700,8 +700,8 @@ main(int argc, char *argv[])
     printf("timer started\en");

     for (tot_exp = 0; tot_exp < max_exp;) {
-        s = read(fd, &exp, sizeof(uint64_t));
-        if (s != sizeof(uint64_t))
+        s = read(fd, &exp, sizeof(exp));
+        if (s != sizeof(exp))
             handle_error("read");

         tot_exp += exp;
diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 88e0e6ea1..6859bdba2 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -124,12 +124,12 @@ main(int argc, char **argv)
 {
     int i;

-    qsort(months, nr_of_months, sizeof(struct mi), compmi);
+    qsort(months, nr_of_months, sizeof(months[0]), compmi);
     for (i = 1; i < argc; i++) {
         struct mi key, *res;
         key.name = argv[i];
         res = bsearch(&key, months, nr_of_months,
-                      sizeof(struct mi), compmi);
+                      sizeof(months[0]), compmi);
         if (res == NULL)
             printf("\(aq%s\(aq: unknown month\en", argv[i]);
         else
diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 2f9910093..8d0ad6666 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -203,7 +203,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
         cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
     if (cmsg\->cmsg_level == IPPROTO_IP
             && cmsg\->cmsg_type == IP_TTL) {
-        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
+        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(received_ttl));
         break;
     }
 }
@@ -241,8 +241,8 @@ msg.msg_controllen = sizeof(u.buf);
 cmsg = CMSG_FIRSTHDR(&msg);
 cmsg\->cmsg_level = SOL_SOCKET;
 cmsg\->cmsg_type = SCM_RIGHTS;
-cmsg\->cmsg_len = CMSG_LEN(sizeof(int) * NUM_FD);
-memcpy(CMSG_DATA(cmsg), myfds, NUM_FD * sizeof(int));
+cmsg\->cmsg_len = CMSG_LEN(sizeof(myfds));
+memcpy(CMSG_DATA(cmsg), myfds, sizeof(myfds));
 .EE
 .in
 .SH SEE ALSO
diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 8aa544789..70e6b4cc0 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -679,7 +679,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    memset(&hints, 0, sizeof(struct addrinfo));
+    memset(&hints, 0, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = AI_PASSIVE;    /* For wildcard IP address */
@@ -721,7 +721,7 @@ main(int argc, char *argv[])
     /* Read datagrams and echo them back to sender */

     for (;;) {
-        peer_addr_len = sizeof(struct sockaddr_storage);
+        peer_addr_len = sizeof(peer_addr);
         nread = recvfrom(sfd, buf, BUF_SIZE, 0,
                 (struct sockaddr *) &peer_addr, &peer_addr_len);
         if (nread == \-1)
@@ -775,7 +775,7 @@ main(int argc, char *argv[])

     /* Obtain address(es) matching host/port */

-    memset(&hints, 0, sizeof(struct addrinfo));
+    memset(&hints, 0, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = 0;
diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index af8f88937..cd4cad0dc 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -473,7 +473,7 @@ add_requests(void)

     while ((host = strtok(NULL, " "))) {
         nreqs++;
-        reqs = realloc(reqs, nreqs * sizeof(reqs[0]));
+        reqs = realloc(reqs, sizeof(reqs[0]) * nreqs);

         reqs[nreqs \- 1] = calloc(1, sizeof(*reqs[0]));
         reqs[nreqs \- 1]\->ar_name = strdup(host);
diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 61c88f75f..ff8d89e3f 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -164,7 +164,7 @@ main(int argc, char *argv[])

     ngroups = atoi(argv[2]);

-    groups = malloc(ngroups * sizeof (gid_t));
+    groups = malloc(sizeof(*groups) * ngroups);
     if (groups == NULL) {
         perror("malloc");
         exit(EXIT_FAILURE);
diff --git a/man3/insque.3 b/man3/insque.3
index a9fc28550..005ad8cc1 100644
--- a/man3/insque.3
+++ b/man3/insque.3
@@ -182,7 +182,7 @@ new_element(void)
 {
     struct element *e;

-    e = malloc(sizeof(struct element));
+    e = malloc(sizeof(*e));
     if (e == NULL) {
         fprintf(stderr, "malloc() failed\en");
         exit(EXIT_FAILURE);
diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
index 0d95cdff7..598478dcc 100644
--- a/man3/malloc_info.3
+++ b/man3/malloc_info.3
@@ -226,7 +226,7 @@ main(int argc, char *argv[])
     blockSize = atoi(argv[3]);
     sleepTime = (argc > 4) ? atoi(argv[4]) : 0;

-    thr = calloc(numThreads, sizeof(pthread_t));
+    thr = calloc(numThreads, sizeof(*thr));
     if (thr == NULL)
         errExit("calloc");

diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
index 663f9d9ed..74fe48f86 100644
--- a/man3/mbsinit.3
+++ b/man3/mbsinit.3
@@ -59,7 +59,7 @@ in initial state is to set it to zero:
 .in +4n
 .EX
 mbstate_t state;
-memset(&state,0,sizeof(mbstate_t));
+memset(&state, 0, sizeof(state));
 .EE
 .in
 .PP
diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index cf650506e..2f9fbc17c 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -186,7 +186,7 @@ main(int argc, char *argv[])
     /* Allocate wide character string of the desired size.  Add 1
        to allow for terminating null wide character (L\(aq\e0\(aq). */

-    wcs = calloc(mbslen + 1, sizeof(wchar_t));
+    wcs = calloc(mbslen + 1, sizeof(*wcs));
     if (wcs == NULL) {
         perror("calloc");
         exit(EXIT_FAILURE);
diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
index d86188e6b..5ffb14586 100644
--- a/man3/pthread_create.3
+++ b/man3/pthread_create.3
@@ -361,7 +361,7 @@ main(int argc, char *argv[])

     /* Allocate memory for pthread_create() arguments */

-    tinfo = calloc(num_threads, sizeof(struct thread_info));
+    tinfo = calloc(num_threads, sizeof(*tinfo));
     if (tinfo == NULL)
         handle_error("calloc");

diff --git a/man3/pthread_setaffinity_np.3 b/man3/pthread_setaffinity_np.3
index 24499f550..57aaf1251 100644
--- a/man3/pthread_setaffinity_np.3
+++ b/man3/pthread_setaffinity_np.3
@@ -194,13 +194,13 @@ main(int argc, char *argv[])
     for (j = 0; j < 8; j++)
         CPU_SET(j, &cpuset);

-    s = pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
+    s = pthread_setaffinity_np(thread, sizeof(cpuset), &cpuset);
     if (s != 0)
         handle_error_en(s, "pthread_setaffinity_np");

     /* Check the actual affinity mask assigned to the thread */

-    s = pthread_getaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
+    s = pthread_getaffinity_np(thread, sizeof(cpuset), &cpuset);
     if (s != 0)
         handle_error_en(s, "pthread_getaffinity_np");

diff --git a/man3/queue.3 b/man3/queue.3
index 070ca47cb..0131fe09b 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -558,10 +558,10 @@ struct entry {

 SLIST_INIT(&head);			/* Initialize the list. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 SLIST_INSERT_HEAD(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 SLIST_INSERT_AFTER(n1, n2, entries);

 SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
@@ -774,13 +774,13 @@ struct entry {

 STAILQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 STAILQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 STAILQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 STAILQ_INSERT_AFTER(&head, n1, n2, entries);
 					/* Deletion. */
 STAILQ_REMOVE(&head, n2, entry, entries);
@@ -974,13 +974,13 @@ struct entry {

 LIST_INIT(&head);			/* Initialize the list. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 LIST_INSERT_HEAD(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 LIST_INSERT_AFTER(n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 LIST_INSERT_BEFORE(n2, n3, entries);

 LIST_REMOVE(n2, entries);		/* Deletion. */
@@ -1232,16 +1232,16 @@ struct entry {

 TAILQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 TAILQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 TAILQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 TAILQ_INSERT_AFTER(&head, n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 TAILQ_INSERT_BEFORE(n2, n3, entries);

 TAILQ_REMOVE(&head, n2, entries);	/* Deletion. */
@@ -1425,16 +1425,16 @@ struct entry {

 CIRCLEQ_INIT(&head);			/* Initialize the queue. */

-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+n1 = malloc(sizeof(*n1));		/* Insert at the head. */
 CIRCLEQ_INSERT_HEAD(&head, n1, entries);

-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+n1 = malloc(sizeof(*n1));		/* Insert at the tail. */
 CIRCLEQ_INSERT_TAIL(&head, n1, entries);

-n2 = malloc(sizeof(struct entry));	/* Insert after. */
+n2 = malloc(sizeof(*n2));		/* Insert after. */
 CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);

-n3 = malloc(sizeof(struct entry));	/* Insert before. */
+n3 = malloc(sizeof(*n3));		/* Insert before. */
 CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);

 CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
diff --git a/man3/rtnetlink.3 b/man3/rtnetlink.3
index 07bb1fbf9..f8b6c255a 100644
--- a/man3/rtnetlink.3
+++ b/man3/rtnetlink.3
@@ -105,7 +105,7 @@ unsigned int mtu = 1000;
 int rtnetlink_sk = socket(AF_NETLINK, SOCK_DGRAM, NETLINK_ROUTE);

 memset(&req, 0, sizeof(req));
-req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
+req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(req.if));
 req.nh.nlmsg_flags = NLM_F_REQUEST;
 req.nh.nlmsg_type = RTM_NEWLINK;
 req.if.ifi_family = AF_UNSPEC;
@@ -114,7 +114,7 @@ req.if.ifi_change = 0xffffffff; /* ??? */
 rta = (struct rtattr *)(((char *) &req) +
                          NLMSG_ALIGN(req.nh.nlmsg_len));
 rta\->rta_type = IFLA_MTU;
-rta\->rta_len = RTA_LENGTH(sizeof(unsigned int));
+rta\->rta_len = RTA_LENGTH(sizeof(mtu));
 req.nh.nlmsg_len = NLMSG_ALIGN(req.nh.nlmsg_len) +
                               RTA_LENGTH(sizeof(mtu));
 memcpy(RTA_DATA(rta), &mtu, sizeof(mtu));
diff --git a/man3/shm_open.3 b/man3/shm_open.3
index bba4eb826..24cc6a403 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -382,7 +382,7 @@ main(int argc, char *argv[])

     /* Map the object into the caller\(aqs address space */

-    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
+    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
                                PROT_READ | PROT_WRITE,
                                MAP_SHARED, fd, 0);
     if (shmp == MAP_FAILED)
@@ -471,7 +471,7 @@ main(int argc, char *argv[])
     if (fd == \-1)
         errExit("shm_open");

-    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
+    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
                                PROT_READ | PROT_WRITE,
                                MAP_SHARED, fd, 0);
     if (shmp == MAP_FAILED)
diff --git a/man3/strptime.3 b/man3/strptime.3
index d12f298ff..ab7d76f9a 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -429,7 +429,7 @@ main(void)
     struct tm tm;
     char buf[255];

-    memset(&tm, 0, sizeof(struct tm));
+    memset(&tm, 0, sizeof(tm));
     strptime("2001\-11\-12 18:31:01", "%Y\-%m\-%d %H:%M:%S", &tm);
     strftime(buf, sizeof(buf), "%d %b %Y %H:%M", &tm);
     puts(buf);
diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 452395d6b..f0ff80e8c 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -327,7 +327,7 @@ main(void)

     srand(time(NULL));
     for (i = 0; i < 12; i++) {
-        ptr = xmalloc(sizeof(int));
+        ptr = xmalloc(sizeof(*ptr));
         *ptr = rand() & 0xff;
         val = tsearch((void *) ptr, &root, compare);
         if (val == NULL)
diff --git a/man7/aio.7 b/man7/aio.7
index dd05dce83..d3ab3f422 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -311,11 +311,11 @@ main(int argc, char *argv[])

     /* Allocate our arrays */

-    ioList = calloc(numReqs, sizeof(struct ioRequest));
+    ioList = calloc(numReqs, sizeof(*ioList));
     if (ioList == NULL)
         errExit("calloc");

-    aiocbList = calloc(numReqs, sizeof(struct aiocb));
+    aiocbList = calloc(numReqs, sizeof(*aiocbList));
     if (aiocbList == NULL)
         errExit("calloc");

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index a7d60b2b9..29c818027 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -808,8 +808,7 @@ handle_events(int fd)

                     response.fd = metadata\->fd;
                     response.response = FAN_ALLOW;
-                    write(fd, &response,
-                          sizeof(struct fanotify_response));
+                    write(fd, &response, sizeof(response));
                 }

                 /* Handle closing of writable file event */
diff --git a/man7/inotify.7 b/man7/inotify.7
index e60d9c82b..f1a1667e3 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -952,7 +952,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])

         /* Read some events. */

-        len = read(fd, buf, sizeof buf);
+        len = read(fd, buf, sizeof(buf));
         if (len == \-1 && errno != EAGAIN) {
             perror("read");
             exit(EXIT_FAILURE);
@@ -968,7 +968,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])
         /* Loop over all events in the buffer */

         for (ptr = buf; ptr < buf + len;
-                ptr += sizeof(struct inotify_event) + event\->len) {
+                ptr += sizeof(*event) + event\->len) {

             event = (const struct inotify_event *) ptr;

@@ -1031,7 +1031,7 @@ main(int argc, char* argv[])

     /* Allocate memory for watch descriptors */

-    wd = calloc(argc, sizeof(int));
+    wd = calloc(argc, sizeof(*wd));
     if (wd == NULL) {
         perror("calloc");
         exit(EXIT_FAILURE);
diff --git a/man7/unix.7 b/man7/unix.7
index 5283a1e58..ac01ff712 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -948,7 +948,7 @@ main(int argc, char *argv[])
      * the structure.
      */

-    memset(&name, 0, sizeof(struct sockaddr_un));
+    memset(&name, 0, sizeof(name));

     /* Bind socket to socket name. */

@@ -956,7 +956,7 @@ main(int argc, char *argv[])
     strncpy(name.sun_path, SOCKET_NAME, sizeof(name.sun_path) \- 1);

     ret = bind(connection_socket, (const struct sockaddr *) &name,
-               sizeof(struct sockaddr_un));
+               sizeof(name));
     if (ret == \-1) {
         perror("bind");
         exit(EXIT_FAILURE);
@@ -1082,7 +1082,7 @@ main(int argc, char *argv[])
      * the structure.
      */

-    memset(&addr, 0, sizeof(struct sockaddr_un));
+    memset(&addr, 0, sizeof(addr));

     /* Connect socket to socket address */

@@ -1090,7 +1090,7 @@ main(int argc, char *argv[])
     strncpy(addr.sun_path, SOCKET_NAME, sizeof(addr.sun_path) \- 1);

     ret = connect (data_socket, (const struct sockaddr *) &addr,
-                   sizeof(struct sockaddr_un));
+                   sizeof(addr));
     if (ret == \-1) {
         fprintf(stderr, "The server is down.\en");
         exit(EXIT_FAILURE);
-- 
2.28.0
