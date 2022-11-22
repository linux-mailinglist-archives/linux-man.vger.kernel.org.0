Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ADE26343B7
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 19:35:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232869AbiKVSfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 13:35:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232419AbiKVSe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 13:34:59 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA1F47C6AA
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 10:34:58 -0800 (PST)
X-KPN-MessageId: 36a3389c-6a94-11ed-bfe8-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.7])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 36a3389c-6a94-11ed-bfe8-005056999439;
        Tue, 22 Nov 2022 19:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=mime-version:message-id:date:subject:to:from;
        bh=vCwQga7Jgar6ow2M7htYzRjYCwxegqjSEBbk9WatqMM=;
        b=c0lDJCwhft1bvIoIXUONM9kXEoHDtdz/fN3Prsm26jNbf0lDGzGYkJS+NhljTw2KBpwADG6fj3eHU
         NNlJ7Q+vvX5R11nt3VjT0J2PqCe71dZ1QB+jF1pdi/OGAxy/20shBq2r42jNlu2f5sOG937RmMXMAu
         qWjKOvCW8fuvvlU1dzKFTVUh+iEhYV1u5ByGyFnSXxGM3Exq7wQj6Pd0h9AAWGUvtlRv9HPhbxErpE
         7UqzhzJsb0KTnT6LFEBzY1eiDQVlyNeOtbx++K8ri2x3xsQ/lJd17K7u2aEmPfi3GDeQFlRc7Xx4Ma
         JHIEn0N3O7so4TYQeTW3J+/n2o8wQ1A==
X-KPN-MID: 33|WRQzuvO0loYiy9DXcdMJHCimPyEoZ9+xLgGnnEi5H9paa/Bp4IXKDO/jxavmYrY
 0IBmbYSPmHnoxh/626B1XVXMtY/OiWnTn+VST5HfH6Q0=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|WyntGYvmsHiJ6txfiUPwgQdmAgoYDf0bXa1GEldC096yiNFrk3POgJwOmaAXmEJ
 OGP4ulm7MJijz79RKI5rCmg==
X-Originating-IP: 77.173.35.122
Received: from frodo.. (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id 5d5b0172-6a94-11ed-8bc9-005056998788;
        Tue, 22 Nov 2022 19:34:57 +0100 (CET)
From:   "J.H. van de Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] pipe.7: read(2) returns with zero while the write end is closed.
Date:   Tue, 22 Nov 2022 19:34:57 +0100
Message-Id: <20221122183457.2484-1-henri.van.de.water@xs4all.nl>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122153209.10996-1-henri.van.de.water@xs4all.nl>
References: <20221122153209.10996-1-henri.van.de.water@xs4all.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that read(2) will return with zero if the write of the pipe is closed
and the pipe is empty, but will block (in case of blocking read) until data is
available, and fail with error EAGAIN (in case of non-blocking read) while the
write end of the empty pipe is open and the pipe is empty.

Signed-off-by: J.H. vd Water <henri.van.de.water@xs4all.nl>
---
 man7/pipe.7 | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/man7/pipe.7 b/man7/pipe.7
index 852cbd94f..4f3074879 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -49,9 +49,16 @@ they are created and opened.
 Once these tasks have been accomplished,
 I/O on pipes and FIFOs has exactly the same semantics.
 .PP
-If a process attempts to read from an empty pipe, then
+If a process attempts to read from an empty pipe while the write end
+is open, then
 .BR read (2)
-will block until data is available.
+will block (in case of blocking read(2) ), until data is available,
+and fail with error
+.BR EAGAIN
+(in case of non-blocking read(2) ); however, if the write end of the
+pipe is closed and the pipe is empty, then
+.BR read (2)
+will return with zero.
 If a process attempts to write to a full pipe (see below), then
 .BR write (2)
 blocks until sufficient data has been read from the pipe
-- 
2.38.1

