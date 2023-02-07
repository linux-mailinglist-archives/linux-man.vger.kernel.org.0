Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 964F568E225
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjBGUue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:50:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjBGUud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:50:33 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64096CDD2
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:50:32 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id POSCpq158c9C4PUv9pYYN0; Tue, 07 Feb 2023 20:50:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675803031; bh=2p+Dl2i/zJ1HYvHkkvjW1DJf5DB4z2TqltHGHSq9P8U=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=AtSfMrKinymBDLPTv2592BRdUnBxBgiOF2mGr38SOMPDOS/ef32RgHcJZ9j/eM6mw
         y+tVjcmhFqsGprtyieY6NM68+/qSnc6SvhZzhYztrPPCWl76w7S+NPjRzoD5coG2Bv
         qA69vdPCePlCl5BZGRYpFyiQ6cTmn+UdXce9nWAJFhSlRT81miQA6TJSL/1DWMheoa
         ykb14A8vkQqw5ARfAShrAaj7aPLOx9GNgGLUbzVo+mFodtwX/4OVlHEXiWispkoa8X
         5TBqPFVApwLoryf+WanN2Y/Dxq67Yl4166CUCVWv8L+UyLKSJecj9sYpTdjCi33boO
         UrYf+xaJl0xgg==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUv8p8B4GyAOePUv8pHROB; Tue, 07 Feb 2023 20:50:31 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e2b997
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=G80oAnSK7v4uroVoX6gA:9 a=QEXdDO2ut3YA:10
 a=29SEg3U9A5LDG8xS1H8A:9 a=1X--RXN9LygA:10 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 10/11] man2/futex.2: change limit to use ISO suffix
Date:   Tue,  7 Feb 2023 13:32:59 -0700
Message-Id: <20230207203300.49894-11-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEhPdB8JifDftyD3uTj54DiqvO0ug1YqEJVjQ9dQH8z0TKoA6dsRmSV1jhk0O+jcs0nyaIDORrrKEk317l+7veYLbAlkdYNiNunUg1P8xM3buEi4Cw0Q
 0/Qfh3UZGlExQ2WMtMzR6kdo5gDHFKe5x3EWRmdCoCaRMqRbxn6Xj0o1XEJGNYP6vjUiwKF//0KcQWYu8bOLlDzYOpaKCr9t3iU5/sVHIR4x+CHDva6/H+oY
 pznfWUTHMgwQbM1t5eVkWCptHhyid0WjalfN4MoxmuRxKvdFZvr99vkSiHUo+W/4
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch"

diff --git a/man2/futex.2 b/man2/futex.2
index b815056d231c..b9331ead985f 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1536,7 +1536,7 @@ argument was invalid
 .RI ( tv_sec
 was less than zero, or
 .I tv_nsec
-was not less than 1,000,000,000).
+was not less than 1G).
 .TP
 .B EINVAL
 The operation specified in

--------------2.39.0--


