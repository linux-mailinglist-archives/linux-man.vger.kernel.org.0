Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503F275C68B
	for <lists+linux-man@lfdr.de>; Fri, 21 Jul 2023 14:07:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbjGUMHv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jul 2023 08:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbjGUMHu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jul 2023 08:07:50 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E7B1727
        for <linux-man@vger.kernel.org>; Fri, 21 Jul 2023 05:07:21 -0700 (PDT)
Received: from weisslap.aisec.fraunhofer.de ([31.17.196.69]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N8GhM-1ps2Rz0sjo-014CbM; Fri, 21 Jul 2023 14:06:55 +0200
From:   =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
        =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
Subject: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
Date:   Fri, 21 Jul 2023 14:06:36 +0200
Message-Id: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:6QOpT+QVcyJUmBwwL6sO5kk5ym8f/MZ2akLFHy4UGrnjVQxjPc6
 RuUcduw4oPTHF82WiMJUYE6hxTzPPzPtV14CW8lBjcMO68fOSXNS5td4BpKtqPPvT3snqMo
 fhciU/IXQZrb/5nzffFcCzsZCQOMW2CHonES9GuhMB3mvRfanhZXWquU31rrbWy0fk/4OYF
 0+xDoX2PKMOgeLIk8/KlQ==
UI-OutboundReport: notjunk:1;M01:P0:zoQPR/wwa/A=;+n1hkKbEnZtlsj2j/VYysY18caC
 WLhevM4ZlTlRRTEOpN3Af7ai+47sG8YGgBEZlxzQm30tlPKyEfTwZg84rmqmz4zRxSMx+JTtV
 77H4Sa7LZwllYu561ItYSDxeXgFwLn0SNFPI7uj5pX/OFrR3BGYYsD2bQD8jOKi4+DDbbpozG
 l1ErITiYjkHkg1wMFv+03dHIFZrtDnLjUd4E47nP1l32Zrm7aqdhVNMaj6NryZqdVZLVWGHOm
 FlGBTwzHlNdTDRneGEe7E/51qMnpPEWS19DWid4XZcS+SvL0LUHjLirfPDSOL+U/t/nlRgKsy
 m3LdXVaFLAnYXkuEGCsUCc+1u26VyBFOWHKfzHzulHWF5Xw7Z48SZ/ce/EH3VNmk/9ZkdyF50
 hB8Qr3paGnJW86z95krCL47uAJS/e6VLBFQay2H6/lwNQ/Eu7hOK1RyiZrruH/EJutHWCB+QL
 952hANN+hp4J0UiwWvASUcz3SlG6pRCBt/vrJELZsgc+v8Av+r/AsP3lsteitUhRWdSEghgeI
 S99uCdsPK78xA9uSIplA/xeUi2YZWA700dr7hu35Mpq1mrd8GPhDK3zOrfmBBxviAhgH5ZCJs
 aK52qHArBXxnRWv4067SdwmlMnRIqvNmPioTtP9vfm9LiCHecj9ECG1KqL0jllTRCMC/MjeB6
 bonZAm/5ZTmMZXgtJpITUYZO5ur7piu5DvGX1wSpig==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since commit c3494801cd1785e2 ("bpf: check pending signals while
verifying programs", bpf() may also fail with EAGAIN if the verifier
detects pending signals.

This was triggered in the cmld of GyroidOS when loading a cgroups
device program during container start. We had a look in the man page
and where confused that EAGAIN was not listed as possible error.
Digging in the kernel source revealed the EAGAIN in the verifier
introduced by the commit above. Further investigation showed that
libbpf already wraps that case, by a retry loop.

Since GyroidOS uses the system call directly and not libbpf, we missed
to handle this error correctly. Thus, this hint in the man page for
the bpf() system call should be helpful for others who implement on
the low-level interface, too.

Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
---
 man2/bpf.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/bpf.2 b/man2/bpf.2
index d32435a1d..7cef7f24d 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -991,6 +991,16 @@ and examine
 .I log_buf
 for the specific reason provided by the verifier.
 .TP
+.B EAGAIN
+For
+.BR BPF_PROG_LOAD ,
+indicates that needed resources are blocked.
+This is due to the verifier detects pending signals while it is checking
+the bpf program about its validity.
+In this case, just call
+.BR bpf ()
+again with the same parameters.
+.TP
 .B EBADF
 .I fd
 is not an open file descriptor.
-- 
2.30.2

