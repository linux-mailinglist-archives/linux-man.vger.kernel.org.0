Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6B3A8826E
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2019 20:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbfHIS2M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Aug 2019 14:28:12 -0400
Received: from plasma6.jpberlin.de ([80.241.56.68]:43467 "EHLO
        plasma6.jpberlin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbfHIS2M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Aug 2019 14:28:12 -0400
X-Greylist: delayed 434 seconds by postgrey-1.27 at vger.kernel.org; Fri, 09 Aug 2019 14:28:11 EDT
Received: from gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
        by plasma.jpberlin.de (Postfix) with ESMTP id 4F68CB984E;
        Fri,  9 Aug 2019 20:20:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
        by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173]) (amavisd-new, port 10030)
        with ESMTP id 4L3ZhOTjEysb; Fri,  9 Aug 2019 20:20:51 +0200 (CEST)
Received: from MXS02.open-synergy.com (unknown [217.66.60.5])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "webmail.opensynergy.com", Issuer "GeoTrust EV RSA CA 2018" (not verified))
        (Authenticated sender: opensynergy@jpberlin.de)
        by plasma.jpberlin.de (Postfix) with ESMTPSA id 01C88B980E;
        Fri,  9 Aug 2019 20:20:50 +0200 (CEST)
Received: from mmo.open-synergy.com (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 9 Aug 2019
 20:20:49 +0200
From:   Matti Moell <Matti.Moell@opensynergy.com>
Subject: [PATCH] io_submit.2: Fix kernel version numbers for 'aio_rw_flags'
 flags
Openpgp: preference=signencrypt
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <linux-aio-owner@vger.kernel.org>,
        Damir Shaikhutdinov <Damir.Shaikhutdinov@opensynergy.com>
Message-ID: <0718906b-181c-e04c-288a-e6097e6d7e89@opensynergy.com>
Date:   Fri, 9 Aug 2019 20:20:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.25.255.1]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Even though the RFW_* flags were first introduced in Linux 4.6, they
could not be used with aio until 4.12 where the aio_rw_flags field was
added to struct iocb (9830f4be159b "fs: Use RWF_* flags for AIO
operations"). Correct the version for each flag.

Fixes: 2f72816f8680 ("io_submit.2: Add kernel version numbers for various 'aio_rw_flags' flags")
Signed-off-by: Matti Möll <Matti.Moell@opensynergy.com>

---
 man2/io_submit.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/io_submit.2 b/man2/io_submit.2
index ed98da46c999..49dcbd46169d 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -91,7 +91,7 @@ The
 field is ignored.
 The file offset is not changed.
 .TP
-.BR RWF_DSYNC " (since Linux 4.7)"
+.BR RWF_DSYNC " (since Linux 4.12)"
 Write operation complete according to requirement of
 synchronized I/O data integrity.
 See the description of the flag of the same name in
@@ -101,7 +101,7 @@ as well the description of
 in
 .BR open (2).
 .TP
-.BR RWF_HIPRI " (since Linux 4.6)"
+.BR RWF_HIPRI " (since Linux 4.12)"
 High priority request, poll if possible
 .TP
 .BR RWF_NOWAIT " (since Linux 4.14)"
@@ -118,7 +118,7 @@ field of the
 structure (see
 .BR io_getevents (2)).
 .TP
-.BR RWF_SYNC " (since Linux 4.7)"
+.BR RWF_SYNC " (since Linux 4.12)"
 Write operation complete according to requirement of
 synchronized I/O file integrity.
 See the description of the flag of the same name in
-- 
2.21.0

