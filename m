Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 892DA2C4139
	for <lists+linux-man@lfdr.de>; Wed, 25 Nov 2020 14:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728404AbgKYNg6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Nov 2020 08:36:58 -0500
Received: from mail.strova.dk ([83.169.38.5]:49324 "EHLO mail.strova.dk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727626AbgKYNg5 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 25 Nov 2020 08:36:57 -0500
X-Greylist: delayed 563 seconds by postgrey-1.27 at vger.kernel.org; Wed, 25 Nov 2020 08:36:57 EST
Received: from alcyone.localdomain (unknown [94.127.55.122])
        by mail.strova.dk (Postfix) with ESMTPSA id 3AA856640B;
        Wed, 25 Nov 2020 14:27:33 +0100 (CET)
Date:   Wed, 25 Nov 2020 14:27:32 +0100
From:   Mathias Rav <m@git.strova.dk>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Mathias Rav <mathias@scalgo.com>,
        Mathias Rav <m@git.strova.dk>
Subject: [patch] link.2: ERRORS: add ENOENT when target is deleted
Message-ID: <20201125142732.22c47097@alcyone.localdomain>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux kernel commit aae8a97d3ec30788790d1720b71d76fd8eb44b73
(part of kernel release v2.6.39) added a check to disallow creating a
hardlink to an unlinked file.

Signed-off-by: Mathias Rav <m@git.strova.dk>
---
The manual page already describes the trick of using AT_SYMLINK_FOLLOW
as an alternative to AT_EMPTY_PATH, and for AT_EMPTY_PATH the manual
page already notes that it "will generally not work if the file has a
link count of zero". However, the precise error (ENOENT) is not mentioned,
and the error case isn't mentioned in the ERRORS section at all.

This makes it easy to overlook the fact that the AT_SYMLINK_FOLLOW
trick on /proc/self/fd/NN won't work on deleted files, as evidenced by
the follow message (which turns up when googling "linkat deleted ENOENT"):
https://groups.google.com/g/linux.kernel/c/zZO4lqqwp64

 man2/link.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/link.2 b/man2/link.2
index 1e7b2efd8..202119c6e 100644
--- a/man2/link.2
+++ b/man2/link.2
@@ -318,6 +318,10 @@ open(path, O_TMPFILE | O_EXCL, mode);
 .IP
 See
 .BR open (2).
+.B ENOENT
+An attempt was made to link to a
+.I /proc/self/fd/NN
+file corresponding to a file that has been deleted.
 .TP
 .B ENOENT
 .I oldpath
-- 
2.27.0

