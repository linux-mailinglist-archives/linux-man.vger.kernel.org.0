Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49D9B615728
	for <lists+linux-man@lfdr.de>; Wed,  2 Nov 2022 02:51:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiKBBvR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 21:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiKBBvQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 21:51:16 -0400
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EAB5D2EC
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 18:51:14 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------N93M4KTID3Cwad0aQkcgKUWB"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1a-insec.net;
        s=key1; t=1667353873;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=BhzHxIjZeS4tbjePh/UO0bNA+sW7AlREv61g2mbJApc=;
        b=QN2Dsd4E2jp/OjcwStjgQEx4+59L5OEckXzyM80dgsYCEKUN2Roq0COt//ynfO6q448+Ib
        KyArvKplwaHc22oJ/cIcdFMS3RASoWLds2EOG8/9zRMgYLWd/Jbns5yAkQg2NYsBATlX95
        SRW4SBc8IcI2rVdWFuSUZxOVqgfSPjhke/7A29rM3w9Q/+AJ7SI6dn0iLWcqRGsmecxuSf
        PBTbJKq9KvHmbabir/VR95Jbwj+N+LexG2r3MZReCXgp8vx8Mp/+qO4hjTJVKsDRyPq+tU
        eTBFzddrYOl+SkmqwSc07lHU11okYaxcOf5PKVinKSLqu9IRfgbnJFdNDn5P7Q==
Message-ID: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
Date:   Wed, 2 Nov 2022 01:50:57 +0000
MIME-Version: 1.0
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   i+linux@1a-insec.net
Subject: [patch] nice.2: wfix
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Language: en-US
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM14,
        RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------N93M4KTID3Cwad0aQkcgKUWB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

nice(2) in glibc uses `setpriority(PRIO_PROCESS, x)`. I think "thread" 
means pthread more, so "process" is the better word here.

The patch is below:


 From 835c33dbc72abec02d49a5ac6b1b16e4d39a599b Mon Sep 17 00:00:00 2001
From: Locria Cyber <74560659+locriacyber@users.noreply.github.com>
Date: Tue, 1 Nov 2022 06:10:16 +0000
Subject: [PATCH] nice.2 tfix
Signed-off-by: Locria Cyber <i+linux@1a.insec.net>

---
  man2/nice.2 | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/nice.2 b/man2/nice.2
index f4e2406..2ecd743 100644
--- a/man2/nice.2
+++ b/man2/nice.2
@@ -36,7 +36,7 @@ Feature Test Macro Requirements for glibc (see
  .BR nice ()
  adds
  .I inc
-to the nice value for the calling thread.
+to the nice value for the calling process.
  (A higher nice value means a lower priority.)
  .PP
  The range of the nice value is +19 (low priority) to \-20 (high priority).
-- 
2.38.1


--------------N93M4KTID3Cwad0aQkcgKUWB
Content-Type: text/x-patch; charset=UTF-8; name="0001-nice.2-tfix.patch"
Content-Disposition: attachment; filename="0001-nice.2-tfix.patch"
Content-Transfer-Encoding: base64

RnJvbSA4MzVjMzNkYmM3MmFiZWMwMmQ0OWE1YWM2YjFiMTZlNGQzOWE1OTliIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBMb2NyaWEgQ3liZXIgPDc0NTYwNjU5K2xvY3JpYWN5
YmVyQHVzZXJzLm5vcmVwbHkuZ2l0aHViLmNvbT4KRGF0ZTogVHVlLCAxIE5vdiAyMDIyIDA2
OjEwOjE2ICswMDAwClN1YmplY3Q6IFtQQVRDSF0gbmljZS4yIHRmaXgKCi0tLQogbWFuMi9u
aWNlLjIgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9tYW4yL25pY2UuMiBiL21hbjIvbmljZS4yCmluZGV4IGY0
ZTI0MDYuLjJlY2Q3NDMgMTAwNjQ0Ci0tLSBhL21hbjIvbmljZS4yCisrKyBiL21hbjIvbmlj
ZS4yCkBAIC0zNiw3ICszNiw3IEBAIEZlYXR1cmUgVGVzdCBNYWNybyBSZXF1aXJlbWVudHMg
Zm9yIGdsaWJjIChzZWUKIC5CUiBuaWNlICgpCiBhZGRzCiAuSSBpbmMKLXRvIHRoZSBuaWNl
IHZhbHVlIGZvciB0aGUgY2FsbGluZyB0aHJlYWQuCit0byB0aGUgbmljZSB2YWx1ZSBmb3Ig
dGhlIGNhbGxpbmcgcHJvY2Vzcy4KIChBIGhpZ2hlciBuaWNlIHZhbHVlIG1lYW5zIGEgbG93
ZXIgcHJpb3JpdHkuKQogLlBQCiBUaGUgcmFuZ2Ugb2YgdGhlIG5pY2UgdmFsdWUgaXMgKzE5
IChsb3cgcHJpb3JpdHkpIHRvIFwtMjAgKGhpZ2ggcHJpb3JpdHkpLgotLSAKMi4zOC4xCgo=


--------------N93M4KTID3Cwad0aQkcgKUWB--
