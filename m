Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7D1563F3FB
	for <lists+linux-man@lfdr.de>; Thu,  1 Dec 2022 16:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231888AbiLAPc2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Dec 2022 10:32:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231818AbiLAPcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Dec 2022 10:32:25 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.186])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F054DAA8E5
        for <linux-man@vger.kernel.org>; Thu,  1 Dec 2022 07:32:02 -0800 (PST)
X-KPN-MessageId: 3afba1c4-718d-11ed-b97e-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 3afba1c4-718d-11ed-b97e-00505699b430;
        Thu, 01 Dec 2022 16:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=mime-version:message-id:date:subject:to:from;
        bh=O8MXa9gRCxRl+xe1nFHzMcry4Ev3qbvEgwxeXdasUck=;
        b=bxnn6Yp0dV7jUQIUlsU9w9NdL92yAAtrM2J9TOTKxsfIglUtrxZpfh21qk1H8WRaIiFTPFC5UMeMl
         DqjzQBEhllCbuL5bgivVoeoq5dKYnJOrn6CjsURB0dWSwehbJbRMnlhSGuywFsLjuVrfIQ2oUc2N5a
         w5ymV/lC8N8J9dMkiIce3xll9SWbTuWUORD9WoJLdVnNTN3bZC+RIMLrxeTtpn8fDSvGHdn6EH5m8n
         hzZgC4H7zU01J/iCcywHS8m6PPpsLQzrs8xU/tAvmAMb3it29eJsFJM6hTueMGMEFryJFCgkmxfED1
         aP2H2cr15vMPHfxl90rNy0cZ0BBIHCA==
X-KPN-MID: 33|55scqyT6z3KWqtRgenuJ055XWzk58gVId9k/3n49kFHnmxpAg7lXLKq6EQbFunf
 j2GWPnx9wqBk8AKLKLSbp6YmgKf3xKzu6J807/n6P09g=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|Fa2z7NsBPMp7kXXyI+Yv+vTDZ5CkQ+ZMe9rTpHtup5+TJb1a1dThprvYbFmzEwW
 Hlv851en4g0RcrVzGkodj7g==
X-Originating-IP: 77.173.35.122
Received: from frodo.. (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id 4c3a9ca0-718d-11ed-9b31-00505699b758;
        Thu, 01 Dec 2022 16:32:00 +0100 (CET)
From:   "J.H. vd Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] select.2: blocks on the read end of a FIFO (if the write end has never been opened).
Date:   Thu,  1 Dec 2022 16:31:59 +0100
Message-Id: <20221201153159.9544-1-henri.van.de.water@xs4all.nl>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122183220.2460-1-henri.van.de.water@xs4all.nl>
References: <20221122183220.2460-1-henri.van.de.water@xs4all.nl>
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

Clarify that select(2) will block on the read end of a FIFO, if the write
end of the FIFO has never been opened before, unlike read(2).
---
 man2/select.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/select.2 b/man2/select.2
index 199522a01..cb3295823 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -77,6 +77,15 @@ perform a corresponding I/O operation (e.g.,
 or a sufficiently small
 .BR write (2))
 without blocking.
+.PP
+However, note that
+.BR select ()
+will block on the read end of a FIFO, if the write end of
+the FIFO has never been opened before, unlike
+.BR read (2).
+(read(2) will always return with zero if the write end of
+the pipe/fifo is closed - see pipe(7) where the text starts with
+I/O on pipes and FIFOs)
 .\"
 .SS fd_set
 A structure type that can represent a set of file descriptors.
-- 
2.38.1

