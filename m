Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D444632B534
	for <lists+linux-man@lfdr.de>; Wed,  3 Mar 2021 07:30:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238471AbhCCGYw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 01:24:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349777AbhCBRga (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Mar 2021 12:36:30 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0EC6C0698C0
        for <linux-man@vger.kernel.org>; Tue,  2 Mar 2021 09:20:41 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id o38so14246781pgm.9
        for <linux-man@vger.kernel.org>; Tue, 02 Mar 2021 09:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cilium-io.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z18YKbLroFUMGatWaH2sPxqJhja6Q90A29PeFQbc+yo=;
        b=Pd1EI/TpC8ppXGX0DvPNxNKLO4LBZUb5iWVW39mf7VL+Yku8YghXxLi1ngPO+TsrbW
         so6J/GGP32H8aiu44WZ1cWs5oVTZF7yfxNSFB0iPIBpeogJHoH+UCjHsgAmvV3dPZ6+/
         WgZ6XVBb0OGFPrP9a0dTRg/QWoOahRBaAROtfFOIrdMeOCTvO9cGNG0GpqdnbyBLGJZ1
         i7HSO8FEA//QEniDAOVW3NzwGurhiZtBzrlAEB16uU++MeTbT+PbVJlvcGyo2cbkx/UX
         Ov7Qy3F+OZGQoBVEBL67GAoSJBQwCQpNKLlOQdCNiqfgQouCYWsApBI4s8rr8IkRmeqv
         nNjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z18YKbLroFUMGatWaH2sPxqJhja6Q90A29PeFQbc+yo=;
        b=BEnU3OB1x5F164FXmiHvNB0pD/Y2h8mO0jSqsqv0iBT8tLwZNXZMRRh1AXkDGYqymK
         uN02MCG87b3+mjtnsSeUCUpgP/j/GPJ1CnKvbXmiWqMyoi3kMFGpI/LdhTnevO96q0vI
         zmAIa0lAu1eL7A7WGwgpgmKp5JPhQPUL3DbqM+jHkNt68bKfAqD0MQYT1zFxAXe7eXzr
         KJdIxiW/dqgjODw5yjCOkQE/KwSFWIqgsUz3VaOxmBHWNZQ1M8lBak6SmofLZkEVPnuS
         tPHhWVrQSUYal784H8Q2qktnHcK8pqOOE2y2gnCIACjkUZ2CU/xjXK8Ior2QDCHsbVSU
         8aKA==
X-Gm-Message-State: AOAM531WuZWLl+rYjPuZzSdCxHPZ1oANw2fYLKhljFYo9u/A5QI93RZE
        tyANNLpanHYklpw1hX0v8wjmwA==
X-Google-Smtp-Source: ABdhPJxim7dzilHY/aBlpeWqGXwKtRtgJEUPj4lm/UAvJUStMTmJjPAbshFJ/EXYqAw/a1iQt999cw==
X-Received: by 2002:a62:170a:0:b029:1ed:cc98:35aa with SMTP id 10-20020a62170a0000b02901edcc9835aamr4026123pfx.77.1614705641361;
        Tue, 02 Mar 2021 09:20:41 -0800 (PST)
Received: from localhost.localdomain (c-73-93-5-123.hsd1.ca.comcast.net. [73.93.5.123])
        by smtp.gmail.com with ESMTPSA id b15sm20073923pgg.85.2021.03.02.09.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 09:20:40 -0800 (PST)
From:   Joe Stringer <joe@cilium.io>
To:     bpf@vger.kernel.org
Cc:     daniel@iogearbox.net, ast@kernel.org, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org,
        =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
        Quentin Monnet <quentin@isovalent.com>
Subject: [PATCHv2 bpf-next 07/15] bpf: Document BPF_PROG_QUERY syscall command
Date:   Tue,  2 Mar 2021 09:19:39 -0800
Message-Id: <20210302171947.2268128-8-joe@cilium.io>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210302171947.2268128-1-joe@cilium.io>
References: <20210302171947.2268128-1-joe@cilium.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Commit 468e2f64d220 ("bpf: introduce BPF_PROG_QUERY command") originally
introduced this, but there have been several additions since then.
Unlike BPF_PROG_ATTACH, it appears that the sockmap progs are not able
to be queried so far.

Acked-by: Toke Høiland-Jørgensen <toke@redhat.com>
Reviewed-by: Quentin Monnet <quentin@isovalent.com>
Signed-off-by: Joe Stringer <joe@cilium.io>
---
CC: Alexei Starovoitov <ast@kernel.org>
---
 include/uapi/linux/bpf.h | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/include/uapi/linux/bpf.h b/include/uapi/linux/bpf.h
index a6cd6650e23d..0cf92ef011f1 100644
--- a/include/uapi/linux/bpf.h
+++ b/include/uapi/linux/bpf.h
@@ -389,6 +389,43 @@ union bpf_iter_link_info {
  *		Obtain information about eBPF programs associated with the
  *		specified *attach_type* hook.
  *
+ *		The *target_fd* must be a valid file descriptor for a kernel
+ *		object which depends on the attach type of *attach_bpf_fd*:
+ *
+ *		**BPF_PROG_TYPE_CGROUP_DEVICE**,
+ *		**BPF_PROG_TYPE_CGROUP_SKB**,
+ *		**BPF_PROG_TYPE_CGROUP_SOCK**,
+ *		**BPF_PROG_TYPE_CGROUP_SOCK_ADDR**,
+ *		**BPF_PROG_TYPE_CGROUP_SOCKOPT**,
+ *		**BPF_PROG_TYPE_CGROUP_SYSCTL**,
+ *		**BPF_PROG_TYPE_SOCK_OPS**
+ *
+ *			Control Group v2 hierarchy with the eBPF controller
+ *			enabled. Requires the kernel to be compiled with
+ *			**CONFIG_CGROUP_BPF**.
+ *
+ *		**BPF_PROG_TYPE_FLOW_DISSECTOR**
+ *
+ *			Network namespace (eg /proc/self/ns/net).
+ *
+ *		**BPF_PROG_TYPE_LIRC_MODE2**
+ *
+ *			LIRC device path (eg /dev/lircN). Requires the kernel
+ *			to be compiled with **CONFIG_BPF_LIRC_MODE2**.
+ *
+ *		**BPF_PROG_QUERY** always fetches the number of programs
+ *		attached and the *attach_flags* which were used to attach those
+ *		programs. Additionally, if *prog_ids* is nonzero and the number
+ *		of attached programs is less than *prog_cnt*, populates
+ *		*prog_ids* with the eBPF program ids of the programs attached
+ *		at *target_fd*.
+ *
+ *		The following flags may alter the result:
+ *
+ *		**BPF_F_QUERY_EFFECTIVE**
+ *			Only return information regarding programs which are
+ *			currently effective at the specified *target_fd*.
+ *
  *	Return
  *		Returns zero on success. On error, -1 is returned and *errno*
  *		is set appropriately.
-- 
2.27.0

