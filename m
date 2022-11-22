Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D9E3634037
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 16:32:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232312AbiKVPcN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 10:32:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231842AbiKVPcN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 10:32:13 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.186])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4543D331
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 07:32:11 -0800 (PST)
X-KPN-MessageId: d066c7d6-6a7a-11ed-b97e-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id d066c7d6-6a7a-11ed-b97e-00505699b430;
        Tue, 22 Nov 2022 16:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=mime-version:message-id:date:subject:to:from;
        bh=vCwQga7Jgar6ow2M7htYzRjYCwxegqjSEBbk9WatqMM=;
        b=cUetkCH8/8W3Zq5XyH9pMiE4HK6XB2vkMjf50CAVcVgrr7ML3GLqw2LeYEs+NsCWSs6SWtdiJH0Bd
         iZGtuI0kma1BUu5T+SbHtz4P2xZ1VtICDU+mbpb9OrtYo2tgZdvWl3LLH7XpWQswFlvLqg7hv2APp/
         r9OCeXpKBXjQ1FWBnY9OaqizVtrtz8aH3MNvMc3eOd20y30Ux7clYAwCQv6yOW4X5AX5Dm3jaPS/Gd
         iehEWlHHsfNsG1G/6eMRrtwCurcfjHO//7AbZMfOGXs1Elc3mPAGG396j+tqq8f4jQjNsjjDj+SgQG
         1ApEGGkS14zxeBWG0idRJ5DgE+OOsKQ==
X-KPN-MID: 33|dgD6U/9ZJcfWK9Yn5CVUj7rcEY6AWxttAY4/4jJLFnZeZjixeWviJRZjU9uE5fK
 cc08sB+POkT7hXChaePqTLH5ZZGcEx1v/Bxsq9U+0NB8=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|b4XOY34CasRW9miJyMNhsPnSSq8rU29QFHcgYF4AFiE6I7WEqqTO+LTNd+0P6/k
 bOMN84eymrCoZsIeeRHKduQ==
X-Originating-IP: 77.173.35.122
Received: from frodo.. (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id d3f00f33-6a7a-11ed-9b31-00505699b758;
        Tue, 22 Nov 2022 16:32:09 +0100 (CET)
From:   "J.H. van de Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/1] [PATCH]: pipe.7: read(2) returns with zero while the write end is closed.
Date:   Tue, 22 Nov 2022 16:32:09 +0100
Message-Id: <20221122153209.10996-1-henri.van.de.water@xs4all.nl>
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

