Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C628622B8F8
	for <lists+linux-man@lfdr.de>; Thu, 23 Jul 2020 23:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726436AbgGWVxi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Jul 2020 17:53:38 -0400
Received: from smtp.gentoo.org ([140.211.166.183]:33260 "EHLO smtp.gentoo.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726368AbgGWVxh (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 23 Jul 2020 17:53:37 -0400
Received: from vapier.lan (localhost [127.0.0.1])
        by smtp.gentoo.org (Postfix) with ESMTP id 31E5D34F1E0;
        Thu, 23 Jul 2020 21:53:35 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] drop spurious t comment header
Date:   Thu, 23 Jul 2020 17:53:33 -0400
Message-Id: <20200723215333.13779-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Frysinger <vapier@chromium.org>

A bunch of pages have this random comment at the start of its header,
but most do not.  Just trim it everywhere.

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man2/fcntl.2          | 1 -
 man2/lseek.2          | 1 -
 man2/mq_getsetattr.2  | 1 -
 man2/sgetmask.2       | 1 -
 man2/sigaction.2      | 1 -
 man2/sigaltstack.2    | 1 -
 man2/socket.2         | 1 -
 man2/stat.2           | 1 -
 man2/statx.2          | 1 -
 man2/syslog.2         | 1 -
 man3/aio_init.3       | 1 -
 man3/dladdr.3         | 1 -
 man3/dlinfo.3         | 1 -
 man3/duplocale.3      | 1 -
 man3/inet_net_pton.3  | 1 -
 man3/isfdtype.3       | 1 -
 man3/mallinfo.3       | 1 -
 man3/malloc_stats.3   | 1 -
 man3/malloc_trim.3    | 1 -
 man3/mallopt.3        | 1 -
 man3/matherr.3        | 1 -
 man3/mq_close.3       | 1 -
 man3/mq_getattr.3     | 1 -
 man3/mq_notify.3      | 1 -
 man3/mq_open.3        | 1 -
 man3/mq_receive.3     | 1 -
 man3/mq_send.3        | 1 -
 man3/mq_unlink.3      | 1 -
 man3/pthread_atfork.3 | 1 -
 man3/sem_close.3      | 1 -
 man3/sem_destroy.3    | 1 -
 man3/sem_getvalue.3   | 1 -
 man3/sem_init.3       | 1 -
 man3/sem_open.3       | 1 -
 man3/sem_post.3       | 1 -
 man3/sem_unlink.3     | 1 -
 man3/sem_wait.3       | 1 -
 man3/sigset.3         | 1 -
 man3/sigvec.3         | 1 -
 man3/uselocale.3      | 1 -
 man4/console_codes.4  | 1 -
 man4/dsp56k.4         | 1 -
 man4/fd.4             | 1 -
 man4/lp.4             | 1 -
 man4/mouse.4          | 1 -
 man7/aio.7            | 1 -
 man7/arp.7            | 1 -
 man7/ascii.7          | 1 -
 man7/inode.7          | 1 -
 man7/inotify.7        | 1 -
 man7/ip.7             | 1 -
 man7/mq_overview.7    | 1 -
 man7/netdevice.7      | 1 -
 man7/netlink.7        | 1 -
 man7/pthreads.7       | 1 -
 man7/raw.7            | 1 -
 man7/rtnetlink.7      | 1 -
 man7/sem_overview.7   | 1 -
 man7/shm_overview.7   | 1 -
 man7/signal.7         | 1 -
 man7/socket.7         | 1 -
 man7/units.7          | 1 -
 62 files changed, 62 deletions(-)

diff --git a/man2/fcntl.2 b/man2/fcntl.2
index 8a7e189b2e57..e2765dc1bca8 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -1,4 +1,3 @@
-'\" t
 .\" This manpage is Copyright (C) 1992 Drew Eckhardt;
 .\" and Copyright (C) 1993 Michael Haardt, Ian Jackson;
 .\" and Copyright (C) 1998 Jamie Lokier;
diff --git a/man2/lseek.2 b/man2/lseek.2
index 22de446fc231..adef7be82f36 100644
--- a/man2/lseek.2
+++ b/man2/lseek.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1980, 1991 Regents of the University of California.
 .\" and Copyright (c) 2011, Michael Kerrisk <mtk.manpages@gmail.com>
 .\" All rights reserved.
