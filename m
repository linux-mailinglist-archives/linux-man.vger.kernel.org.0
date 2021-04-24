Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD72336A387
	for <lists+linux-man@lfdr.de>; Sun, 25 Apr 2021 00:55:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbhDXWzu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Apr 2021 18:55:50 -0400
Received: from vmicros1.altlinux.org ([194.107.17.57]:45374 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbhDXWzu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Apr 2021 18:55:50 -0400
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id C90E272C8B5;
        Sun, 25 Apr 2021 01:55:09 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id A670D7CC8A7; Sun, 25 Apr 2021 01:55:09 +0300 (MSK)
Date:   Sat, 24 Apr 2021 20:00:00 +0000
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] move_pages.2: ffix
Message-ID: <20210424200000.GA14829@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
---
 man2/move_pages.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/move_pages.2 b/man2/move_pages.2
index 279de7568..69c182f95 100644
--- a/man2/move_pages.2
+++ b/man2/move_pages.2
@@ -24,7 +24,7 @@ move_pages \- move individual pages of a process to another node
 .nf
 .B #include <numaif.h>
 .PP
-.BI "long move_pages(int " pid ", unsigned long count, void **" pages ,
+.BI "long move_pages(int " pid ", unsigned long " count ", void **" pages ,
 .BI "                const int *" nodes ", int *" status ", int " flags );
 .fi
 .PP
-- 
ldv
