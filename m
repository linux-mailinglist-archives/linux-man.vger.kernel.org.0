Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3830684214
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2019 04:06:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728866AbfHGCGf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Aug 2019 22:06:35 -0400
Received: from master.debian.org ([82.195.75.110]:33282 "EHLO
        master.debian.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727651AbfHGCGf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Aug 2019 22:06:35 -0400
Received: from pabs by master.debian.org with local (Exim 4.89)
        (envelope-from <pabs@master.debian.org>)
        id 1hvB1C-0007qH-HU; Wed, 07 Aug 2019 01:45:34 +0000
From:   Paul Wise <pabs3@bonedaddy.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Paul Wise <pabs3@bonedaddy.net>
Subject: [PATCH] core.5: explain the new situation with argument splitting
Date:   Wed,  7 Aug 2019 09:45:25 +0800
Message-Id: <20190807014525.24825-1-pabs3@bonedaddy.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It changed in Linux v5.3-rc3 commit 315c69261dd3 from
splitting after template expansion to splitting beforehand.
---
 man5/core.5 | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/man5/core.5 b/man5/core.5
index d3efca3f8..ddc0352b8 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -267,6 +267,20 @@ file.
 If the first character of this file is a pipe symbol (\fB|\fP),
 then the remainder of the line is interpreted as the command-line for
 a user-space program (or script) that is to be executed.
+.PP
+.\" 315c69261dd3fa12dbc830d4fa00d1fad98d3b03
+Since kernel 5.3.0, the pipe template is split on spaces into an
+argument list before the template parameters are expanded.
+In earlier kernels the template parameters are expanded first and
+the resulting string is split on spaces into an argument list.
+This means that in earlier kernels executable names added by the
+%e and %E template parameters could get split into multiple arguments.
+So the core dump handler needs to put the executable names as the last
+argument and ensure it joins all parts of the executable name using spaces.
+Executable names with multiple spaces in them are not correctly represented
+in earlier kernels so the core dump handler needs to use mechanisms to find
+the executable name.
+.PP
 Instead of being written to a disk file, the core dump is given as
 standard input to the program.
 Note the following points:
-- 
2.20.1

