Return-Path: <linux-man+bounces-2779-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A164A911C5
	for <lists+linux-man@lfdr.de>; Thu, 17 Apr 2025 04:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27BC27A9DF5
	for <lists+linux-man@lfdr.de>; Thu, 17 Apr 2025 02:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B2519F133;
	Thu, 17 Apr 2025 02:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="TasaAYQU"
X-Original-To: linux-man@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05A42AE6A
	for <linux-man@vger.kernel.org>; Thu, 17 Apr 2025 02:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744858235; cv=none; b=LRvmnEsvDL9/FtNBo+Ub+N8aEcRWuR2Rp05Jtt04pcosLLq9GvoH4on3JtXkZQV6kZPIgndp+v4zvlj0aIX579DhE3KkeFUN5XrWB5+052nDY2nwdaFuPOyVGmdbauz8XXsmfpY1w1WqH/6H7SidUDwnuM0SL/hgFqq8EN5PBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744858235; c=relaxed/simple;
	bh=g5AQe3IndEFSb/dLi4N0XEdQ5+Vv1xynA51kowd8Cyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=QpGqvgNrDmbNPxSgnR7u82+liZ8439RkLJLSkh4x0MTbRvuBdo7Lv+CRPG/L9xeZFrEIof1Y/DojIor70U/FNudjGJ6QmdyiBrBgZ8T435Lzu5msaTQkLB8HXbEU+Zewxc5zHeHlf4hUeVRpBODj8lMeCs5KzXHApFeOcUcinSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=TasaAYQU; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1744858230;
	bh=8yKcia1EWMY1U8pymZXmzc/6fql8VmEfFwG975R9q7s=;
	h=From:Date:Subject:To:Cc;
	b=TasaAYQU+vJe3xQYmjd6VMJgybMSmZPXyXydgLO3b/GSbEr9pb8IqEnYchRyH54i4
	 4k9mR3ccTJdcKP3QvytbOBdjoI7vfqhTdENyjC1Skd2foDanCf39NaNWuIYzUcR5D9
	 PG+TEvWOdD496N0G6HZBB7918GfpYuFEazMQWDqKq+bF7EA8cMqF6vCUTqGKSh0eJI
	 kT0YuX99fBb03OI0VfCHuxGtncsaKAyyUDn972SuAThWPoJjytYzVNYwS8b4mH+aq/
	 Yan59CS5irymdt5YxbRjs72fok+2mqoeFfg0X/jsjfRQ8PVD6jawtuaMq69iNVh7C4
	 N69jghppGj7dg==
Received: by codeconstruct.com.au (Postfix, from userid 10000)
	id 6AF517E556; Thu, 17 Apr 2025 10:50:30 +0800 (AWST)
From: Jeremy Kerr <jk@codeconstruct.com.au>
Date: Thu, 17 Apr 2025 10:50:07 +0800
Subject: [PATCH v3] man/man7/mctp.7: Add man page for Linux MCTP support
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>
X-B4-Tracking: v=1; b=H4sIAF5sAGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1MDE0Nz3dzkkgJdU0MTQ4Nk40RLi6Q0JaDSgqLUtMwKsDHRsbW1ACxFacJ
 WAAAA
X-Change-ID: 20250417-mctp-51410c3a98bf
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
X-Mailer: b4 0.14.2

This change adds a brief description for the new Management Component
Transport Protocol (MCTP) support added to Linux as of bc49d8169.

This is a fairly regular sockets-API implementation, so we're just
describing the semantics of socket, bind, sendto and recvfrom for the
new protocol.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
This change picks up on an incomplete submission from way back in 2021,
adding mctp.7.

I have updated form some feedback on v2, and updated to some conventions
since that change was first submitted, but let me know if there is
anything I may have missed in that time, or if submission requirements
have changed too.

I have some follow-up patches to add newer functions of the kernel mctp
stack, but am planning to send those once the base page structure is
defined, and any general feedback incorporated.

Of course, comments, questions etc are most welcome.
---
Changes in v3:
- rebase for new file structure
- more fine-grained semantic newlines
- update headers and .TH to match newer formats
- add #include comments
- adjust URI breakpoints
- Link to v2: https://lore.kernel.org/r/20211111015323.3542313-1-jk@codeconstruct.com.au/

Changes in v2:
- Fix synopsis variable formatting
- Semantic newlines
- remove unnecessary escape
- make custom constants more obvious
- Add URI breakpoints
- fix sockaddr_mctp misuse
- Link to v1: https://lore.kernel.org/r/20211014070519.2037226-1-jk@codeconstruct.com.au/
---
 man/man7/address_families.7 |   7 ++
 man/man7/mctp.7             | 180 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 187 insertions(+)

