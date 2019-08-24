Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8773B9C04B
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2019 23:11:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727907AbfHXVLt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Aug 2019 17:11:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:53140 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727777AbfHXVLt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 24 Aug 2019 17:11:49 -0400
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net [24.5.143.220])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CA87120870;
        Sat, 24 Aug 2019 21:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566681108;
        bh=gW9WBX2j0CKKO/pFh4YFuv/x5jdIuPYIXiEFLUn9oS4=;
        h=From:To:Cc:Subject:Date:From;
        b=uyFKtHS6twMXUOE77JsBPoYa6XDnIjTuELU3sm66R2LmZo78VX4ptpGvQfSz55Tk2
         O/8SxIMatNfyHembhSXXEsW3AOA+7Tr27yyYhwUD2emILIVy4thgyMwbmcPVcBGTXU
         cm9JIyzNAhSETqHvr6vIiFpnfwlZ39OQ+euiSDUE=
From:   Eric Biggers <ebiggers@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] socket.2: tfix
Date:   Sat, 24 Aug 2019 14:11:07 -0700
Message-Id: <20190824211107.16912-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Eric Biggers <ebiggers@google.com>

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 man2/socket.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/socket.2 b/man2/socket.2
index 14f832022..0b3b90bb8 100644
--- a/man2/socket.2
+++ b/man2/socket.2
@@ -151,7 +151,7 @@ T}
 T{
 .B AF_PPPOX
 T}:T{
-Generic PPP transport layer, for setting up up L2 tunnels
+Generic PPP transport layer, for setting up L2 tunnels
 (L2TP and PPPoE)
 T}
 T{
-- 
2.23.0

