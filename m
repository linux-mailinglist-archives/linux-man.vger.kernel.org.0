Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6D865F4B7
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 20:41:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235725AbjAETlT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 14:41:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235895AbjAETk4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 14:40:56 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87CD97658
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 11:39:33 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id z16so20674769wrw.1
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NjbTT4Hj06om5FPD2PokCmnf2lsyJe18c3vRqz3Tuf4=;
        b=WG0RPS5BgjlCcJT/BScv0x7Pdj7cXKs42BaISIgX863iErD4oO5YKsBIXEiJ5v5b3k
         rPi++hNWlWsZ65cSlnGaWy2d66bbM9tET6EDqU0KvoizBwcn8lEYV57KDu8aGeJ9A2cA
         /7RWWj3UstNgdgA9fl7kSjHj/7Vi3aV0KPabwVzU6Sz6BKCB3SWt91c5U4qFhcDloErg
         Auo4BrrVGBtl5+8o7tCjEDk412ADpuHmrB9yJHZGbNmXg0A0NUHyAzgGs3nUUlH8YhUl
         /517AIIdrxga4NXfXC+/Inn5PNHA27Qr9sQmt82bA7Yz045p9k1OHHQWblEwjUT/Bn3g
         RCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjbTT4Hj06om5FPD2PokCmnf2lsyJe18c3vRqz3Tuf4=;
        b=5iM2LyOsv8HR6XarTmdyWGgjY5nwUZvIYZhTYz7bwtZXTV7JJheCEcdcK/hcQydJw6
         ZqKnSMrH9G76gKjE2sUdJgzmnordHPlfZJeJCFIWdt+0G5SkZM0QcgLEs9R8NJN8Izj1
         zo5Am2bilT60dPcp+M56J4VIOqHtTp5DYbWdPzU7N5278a+bNLXh6GAZBmcIJ3KdCtR3
         NxbsaxJS26CbN1WL1lLwXcsHnjZ51GxkiwfvsqiL5gK3XOoVi07Rqia1KI2tP3mEVk6t
         liOD0fnfMt/kA5oEGq22NPgCE0F7xY8JYgnjRGotJ5iff9E20L7f5Nz3vkQT2yQ69l/H
         ZePg==
X-Gm-Message-State: AFqh2ko0d1X4LeRX5ErfF2DhUIWOI/BeDme11294dadCMpOkqPf+LKAL
        zok/fVzGimNAOxAe/lDF2yu203csJpM=
X-Google-Smtp-Source: AMrXdXuMRLWKpkx6fzvjVwAu786U0RnzHb1LPuzvJAg0BIsCxuCPRXPl9x2aTL2f/0wWdN3PYIREtw==
X-Received: by 2002:a5d:4587:0:b0:27f:a81:b819 with SMTP id p7-20020a5d4587000000b0027f0a81b819mr26893027wrq.22.1672947572007;
        Thu, 05 Jan 2023 11:39:32 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id o15-20020a5d684f000000b00286ad197346sm24233992wrw.70.2023.01.05.11.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 11:39:31 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2, pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2, set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3, getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3, strptime.3, NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7: Prefer bzero(3) over memset(3)
Date:   Thu,  5 Jan 2023 20:37:52 +0100
Message-Id: <20230105193751.18846-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

bzero(3) is simpler to use, and can avoid silly mistakes that are hard
to spot.  memset(3), while it is necessary in a few very-specific cases,
should be avoided when the memory is to be zeroed.

POSIX and ISO can say otherwise, but it doesn't make any sense to
recommend using memset(3) over bzero(3).

