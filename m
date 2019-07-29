Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4863178C21
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 14:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387906AbfG2M7W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 08:59:22 -0400
Received: from mx2.suse.de ([195.135.220.15]:38314 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S2387900AbfG2M7W (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 29 Jul 2019 08:59:22 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 59CCDAEAE;
        Mon, 29 Jul 2019 12:59:21 +0000 (UTC)
From:   Richard Palethorpe <rpalethorpe@suse.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, ast@plumgrid.com, davem@davemloft.net,
        Richard Palethorpe <rpalethorpe@suse.com>
Subject: [PATCH] bpf.2: Change note on unprivileged access
Date:   Mon, 29 Jul 2019 14:58:43 +0200
Message-Id: <20190729125843.6319-1-rpalethorpe@suse.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This notes that the kernel now allows calls to bpf() without CAP_SYS_ADMIN
under some circumstances.

Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>
---
 man2/bpf.2 | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index b5c0869ae..a57ed9086 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -1120,11 +1120,29 @@ The
 .BR bpf ()
 system call is Linux-specific.
 .SH NOTES
-In the current implementation, all
+Prior to Linux 4.4, all
 .BR bpf ()
 commands require the caller to have the
 .B CAP_SYS_ADMIN
-capability.
+capability. From 4.4 onwards an unprivileged user may create limited
+programs of type
+.BR BPF_PROG_TYPE_SOCKET_FILTER
+and associated maps. However they may not store kernel pointers within
+the maps and are presently limited to the following helper functions:
+.IP * 3
+get_random
+.PD 0
+.IP *
+get_smp_processor_id
+.IP *
+tail_call
+.IP *
+ktime_get_ns
+.PD 1
+.PP
+Unprivileged access may be blocked by setting the sysctl
+.IR /proc/sys/kernel/unprivileged_bpf_disabled .
+.\" commit 1be7f75d1668d6296b80bf35dcf6762393530afc
 .PP
 eBPF objects (maps and programs) can be shared between processes.
 For example, after
-- 
2.22.0

