Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7044145EE7B
	for <lists+linux-man@lfdr.de>; Fri, 26 Nov 2021 14:04:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237798AbhKZNHq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Nov 2021 08:07:46 -0500
Received: from 10.mo548.mail-out.ovh.net ([46.105.77.235]:58709 "EHLO
        10.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233254AbhKZNFp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Nov 2021 08:05:45 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.235])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id B9DD5210B6;
        Fri, 26 Nov 2021 12:43:26 +0000 (UTC)
Received: from jwilk.net (37.59.142.102) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Fri, 26 Nov
 2021 13:43:25 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R0045179f376-f426-4e94-93ab-b01416893e67,
                    CCE6078C6C5C0BEFF4033B362A984AD9811D4FE6) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.93
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 1/2] console_codes.4: Document \e[3m and \e[23m for italic
Date:   Fri, 26 Nov 2021 13:43:22 +0100
Message-ID: <20211126124323.7496-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: b580d223-7b9f-4dc0-b6b4-47f4569c5df8
X-Ovh-Tracer-Id: 15451287373423892445
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrhedvgdegvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffoggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheejjeffjeejvdekheehjeeilefhffdtudetfeehueekueeivdduheevheefhfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Supported since fadb4244085cd04fd9c8b3a4b3bc161f506431f3 (v2.6.22).

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man4/console_codes.4 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man4/console_codes.4 b/man4/console_codes.4
index d549b76a9..24399925b 100644
--- a/man4/console_codes.4
+++ b/man4/console_codes.4
@@ -317,6 +317,7 @@ T}
 2	T{
 set half-bright (simulated with color on a color display)
 T}
+3	set italic (since Linux 2.6.22; simulated with color on a color display)
 4	T{
 set underscore (simulated with color on a color display)
 (the colors used to simulate dim or underline are set
@@ -344,6 +345,7 @@ set underline; before Linux 4.17, this value
 set normal intensity (as is done in many other terminals)
 T}
 22	set normal intensity
+23	italic off (since Linux 2.6.22)
 24	underline off
 25	blink off
 27	reverse video off
-- 
2.34.0