Link: <https://stackoverflow.com/a/17097978/6872717>
Cc: Wilco Dijkstra <Wilco.Dijkstra@arm.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/bind.2              | 2 +-
 man2/mount_setattr.2     | 4 ++--
 man2/openat2.2           | 4 ++--
 man2/perf_event_open.2   | 2 +-
 man2/pidfd_send_signal.2 | 2 +-
 man2/recvmmsg.2          | 2 +-
 man2/seccomp_unotify.2   | 2 +-
 man2/select_tut.2        | 6 +++---
 man2/sendmmsg.2          | 6 +++---
 man2/set_thread_area.2   | 2 +-
 man2/sysctl.2            | 2 +-
 man3/bzero.3             | 4 +---
 man3/getaddrinfo.3       | 4 ++--
 man3/getaddrinfo_a.3     | 2 +-
 man3/getutent.3          | 6 +++---
 man3/mbrtowc.3           | 2 +-
 man3/mbsinit.3           | 2 +-
 man3/rtime.3             | 2 +-
 man3/rtnetlink.3         | 2 +-
 man3/strptime.3          | 2 +-
 man3const/NULL.3const    | 2 +-
 man3type/size_t.3type    | 1 +
 man3type/void.3type      | 1 +
 man7/aio.7               | 2 +-
 man7/netlink.7           | 4 ++--
 man7/unix.7              | 6 +++---
 26 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/man2/bind.2 b/man2/bind.2
index 350a2f7e1..33d580f90 100644
--- a/man2/bind.2
+++ b/man2/bind.2
@@ -243,7 +243,7 @@ .SH EXAMPLES
     if (sfd == \-1)
         handle_error("socket");
 
-    memset(&my_addr, 0, sizeof(my_addr));
+    bzero(&my_addr, sizeof(my_addr));
     my_addr.sun_family = AF_UNIX;
     strncpy(my_addr.sun_path, MY_SOCK_PATH,
             sizeof(my_addr.sun_path) \- 1);
diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index cfa1a6e5a..d3c786609 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -878,13 +878,13 @@ .SS Extensibility
 .in
 .PP
 Alternatively, the structure can be zero-filled using
-.BR memset (3)
+.BR bzero (3)
 or similar functions:
 .PP
 .in +4n
 .EX
 struct mount_attr attr;
-memset(&attr, 0, sizeof(attr));
+bzero(&attr, sizeof(attr));
 attr.attr_set = MOUNT_ATTR_RDONLY;
 attr.attr_clr = MOUNT_ATTR_NODEV;
 .EE
diff --git a/man2/openat2.2 b/man2/openat2.2
index 19693cd8c..59d515d89 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -558,13 +558,13 @@ .SS Extensibility
 .in
 .PP
 or explicitly using
-.BR memset (3)
+.BR bzero (3)
 or similar:
 .PP
 .in +4n
 .EX
 struct open_how how;
-memset(&how, 0, sizeof(how));
+bzero(&how, sizeof(how));
 how.flags = O_RDWR;
 how.resolve = RESOLVE_IN_ROOT;
 .EE
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 8e94fb4ac..29af28bf1 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3761,7 +3761,7 @@ .SH EXAMPLES
     long long               count;
     struct perf_event_attr  pe;
 
-    memset(&pe, 0, sizeof(pe));
+    bzero(&pe, sizeof(pe));
     pe.type = PERF_TYPE_HARDWARE;
     pe.size = sizeof(pe);
     pe.config = PERF_COUNT_HW_INSTRUCTIONS;
diff --git a/man2/pidfd_send_signal.2 b/man2/pidfd_send_signal.2
index 2a60ced93..76544888b 100644
--- a/man2/pidfd_send_signal.2
+++ b/man2/pidfd_send_signal.2
@@ -213,7 +213,7 @@ .SH EXAMPLES
     /* Populate a \(aqsiginfo_t\(aq structure for use with
        pidfd_send_signal(). */
 
-    memset(&info, 0, sizeof(info));
+    bzero(&info, sizeof(info));
     info.si_code = SI_QUEUE;
     info.si_signo = sig;
     info.si_errno = 0;
diff --git a/man2/recvmmsg.2 b/man2/recvmmsg.2
index 63a03bd39..d5d94dc86 100644
--- a/man2/recvmmsg.2
+++ b/man2/recvmmsg.2
@@ -244,7 +244,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 
-    memset(msgs, 0, sizeof(msgs));
+    bzero(msgs, sizeof(msgs));
     for (size_t i = 0; i < VLEN; i++) {
         iovecs[i].iov_base         = bufs[i];
         iovecs[i].iov_len          = BUFSIZE;
diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index 157fbb94a..9e0d83d4a 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -1838,7 +1838,7 @@ .SS Program source
 
         /* Wait for next notification, returning info in \(aq*req\(aq */
 
-        memset(req, 0, sizes.seccomp_notif);
+        bzero(req, sizes.seccomp_notif);
         if (ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_RECV, req) == \-1) {
             if (errno == EINTR)
                 continue;
diff --git a/man2/select_tut.2 b/man2/select_tut.2
index 9d62db023..75480368c 100644
--- a/man2/select_tut.2
+++ b/man2/select_tut.2
@@ -373,7 +373,7 @@ .SH EXAMPLES
         return \-1;
     }
 
