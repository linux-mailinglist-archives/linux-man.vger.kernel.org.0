Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0562136B986
	for <lists+linux-man@lfdr.de>; Mon, 26 Apr 2021 20:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239834AbhDZS7B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Apr 2021 14:59:01 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:33801 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239804AbhDZS7B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Apr 2021 14:59:01 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.163])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id EB94E9DC393D;
        Mon, 26 Apr 2021 20:58:16 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Mon, 26 Apr
 2021 20:58:16 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R0018c65a9aa-f9fe-4698-86e4-f3f3c8fe4eb5,
                    A2578E59CEF3D64DBCA5434119CDB31290CB7365) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.49.50
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [PATCH 2/2] exit_group.2, getunwind.2: tfix
Date:   Mon, 26 Apr 2021 20:58:13 +0200
Message-ID: <20210426185813.3952-2-jwilk@jwilk.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210426185813.3952-1-jwilk@jwilk.net>
References: <20210426185813.3952-1-jwilk@jwilk.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 307e420a-8243-423c-9438-b9c4d42ef13b
X-Ovh-Tracer-Id: 957014924216621021
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvddukedgudefgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhephffvufffkffojghfggfgtghisehtkeertdertddtnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeulefftddufefggeehjeetgfevvdeljeehheegkedtkeetfeetgfffueetudffkeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---
 man2/exit_group.2 | 2 +-
 man2/getunwind.2  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/exit_group.2 b/man2/exit_group.2
index b512927d4..d197f1f2e 100644
--- a/man2/exit_group.2
+++ b/man2/exit_group.2
@@ -28,7 +28,7 @@ exit_group \- exit all threads in a process
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
-.B #inlcude <unistd.h>
+.B #include <unistd.h>
 .PP
 .BI "noreturn void syscall(SYS_exit_group, int " status );
 .fi
diff --git a/man2/getunwind.2 b/man2/getunwind.2
index 2c44506c7..403bd7770 100644
--- a/man2/getunwind.2
+++ b/man2/getunwind.2
@@ -31,7 +31,7 @@ getunwind \- copy the unwind data to caller's buffer
 .nf
 .B #include <linux/unwind.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
-.B #inlcude <unistd.h>
+.B #include <unistd.h>
 .PP
 .BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
 .fi
-- 
2.31.1