diff --git a/man2/mq_getsetattr.2 b/man2/mq_getsetattr.2
index d3ad25bf3e43..cc595d6de82b 100644
--- a/man2/mq_getsetattr.2
+++ b/man2/mq_getsetattr.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man2/sgetmask.2 b/man2/sgetmask.2
index dc69454cf05c..20944d82201f 100644
--- a/man2/sgetmask.2
+++ b/man2/sgetmask.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2007 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man2/sigaction.2 b/man2/sigaction.2
index 21d8b15b394e..c10421835bcf 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1994,1995 Mike Battersby <mib@deakin.edu.au>
 .\" and Copyright 2004, 2005 Michael Kerrisk <mtk.manpages@gmail.com>
 .\" based on work by faith@cs.unc.edu
diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
index b01f55864392..72e1c071ecbd 100644
--- a/man2/sigaltstack.2
+++ b/man2/sigaltstack.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2001, 2017 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man2/socket.2 b/man2/socket.2
index 7908f4fc8fee..d3df14a28154 100644
--- a/man2/socket.2
+++ b/man2/socket.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1983, 1991 The Regents of the University of California.
 .\" All rights reserved.
 .\"
diff --git a/man2/stat.2 b/man2/stat.2
index 395b60845837..b67bc7023b67 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1992 Drew Eckhardt (drew@cs.colorado.edu), March 28, 1992
 .\" Parts Copyright (c) 1995 Nicolai Langfeldt (janl@ifi.uio.no), 1/1/95
 .\" and Copyright (c) 2006, 2007, 2014 Michael Kerrisk <mtk.manpages@gmail.com>
diff --git a/man2/statx.2 b/man2/statx.2
index fc4cd6761906..57607f6d81c6 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2017 David Howells <dhowells@redhat.com>
 .\"
 .\" Derived from the stat.2 manual page:
diff --git a/man2/syslog.2 b/man2/syslog.2
index c6479e6decf2..bca93c56037e 100644
--- a/man2/syslog.2
+++ b/man2/syslog.2
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 1995 Andries Brouwer (aeb@cwi.nl)
 .\" and Copyright (C) 2012, 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
diff --git a/man3/aio_init.3 b/man3/aio_init.3
index 8d176b4b20d7..9c0af4e72793 100644
--- a/man3/aio_init.3
+++ b/man3/aio_init.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2010 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/dladdr.3 b/man3/dladdr.3
index e5c96d231a6a..7dd27c76ef2f 100644
--- a/man3/dladdr.3
+++ b/man3/dladdr.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2015 Michael Kerrisk <mtk.manpages@gmail.com>
 .\" and Copyright (C) 2008 Petr Baudis <pasky@suse.cz> (dladdr caveat)
 .\"
diff --git a/man3/dlinfo.3 b/man3/dlinfo.3
index 4c3c8aa79de0..91dedba86cf6 100644
--- a/man3/dlinfo.3
+++ b/man3/dlinfo.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2015 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/duplocale.3 b/man3/duplocale.3
index 68df7c185786..ebedbc95acc0 100644
--- a/man3/duplocale.3
+++ b/man3/duplocale.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
index f30bc5e9065d..00f94b9d47a3 100644
--- a/man3/inet_net_pton.3
+++ b/man3/inet_net_pton.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/isfdtype.3 b/man3/isfdtype.3
index 746c9839f7cb..6d9059b61fd6 100644
--- a/man3/isfdtype.3
+++ b/man3/isfdtype.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mallinfo.3 b/man3/mallinfo.3
index f29b7fb14251..ceb62d365a3a 100644
--- a/man3/mallinfo.3
+++ b/man3/mallinfo.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2012 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/malloc_stats.3 b/man3/malloc_stats.3
index c7954c3ba2a3..0feaf8edb51f 100644
--- a/man3/malloc_stats.3
+++ b/man3/malloc_stats.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2012 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/malloc_trim.3 b/man3/malloc_trim.3
index 62b7a980bef5..5d1691474232 100644
--- a/man3/malloc_trim.3
+++ b/man3/malloc_trim.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2012 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mallopt.3 b/man3/mallopt.3
index 28d6e6f774ea..ccf5ac363d47 100644
--- a/man3/mallopt.3
+++ b/man3/mallopt.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2012 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/matherr.3 b/man3/matherr.3
index 931499c2c78c..d9778aaefbed 100644
--- a/man3/matherr.3
+++ b/man3/matherr.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2008, Linux Foundation, written by Michael Kerrisk
 .\"     <mtk.manpages@gmail.com>
 .\"
