Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5800563B3C0
	for <lists+linux-man@lfdr.de>; Mon, 28 Nov 2022 21:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232812AbiK1U67 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Nov 2022 15:58:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232558AbiK1U66 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Nov 2022 15:58:58 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CF9963A5
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 12:58:56 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 65F003200094;
        Mon, 28 Nov 2022 15:58:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 28 Nov 2022 15:58:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
        cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
        :message-id:mime-version:reply-to:sender:subject:subject:to:to;
         s=fm3; t=1669669133; x=1669755533; bh=jXZriIeKqbDrhD4DSydzMTRUY
        g8IqvDCo558GgOlymI=; b=P5sPXxJ8eLMNke3PKzb6E1FX9T9VHPe9QsrpMwdhj
        8cZ0IVjmCM02mOLQMsKfVgkzbuSQxZlOLYg/Bl5STIIvpUS2asRxYSqIB1PhspiG
        TwHHKume9FTtz2C8KASqXQ8tU9cmb1IdpLVOhUOPE/mWHdeocCzqImEDRh+04BJx
        YnLLXeb5G7dNdXO+CKFIqyTZraeBzzVmEidXgJKFUwroRBUAkbM4LxCVWbzpTWCh
        OxfxzD/ovXSchEpqdlFTve9TehlSH3OxDXJWHH01+VDvj32CLnkpJVte1fHOe2lt
        yG/Hj3JdbveVPbBvmcyiIRDfQEcMLNwNWNv3+f1FStLeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:message-id
        :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
        1669669133; x=1669755533; bh=jXZriIeKqbDrhD4DSydzMTRUYg8IqvDCo55
        8GgOlymI=; b=VmIYf44A32QpOKl8SBR4X7dGYykGzly3rPY9CE2N4joWddcHwie
        Sne2lEQPrUoUaVRdn8pd4f2yS/jpgBb3X4aJXVu64TRuqsx02ZCsOztRM9t/iFgN
        aVWwk8TPJBSt1Qpf07dC5qI1jIimhqgQgYFKxt+tzrFGVEY3IsKUPokJz1s20Nrw
        rEnqpJwD/Y8xW1B2m9kiZxug0I5Urd5haK2gauWWa5Ynb0+Ghz26H2/ql25jJkTf
        rlMYtuCdjRzznPBl4SAHlyoFouIP51esYMPf16Q/66qr65671THnRN4TDAL2yZNi
        uL7GV85+puTACB70A3PcEl4KjE0nW/MF/hw==
X-ME-Sender: <xms:DSGFYz7YmrqeD-KrKcqQD0rjHdxOoEkbIz0Ke-B-cIT2GjRLXhs4lA>
    <xme:DSGFY47iU_chXDmpYfPRfaMAOEwEa7c0_8kAjjno7WCiBAsMhbwy8l4lEB2V22DtE
    JS1QbJ0IzGU6Y1Tnn8>
X-ME-Received: <xmr:DSGFY6dii6IAxqiYWcNLLyvWVHuv6MdrxSbOSt3kiAeowyN2d_YjY0yaoW72dND5Ixi1wIpX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrjedvgddugeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
    ertddtnecuhfhrohhmpefvhigthhhoucetnhguvghrshgvnhcuoehthigthhhosehthigt
    hhhordhpihiiiigrqeenucggtffrrghtthgvrhhnpeehfeefheelfedtgfejgeehleeife
    dvgffhueduueehheeuhffhhfethfeivdeggeenucevlhhushhtvghrufhiiigvpedtnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpehthigthhhosehthigthhhordhpihiiiigr
X-ME-Proxy: <xmx:DSGFY0J30ngDzxPRz3WNPYS_jd1QaWiXk0iIFYEE5iR6-WQO0oMguw>
    <xmx:DSGFY3LX3fEajEkXiz3kGofam622dbzsTmxljUd6U_f5ct47rbLlig>
    <xmx:DSGFY9zDA0VBUa3pDilhEgfTCRZktw3Rx501qxQNUrVxz6vemwCP-A>
    <xmx:DSGFY-WgraQgHB7ipV8rQV_vmiXPBzyAwm0xXCbkz3PGIVYzdwW8Cg>
Feedback-ID: i21f147d5:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Nov 2022 15:58:52 -0500 (EST)
From:   Tycho Andersen <tycho@tycho.pizza>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Tycho Andersen <tycho@tycho.pizza>
Subject: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
Date:   Mon, 28 Nov 2022 13:58:37 -0700
Message-Id: <20221128205837.2408050-1-tycho@tycho.pizza>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Our group recently had some confusion around this. Although f327722042df
("socket.7: Explain effect of SO_SNDTIMEO for connect()") adds a mention of
connect(2), the wording around "Timeouts  only  have  effect  for  system
calls  that perform socket I/O" is slightly confusing: is connect(2) I/O?.
Let's just add connect(2) to the list of things that time out explicitly to
avoid any confusion.

Test program for grins:

#include <stdio.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <arpa/inet.h>

int main(void)
{
	struct sockaddr_in servaddr = {
                /* tycho.pizza */
                .sin_addr.s_addr = inet_addr("192.241.255.151"),
                .sin_port = htons(443),
                .sin_family = AF_INET,
        };
	int fd;
	struct timeval timeout = {
		.tv_sec = 0,
		.tv_usec = 100,
	};

	fd = socket(AF_INET, SOCK_STREAM, 0);
	if (fd < 0) {
		perror("socket");
		return 1;
	}

	if (setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &timeout, sizeof(timeout)) < 0) {
		perror("setsockopt");
		return 1;
	}

	if (connect(fd, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0) {
		perror("connect");
		return 1;
	}

	printf("connect successful\n");
	return 0;
}

$ ./so_sndtimeo
connect: Operation now in progress

Signed-off-by: Tycho Andersen <tycho@tycho.pizza>
---
 man7/socket.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/socket.7 b/man7/socket.7
index 2b191c783..c3c13cda6 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -838,6 +838,7 @@ just as if the socket was specified to be nonblocking.
 If the timeout is set to zero (the default),
 then the operation will never timeout.
 Timeouts only have effect for system calls that perform socket I/O (e.g.,
+.BR connect (2),
 .BR read (2),
 .BR recvmsg (2),
 .BR send (2),

base-commit: 60eb580d1e836977d57355b6519f32e37bdc3392
-- 
2.34.1

