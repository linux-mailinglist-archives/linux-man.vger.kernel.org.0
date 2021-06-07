Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70DBC39E975
	for <lists+linux-man@lfdr.de>; Tue,  8 Jun 2021 00:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230291AbhFGWVp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Jun 2021 18:21:45 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:36621 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbhFGWVp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Jun 2021 18:21:45 -0400
Received: from 2.general.dannf.us.vpn ([10.172.65.1] helo=localhost)
        by youngberry.canonical.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <dann.frazier@canonical.com>)
        id 1lqNb5-0000Hj-U1; Mon, 07 Jun 2021 22:19:52 +0000
From:   dann frazier <dann.frazier@canonical.com>
To:     linux-man@vger.kernel.org,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        David Howells <dhowells@redhat.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     linux-kernel@vger.kernel.org,
        Pedro Principeza <pedro.principeza@canonical.com>
Subject: [PATCH] kernel_lockdown.7: Remove additional text alluding to lifting via SysRq
Date:   Mon,  7 Jun 2021 16:19:43 -0600
Message-Id: <20210607221943.78414-1-dann.frazier@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

My previous patch intended to drop the docs for the lockdown lift SysRq,
but it missed this other section that refers to lifting it via a keyboard -
an allusion to that same SysRq.

Signed-off-by: dann frazier <dann.frazier@canonical.com>
---
 man7/kernel_lockdown.7 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
index b0442b3b6..0c0a9500d 100644
--- a/man7/kernel_lockdown.7
+++ b/man7/kernel_lockdown.7
@@ -19,9 +19,6 @@ modification of the kernel image and to prevent access to security and
 cryptographic data located in kernel memory, whilst still permitting driver
 modules to be loaded.
 .PP
-Lockdown is typically enabled during boot and may be terminated, if configured,
-by typing a special key combination on a directly attached physical keyboard.
-.PP
 If a prohibited or restricted feature is accessed or used, the kernel will emit
 a message that looks like:
 .PP
-- 
2.32.0

