Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD83C614494
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 07:17:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiKAGRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 02:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiKAGRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 02:17:51 -0400
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 516BC1181C
        for <linux-man@vger.kernel.org>; Mon, 31 Oct 2022 23:17:50 -0700 (PDT)
Content-Type: multipart/mixed; boundary="------------VDZBdgXgdiGVPfC3PAxJjecH"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1a-insec.net;
        s=key1; t=1667283468;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=fVCM6zYjBPbH99X2L+ZOcuQoQiFG3H7FNvrWJG+9McE=;
        b=jKTcuk/2BPTie6hwx2Z3WV1gRN9dVACqJZ9WA/M6K1yzG2XMJkDuSwHNR1lbnObdkgBYGb
        XSiAKKqg3v4Z5+SuuZodKs2b8olEPAnhvwMOEgKrNjp9qwRUaqeDJd2F/Tb182gIlhslh9
        WXa2B7q5TiiRawla2N5EFNcbW7Z1b8sSgpLjW6f2cmFcocOttbVDoOeqbjbLZMOPHvh5h+
        SsrlunChhhfKxtXB2LqDiwlUGhQmozrGN6FDtGZzG05Wr4RfOD6eGo4Gd+xmH+rdfdxNA4
        O1vY3QR5bLZHwhM080A5Nxcq8q8EDbKSxMMlZAwjVT0pVblzmkL9KjSIBJY6fg==
Message-ID: <0dbe239f-22ce-2b8b-59e1-eeece3a64a66@1a-insec.net>
Date:   Tue, 1 Nov 2022 06:17:34 +0000
MIME-Version: 1.0
Content-Language: en-US
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   "i@1a-insec.net" <i@1a-insec.net>
Subject: [patch] nice.2: replace "thread" with "process"
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM14,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------VDZBdgXgdiGVPfC3PAxJjecH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

nice(2) in glibc uses `setpriority(PRIO_PROCESS, x)`. I think "thread" 
means pthread more, so "process" is the better word here.
--------------VDZBdgXgdiGVPfC3PAxJjecH
Content-Type: text/x-patch; charset=UTF-8; name="0001-nice.2-tfix.patch"
Content-Disposition: attachment; filename="0001-nice.2-tfix.patch"
Content-Transfer-Encoding: base64

RnJvbSA4MzVjMzNkYmM3MmFiZWMwMmQ0OWE1YWM2YjFiMTZlNGQzOWE1OTliIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBMb2NyaWEgQ3liZXIgPDc0NTYwNjU5K2xvY3JpYWN5
YmVyQHVzZXJzLm5vcmVwbHkuZ2l0aHViLmNvbT4KRGF0ZTogVHVlLCAxIE5vdiAyMDIyIDA2
OjEwOjE2ICswMDAwClN1YmplY3Q6IFtQQVRDSF0gbmljZS4yIHRmaXgKCi0tLQogbWFuMi9u
aWNlLjIgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9tYW4yL25pY2UuMiBiL21hbjIvbmljZS4yCmluZGV4IGY0
ZTI0MDYuLjJlY2Q3NDMgMTAwNjQ0Ci0tLSBhL21hbjIvbmljZS4yCisrKyBiL21hbjIvbmlj
ZS4yCkBAIC0zNiw3ICszNiw3IEBAIEZlYXR1cmUgVGVzdCBNYWNybyBSZXF1aXJlbWVudHMg
Zm9yIGdsaWJjIChzZWUKIC5CUiBuaWNlICgpCiBhZGRzCiAuSSBpbmMKLXRvIHRoZSBuaWNl
IHZhbHVlIGZvciB0aGUgY2FsbGluZyB0aHJlYWQuCit0byB0aGUgbmljZSB2YWx1ZSBmb3Ig
dGhlIGNhbGxpbmcgcHJvY2Vzcy4KIChBIGhpZ2hlciBuaWNlIHZhbHVlIG1lYW5zIGEgbG93
ZXIgcHJpb3JpdHkuKQogLlBQCiBUaGUgcmFuZ2Ugb2YgdGhlIG5pY2UgdmFsdWUgaXMgKzE5
IChsb3cgcHJpb3JpdHkpIHRvIFwtMjAgKGhpZ2ggcHJpb3JpdHkpLgotLSAKMi4zOC4xCgo=


--------------VDZBdgXgdiGVPfC3PAxJjecH--