diff --git a/man3/mq_close.3 b/man3/mq_close.3
index 27da985aaf08..6692c47aec49 100644
--- a/man3/mq_close.3
+++ b/man3/mq_close.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_getattr.3 b/man3/mq_getattr.3
index 7713164722d6..04bd1d9af8a0 100644
--- a/man3/mq_getattr.3
+++ b/man3/mq_getattr.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
index debad2184c87..85cff527d029 100644
--- a/man3/mq_notify.3
+++ b/man3/mq_notify.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_open.3 b/man3/mq_open.3
index b6ba4cd48faa..852653b6ca17 100644
--- a/man3/mq_open.3
+++ b/man3/mq_open.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
index d78ed5dcfe3b..cba72cbad4fe 100644
--- a/man3/mq_receive.3
+++ b/man3/mq_receive.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index 2650f7974b03..7dc90493556e 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/mq_unlink.3 b/man3/mq_unlink.3
index 77756dd5ad98..d6588bcf42a7 100644
--- a/man3/mq_unlink.3
+++ b/man3/mq_unlink.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
index ac517d0f3958..76a261724258 100644
--- a/man3/pthread_atfork.3
+++ b/man3/pthread_atfork.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2017 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_close.3 b/man3/sem_close.3
index c1c36bdea5ca..671a082a58f0 100644
--- a/man3/sem_close.3
+++ b/man3/sem_close.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_destroy.3 b/man3/sem_destroy.3
index 650a3c88a2e5..eefc37a48b6a 100644
--- a/man3/sem_destroy.3
+++ b/man3/sem_destroy.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_getvalue.3 b/man3/sem_getvalue.3
index d7962033a38d..bde0c9764c8d 100644
--- a/man3/sem_getvalue.3
+++ b/man3/sem_getvalue.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_init.3 b/man3/sem_init.3
index 723e572a1044..7334ce0239e0 100644
--- a/man3/sem_init.3
+++ b/man3/sem_init.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_open.3 b/man3/sem_open.3
index 62e004919e2c..ceb4493f69fa 100644
--- a/man3/sem_open.3
+++ b/man3/sem_open.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_post.3 b/man3/sem_post.3
index 69b970b7c522..adbffd516af3 100644
--- a/man3/sem_post.3
+++ b/man3/sem_post.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_unlink.3 b/man3/sem_unlink.3
index 63705495e2b4..419a6c422e39 100644
--- a/man3/sem_unlink.3
+++ b/man3/sem_unlink.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
index ccd63141956d..335fb675659b 100644
--- a/man3/sem_wait.3
+++ b/man3/sem_wait.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sigset.3 b/man3/sigset.3
index afe3747cb2d3..4e57d3b97134 100644
--- a/man3/sigset.3
+++ b/man3/sigset.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2005 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/sigvec.3 b/man3/sigvec.3
index 0b8021d5ecaa..583ebae6a3b5 100644
--- a/man3/sigvec.3
+++ b/man3/sigvec.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2005 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man3/uselocale.3 b/man3/uselocale.3
index 8f39125802ca..36f76888b81d 100644
--- a/man3/uselocale.3
+++ b/man3/uselocale.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man4/console_codes.4 b/man4/console_codes.4
index be34a0d91132..2958d6221f96 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1996 Andries Brouwer <aeb@cwi.nl>, Mon Oct 31 22:13:04 1996
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_ONEPARA)
diff --git a/man4/dsp56k.4 b/man4/dsp56k.4
index 68a4b925ff96..a87e0d2c5be5 100644
--- a/man4/dsp56k.4
+++ b/man4/dsp56k.4
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2000 lars brinkhoff <lars@nocrew.org>
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man4/fd.4 b/man4/fd.4
index f882aae75f9a..1c3f99a2a192 100644
--- a/man4/fd.4
+++ b/man4/fd.4
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1993 Michael Haardt (michael@cantor.informatik.rwth-aachen.de)
 .\" and 1994,1995 Alain Knaff (Alain.Knaff@imag.fr)
 .\"
diff --git a/man4/lp.4 b/man4/lp.4
index 9460feebb5e2..06b211994f21 100644
--- a/man4/lp.4
+++ b/man4/lp.4
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) Michael Haardt (michael@cantor.informatik.rwth-aachen.de),
 .\"     Sun Jan 15 19:16:33 1995
 .\"
