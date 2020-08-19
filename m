Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DED2724A451
	for <lists+linux-man@lfdr.de>; Wed, 19 Aug 2020 18:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726342AbgHSQtQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Aug 2020 12:49:16 -0400
Received: from smtprelay04.ispgateway.de ([80.67.29.8]:15809 "EHLO
        smtprelay04.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgHSQtP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Aug 2020 12:49:15 -0400
X-Greylist: delayed 5379 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 Aug 2020 12:49:15 EDT
Received: from [37.4.254.251] (helo=[192.168.0.28])
        by smtprelay04.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1k8PsB-0005Mo-At; Wed, 19 Aug 2020 17:19:31 +0200
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Subject: [PATCH] cgroups.7: wfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <ee32e31f-7b79-b54b-b378-9faa7a9a372e@deloquencia.de>
Date:   Wed, 19 Aug 2020 17:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Df-Sender: dC5waWVrYXJza2lAZGVsb3F1ZW5jaWEuZGU=
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Removing repeated word "the"

Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

---
  man7/cgroups.7 | 3 +--
  1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 8ca19e4a8..f189c7a87 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -879,8 +879,7 @@ Each nonroot cgroup in the v2 hierarchy contains a 
read-only file,
  .IR cgroup.events ,
  whose contents are key-value pairs
  (delimited by newline characters, with the key and value separated by 
spaces)
-providing state information about the
-the cgroup:
+providing state information about the cgroup:
  .PP
  .in +4n
  .EX
-- 
2.20.1
