Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD82788FD9
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 22:29:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbjHYU2w convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 25 Aug 2023 16:28:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjHYU20 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 16:28:26 -0400
Received: from bird.elm.relay.mailchannels.net (bird.elm.relay.mailchannels.net [23.83.212.17])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22EF1BEB
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 13:28:23 -0700 (PDT)
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id 3E3211007EB;
        Fri, 25 Aug 2023 20:28:23 +0000 (UTC)
Received: from cpanel-007-fra.hostingww.com (unknown [127.0.0.6])
        (Authenticated sender: instrampxe0y3a)
        by relay.mailchannels.net (Postfix) with ESMTPA id 37C64100573;
        Fri, 25 Aug 2023 20:28:22 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1692995302; a=rsa-sha256;
        cv=none;
        b=Z07DLNArEQ23/ZcImYn/LY7Wxs8AS2F/rFoyCCc6HR1nmnqFTiJ+8plItT4Ch7FEx2w3NQ
        ijC2QXXAONwOcggN47MeD7yCQ8+TZPFo1DkJGnvUZoUfcplNEeBHBUg1oROryEth26JS+N
        YwnWXRGwIwtrcWVVf4+d8s0BK/PhMORhECGVb/bb2w53wtvNwvkXLFXIim45tRMGBp0No7
        Btk/PwmxaRBP+8NHW0dNeMv4gAaQ8KQcSu7iPFCpI62vYZw7rakM2QFSX6FBbu/MBwKh2B
        jPD2Lgf2hW27f2egpcRDrZbJZRRFOwfFGVv/HAjQN6oeML0tmW5sq5zEiq1DiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
        s=arc-2022; t=1692995302;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=cBdGEqtHjFd8D5DSpCU4uPXwz9KlvOls7dYYlULiqyI=;
        b=iriTPdk9ZkgJVT0DYLzncaxEFy/7f1gnPBmEhcirM5IQoIBcFiaZHVnVVsJKjpoh8XuZji
        nzEthi4sm+STGrxLKQ93zLUVJ2vEC1eWi1jmboHi4gO8/PEecxQCbgPYIl3IPbq6UseCHl
        6aBfSFM5pn8wiFhufkftpxYFTo3RZaUmWHFwLV63MYyVlphdlMOBgBOGACa+RQiDd4tqW8
        +L5Cz3qJU3W1FlNhkJsxgqX3gCynLN73y+4jTYwlJGJCw8ynlcNwwE9VRM+SAinhlG3wJ5
        Wyzldmy7i6sjw7AfbVEItV66AQU6DPiYvi7anH6c8N6eFxyq8veOT7+84h9HNg==
ARC-Authentication-Results: i=1;
        rspamd-bfd6864c7-fwvm2;
        auth=pass smtp.auth=instrampxe0y3a smtp.mailfrom=calestyo@scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MC-Relay: Neutral
X-MC-Copy: stored-urls
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Fumbling-Lonely: 31b079b36b157c40_1692995302961_201171663
X-MC-Loop-Signature: 1692995302961:1199949299
X-MC-Ingress-Time: 1692995302960
Received: from cpanel-007-fra.hostingww.com (cpanel-007-fra.hostingww.com
 [3.69.87.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
        by 100.117.184.116 (trex/6.9.1);
        Fri, 25 Aug 2023 20:28:22 +0000
Received: from p54b6d196.dip0.t-ipconnect.de ([84.182.209.150]:49506 helo=heisenberg.fritz.box)
        by cpanel-007-fra.hostingww.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.96)
        (envelope-from <calestyo@scientia.org>)
        id 1qZdPm-009us7-2k;
        Fri, 25 Aug 2023 20:28:20 +0000
Message-ID: <979345cf576e86c42743ea48d797484fc41f8bf7.camel@scientia.org>
Subject: [PATCH] open.2: Clarify different POSIX uses of EOPNOTSUPP and ENXIO
From:   Christoph Anton Mitterer <calestyo@scientia.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Date:   Fri, 25 Aug 2023 22:28:14 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.49.2-3 
MIME-Version: 1.0
X-AuthUser: calestyo@scientia.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Starting with POSIX.1-2017, EOPNOTSUPP is specified as the error when the path
argument names a socket, whereas Linux uses this for indicating a filesystem
containing pathname does not support O_TMPFILE and uses ENXIO to indicate a
socket.

For reference, SUSv4, 2018 Edition (POSIX.1-2017):
https://pubs.opengroup.org/onlinepubs/9699919799/functions/open.html

SUSv2 does not yet contain an error for when the file is socket, nor does it use
a different meaning for EOPNOTSUPP:
https://pubs.opengroup.org/onlinepubs/7908799/xsh/open.html

The same is the case for SUSv3, 2004 Edition, (“POSIX.1-2004”):
https://pubs.opengroup.org/onlinepubs/009695399/functions/open.html

The same is the case for SUSv4, 2008 Edition, (POSIX.1-2008):
https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/open.html

Closes: https://bugzilla.kernel.org/show_bug.cgi?id=217821
Signed-off-by: Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>
---
 man2/open.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man2/open.2 b/man2/open.2
index 4c921723c..2975db017 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -1218,12 +1218,14 @@ The file is a device special file and no corresponding device exists.
 .TP
 .B ENXIO
 The file is a UNIX domain socket.
+See STANDARDS for differences with POSIX.
 .TP
 .B EOPNOTSUPP
 The filesystem containing
 .I pathname
 does not support
 .BR O_TMPFILE .
+See STANDARDS for differences with POSIX.
 .TP
 .B EOVERFLOW
 .I pathname
@@ -1437,6 +1439,12 @@ with a value greater than or equal to 200809L or
 with a value greater than or equal to 700.
 In glibc 2.11 and earlier, one obtains the definitions by defining
 .BR _GNU_SOURCE .
+.PP
+POSIX.1-2017 uses
+.B EOPNOTSUPP
+instead of
+.B ENXIO
+to indicate that the file is a UNIX domain socket.
 .SH HISTORY
 .TP
 .BR open ()
-- 
2.40.1

