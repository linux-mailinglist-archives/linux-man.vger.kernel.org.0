Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A35B9F9C73
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2019 22:45:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbfKLVpx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Nov 2019 16:45:53 -0500
Received: from albireo.enyo.de ([37.24.231.21]:37480 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726376AbfKLVpx (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Nov 2019 16:45:53 -0500
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1iUdyx-0006DT-Tq
        for linux-man@vger.kernel.org; Tue, 12 Nov 2019 21:45:51 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1iUdyx-0006RX-S0
        for linux-man@vger.kernel.org; Tue, 12 Nov 2019 22:45:51 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     linux-man@vger.kernel.org
Subject: [PATCH] bpf-helpers.7: Remove duplicated words and add missing
 articles
Date:   Tue, 12 Nov 2019 22:45:51 +0100
Message-ID: <87bltgdb00.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Florian Weimer <fw@deneb.enyo.de>
---
 man7/bpf-helpers.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index 6f07f476e..0ac569c1d 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -1546,8 +1546,8 @@ Where t_enabled is the time enabled for event and t_running is
 the time running for event since last normalization. The
 enabled and running times are accumulated since the perf event
 open. To achieve scaling factor between two invocations of an
-eBPF program, users can can use CPU id as the key (which is
-typical for perf array usage model) to remember the previous
+eBPF program, users can use the CPU id as the key (which is
+typical for the perf array usage model) to remember the previous
 value and do the calculation inside the eBPF program.
 .TP
 .B Return
@@ -1605,7 +1605,7 @@ the return value of the probed function, and to set it to \fIrc\fP\&.
 The first argument is the context \fIregs\fP on which the kprobe
 works.
 .sp
-This helper works by setting setting the PC (program counter)
+This helper works by setting the PC (program counter)
 to an override function which is run in place of the original
 probed function. This means the probed function is not run at
 all. The replacement function just returns with the required
-- 
2.20.1

