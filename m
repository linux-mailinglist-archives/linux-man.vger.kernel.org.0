Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38D066399F1
	for <lists+linux-man@lfdr.de>; Sun, 27 Nov 2022 11:38:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiK0KiV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Nov 2022 05:38:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbiK0KiU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Nov 2022 05:38:20 -0500
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93BADDE9C
        for <linux-man@vger.kernel.org>; Sun, 27 Nov 2022 02:38:19 -0800 (PST)
Received: from archbook (unknown [109.252.36.230])
        by mail.ispras.ru (Postfix) with ESMTPSA id 4FD44419E9ED;
        Sun, 27 Nov 2022 10:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 4FD44419E9ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
        s=default; t=1669545493;
        bh=YbeQZbrDtY6pRsx69KJ/6K0qEuVrlipeOt26H8qLDcI=;
        h=From:To:Cc:Subject:Date:From;
        b=Xe261OIYmq6PrDegrumBej6QVmZgF/X0sbzzobndZf5dI9jLCQ0WCgyDYYSWl2b78
         zoTTsXHbsaDwwtiBH4XYJuH4Vc+bpIcfgA2HNzm+QmdG2bt+s4ioaV11MwtD0O0TCS
         jJVT/s7cdp8K2pXPBkSEAatGXsSEr0O7LAFYefAA=
From:   Vladislav Ivanishin <vlad@ispras.ru>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag description
Date:   Sun, 27 Nov 2022 13:38:13 +0300
Message-ID: <87v8n03coa.fsf@ispras.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/x-patch
Content-Disposition: inline;
 filename=0001-recv.2-Mention-SOCK_SEQPACKET-in-MSG_TRUNC-descripti.patch
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

unix_seqpacket_recvmsg() calls unix_dgram_recvmsg() which handles
MSG_TRUNC. This has been the case since the support for this flag was
implemented in the latter; the sequential-packet socket type seems to
have been left out from the description by an oversight.

Signed-off-by: Vladislav Ivanishin <vlad@ispras.ru>
---
 man2/recv.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index d492976c4..c5f1a9d70 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -226,7 +226,8 @@ subsequent receive call will return the same data.
 For raw
 .RB ( AF_PACKET ),
 Internet datagram (since Linux 2.4.27/2.6.8),
-netlink (since Linux 2.6.22), and UNIX datagram
+netlink (since Linux 2.6.22),
+and UNIX datagram as well as sequenced-packet
 .\" commit 9f6f9af7694ede6314bed281eec74d588ba9474f
 (since Linux 3.4) sockets:
 return the real length of the packet or datagram,
-- 
2.37.3

