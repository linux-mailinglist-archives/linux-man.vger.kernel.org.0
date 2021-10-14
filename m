Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CDD542D336
	for <lists+linux-man@lfdr.de>; Thu, 14 Oct 2021 09:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbhJNHHv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Oct 2021 03:07:51 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:38622 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhJNHHv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Oct 2021 03:07:51 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id EE4A920223; Thu, 14 Oct 2021 15:05:44 +0800 (AWST)
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] mctp.7: Add man page for Linux MCTP support
Date:   Thu, 14 Oct 2021 15:05:19 +0800
Message-Id: <20211014070519.2037226-1-jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This change adds a brief description for the new Management Component
Transport Protocol (MCTP) support added to Linux as of bc49d8169.

This is a fairly regular sockets-API implementation, so we're just
describing the semantics of socket, bind, sendto and recvfrom for the
new protocol.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
 man7/address_families.7 |   7 ++
 man7/mctp.7             | 181 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 188 insertions(+)
 create mode 100644 man7/mctp.7

diff --git a/man7/address_families.7 b/man7/address_families.7
index 3e535e66d..3c8299e69 100644
--- a/man7/address_families.7
+++ b/man7/address_families.7
@@ -405,6 +405,13 @@ XDP (express data path) interface (since Linux 4.18).
 See
 .I Documentation/networking/af_xdp.rst
 in the Linux kernel source tree for details.
+.TP
+.B AF_MCTP
+.\" commit: bc49d8169aa72295104f1558830c568efb946315
+MCTP (Management Component Transport Protocol) interface (since Linux 5.15),
+as defined by the DMTF specification DSP0236.
+For further information, see
+.BR mctp (7).
 .SH SEE ALSO
 .BR socket (2),
 .BR socket (7)
