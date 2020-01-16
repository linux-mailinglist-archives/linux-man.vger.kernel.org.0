Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4DA313FB27
	for <lists+linux-man@lfdr.de>; Thu, 16 Jan 2020 22:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387487AbgAPVPM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Jan 2020 16:15:12 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:51104 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729991AbgAPVPM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Jan 2020 16:15:12 -0500
Received: from 1.general.msalvatore.us.vpn ([10.172.66.92])
        by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <mike.salvatore@canonical.com>)
        id 1isCTu-0003Q5-I6; Thu, 16 Jan 2020 21:15:10 +0000
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   Mike Salvatore <mike.salvatore@canonical.com>
Subject: [patch] getcwd.3: wfix
Message-ID: <bf93b481-e246-d281-f952-a7ece96aa697@canonical.com>
Date:   Thu, 16 Jan 2020 16:15:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patch is a minor wording fix in getcwd.3 that changes "In the case 
getcwd()" to "In the case of getcwd()". This patch should apply cleanly to the 
master branch of the git repository.

Regards,
Mike Salvatore

 From 3b68ad225dbaada2b1b55153dc57807b04531cd6 Mon Sep 17 00:00:00 2001
From: Mike Salvatore <mike.salvatore@canonical.com>
Date: Thu, 16 Jan 2020 16:08:08 -0500
Subject: [PATCH] getcwd.3: wfix

Signed-off-by: Mike Salvatore <mike.salvatore@canonical.com>
---
  man3/getcwd.3 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getcwd.3 b/man3/getcwd.3
index c8a691b4a..e5ed2c5d9 100644
--- a/man3/getcwd.3
+++ b/man3/getcwd.3
@@ -155,7 +155,7 @@ is deprecated.
  .SH RETURN VALUE
  On success, these functions return a pointer to a string containing
  the pathname of the current working directory.
-In the case
+In the case of
  .BR getcwd ()
  and
  .BR getwd ()
-- 
2.20.1