diff --git a/man/man7/address_families.7 b/man/man7/address_families.7
index 3c2400820627035d2fced0d9e49d61aa01e2d3f3..4e29e0bfb88447c64d53d44c3fae27ccc435e241 100644
--- a/man/man7/address_families.7
+++ b/man/man7/address_families.7
@@ -387,6 +387,13 @@ XDP (express data path) interface (since Linux 4.18).
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
diff --git a/man/man7/mctp.7 b/man/man7/mctp.7
new file mode 100644
index 0000000000000000000000000000000000000000..e58a03e1063086fa8758c3b096db044b01c3c277
--- /dev/null
+++ b/man/man7/mctp.7
@@ -0,0 +1,180 @@
+.\" Copyright (c) 2021,2025 Jeremy Kerr <jk@codeconstruct.com.au>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH mctp 7 (date) "Linux man-pages (unreleased)"
+.SH NAME
+mctp \- Management Component Transport Protocol
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/mctp.h>" \
+"  /* MCTP address type and protocol constants */"
+.BR "#include <sys/socket.h>" \
+"  /* Definition of " socket() ", " AF_* " and " SOCK_* " */"
+.PP
+.IB mctp_socket " = socket(AF_MCTP, SOCK_DGRAM, 0);"
+.fi
+.SH DESCRIPTION
+Linux implements the Management Component Transport Protocol (MCTP),
+specified by DMTF spec DSP0236,
+currently at version 1.
+This is a connectionless protocol,
+typically used between devices within a server system.
+Message reliability and ordering are not guaranteed,
+but message boundaries are preserved.
+.PP
+The API for MCTP messaging uses a standard sockets interface,
+using the
+.BR sendto (2)
+and
+.BR recvfrom (2)
+classes of system calls to transfer messages.
+Messages may be fragmented into packets before transmission,
+and reassembled at the remote endpoint.
+This fragmentation and reassembly is transparent to userspace.
+.SS Address format
+MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
+single-byte values,
+typed as
+.IR mctp_eid_t .
+Packets between a local and remote endpoint are identified by
+the source and destination EIDs,
+plus a three-bit tag value.
+.PP
+Addressing data is passed in socket system calls through
+.I struct sockaddr_mctp
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
+    unsigned short     smctp_family;  /* = AF_MCTP */
+    uint16_t           __smctp_pad0;
+    int                smctp_network; /* local network identifier */
+    struct mctp_addr   smctp_addr;    /* EID */
+    uint8_t            smctp_type;    /* message type byte */
+    uint8_t            smctp_tag;     /* tag value & owner */
+    uint8_t            __smctp_pad1;
+};
+.EE
+.in
+.SS Sending messages
+Messages can be transmitted using the
+.BR sendto (2)
+and
+.BR sendmsg (2)
+system calls, by providing a
+.I struct sockaddr_mctp
+describing the addressing parameters.
+.PP
+.in +4n
+.EX
+struct sockaddr_mctp addr;
+ssize_t len;
+char *buf;
+
+/* unused fields must be zero */
+memset(&addr, 0, sizeof(addr));
+
+/* set message destination */
+addr.smctp_family = AF_MCTP;
+addr.smctp_network = 0;
+addr.smctp_addr.s_addr = 8; /* remote EID */
+addr.smctp_tag = MCTP_TAG_OWNER;
+addr.smctp_type = MYPROGRAM_MCTP_TYPE_ECHO; /* example type */
+
+buf = "hello, world!"
+
+len = sendto(sd, buf, 13, 0,
+             (struct sockaddr *)&addr, sizeof(addr));
+.EE
+.in
+.PP
+Here, the sender owns the message tag; so
+.B MCTP_TAG_OWNER
+is used as the tag data.
+The kernel will allocate a specific tag value for this message.
+If no tag is available,
+.BR sendto (2)
+will return an error,
+with errno set to
+.BR EBUSY .
+This allocated tag remains associated with the socket,
+so that any replies to the sent message will be received by the same socket.
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
+               (struct sockaddr *)&addr, &addrlen);
+.EE
+.in
+.PP
+In order to receive an incoming message,
+the receiver will need to either have previously sent a message to the same
+endpoint,
+or performed a
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
+addr.smctp_type = MYPROGRAM_MCTP_TYPE_ECHO; /* our 'echo' type */
+
+int rc = bind(sd, (struct sockaddr *)&addr, sizeof(addr));
+.EE
+.in
+.PP
+This call requires the
+.B CAP_NET_BIND_SERVICE
+capability,
+and will result in the socket receiving all messages sent to
+locally-assigned EIDs,
+for the specified message type.
+.PP
+After a
+.BR recvfrom (2)
+or
+.BR recvmsg (2)
+returns a success condition,
+the provided address argument will be populated with the sender's network and
+EID,
+as well as the tag value used for the message.
+Any reply to this message should pass the same address and tag value
+(with the TO bit cleared)
+to indicate that is is directed to the same remote endpoint.
+.SH SEE ALSO
+.BR socket (7)
+.PP
+The kernel source file
+.IR Documentation/networking/mctp.rst .
+.PP
+The DSP0236 specification, at
+.UR https://www.dmtf.org/\:standards/\:pmci
+.UE .

---
base-commit: 4c4d9f0f5148caf1271394018d0f7381c1b8b400
change-id: 20250417-mctp-51410c3a98bf

Best regards,
-- 
Jeremy Kerr <jk@codeconstruct.com.au>


