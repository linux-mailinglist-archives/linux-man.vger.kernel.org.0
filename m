Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7AE3481B34
	for <lists+linux-man@lfdr.de>; Thu, 30 Dec 2021 10:43:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238298AbhL3JnF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Dec 2021 04:43:05 -0500
Received: from mail.loongson.cn ([114.242.206.163]:47884 "EHLO loongson.cn"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234584AbhL3JnF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 30 Dec 2021 04:43:05 -0500
Received: from localhost.localdomain (unknown [111.9.175.10])
        by mail.loongson.cn (Coremail) with SMTP id AQAAf9BxnN0cf81hAWEFAA--.1871S2;
        Thu, 30 Dec 2021 17:42:57 +0800 (CST)
From:   Huang Pei <huangpei@loongson.cn>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] encrypt.3: encrypt/encrypt_r, not crypt/crypt_r were deleted from 2.28
Date:   Thu, 30 Dec 2021 17:42:51 +0800
Message-Id: <20211230094251.538-1-huangpei@loongson.cn>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf9BxnN0cf81hAWEFAA--.1871S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
        VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUU5t7k0a2IF6w1UM7kC6x804xWl14x267AK
        xVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGw
        A2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26F1j
        6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK6I8E87Iv67AKxV
        W0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAa
        Y2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4
        A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k2
        0xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI
        8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jrv_JF1lIxkGc2Ij64vIr41l
        IxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIx
        AIcVCF04k26cxKx2IYs7xG6rWUJVWrZr1UMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvE
        x4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7IU8v_M3UUUUU==
X-CM-SenderInfo: xkxd0whshlqz5rrqw2lrqou0/
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See sysdeps/unix/sysv/linux/riscv/rv{32,64}/libcrypt.abilist from
glibc

Signed-off-by: Huang Pei <huangpei@loongson.cn>
---
 man3/encrypt.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/encrypt.3 b/man3/encrypt.3
index b4be7f3e0..b7df15777 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -124,8 +124,8 @@ The function is not provided.
 .SH VERSIONS
 Because they employ the DES block cipher,
 which is no longer considered secure,
-.BR crypt (),
-.BR crypt_r (),
+.BR encrypt (),
+.BR encrypt_r (),
 .BR setkey (),
 and
 .BR setkey_r ()
-- 
2.20.1

