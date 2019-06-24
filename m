Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 727D6509A5
	for <lists+linux-man@lfdr.de>; Mon, 24 Jun 2019 13:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728515AbfFXLU6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Jun 2019 07:20:58 -0400
Received: from mx1.redhat.com ([209.132.183.28]:42530 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727722AbfFXLU5 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 24 Jun 2019 07:20:57 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id C1E7C87633;
        Mon, 24 Jun 2019 11:20:57 +0000 (UTC)
Received: from unused-4-132.brq.redhat.com (unknown [10.43.2.12])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D2971001B02;
        Mon, 24 Jun 2019 11:20:56 +0000 (UTC)
Message-ID: <ba87bced44ac346f45887c6e91d0d29b0632a7f9.camel@redhat.com>
Subject: [PATCH] mmap.2: fix EINVAL conditions
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Mon, 24 Jun 2019 13:20:55 +0200
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 24 Jun 2019 11:20:57 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since introduction of MAP_SHARED_VALIDATE, in case flags contain
both MAP_PRIVATE and MAP_SHARED, mmap() doesn't fail with EINVAL,
it succeeds.

The reason for that is that MAP_SHARED_VALIDATE is in fact equal
to MAP_PRIVATE | MAP_SHARED.

This is intended behavior, see:
https://lwn.net/Articles/758594/
https://lwn.net/Articles/758598/

Signed-off-by: Nikola Forró <nforro@redhat.com>
---
 man2/mmap.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/mmap.2 b/man2/mmap.2
index cea0bd372..b41e8b9ca 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -565,11 +565,11 @@ was 0.
 .TP
 .B EINVAL
 .I flags
-contained neither
-.B MAP_PRIVATE
+contained none of
+.BR MAP_PRIVATE ,
+.B MAP_SHARED
 or
-.BR MAP_SHARED ,
-or contained both of these values.
+.BR MAP_SHARED_VALIDATE .
 .TP
 .B ENFILE
 .\" This is for shared anonymous segments
-- 
2.21.0