-    memset(&addr, 0, sizeof(addr));
+    bzero(&addr, sizeof(addr));
     addr.sin_port = htons(listen_port);
     addr.sin_family = AF_INET;
     if (bind(lfd, (struct sockaddr *) &addr, sizeof(addr)) == \-1) {
@@ -399,7 +399,7 @@ .SH EXAMPLES
         return \-1;
     }
 
-    memset(&addr, 0, sizeof(addr));
+    bzero(&addr, sizeof(addr));
     addr.sin_port = htons(connect_port);
     addr.sin_family = AF_INET;
 
@@ -508,7 +508,7 @@ .SH EXAMPLES
             int fd;
 
             addrlen = sizeof(client_addr);
-            memset(&client_addr, 0, addrlen);
+            bzero(&client_addr, addrlen);
             fd = accept(h, (struct sockaddr *) &client_addr, &addrlen);
             if (fd == \-1) {
                 perror("accept()");
diff --git a/man2/sendmmsg.2 b/man2/sendmmsg.2
index 4e5475c45..4b284ab34 100644
--- a/man2/sendmmsg.2
+++ b/man2/sendmmsg.2
@@ -201,17 +201,17 @@ .SH EXAMPLES
         exit(EXIT_FAILURE);
     }
 
-    memset(msg1, 0, sizeof(msg1));
+    bzero(msg1, sizeof(msg1));
     msg1[0].iov_base = "one";
     msg1[0].iov_len = 3;
     msg1[1].iov_base = "two";
     msg1[1].iov_len = 3;
 
-    memset(&msg2, 0, sizeof(msg2));
+    bzero(&msg2, sizeof(msg2));
     msg2.iov_base = "three";
     msg2.iov_len = 5;
 
-    memset(msg, 0, sizeof(msg));
+    bzero(msg, sizeof(msg));
     msg[0].msg_hdr.msg_iov = msg1;
     msg[0].msg_hdr.msg_iovlen = 2;
 
diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index ccfacc70d..263bda38c 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -207,7 +207,7 @@ .SH BUGS
 if set, would prevent the descriptor from being considered empty (see
 .BR modify_ldt (2)).
 As a result, the only reliable way to clear a TLS entry is to use
-.BR memset (3)
+.BR bzero (3)
 to zero the entire
 .I user_desc
 structure, including padding bits, and then to set the
diff --git a/man2/sysctl.2 b/man2/sysctl.2
index 679b20a74..8f15fea03 100644
--- a/man2/sysctl.2
+++ b/man2/sysctl.2
@@ -137,7 +137,7 @@ .SH EXAMPLES
     size_t                osnamelth;
     struct __sysctl_args  args;
 
-    memset(&args, 0, sizeof(args));
+    bzero(&args, sizeof(args));
     args.name = name;
     args.nlen = ARRAY_SIZE(name);
     args.oldval = osname;
diff --git a/man3/bzero.3 b/man3/bzero.3
index 1cd2fa664..503ad6c98 100644
--- a/man3/bzero.3
+++ b/man3/bzero.3
@@ -62,9 +62,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 The
 .BR bzero ()
-function is deprecated (marked as LEGACY in POSIX.1-2001); use
-.BR memset (3)
-in new programs.
+function is marked as LEGACY in POSIX.1-2001;
 POSIX.1-2008 removes the specification of
 .BR bzero ().
 The
diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 1248ae34d..67b049fe2 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -671,7 +671,7 @@ .SS Server program
         exit(EXIT_FAILURE);
     }
 