diff --git a/man4/mouse.4 b/man4/mouse.4
index 1805c2935397..38de9c139abb 100644
--- a/man4/mouse.4
+++ b/man4/mouse.4
@@ -1,4 +1,3 @@
-'\" t
 .\" This manpage is Copyright (C) 1996 Michael Haardt.
 .\" Updates Nov 1998, Andries Brouwer
 .\"
diff --git a/man7/aio.7 b/man7/aio.7
index f44ea7197f41..a23b4f74cd8b 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2010 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man7/arp.7 b/man7/arp.7
index e21dd5a4ec04..f8b0d11c0c73 100644
--- a/man7/arp.7
+++ b/man7/arp.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Matthew Wilcox <willy@bofh.ai>.
 .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
 .\" Permission is granted to distribute possibly modified copies
diff --git a/man7/ascii.7 b/man7/ascii.7
index 11b311f9d42c..2f66e17e53cb 100644
--- a/man7/ascii.7
+++ b/man7/ascii.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1993 Michael Haardt (michael@moria.de)
 .\"
 .\" %%%LICENSE_START(GPLv2+_DOC_FULL)
diff --git a/man7/inode.7 b/man7/inode.7
index 86d35af5a84f..e0a619569670 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2017 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man7/inotify.7 b/man7/inotify.7
index 90a46bb0e93c..e60d9c82b6f8 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006, 2014 Michael Kerrisk <mtk.manpages@gmail.com>
 .\" Copyright (C) 2014 Heinrich Schuchardt <xypron.glpk@gmx.de>
 .\"
diff --git a/man7/ip.7 b/man7/ip.7
index 7757a6b4e3c4..c522b219c988 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
 .\"
 .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
diff --git a/man7/mq_overview.7 b/man7/mq_overview.7
index 6fa63f41bae4..fc229fbde215 100644
--- a/man7/mq_overview.7
+++ b/man7/mq_overview.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man7/netdevice.7 b/man7/netdevice.7
index 2100ca68e1a9..947167a849af 100644
--- a/man7/netdevice.7
+++ b/man7/netdevice.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
 .\"
 .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
diff --git a/man7/netlink.7 b/man7/netlink.7
index 3c1eacf1d49e..8b6b01b4d0be 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (c) 1998 by Andi Kleen.
 .\"
 .\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
diff --git a/man7/pthreads.7 b/man7/pthreads.7
index c91106d8cbd2..e470d8a59c94 100644
--- a/man7/pthreads.7
+++ b/man7/pthreads.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 2005 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man7/raw.7 b/man7/raw.7
index 779437b668d6..e11b4c0614a3 100644
--- a/man7/raw.7
+++ b/man7/raw.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
 .\"
 .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
index 7d6e6563ba9a..8671d360ee64 100644
--- a/man7/rtnetlink.7
+++ b/man7/rtnetlink.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
 .\"
 .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
diff --git a/man7/sem_overview.7 b/man7/sem_overview.7
index fa90d160eb0a..97ccf144c9b1 100644
--- a/man7/sem_overview.7
+++ b/man7/sem_overview.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
diff --git a/man7/shm_overview.7 b/man7/shm_overview.7
index 3afdeb41aff2..49bef6da382b 100644
--- a/man7/shm_overview.7
+++ b/man7/shm_overview.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2008, Linux Foundation, written by Michael Kerrisk
 .\" <mtk.manpages@gmail.com>
 .\"
diff --git a/man7/signal.7 b/man7/signal.7
index 6973a238459a..97af1d33e11c 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (c) 1993 by Thomas Koenig (ig25@rz.uni-karlsruhe.de)
 .\" and Copyright (c) 2002, 2006 by Michael Kerrisk <mtk.manpages@gmail.com>
 .\" and Copyright (c) 2008 Linux Foundation, written by Michael Kerrisk
diff --git a/man7/socket.7 b/man7/socket.7
index 5c28120c7d35..ab364784f3d1 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -1,4 +1,3 @@
-'\" t
 .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
 .\" and copyright (c) 1999 Matthew Wilcox.
 .\"
diff --git a/man7/units.7 b/man7/units.7
index e2191a310a9a..705d15b748ba 100644
--- a/man7/units.7
+++ b/man7/units.7
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright (C) 2001 Andries Brouwer <aeb@cwi.nl>
 .\"
 .\" %%%LICENSE_START(VERBATIM)
-- 
2.26.2

