Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1084360E8D4
	for <lists+linux-man@lfdr.de>; Wed, 26 Oct 2022 21:15:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234872AbiJZTO7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Oct 2022 15:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234843AbiJZTO1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Oct 2022 15:14:27 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6632F60CB;
        Wed, 26 Oct 2022 12:12:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 21DBCB8241E;
        Wed, 26 Oct 2022 19:12:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 746FDC433C1;
        Wed, 26 Oct 2022 19:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666811537;
        bh=uISJsorGWqAnS3G55nTZkUdny2HDPtAdsyqsQOT889Y=;
        h=From:To:Cc:Subject:Date:From;
        b=RShpaYfEWw8mWsyLlpRBkRn8YTjax395tQAZFiKOqHkeHmvBQ0I1mmtJj7JJCRHFt
         bfWaxE0GXMZ8KAfOZCFS3WQpiTXiAhjIkYc75oxncPJy+LLoiphvnxg9KIhVLcAw9J
         xl01TdcSRhgr5nNas+Lpmr2AL4nBqx4xYuxZAfFhMVFqfPF8VL2iUqGQOWBr7dlAQs
         PbHFPBtFAkVgE5UvGHIuS5VwJBophZjNZU7KaP+ADyG/XMbGYQsQYf0w3o9/luchlw
         TwNssddzCgrOqEybH97tbwCZvsnGL5rkk6RMFkNzH5xBk+JTZ9i0GJxb4T+fA8djY1
         H0ehjgxFxu2KQ==
Received: by pali.im (Postfix)
        id 1C7BD89E; Wed, 26 Oct 2022 21:12:14 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-serial@vger.kernel.org
Subject: [PATCH] ioctl_tty.2: Document TIOCSERGETLSR/TIOCSER_TEMT
Date:   Wed, 26 Oct 2022 21:12:02 +0200
Message-Id: <20221026191202.5510-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man2/ioctl_tty.2 | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 759ea7bba62f..41ff38b6f578 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -309,6 +309,21 @@ for the argument values
 .BR TCIFLUSH ,
 .BR TCOFLUSH ,
 .BR TCIOFLUSH .
+.TP
+.B TIOCSERGETLSR
+Argument:
+.BI "int\~*" argp
+.IP
+Get line status register. Status register has
+.B TIOCSER_TEMT
+bit set when output buffer is empty and also hardware transmitter is physically empty.
+.IP
+Does not have to be supported by all serial tty drivers.
+.IP
+.BR tcdrain (3)
+does not wait and returns immediately when
+.B TIOCSER_TEMT
+bit is set.
 .SS Faking input
 .TP
 .B TIOCSTI
@@ -890,7 +905,6 @@ main(int argc, char *argv[])
 .\" TIOCSERGWILD		int *
 .\" TIOCSERSWILD		const int *
 .\" TIOCSERGSTRUCT		struct async_struct *
-.\" TIOCSERGETLSR		int *
 .\" TIOCSERGETMULTI		struct serial_multiport_struct *
 .\" TIOCSERSETMULTI		const struct serial_multiport_struct *
 .\" TIOCGSERIAL, TIOCSSERIAL (see above)
-- 
2.20.1