-    memset(&hints, 0, sizeof(hints));
+    bzero(&hints, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = AI_PASSIVE;    /* For wildcard IP address */
@@ -770,7 +770,7 @@ .SS Client program
 
     /* Obtain address(es) matching host/port. */
 
-    memset(&hints, 0, sizeof(hints));
+    bzero(&hints, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = 0;
diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index 3ca5d9858..98617ee82 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -360,7 +360,7 @@ .SS Synchronous example
             perror("malloc");
             exit(EXIT_FAILURE);
         }
-        memset(reqs[i], 0, sizeof(*reqs[0]));
+        bzero(reqs[i], sizeof(*reqs[0]));
         reqs[i]\->ar_name = argv[i + 1];
     }
 
diff --git a/man3/getutent.3 b/man3/getutent.3
index 32a87b4a9..55961b460 100644
--- a/man3/getutent.3
+++ b/man3/getutent.3
@@ -317,7 +317,7 @@ .SH EXAMPLES
     strcpy(entry.ut_id, ttyname(STDIN_FILENO) + strlen("/dev/tty"));
     time(&entry.ut_time);
     strcpy(entry.ut_user, getpwuid(getuid())\->pw_name);
-    memset(entry.ut_host, 0, UT_HOSTSIZE);
+    bzero(entry.ut_host, UT_HOSTSIZE);
     entry.ut_addr = 0;
     setutent();
     pututline(&entry);
@@ -325,9 +325,9 @@ .SH EXAMPLES
     system("echo after adding entry:;who");
 
     entry.ut_type = DEAD_PROCESS;
-    memset(entry.ut_line, 0, UT_LINESIZE);
+    bzero(entry.ut_line, UT_LINESIZE);
     entry.ut_time = 0;
-    memset(entry.ut_user, 0, UT_NAMESIZE);
+    bzero(entry.ut_user, UT_NAMESIZE);
     setutent();
     pututline(&entry);
 
diff --git a/man3/mbrtowc.3 b/man3/mbrtowc.3
index cf401c9fa..a62e06885 100644
--- a/man3/mbrtowc.3
+++ b/man3/mbrtowc.3
@@ -145,7 +145,7 @@ .SH DESCRIPTION
 .PP
 .in +4n
 .EX
-memset(&a, 0, sizeof(a));
+bzero(&a, sizeof(a));
 .EE
 .in
 .SH RETURN VALUE
diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
index f93d48132..9d6182cab 100644
--- a/man3/mbsinit.3
+++ b/man3/mbsinit.3
@@ -58,7 +58,7 @@ .SH DESCRIPTION
 .in +4n
 .EX
 mbstate_t state;
-memset(&state, 0, sizeof(state));
+bzero(&state, sizeof(state));
 .EE
 .in
 .PP
diff --git a/man3/rtime.3 b/man3/rtime.3
index 0abcf6fce..1cba00162 100644
--- a/man3/rtime.3
+++ b/man3/rtime.3
@@ -131,7 +131,7 @@ .SH EXAMPLES
     struct rpc_timeval  timeout = {1, 0};
     struct sockaddr_in  name;
 
-    memset(&name, 0, sizeof(name));
+    bzero(&name, sizeof(name));
     sethostent(1);
     hent = gethostbyname(servername);
     memcpy(&name.sin_addr, hent\->h_addr, hent\->h_length);
diff --git a/man3/rtnetlink.3 b/man3/rtnetlink.3
index 460b2b5a5..f045facf5 100644
--- a/man3/rtnetlink.3
+++ b/man3/rtnetlink.3
@@ -104,7 +104,7 @@ .SH EXAMPLES
 
 int rtnetlink_sk = socket(AF_NETLINK, SOCK_DGRAM, NETLINK_ROUTE);
 
-memset(&req, 0, sizeof(req));
+bzero(&req, sizeof(req));
 req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(req.if));
 req.nh.nlmsg_flags = NLM_F_REQUEST;
 req.nh.nlmsg_type = RTM_NEWLINK;
diff --git a/man3/strptime.3 b/man3/strptime.3
index 8c3a569c0..6d451c5c8 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -398,7 +398,7 @@ .SH EXAMPLES
     struct tm tm;
     char buf[255];
 
