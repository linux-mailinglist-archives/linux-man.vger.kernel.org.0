Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3298024A5A3
	for <lists+linux-man@lfdr.de>; Wed, 19 Aug 2020 20:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726729AbgHSSHC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Aug 2020 14:07:02 -0400
Received: from smtprelay07.ispgateway.de ([134.119.228.97]:61077 "EHLO
        smtprelay07.ispgateway.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726723AbgHSSG7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Aug 2020 14:06:59 -0400
X-Greylist: delayed 10082 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 Aug 2020 14:06:59 EDT
Received: from [37.4.254.251] (helo=[192.168.0.28])
        by smtprelay07.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92.3)
        (envelope-from <t.piekarski@deloquencia.de>)
        id 1k8PrX-0004jf-WF; Wed, 19 Aug 2020 17:18:52 +0200
From:   Thomas Piekarski <t.piekarski@deloquencia.de>
Subject: [PATCH] bpf-helpers.7: wfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
Date:   Wed, 19 Aug 2020 17:18:55 +0200
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

Removing repeated word "will"

Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>

---
  man7/bpf-helpers.7 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index c8b3c7710..10ee24e5d 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -2338,7 +2338,7 @@ Look for an IPv6 socket.
  .UNINDENT
  .sp
  If the \fInetns\fP is a negative signed 32\-bit integer, then the
-socket lookup table in the netns associated with the \fIctx\fP will
+socket lookup table in the netns associated with the \fIctx\fP
  will be used. For the TC hooks, this is the netns of the device
  in the skb. For socket hooks, this is the netns of the socket.
  If \fInetns\fP is any other signed 32\-bit value greater than or
-- 
2.20.1
