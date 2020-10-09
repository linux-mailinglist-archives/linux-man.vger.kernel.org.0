Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEEA8288571
	for <lists+linux-man@lfdr.de>; Fri,  9 Oct 2020 10:40:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732758AbgJIIk3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Oct 2020 04:40:29 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:54368 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729347AbgJIIk2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Oct 2020 04:40:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1602232827;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=vWaBUO7Br5y+iRv4Dw8Mqb1i/RUxH6S7MzKSi6sHbto=;
        b=KUPhGz0RIU+h5p9eLDYh7yTmIMPy5daA0XuUIrP3AmpnPuWptzj3+RfwfNv53u6C1DO9PY
        HpKYEy/ijXbTvfI7EdUrfaYdRq3/M+dpBnw0of3iim/DMB9cNhbVbLp50mAjHLe+eFWVFS
        /hsJW9I1xqwg+daycyW9dnD6KpgVobQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-Q8sLCyJYM2OTAcCGJiznPw-1; Fri, 09 Oct 2020 04:40:25 -0400
X-MC-Unique: Q8sLCyJYM2OTAcCGJiznPw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F7D084A61B
        for <linux-man@vger.kernel.org>; Fri,  9 Oct 2020 08:40:24 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-154.ams2.redhat.com [10.36.113.154])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 023D56EF48
        for <linux-man@vger.kernel.org>; Fri,  9 Oct 2020 08:40:23 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH] locale.5: Decimal points, thousands separators must be one
 character
Date:   Fri, 09 Oct 2020 10:40:22 +0200
Message-ID: <87zh4vdc7d.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is implied by POSIX because it requires that these strings in the
locale definition file contain one symbol.  Currently, locale.5 does
not document the concept of symbols, this change glosses over that and
just uses the term "single-character string".

Signed-off-by: Florian Weimer <fweimer@redhat.com>

---
 man5/locale.5 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man5/locale.5 b/man5/locale.5
index f6b63da9d..9789e0bb0 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -693,12 +693,12 @@ separator.
 followed by the local currency symbol.
 .TP
 .I mon_decimal_point
-followed by the string that will be used as the decimal delimiter
-when formatting monetary quantities.
+followed by the single-character string that will be used as the
+decimal delimiter when formatting monetary quantities.
 .TP
 .I mon_thousands_sep
-followed by the string that will be used as a group separator
-when formatting monetary quantities.
+followed by the single-character string that will be used as a group
+separator when formatting monetary quantities.
 .TP
 .I mon_grouping
 followed by a sequence of integers separated by semicolons that
@@ -962,12 +962,12 @@ in the first column.
 The following keywords are allowed:
 .TP
 .I decimal_point
-followed by the string that will be used as the decimal delimiter
-when formatting numeric quantities.
+followed by the single-character string that will be used as the
+decimal delimiter when formatting numeric quantities.
 .TP
 .I thousands_sep
-followed by the string that will be used as a group separator
-when formatting numeric quantities.
+followed by the single-character string that will be used as a group
+separator when formatting numeric quantities.
 .TP
 .I grouping
 followed by a sequence of integers separated by semicolons

-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

