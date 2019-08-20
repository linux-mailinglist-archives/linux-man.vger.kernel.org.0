Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB1079670B
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 19:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726345AbfHTREa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 13:04:30 -0400
Received: from plasma31.jpberlin.de ([80.241.56.82]:57039 "EHLO
        plasma31.jpberlin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725983AbfHTREa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Aug 2019 13:04:30 -0400
Received: from spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123])
        by plasma.jpberlin.de (Postfix) with ESMTP id 9FD151005BF;
        Tue, 20 Aug 2019 19:04:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.76])
        by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
        with ESMTP id pnm3VR5ODmXj; Tue, 20 Aug 2019 19:04:19 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "webmail.opensynergy.com", Issuer "GeoTrust EV RSA CA 2018" (not verified))
        (Authenticated sender: opensynergy@jpberlin.de)
        by plasma.jpberlin.de (Postfix) with ESMTPSA id AE83710059D;
        Tue, 20 Aug 2019 19:04:19 +0200 (CEST)
Received: from mmo.open-synergy.com (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 20 Aug
 2019 19:04:19 +0200
From:   Matti Moell <Matti.Moell@opensynergy.com>
Subject: [PATCH v2] io_submit.2: Fix kernel version numbers for 'aio_rw_flags'
 flags
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <linux-aio@vger.kernel.org>,
        Damir Shaikhutdinov <Damir.Shaikhutdinov@opensynergy.com>
Openpgp: preference=signencrypt
Message-ID: <852f4b43-b2ca-6823-7c42-2e8c766f79e9@opensynergy.com>
Date:   Tue, 20 Aug 2019 19:04:19 +0200
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
could not be used with aio until 4.13 where the aio_rw_flags field was
added to struct iocb (9830f4be159b "fs: Use RWF_* flags for AIO
operations"). Correct the stated version for each flag.

Fixes: 2f72816f8680 ("io_submit.2: Add kernel version numbers for various 'aio_rw_flags' flags")
Signed-off-by: Matti Möll <Matti.Moell@opensynergy.com>
---
Changelog:
v2:
 - Fix kernel version from 4.12 to 4.13
---
 man2/io_submit.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/io_submit.2 b/man2/io_submit.2
index ed98da46c999..1b5fd405a00e 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -91,7 +91,7 @@ The
 field is ignored.
 The file offset is not changed.
 .TP
-.BR RWF_DSYNC " (since Linux 4.7)"
+.BR RWF_DSYNC " (since Linux 4.13)"
 Write operation complete according to requirement of
 synchronized I/O data integrity.
 See the description of the flag of the same name in
@@ -101,7 +101,7 @@ as well the description of
 in
 .BR open (2).
 .TP
-.BR RWF_HIPRI " (since Linux 4.6)"
+.BR RWF_HIPRI " (since Linux 4.13)"
 High priority request, poll if possible
 .TP
 .BR RWF_NOWAIT " (since Linux 4.14)"
@@ -118,7 +118,7 @@ field of the
 structure (see
 .BR io_getevents (2)).
 .TP
-.BR RWF_SYNC " (since Linux 4.7)"
+.BR RWF_SYNC " (since Linux 4.13)"
 Write operation complete according to requirement of
 synchronized I/O file integrity.
 See the description of the flag of the same name in
-- 
2.21.0


