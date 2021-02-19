Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7BC3201FA
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 00:51:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbhBSXuC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 18:50:02 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:49939 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229636AbhBSXuB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 18:50:01 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 2FB795C003E;
        Fri, 19 Feb 2021 18:49:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 19 Feb 2021 18:49:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=edef.eu; h=from
        :to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=IWw9in3is8uYFhqGg+BdGgY51O
        3OM/g/TpasDgbKOk4=; b=yPqV0mqDTJEf3gcFLHiViH40U2djGmm4/nm5v3lcLH
        hQXvojCyMbx0MbVMkJbdqc+dL9VtVK5O/Tlcckod8B2Vyxv4d05vLWTem9CKOgFx
        J3966kkZQWkZ1w/hI7BSQLrZrPF95tMEkHuz10VVIpsBk7GZJ+gggMa3Xy4IWJTB
        nNudTxaakNczY+8yIZKp6hHfRmHh7lUGzS2tHfEWfGTkIBBmyrCILhRrMX4+H4qz
        L9vnA5CuDx508lMP8bwhQJtUOoF92nn0XUeNUje7IWZc9O39W78pL0vTEmEhh252
        UwfYJgbGqfZA9Ju4+XzK4AuAsL46Lse2y9lMSxGBnDJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=IWw9in3is8uYFhqGg
        +BdGgY51O3OM/g/TpasDgbKOk4=; b=Iq0syoKIy8pnmGNZZ+fY+svPvOnM2TR/Y
        jnYZbjVASghNY5wkMmkk8vN3oigLvLE7JADtc/8fQwbiDorn6R8HtMDnInIQ4HCS
        shFbjW3fgKrpu4vNuEWI242LpAesEvcMuJ4NUVqh6SHyOAUsuiGDSNN+MM4v1Ph/
        Sg5KH/xPUcLLY/L6SlHUAZeCiYz6yFDprQcvexDGvSHWDXUsbVLdg4l0rBJq5nQh
        1eOkbkWCGGU2VkvLici4S+O0cbgVagoy4aXtLvG95MHNq0AH6mt8duGc8QEDpYiM
        e3aXNKftV3KU91pBa9ibzTJ1hl6zEUoNsXeeB8f1oWfYKiUbrZ1VA==
X-ME-Sender: <xms:fE4wYHBnnshxGJSjeprijmXT_aGpzsmVBh1wEJ_WcOS0V3dEY1JdIA>
    <xme:fE4wYLfy2Y2Nn37EAzAiAMFBOUokUk5N4gnmB4lTI6BDjumgL0VJxSkSRwZQj22h1
    QnTvo4rCT7An435ZQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeejgddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpegvuggvfhcuoegvuggvfhesvgguvghfrdgvuheqnecuggftrfgrthht
    vghrnhepffetteehfeeljeevlefffeehiedutdfghfefjeelhfevhfeujeduvdegjeefhe
    dunecukfhppeduleehrddvtddurddvtdeirddujeefnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomhepvgguvghfsegvuggvfhdrvghu
X-ME-Proxy: <xmx:fE4wYE4DAqCr54zK6YpQH0Cn32SGWbmsXv_R2w01RBC7VOba4lhhmw>
    <xmx:fE4wYOXWfugOuXQp5GUg2-BAoULuoLl_f_snEyEpu7rdwd5gtLYLvg>
    <xmx:fE4wYD6tHIjpfBai96krvxaH9UQu5xFqcUZzf2p_6kxvWm7aklizKw>
    <xmx:fE4wYHu5h5eL6ULPpLC9VKg3GPuN00sv8kUsFzN0_GNZxj2s6k8bYw>
Received: from localhost (uhura.edef.eu [195.201.206.173])
        by mail.messagingengine.com (Postfix) with ESMTPA id E1D5924005A;
        Fri, 19 Feb 2021 18:49:15 -0500 (EST)
From:   edef <edef@edef.eu>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, edef <edef@edef.eu>
Subject: [PATCH] ptrace.2: tfix
Date:   Fri, 19 Feb 2021 23:49:06 +0000
Message-Id: <20210219234906.117356-1-edef@edef.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
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

