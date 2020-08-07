Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DAA523E8ED
	for <lists+linux-man@lfdr.de>; Fri,  7 Aug 2020 10:31:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726609AbgHGIbC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Aug 2020 04:31:02 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:56343 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726940AbgHGIbC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Aug 2020 04:31:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1596789061;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=O4HGLPBi8stKRs1ihryipm3cuL/VHGHDIzotQzsLwHE=;
        b=MqfEBoWIUzdwJiFJFrwHJvaN+p057fKMUC0S3RhNmoXCwcw/U8VH4pYIXZ7nu6pdkqsWsD
        HhP3nbp7GkFMnuzq89XvAQZi8c6Bu8u2NMbnfRfUrtdhQFS0Xth7tgDEdp4NykwNR9E6QO
        RFJuOU7ZBVmkpsgoq3wKtyU0pTp7HmE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-461-1UIj_F2HPNyjE2tkvgF1wA-1; Fri, 07 Aug 2020 04:30:59 -0400
X-MC-Unique: 1UIj_F2HPNyjE2tkvgF1wA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 789CD106B242;
        Fri,  7 Aug 2020 08:30:58 +0000 (UTC)
Received: from localhost (unknown [10.33.36.145])
        by smtp.corp.redhat.com (Postfix) with ESMTP id 0F41F7B932;
        Fri,  7 Aug 2020 08:30:57 +0000 (UTC)
Date:   Fri, 7 Aug 2020 09:30:57 +0100
From:   Jonathan Wakely <jwakely@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] strtod.3: Fix return value for underflow
Message-ID: <20200807083057.GA2498597@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In C89 strtod returns zero on underflow, but since C99 it can return
non-zero. This means the strtod.3 page contradicts all recent C and
POSIX standards. Both C and POSIX say "smallest normalized positive
number", but for consistency with HUGE_VAL, HUGE_VALF and HUGE_VALL
this patch uses the constants for those numbers.

Also slightly improve the presentation of return values for overflow.

diff --git a/man3/strtod.3 b/man3/strtod.3
index a271498d5..56ddb5f27 100644
--- a/man3/strtod.3
+++ b/man3/strtod.3
@@ -138,15 +138,23 @@ is stored in the location referenced by
 .IR endptr .
 .PP
 If the correct value would cause overflow, plus or minus
-.B HUGE_VAL
-.RB ( HUGE_VALF ,
-.BR HUGE_VALL )
-is returned (according to the sign of the value), and
+.BR HUGE_VAL ,
+.BR HUGE_VALF ,
+or
+.B HUGE_VALL
+is returned (according to the return type and sign of the value),
+and
 .B ERANGE
 is stored in
 .IR errno .
-If the correct value would cause underflow, zero is
-returned and
+.PP
+If the correct value would cause underflow,
+a value with magnitude no larger than
+.BR DBL_MIN ,
+.BR FLT_MIN ,
+or
+.B LDBL_MIN
+is returned and
 .B ERANGE
 is stored in
 .IR errno .