-    memset(&tm, 0, sizeof(tm));
+    bzero(&tm, sizeof(tm));
     strptime("2001\-11\-12 18:31:01", "%Y\-%m\-%d %H:%M:%S", &tm);
     strftime(buf, sizeof(buf), "%d %b %Y %H:%M", &tm);
     puts(buf);
diff --git a/man3const/NULL.3const b/man3const/NULL.3const
index 1b60b2b4c..d30b053a6 100644
--- a/man3const/NULL.3const
+++ b/man3const/NULL.3const
@@ -62,7 +62,7 @@ .SH CAVEATS
 .SH BUGS
 When it is necessary to set a pointer variable to a null pointer,
 it is not enough to use
-.BR memset (3)
+.BR bzero (3)
 to zero the pointer
 (this is usually done when zeroing a struct that contains pointers),
 since ISO C and POSIX don't guarantee that a bit pattern of all 0s
diff --git a/man3type/size_t.3type b/man3type/size_t.3type
index ba02993a2..8a10a6634 100644
--- a/man3type/size_t.3type
+++ b/man3type/size_t.3type
@@ -173,6 +173,7 @@ .SH SEE ALSO
 .BR fwrite (3),
 .BR memcmp (3),
 .BR memcpy (3),
+.BR bzero (3),
 .BR memset (3),
 .BR offsetof (3),
 .BR ptrdiff_t (3type)
diff --git a/man3type/void.3type b/man3type/void.3type
index ddcbf482f..df7339377 100644
--- a/man3type/void.3type
+++ b/man3type/void.3type
@@ -71,5 +71,6 @@ .SH SEE ALSO
 .BR malloc (3),
 .BR memcmp (3),
 .BR memcpy (3),
+.BR bzero (3),
 .BR memset (3),
 .BR intptr_t (3type)
diff --git a/man7/aio.7 b/man7/aio.7
index d0d814cb2..c539f3a43 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -145,7 +145,7 @@ .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008.
 .SH NOTES
 It is a good idea to zero out the control block buffer before use (see
-.BR memset (3)).
+.BR bzero (3)).
 The control block buffer and the buffer pointed to by
 .I aio_buf
 must not be changed while the I/O operation is in progress.
diff --git a/man7/netlink.7 b/man7/netlink.7
index 83f7bee13..6e04d9fc5 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -539,7 +539,7 @@ .SH EXAMPLES
 .EX
 struct sockaddr_nl sa;
 
-memset(&sa, 0, sizeof(sa));
+bzero(&sa, sizeof(sa));
 sa.nl_family = AF_NETLINK;
 sa.nl_groups = RTMGRP_LINK | RTMGRP_IPV4_IFADDR;
 
@@ -561,7 +561,7 @@ .SH EXAMPLES
 struct msghdr msg;
 
 msg = { &sa, sizeof(sa), &iov, 1, NULL, 0, 0 };
-memset(&sa, 0, sizeof(sa));
+bzero(&sa, sizeof(sa));
 sa.nl_family = AF_NETLINK;
 nh\->nlmsg_pid = 0;
 nh\->nlmsg_seq = ++sequence_number;
diff --git a/man7/unix.7 b/man7/unix.7
index b290117fc..03f5cad5c 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -912,7 +912,7 @@ .SH BUGS
 addrp = malloc(addrlen + 1);
 if (addrp == NULL)
     /* Handle error */ ;
-memset(addrp, 0, addrlen + 1);
+bzero(addrp, addrlen + 1);
 
 if (getsockname(sfd, (struct sockaddr *) addrp, &addrlen)) == \-1)
     /* handle error */ ;
@@ -1004,7 +1004,7 @@ .SS Program source
      * the structure.
      */
 
-    memset(&name, 0, sizeof(name));
+    bzero(&name, sizeof(name));
 
     /* Bind socket to socket name. */
 
@@ -1137,7 +1137,7 @@ .SS Program source
      * the structure.
      */
 
-    memset(&addr, 0, sizeof(addr));
+    bzero(&addr, sizeof(addr));
 
     /* Connect socket to socket address. */
 
-- 
2.39.0