diff --git a/man7/mctp.7 b/man7/mctp.7
new file mode 100644
index 000000000..eb9b61cb9
--- /dev/null
+++ b/man7/mctp.7
@@ -0,0 +1,181 @@
+.\" Copyright (c) 2021 Jeremy Kerr <jk@codeconstruct.com.au>
+.\"
+.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
+.\" This is free documentation; you can redistribute it and/or
+.\" modify it under the terms of the GNU General Public License as
+.\" published by the Free Software Foundation; either version 2 of
+.\" the License, or (at your option) any later version.
+.\"
+.\" The GNU General Public License's references to "object code"
+.\" and "executables" are to be interpreted as the output of any
+.\" document formatting or typesetting system, including
+.\" intermediate and printed output.
+.\"
+.\" This manual is distributed in the hope that it will be useful,
+.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
+.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+.\" GNU General Public License for more details.
+.\"
+.\" You should have received a copy of the GNU General Public
+.\" License along with this manual; if not, see
+.\" <http://www.gnu.org/licenses/>.
+.\" %%%LICENSE_END
+.\" commit: bc49d8169aa72295104f1558830c568efb946315
+.TH MCTP  7 2021-10-14 "Linux" "Linux Programmer's Manual"
+.SH NAME
+mctp \- Management Component Transport Protocol
+.SH SYNOPSIS
+.nf
+.B #include <sys/socket.h>
+.B #include <linux/mctp.h>
+.PP
+.B mctp_socket = socket(AF_MCTP, SOCK_DGRAM, 0);
+.fi
+.SH DESCRIPTION
+Linux implements the Management Component Transport Protocol (MCTP),
+specified by DMTF spec DSP0236, currently at version 1.
+This is a connectionless protocol, typically used between devices within a
+server system.  Message reliability and ordering are not guaranteed, but
+message boundaries are preserved.
+.PP
+The API for MCTP messaging uses a standard sockets interface, using the
+.BR sendto (2)
+and
+.BR recvfrom (2)
+classes of system calls to transfer messages.
+Messages may be fragmented into packets before transmission, and reassembled at
+the remote endpoint.
+This fragmentation and reassembly is transparent to userspace.
+.PP
+.SS Address format
+MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
+single-byte values, typed as
+.BR mctp_eid_t .
+Packets between a local and remote endpoint are identified by the source
+and destination EIDs, plus a three-bit tag value.
+.PP
+Addressing data is passed in socket system calls through
+.B struct sockaddr\_mctp
+defined as:
+.PP
+.in +4n
+.EX
+typedef uint8_t        mctp_eid_t;
+
+struct mctp_addr {
+    mctp_eid_t         s_addr;
+};
+
+struct sockaddr_mctp {
+    unsigned short int smctp_family;  /* = AF_MCTP */
+    int                smctp_network; /* local network identifier */
+    struct mctp_addr   smctp_addr;    /* EID */
+    uint8_t            smctp_type;    /* message type byte */
+    uint8_t            smctp_tag;     /* tag value, including TO flag */
+};
+.EE
+.in
+.SS Sending messages
+Messages can be transmitted using the
+.BR sendto (2)
+and
+.BR sendmsg (2)
+system calls, by providing a
+.B struct sockaddr_mctp
+describing the addressing parameters.
+.PP
+.in +4n
+.EX
+struct sockaddr_mctp addr;
+ssize_t len;
+char *buf;
+
+/* set message destination */
+addr.smctp_family = AF_MCTP;
+addr.smctp_network = 0;
+addr.smctp_addr.s_addr = 8; /* remote EID */
+addr.smctp_tag = MCTP_TAG_OWNER;
+addr.smctp_type = MCTP_TYPE_ECHO; /* fictional message type */
+
+buf = "hello, world!"
+
+len = sendto(sd, buf, 13, 0,
+             (struct sockaddr_mctp *)&addr, sizeof(addr));
+.EE
+.in
+.PP
+Here, the sender owns the message tag; so
+.B MCTP_TAG_OWNER
+is used as the tag data.
+The kernel will allocate a specific tag value for this message.
+If no tag is available,
+.B sendto
+will return an error, with errno set to
+.BR EBUSY .
+This allocated tag remains associated with the socket, so that any replies to
+the sent message will be received by the same socket.
+.PP
+Sending a MCTP message requires the
+.B CAP_NET_RAW
+capability.
+.SS Receiving messages
+Messages can be received using the
+.BR recvfrom (2)
+and
+.BR recvmsg (2)
+system calls.
+.PP
+.in +4n
+.EX
+struct sockaddr_mctp addr;
+socklen_t addrlen;
+char buf[13];
+
+addrlen = sizeof(addr);
+
+len = recvfrom(sd, buf, sizeof(buf), 0,
+                (struct sockaddr_mctp *)&addr, &addrlen);
+.EE
+.in
+.PP
+In order to receive an incoming message, the receiver will need to either have
+previously sent a message to the same endpoint, or performed a
+.BR bind (2)
+to receive all messages of a certain type:
+.PP
+.in +4n
+.EX
+struct sockaddr_mctp addr;
+
+addr.smctp_family = AF_MCTP;
+addr.smctp_network = MCTP_NET_ANY;
+addr.smctp_addr.s_addr = MCTP_ADDR_ANY;
+addr.smctp_type = MCTP_TYPE_ECHO; /* our fictional 'echo' type */
+
+int rc = bind(sd, (struct sockaddr *)&addr, sizeof(addr));
+.EE
+.in
+.PP
+This call requires the
+.B CAP_NET_BIND_SERVICE
+capability, and will result in the socket receiving all messages sent to
+locally-assigned EIDs, for the specified message type.
+.PP
+After a
+.B recvfrom
+or
+.B recvmsg
+returns a success condition, the provided address argument will be populated
+with the sender's network and EID, as well as the tag value used for the
+message.
+Any reply to this message should pass the same address and tag value (with the
+TO bit cleared) to indicate that is is directed to the same remote endpoint.
+.SH SEE ALSO
+.BR socket (7)
+.PP
+The kernel source file
+.IR Documentation/networking/mctp.rst .
+.PP
+The DSP0236 specification, at
+.UR https://www.dmtf.org/standards/pmci
+.UE .
-- 
2.30.2

