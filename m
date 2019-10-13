Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 080ABD58D2
	for <lists+linux-man@lfdr.de>; Mon, 14 Oct 2019 01:40:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728691AbfJMXkU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Oct 2019 19:40:20 -0400
Received: from lucaswerkmeister.de ([94.130.58.99]:48276 "EHLO
        lucaswerkmeister.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728413AbfJMXkU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Oct 2019 19:40:20 -0400
X-Greylist: delayed 429 seconds by postgrey-1.27 at vger.kernel.org; Sun, 13 Oct 2019 19:40:18 EDT
Received: from theoden.lucaswerkmeister.de.home (unknown [IPv6:2a02:8109:92c0:22bb:d412:2b0:339e:ab21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: mail@lucaswerkmeister.de)
        by lucaswerkmeister.de (Postfix) with ESMTPSA id C5A408439A8;
        Mon, 14 Oct 2019 01:33:05 +0200 (CEST)
Authentication-Results: lucaswerkmeister.de; dmarc=fail (p=none dis=none) header.from=lucaswerkmeister.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lucaswerkmeister.de;
        s=mail; t=1571009585;
        bh=NiIfwU12TER5EVUOqsovqTq7G+CyeabrSyinz+vLrlA=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
         Content-Transfer-Encoding:From:Reply-To:Subject:Date:To:Cc:
         In-Reply-To:References:Message-Id:Sender:Content-Type:
         Content-Transfer-Encoding:Content-Disposition:Mime-Version;
        b=SqXD9uooJD9HRRkNusyEvV5w7JNKVtAh3PvNNouchZiT1NRDzcDzf99p06bihp78g
         TE/WG8Tl4Ink/zbFwovmANtDdGJdbdy95HEHVwLlujulVI2E+k85aZAjtAUXyx5oCI
         89oqpL2Y8j+/Oe9kh5N7fsiuRzOBjZ32qSZauDA0=
From:   Lucas Werkmeister <mail@lucaswerkmeister.de>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Lucas Werkmeister <mail@lucaswerkmeister.de>
Subject: [PATCH] proc.5: Add /proc/[pid]/loginuid
Date:   Mon, 14 Oct 2019 01:32:53 +0200
Message-Id: <20191013233253.110036-1-mail@lucaswerkmeister.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Lucas Werkmeister <mail@lucaswerkmeister.de>
---

Notes:
    On my system, this file is used by logname(1), but I decided against
    mentioning the command, since it’s an indirect relation at best (via
    getlogin(3)) that’s not mentioned in other documentation either.

 man5/proc.5 | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index dd05db6c6..25a971afc 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1190,9 +1190,23 @@ this file is protected to allow reading only by the real UID of the process.
 Since Linux 2.6.36,
 .\" commit 3036e7b490bf7878c6dae952eec5fb87b1106589
 this file is readable by all users on the system.
-.\" FIXME Describe /proc/[pid]/loginuid
-.\"       Added in 2.6.11; updating requires CAP_AUDIT_CONTROL
-.\"       CONFIG_AUDITSYSCALL
+.TP
+.IR /proc/[pid]/loginuid " (since Linux 2.6.11)"
+This file contains the login user ID of the process,
+which is typically set by
+.BR pam_loginuid (8)
+during the login process and not influenced by later user changes
+such as through commands like
+.BR su (1)
+or
+.BR sudo (8).
+A process must be privileged
+.RB ( CAP_AUDIT_CONTROL )
+to update this file.
+This file is present only if the kernel was configured with
+.BR CONFIG_AUDIT " (since Linux 5.1),"
+previously
+.BR CONFIG_AUDITSYSCALL .
 .TP
 .IR /proc/[pid]/map_files/ " (since kernel 3.3)
 .\" commit 640708a2cff7f81e246243b0073c66e6ece7e53e
-- 
2.23.0

