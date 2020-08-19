Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB9F24A3A8
	for <lists+linux-man@lfdr.de>; Wed, 19 Aug 2020 17:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728670AbgHSP7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Aug 2020 11:59:51 -0400
Received: from smtprelay03.ispgateway.de ([80.67.31.37]:50907 "EHLO
        smtprelay03.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726570AbgHSP7u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Aug 2020 11:59:50 -0400
X-Greylist: delayed 620 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 Aug 2020 11:59:50 EDT
Received: from [37.4.254.251] (helo=[192.168.0.28])
        by smtprelay03.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1k8Psh-0001ii-1n; Wed, 19 Aug 2020 17:20:03 +0200
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Subject: [PATCH] time_namespaces.7: wfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <c9434354-77b7-05a4-1a8a-5289cf8e6896@deloquencia.de>
Date:   Wed, 19 Aug 2020 17:20:02 +0200
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
  man7/time_namespaces.7 | 1 -
  1 file changed, 1 deletion(-)

diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
index d70380de4..86acc6759 100644
--- a/man7/time_namespaces.7
+++ b/man7/time_namespaces.7
@@ -158,7 +158,6 @@ value is not valid.
  .TP
  .B EPERM
  The caller does not have the
-the
  .BR CAP_SYS_TIME
  capability.
  .TP
-- 
2.20.1
