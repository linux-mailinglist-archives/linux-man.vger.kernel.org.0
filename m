Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1308B44CF6E
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 03:03:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233115AbhKKCGL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Nov 2021 21:06:11 -0500
Received: from pi.codeconstruct.com.au ([203.29.241.158]:48668 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233192AbhKKCGK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Nov 2021 21:06:10 -0500
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 6291A2022C; Thu, 11 Nov 2021 10:03:21 +0800 (AWST)
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] man7: unify socket examples
Date:   Thu, 11 Nov 2021 10:03:07 +0800
Message-Id: <20211111020307.3542693-1-jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The udp, tcp and x25 man pages' synopses list the socket() example as
all bold, but the socket varname should be italicised. This change
unifies these with the example in socket.7

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
 man7/tcp.7 | 2 +-
 man7/udp.7 | 2 +-
 man7/x25.7 | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/tcp.7 b/man7/tcp.7
index 0a7c61a37..c08bc7dcc 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -102,7 +102,7 @@ tcp \- TCP protocol
 .B #include <netinet/in.h>
 .B #include <netinet/tcp.h>
 .PP
-.B tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
+.IB tcp_socket " = socket(AF_INET, SOCK_STREAM, 0);"
 .fi
 .SH DESCRIPTION
 This is an implementation of the TCP protocol defined in
diff --git a/man7/udp.7 b/man7/udp.7
index a66e475cc..cd0937c53 100644
--- a/man7/udp.7
+++ b/man7/udp.7
@@ -18,7 +18,7 @@ udp \- User Datagram Protocol for IPv4
 .B #include <netinet/in.h>
 .B #include <netinet/udp.h>
 .PP
-.B udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
+.IB udp_socket " = socket(AF_INET, SOCK_DGRAM, 0);"
 .fi
 .SH DESCRIPTION
 This is an implementation of the User Datagram Protocol
diff --git a/man7/x25.7 b/man7/x25.7
index 561ed0519..e07e5f7a7 100644
--- a/man7/x25.7
+++ b/man7/x25.7
@@ -17,7 +17,7 @@ x25 \- ITU-T X.25 / ISO-8208 protocol interface
 .B #include <sys/socket.h>
 .B #include <linux/x25.h>
 .PP
-.B x25_socket = socket(AF_X25, SOCK_SEQPACKET, 0);
+.IB x25_socket " = socket(AF_X25, SOCK_SEQPACKET, 0);"
 .fi
 .SH DESCRIPTION
 X25 sockets provide an interface to the X.25 packet layer protocol.
-- 
2.30.2

