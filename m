Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4510F302DA9
	for <lists+linux-man@lfdr.de>; Mon, 25 Jan 2021 22:29:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732662AbhAYV3K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jan 2021 16:29:10 -0500
Received: from 5.mo51.mail-out.ovh.net ([188.165.49.213]:59704 "EHLO
        5.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732663AbhAYV3I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 16:29:08 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.240])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id 1BB3725D89E;
        Mon, 25 Jan 2021 22:17:26 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 25 Jan
 2021 22:17:25 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R005a25fe447-d823-4309-bdd2-a429dc202322,
                    0D706BE754B68603FDA3D51A3D44F01D62F54E1F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.171
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH] man-pages.7: tfix
Date:   Mon, 25 Jan 2021 22:17:23 +0100
Message-ID: <20210125211723.7363-1-jwilk@jwilk.net>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: aefbae28-ac7a-4fd9-bf6f-5acd7aad64b8
X-Ovh-Tracer-Id: 3847481459363207133
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdefgddugeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfgtihesthekredtredttdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehjeejffejjedvkeehheejieelhffftdduteefheeukeeuiedvudehveehfefhnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 14bbea54c..7658ef33b 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -563,7 +563,7 @@ is set is
 is set to indicate the error"
 or similar.
 .\" Before man-pages 5.11, many different wordings were used, which
-.\" was confusing, and potentialy made scripted edits more difficult.
+.\" was confusing, and potentially made scripted edits more difficult.
 This wording is consistent with the wording used in both POSIX.1 and FreeBSD.
 .SS ATTRIBUTES
 .\" See man-pages commit c466875ecd64ed3d3cd3e578406851b7dfb397bf
-- 
2.30.0

