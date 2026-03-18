Return-Path: <linux-man+bounces-5274-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNoyJr7Bumm6bgIAu9opvQ
	(envelope-from <linux-man+bounces-5274-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 16:16:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 809C52BE004
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 16:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF4AD306B767
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 14:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7300C3D902E;
	Wed, 18 Mar 2026 14:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="kuoevMma"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C89D3DFC8E
	for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773845384; cv=none; b=mEoRucNxWiapT1abrLt24s/PHgKH6rS0No1FUTFT0ldjSCbHFfQjUCmJ0LHfGc9dCFzNmq5w/0DoPdNKRHFOQR+RBr1w/ktz39fEWlwrZJwLsURSL70j5RNi/TP4bWCvxcXWulutvovPp21jeggBo9OYfmtwk0/+fpnTpqJem+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773845384; c=relaxed/simple;
	bh=fESGz4rV5OPH7Qzo+tfSC7WMIUFOFdpSXCVE6ja73ZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N3cX9d24uFPJs6jy3TNTSGiPIAf/o0U+jPGZiXGHlNAOdzTIPRG0RyEvcwcxt7s7rvMKy9nZk9QiBJdDglTp4x/biI1Fsq20OnvZpkw2MULJi8r7y8rRpQzEEXoMXks20W3Bdrk3+VKkcBfAnP7uMhwonwAe/JTjRoUwR4vJeEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=kuoevMma; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-89c4f7f8650so376656d6.0
        for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 07:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1773845381; x=1774450181; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gpPUL2QEKtfxfN1FTf7vMLAtTdgqaSDMW33h9FIL5Mc=;
        b=kuoevMmalw9a+Jb+4T2aOmtXLyaHT92al5KnGXvGdFhZVebnug1juC3X/Q/OOT1P3E
         7R1qHLqwjeVm5Rht4Hq1mjvlutTTA8D3xr1gCt9xixqzjCayCl9PKsWuK5Ks2GIsQir3
         97qUJGpXxtNU2ZVB6VDOS3e3LMQp4XE1SfKAnoZdZiwbeQNQ3GJLbJgb6uZz53xWb0yg
         qCYRYQLUodKA179WlAWxZ45uATp2mdFwB0Z7LoqQb21JfNoy8Mzr5sf4dK34ylx0dZAy
         EFc1kzn2st7NCZCHj1M8nJUGUYM5c4ceBwgkk0AK+II4L3jhPS2Ypyg3zD+HWwOp/B47
         GkKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773845381; x=1774450181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gpPUL2QEKtfxfN1FTf7vMLAtTdgqaSDMW33h9FIL5Mc=;
        b=Gv8Qn/GGS8mR7lThXe+EDifWpbPFLMta/E64CJj6Pu5FtjxkU1hVM3Q7x8AHhdb2rr
         BvAlz+PlADa9thMtwEyi8TtBQuxq/B85i9rf2/mocyGaJFPfEmu8LIR8AaKILU8COshq
         u/l8prE38/aYP/wr07/S1EDs3CBfHTiQIp5AkEeUm4HES2pe2CCL25RukqgthHZgMGaT
         4yCoDIkdY+GVc8OoOIJ9H38yF7lXZ+DAZT8P6QzleAlhssOm3rFzDCNmnwn/H1OTAyxl
         YCt/gKL0p6vR+mZr0CaMGtuPbLJeYaxHMlRf1MfsVTXi3q6EkegfFKvlRgF1YuDWQqcj
         KyJQ==
X-Gm-Message-State: AOJu0YzYj8rqHrJ6O9+vJqKu+VTxWDEpU1C2NdSrFtizB72w/y1UM3GZ
	mJCafzmy054//GOEaQbHrEWV/0YxJWbSHNBpMbtECFAM553RtoyyoB3d3LPdEge+iZwvGD6PiSG
	wB9IH
X-Gm-Gg: ATEYQzyvpmDTmb+gnFj25ZuUAQF0T+7ijJ3IdBxD32wKgNRYBjD2va0+7aaiwhjC/lV
	3EtT4LYm84ov27O5NsMevmSCpp/Wil3f7yws7Cds+D7hFzSyoMyDQu0PzEnMTK6vwmSDP4s9qdv
	YZ9jLV5wi5SJZbFITafUESxaWUZlh26laMHsCZIqEg6zaCp0PQr+bEB371Y4TzWK3IvvZj5C/gR
	oeEJ4YRFaXVFt0Z6r+nO0HnMk59af6jx5rfNNMJOY/Gtq7f1p02t6PxohGdhjKbi0eVML3IOms3
	J862cmuhupSb3+/ArWpHDPA9pR+ylevcLj5KDWs+6ccw61AjUGG63vFK9mHW75hAYCaf3u+yM8P
	VK5xWyuP9eMz1CD1ctS54VDDPLTNJjwB6U01GoqTjAJaeDQvnduDN7jxMRUcL2PwzA1Y2Q+9Hw7
	e0ulEZ86EqnKRD3aRBkAFc5V6CMS4j0j4X1yNYNvnrhAD4Mhq/FRNMWEg0QIAh8Nm1kpabhgQ6j
	j8VbUq11mvz7hURE8QV7VuE/4uzFvX2OO5K91woG/GYaOPfzItKPU3uEcYzM6BBeRtnsBdIgGMj
	fo7TbGVwpx37xgo2Et4vfGZFeBRCc/mYkAuknbd32B7gop85bOdHS7/vlEEas0DGtL91RDGRBD7
	SU+h8URHFcpchNCbxHRPUVMh5I/ASWInoRO4gWN7+V1Vh5A==
X-Received: by 2002:a05:6214:21a2:b0:89a:173d:9c5c with SMTP id 6a1803df08f44-89c6b5617fcmr56572626d6.32.1773845381299;
        Wed, 18 Mar 2026 07:49:41 -0700 (PDT)
Received: from localhost ([129.170.196.122])
        by smtp.gmail.com with UTF8SMTPSA id 6a1803df08f44-89c6b9ce61bsm25597356d6.23.2026.03.18.07.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 07:49:40 -0700 (PDT)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH v3] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't affect mmap return value.
Date: Wed, 18 Mar 2026 10:49:37 -0400
Message-ID: <20260318144937.2210447-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
References: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5274-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 809C52BE004
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The man page states that the MAP_GROWSDOWN flag causes the kernel to return an
address one page lower than the mapping created.  This is not true; the kernel
returns the base address of the mapping created, just as it does when
MAP_GROWSDOWN is not passed.  This can be confirmed by inspecting
/proc/self/maps after making a gd mapping, and comparing it to the returned
value from mmap.

You can confirm this by running this example program:

int main(void) {
  printf("mmap return value: %p\n",
         mmap(nullptr, 1 /* rounds up to page */, PROT_READ | PROT_WRITE,
              MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN, -1, 0));
  FILE *const f = fopen("/proc/self/maps", "r");
  while (1) {
    int const c = fgetc(f);
    if (c < 0) {
      break;
    }
    putchar(c);
  }
}

...and observing that the value returned from mmap is the base of a
mapping in /proc/self/maps.

Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWSDOWN")
Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
---
 man/man2/mmap.2 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 09e7933d3..20b94c243 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -276,8 +276,6 @@ should check the returned address against the requested address.
 This flag is used for stacks.
 It indicates to the kernel virtual memory system that the mapping
 should extend downward in memory.
-The return address is one page lower than the memory area that is
-actually created in the process's virtual address space.
 Touching an address in the "guard" page below the mapping will cause
 the mapping to grow by a page.
 This growth can be repeated until the mapping grows to within a
-- 
2.53.0


