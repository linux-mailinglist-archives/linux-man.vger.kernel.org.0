Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2443634034
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 16:30:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbiKVPad (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 10:30:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231842AbiKVPab (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 10:30:31 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.185])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87CA6331
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 07:30:29 -0800 (PST)
X-KPN-MessageId: 709c4478-6a7a-11ed-bfe8-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 709c4478-6a7a-11ed-bfe8-005056999439;
        Tue, 22 Nov 2022 16:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=mime-version:message-id:date:subject:to:from;
        bh=SZyWmV+fJ3f3mUPJNcKHoaaOwqZOP4CPjkSSmDjnmQc=;
        b=mqeg44r6Bu7Cfjs4JXDFM4zrFU/ruO7UZXANwCdHLEYN0PuPCpIY0j53yMEiIOEbliisOgYembAZj
         1RIRIPH1Qg+Q1levzrm9HuaL8GygD4BMl325qaWB9mdBzfbPnW2jUHvrqTf6YOy9C7Sqp/r5xma79+
         4nhznrLMoqFaFzAA5dBAWIBqAPleKwFzRPYt0fG6Ef+iydLd7CEDAhmA276kFwpr34EjLMPGR5tyJs
         1FMJ8Ne0scbgbaIYXYEM3hYcW/uCKDihRbDMmVZRQAmp80rRDZdzeeSRGrFUHKhnwP8l5Bg2FKoKk9
         Afub2FZTYgbqpzv2a9k8CY1wM640H0w==
X-KPN-MID: 33|UFv6aQ3+drz5wsHOr+9Fl2KpL5iXmg2iiKlVXr0fXiBeSgoDdMwQSp83CT2FxHJ
 7GB/GciC+UCUEhmBjGoKO4KNGOFremyDor/UuqeZum7o=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|oVWsO0HsJZBHT0+UKXaFumJosGBuWDWW95buJ19cSiM593z3N/qsoBgcq4fWOmM
 bt3LOklfDBp+WnOHljAArvQ==
X-Originating-IP: 77.173.35.122
Received: from frodo.. (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id 973a7de3-6a7a-11ed-9b31-00505699b758;
        Tue, 22 Nov 2022 16:30:27 +0100 (CET)
From:   "J.H. van de Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/1] [PATCH]: select.2: blocks on the read end (if the write end of the fifo has never opened).
Date:   Tue, 22 Nov 2022 16:30:27 +0100
Message-Id: <20221122153027.10943-1-henri.van.de.water@xs4all.nl>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.2 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that select(2) will block on the read end of a pipe/fifo, if the
write end of the pipe/fifo has never been opened before, unlike read(2).

Signed-off-by: J.H. vd Water <henri.van.de.water@xs4all.nl>
---
 man2/select.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/select.2 b/man2/select.2
index 199522a01..673d626a9 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -77,6 +77,15 @@ perform a corresponding I/O operation (e.g.,
 or a sufficiently small
 .BR write (2))
 without blocking.
+.PP
+However, note that
+.BR select ()
+will block on the read end of a pipe/fifo, if the write end of
+the pipe/fifo has never been opened before, unlike
+.BR read (2).
+(read(2) will always return with zero if the write end of
+the pipe/fifo is closed - see pipe(7) where the text starts with
+I/O on pipes and FIFOs).
 .\"
 .SS fd_set
 A structure type that can represent a set of file descriptors.
-- 
2.38.1

