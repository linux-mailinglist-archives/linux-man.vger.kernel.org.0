Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5D656BC1C4
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 00:52:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231894AbjCOXwD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 19:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233030AbjCOXwD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 19:52:03 -0400
X-Greylist: delayed 429 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 15 Mar 2023 16:51:58 PDT
Received: from gentwo.de (gentwo.de [IPv6:2a02:c206:2048:5042::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58FBD24499
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 16:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gentwo.de; s=default;
        t=1678923838; bh=HjICPMHoCSSiRwXQgLJ3ACmU/KCg2Qlr6EbGputSdWs=;
        h=Date:From:To:cc:Subject:From;
        b=F2+SY6T/MwWPZab0wMUy9w81nip5Fxr8RvWKGw5krap08HA1OZHV+1RMbPakEquCB
         3nAI/WLNm+b1efAcWQ+HwbSzyLXO7IUynlXhg6pMKjtKKcIcau0INwlLe0Z5re8pAK
         baxSrnKfAVp3mdQ8CBOW95731R96cdsIbiegvbRk4F8tg+tj+8mXkpC5RZ/jB+WIcc
         uz6PXrUBe8F9uVsh7hO08D8te2RTbyMHVNREpKi0qoy7uJdnUH8SCaksCWG32bZ1aq
         nE687ixa7uKdEIxb2i0bPThh2QTUHn7yYXNOgKrJLj5FVTahugmf6SCrUF090lPRKx
         MsVBrg6Ja4HOw==
Received: by gentwo.de (Postfix, from userid 1001)
        id 80536B00162; Thu, 16 Mar 2023 00:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by gentwo.de (Postfix) with ESMTP id 7C572B000AB;
        Thu, 16 Mar 2023 00:43:58 +0100 (CET)
Date:   Thu, 16 Mar 2023 00:43:58 +0100 (CET)
From:   Christoph Lameter <cl@gentwo.de>
To:     linux-man@vger.kernel.org
cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Subject: [PATCH] ip.7: Fix IP_MULTICAST_ALL description
Message-ID: <ba9a8cc2-c7f0-f96e-74f8-c7dea334fb4@gentwo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

INADDR_ANY has nothing to do with the IP_MULTICAST_ALL option.
It does not matter if the interface is bound to all interfaces
or a particular interface for the functionality of IP_MULTICAST_ALL.

Multicast datagrams are addressed to a multicast IP address and will enter
the network stack via a particular interface. The application can choose
from which interface it will receive multicast data by binding the socket
to an IP address. It can then use the IP_MULTICAST_ALL option to
restrict the multicast groups that the IP stack will deliver via the
socket.

Signed-off-by: Christoph Lameter <cl@linux.com>

Index: manpages-5.10/man7/ip.7
===================================================================
--- manpages-5.10.orig/man7/ip.7
+++ manpages-5.10/man7/ip.7
@@ -571,10 +571,7 @@ that wish to deliberately send probe pac
 the observed Path MTU.
 .TP
 .BR IP_MULTICAST_ALL " (since Linux 2.6.31)"
-This option can be used to modify the delivery policy of multicast messages
-to sockets bound to the wildcard
-.B INADDR_ANY
-address.
+This option can be used to modify the delivery policy of multicast messages.
 The argument is a boolean integer (defaults to 1).
 If set to 1,
 the socket will receive messages from all the groups that have been joined
