Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701DB260735
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 01:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727927AbgIGXq0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 19:46:26 -0400
Received: from smtp.gentoo.org ([140.211.166.183]:45594 "EHLO smtp.gentoo.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727769AbgIGXq0 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 7 Sep 2020 19:46:26 -0400
Received: from vapier.lan (localhost [127.0.0.1])
        by smtp.gentoo.org (Postfix) with ESMTP id 2F651335D2E;
        Mon,  7 Sep 2020 23:46:25 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] posix_spawn.3: tfix
Date:   Mon,  7 Sep 2020 19:46:22 -0400
Message-Id: <20200907234622.13350-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Frysinger <vapier@chromium.org>

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man3/posix_spawn.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 820d5cef5768..a7472bce5ed3 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -41,9 +41,9 @@ posix_spawn, posix_spawnp \- spawn a process
 .BI "                char *const " argv[] ", char *const " envp[] );
 .PP
 .BI "int posix_spawnp(pid_t *" pid ", const char *" file ,
-.BI "                const posix_spawn_file_actions_t *" file_actions ,
-.BI "                const posix_spawnattr_t *" attrp ,
-.BI "                char *const " argv[] ", char *const " envp[] );
+.BI "                 const posix_spawn_file_actions_t *" file_actions ,
+.BI "                 const posix_spawnattr_t *" attrp ,
+.BI "                 char *const " argv[] ", char *const " envp[] );
 .fi
 .SH DESCRIPTION
 The
-- 
2.26.2

