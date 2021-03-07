Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89EDA330520
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 00:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233237AbhCGXAz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 18:00:55 -0500
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:53791 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbhCGXAZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 18:00:25 -0500
X-Originating-IP: 50.39.163.217
Received: from localhost (unknown [50.39.163.217])
        (Authenticated sender: josh@joshtriplett.org)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1A9446000F;
        Sun,  7 Mar 2021 23:00:22 +0000 (UTC)
Date:   Sun, 7 Mar 2021 15:00:20 -0800
From:   Josh Triplett <josh@joshtriplett.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 1/2] exec.3: Fix description of 'e' variants
Message-ID: <849c71e0a6503e276e4563ff00f2f5f83e4a58aa.1615157989.git.josh@joshtriplett.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The envp argument specifies the environment of the new process image,
not "the environment of the caller".

Signed-off-by: Josh Triplett <josh@joshtriplett.org>
---
 man3/exec.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/exec.3 b/man3/exec.3
index 211e06421..3d936d08d 100644
--- a/man3/exec.3
+++ b/man3/exec.3
@@ -116,7 +116,7 @@ The array of pointers
 .I must
 be terminated by a null pointer.
 .SS e - execle(), execvpe()
-The environment of the caller is specified via the argument
+The environment of the new process image is specified via the argument
 .IR envp .
 The
 .I envp
-- 
2.30.1

