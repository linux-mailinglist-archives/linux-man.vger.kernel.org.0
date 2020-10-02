Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B313281008
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 11:44:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgJBJoi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 05:44:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbgJBJoh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 05:44:37 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95FA7C0613D0;
        Fri,  2 Oct 2020 02:44:37 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x23so981265wmi.3;
        Fri, 02 Oct 2020 02:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ctBjra5BgJEgRcesJor017cXG+iy3ZaHuadjYJsluL0=;
        b=m3rVIo3F9L8s9lKdHf1ujK4ZEdago0ADY6m5qxTbeD5l3C4avfQ81wWdgDuP5FetH0
         rq4ffb/k80nx7P6NMS7eX5yWN+8e0fDRyqpfBmXBJpA9ztFjaR9zKPVt2rFAJmtMpCTs
         d+2Gll5CliG3pA0FmePdOKWC7YBloSxlFt68BVsZ3P9cEUgBUWJTouxbo5YAKsVLqGMx
         SK3tRr1jG9BkjL5YRcLqtYnCi6dKZcAG5cwAdcE1VemWLdwMUkAdDsEQz0utyn9ykjN+
         A/ypY5BGpYp3LJqcQIWU50Y6mHxsMl663PHRGufm0MzjvUcsmLesZO20wsPDUiJJaFfS
         uZag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ctBjra5BgJEgRcesJor017cXG+iy3ZaHuadjYJsluL0=;
        b=sah6qWo4rVqx14ddI2DoQxNa1jbl9Uby53WGdRU3dVavTgZi3IhLWvIkegLksBjRwr
         acsL7tKccEEhGQhFV7mYSBgyJbQxCm+5PCXImwj3zAqhaNH+ON+2WB+yKrcbpOuVKDT6
         Jhb8CTN24JgGFzaHt0MQyONsAcbZbWO2uU/xo40VgisaA/CV6uxcHPQmiQyC7y8VHoxs
         YB9C+9FCXYhc6GlDYh0cnJBVMTWq5aW8pq51HXcF18Vba1kUjIP/MT0ANmZEsBGyU6WC
         lXpRSPmnESq4wAC1moa8bm37JoaUOicV86zpJ4b0Qw7TNziS03D5ruFkLbJl9hD+0b3S
         3l8Q==
X-Gm-Message-State: AOAM5306GVCJdX77q/kp7F0SVjhpgtPhK9yLbNibHfOjhUwNLss5v+QN
        p6DVwF+VuC4BTQUjBIQtjWg=
X-Google-Smtp-Source: ABdhPJxAJlbKc4+NHc6gcTuByOz0Y8QbGfjUTOT/ojCYE2TGIWIvX77hAYZO95tNrMRtNmwWW53mRg==
X-Received: by 2002:a1c:6341:: with SMTP id x62mr1901135wmb.70.1601631876171;
        Fri, 02 Oct 2020 02:44:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 70sm1236745wme.15.2020.10.02.02.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 02:44:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com, eggert@cs.ucla.edu, David.Laight@ACULAB.COM
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: [PATCH] system_data_types.7: void *: Add info about generic function parameters and return value
Date:   Fri,  2 Oct 2020 11:43:16 +0200
Message-Id: <20201002094315.17832-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Paul Eggert <eggert@cs.ucla.edu>
Reported-by: David Laight <David.Laight@ACULAB.COM>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Paul and David,
Thanks for your input!

Alex


 man7/system_data_types.7 | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index aab64e002..6451782db 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1903,6 +1903,16 @@ and back.
 .PP
 Conversions from and to any other pointer type are done implicitly,
 not requiring casts at all.
+Note that this feature prevents any kind of type checking:
+the programmer should be careful not to cast a
+.I void *
+value to a type incompatible to that of the underlying data,
+because that would result in undefined behavior.
+.PP
+This type is useful in function parameters and return value
+to allow passing values of any type.
+The function will usually use some mechanism to know
+of which type the underlying data passed to the function really is.
 .PP
 A value of this type can't be dereferenced,
 as it would give a value of type
@@ -1926,6 +1936,12 @@ values.
 Conforming to:
 C99 and later; POSIX.1-2001 and later.
 .PP
+See also:
+.BR malloc (3),
+.BR memcmp (3),
+.BR memcpy (3),
+.BR memset (3)
+.PP
 See also the
 .I intptr_t
 and
-- 
2.28.0

