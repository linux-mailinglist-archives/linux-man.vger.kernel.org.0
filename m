Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F583201FE
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 00:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbhBSX42 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 18:56:28 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:47187 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229652AbhBSX41 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 18:56:27 -0500
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 09C895C00FD;
        Fri, 19 Feb 2021 18:55:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 19 Feb 2021 18:55:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=edef.eu; h=from
        :to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm2; bh=R7yaX7+QT6Gna
        reOTZsHUqKjd0naX5NiBKXVIg5xoug=; b=n7DPFZEpd8kw2rm6QUMjspJs+6SiK
        pnmFihHF8U3mqkieCi0Yu1x0DR4vHCzElFM9Xj9utdZlJwsxkkUALVWLELtg/cSq
        VPPYzElUPW2Jyi4w8IDQMKR7w7sMIEVcp1rSnsyoFSc1PdiQJAIpyDEvGoFugAX9
        WHf7rllFvjj4kuoYVbHFX9UrpBy15qxL7Q+5x9TjX9jCaklHGIKAIyWO0RwG9bEA
        Vh0r+3OiAVso6rEmb/Xa0FDwJQczBpDWFtKmBmactI39YZVrb6Z5wUD5ktlcdbqe
        DHlwIBq5kQykG7a54WxIK/GrPpJ4IMssAyhfY/oSo64VJsNLS/xABis3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; bh=R7yaX7+QT6GnareOTZsHUqKjd0naX5NiBKXVIg5xoug=; b=s158T1q+
        Txr5s6YINSVrGz4+bLz9+F4/PlCvrrtXNhBTuqrazkWuF9rDqghhwLWLhZHYJB7U
        lv1ArVHEz3wRlNCNOOC3t9a9DzAebg0UqUk6v0NyIaRwlZliUuK9R82fzIOaWtEa
        boR1P70fbl5UL+X+XqH2pIR0a7EirWpspT20XGFQkUVGVhQ6JMoRV4aKDJls+gIX
        +34Yc2ryrMGAG+B+XaIWzucntOj1Z0GJkUTiT0KFHqpryQXuxHrDjWDkCvlY0GyO
        uDk+X1uWq/ruSpBMunSdbd/ZLQlOGkVG16IjEqWI+lzySIzL5UgolVZW80bopMMf
        7gbDxKnkKoznvw==
X-ME-Sender: <xms:6U8wYEcuh6JVMjQS68eYehF2WJL8c34jKxTHptxaSc_aZFxyI6XLpg>
    <xme:6U8wYGOajCpiq6e2Pr5Nz_AQEgeaF1tLSftXzm7N1cpoZ-foMNqRK0I-Mdg30qvMY
    QCFM4ypnbzFsPnMFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeejgddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpegvuggvfhcuoegvuggvfhesvgguvghfrdgvuheqnecuggftrfgr
    thhtvghrnhepkeduvdevgeeufffgheehhfefgeelleduveejhfdugedthfffgefgvddvud
    eggfehnecukfhppeduleehrddvtddurddvtdeirddujeefnecuvehluhhsthgvrhfuihii
    vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepvgguvghfsegvuggvfhdrvghu
X-ME-Proxy: <xmx:6U8wYFgGN5WHKZO99R0P86ClhgSDFSXcMyG1JreuAXpBCCINtZvNIQ>
    <xmx:6U8wYJ8vJGbVnVuG-HIeHp26YBs8_zgIxh6pzNsuquRkQiTwGTRonA>
    <xmx:6U8wYAvlCAXIp7EfmO1z53CeNCjor22VGW-P5M88F-camn2Ws49VQQ>
    <xmx:6k8wYG2WDSQVPFD5D06hLlrNFO6n-RzaMuoJgmxHjwundN0hPaht6Q>
Received: from localhost (uhura.edef.eu [195.201.206.173])
        by mail.messagingengine.com (Postfix) with ESMTPA id 8CD4A240057;
        Fri, 19 Feb 2021 18:55:21 -0500 (EST)
From:   edef <edef@edef.eu>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, edef <edef@edef.eu>
Subject: [PATCH] ptrace.2: tfix
Date:   Fri, 19 Feb 2021 23:54:22 +0000
Message-Id: <20210219235421.120078-1-edef@edef.eu>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210219234906.117356-1-edef@edef.eu>
References: <20210219234906.117356-1-edef@edef.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: edef <edef@edef.eu>
---
I seem to have forgotten my Signed-off-by in my original email,
my apologies.

 man2/ptrace.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 17e415ba2..5245338ba 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1052,7 +1052,7 @@ structure contains the following fields:
 .IP
 .in +4n
 .EX
-struct ptrace_syscal_info {
+struct ptrace_syscall_info {
     __u8 op;        /* Type of system call stop */
     __u32 arch;     /* AUDIT_ARCH_* value; see seccomp(2) */
     __u64 instruction_pointer; /* CPU instruction pointer */
-- 
2.30.0

