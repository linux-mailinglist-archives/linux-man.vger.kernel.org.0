Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 013AB1F7D68
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726269AbgFLTNB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbgFLTNA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:13:00 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F149C03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:13:00 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05CJCvWx012321
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Fri, 12 Jun 2020 19:12:57 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05CJCvWx012321
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05CJCvYZ031392;
        Fri, 12 Jun 2020 19:12:57 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05CJCvGF031391;
        Fri, 12 Jun 2020 19:12:57 GMT
Date:   Fri, 12 Jun 2020 19:12:56 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] ioctl_list.2: ffix: add a missing third column in three
 tables
Message-ID: <20200612191256.GA31381@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

tbl:<ioctl_list.2>:162: error: excess data entry '// MORE' discarded
tbl:<ioctl_list.2>:201: error: excess data entry '// I-O' discarded
tbl:<ioctl_list.2>:343: error: excess data entry '// I-O' discarded

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man2/ioctl_list.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/ioctl_list.2 b/man2/ioctl_list.2
index a8b0480ff..97e152fcb 100644
--- a/man2/ioctl_list.2
+++ b/man2/ioctl_list.2
@@ -130,7 +130,7 @@ SIOCGSTAMP	timeval *
 .sp 1
 // <include/asm-i386/termios.h>
 .TS
-l l.
+l l l.
 TCGETS	struct termios *
 TCSETS	const struct termios *
 TCSETSW	const struct termios *
@@ -192,7 +192,7 @@ TIOCSERSETMULTI	const struct serial_multiport_struct *
 .sp 1
 // <include/linux/ax25.h>
 .TS
-l l.
+l l l.
 SIOCAX25GETUID	const struct sockaddr_ax25 *
 SIOCAX25ADDUID	const struct sockaddr_ax25 *
 SIOCAX25DELUID	const struct sockaddr_ax25 *
@@ -331,7 +331,7 @@ FS_IOC32_SETVERSION	int *
 .sp 1
 // <include/linux/hdreg.h>
 .TS
-l l.
+l l l.
 HDIO_GETGEO	struct hd_geometry *
 HDIO_GET_UNMASKINTR	int *
 HDIO_GET_MULTCOUNT	int *
-- 
2.27.0
