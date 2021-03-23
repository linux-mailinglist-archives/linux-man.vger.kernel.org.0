Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8AE9345912
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 08:50:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbhCWHtl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 03:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbhCWHtP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 03:49:15 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C94F4C061574
        for <linux-man@vger.kernel.org>; Tue, 23 Mar 2021 00:49:12 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id dm8so22333700edb.2
        for <linux-man@vger.kernel.org>; Tue, 23 Mar 2021 00:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ska-ac-za.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=AipmUsGW6FfmfSUU27X8f4Y5KaWRTVjRABybZ9TG6Uk=;
        b=aU3AEUeOOk6GnHRr1PjaRuLwRl5R4fLXDvKAlMzlYTjsQWbNqjD6Ng4w0qf+mCYLFS
         r+gLPifXsyYQ/Y/bjSzRiPLWZx43qpumKrF5pEMIa7qKNGxSuIIievHRxh40Ik/3hGWE
         vuSnX1zZbLTKSgxyePoRp4EnJ6Jr5doPiJR1Fgns2ufhm0hKui19q8pswR1I0CeHMXe2
         TNoCh8m7LGf5UkxY/AgLwfsRaVR5pxJkVS7kgFaf3UsoonXBMJ4uCt/NoJGfwgofHKTH
         nrxI4a+wkAjRBcIv2wdAVya0N3cbD2pV95rdqp8pKZfH3vDai+/LC6T/RzNvSszPLu41
         BdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=AipmUsGW6FfmfSUU27X8f4Y5KaWRTVjRABybZ9TG6Uk=;
        b=nf/x7l3Ugjwr9M8iirUMETIeZIezo29D+ZQjc5jcr0k/v2C0CTy2dctwjMh9eqv/v/
         g6EfM6WSwnI8kM9V5/ktRh1Hfk3K2NHxlP4F529JFR0l3D44WTGRFytDja8iHQJy39gl
         kyzwSJcPn2g7SzYvVUU9eOPv/d1LfiSW7mA5jWcIdOzD9gv5EE095HrTksZARFmImRjy
         bl0/opbD2TyddTJnFSiOZrOllHQtWw2M1EHcVg4Ce9VvaT9rdFUMv5eAR89vPn6Znnsq
         OYUo7hufHDD9n7wY8e0r0SJ1vCmxzw4IJH7WyGlHX6hYE1SRJwqGftPpDGiJp5JkOMiF
         p8tQ==
X-Gm-Message-State: AOAM533meRYnszuRnN4CrUmVPvyhYD3Z9SOCDoY4Vb/OXJj+55605WSY
        ZAytC0Ieb+7xz14c5ntFZHtWudluy/2TscEC
X-Google-Smtp-Source: ABdhPJxh87HBh1TGFoMdMzYO0t/nkzo95hx91hQ0Bw7i/ey2HH2BnIBXObL60jhMZMQQXc+pZepdPw==
X-Received: by 2002:a05:6402:1713:: with SMTP id y19mr3344871edu.52.1616485751271;
        Tue, 23 Mar 2021 00:49:11 -0700 (PDT)
Received: from kryton.kat.ac.za (102-182-203-66.ip.afrihost.co.za. [102.182.203.66])
        by smtp.gmail.com with ESMTPSA id u24sm12269638edt.85.2021.03.23.00.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 00:49:10 -0700 (PDT)
Date:   Tue, 23 Mar 2021 09:48:31 +0200
From:   Bruce Merry <bmerry@ska.ac.za>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-mm@kvack.org
Subject: [patch] Clarify that MAP_POPULATE is best-effort
Message-ID: <20210323074831.GA7535@kryton.kat.ac.za>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As discussed on linux-mm
(https://marc.info/?l=linux-mm&m=161528594100612&w=2), MAP_POPULATE can
fail silently if the hugetlb cgroup settings allow huge page reservation
but prevents huge pages being allocated.

Closes https://bugzilla.kernel.org/show_bug.cgi?id=212153.
---
 man2/mmap.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/mmap.2 b/man2/mmap.2
index 164ba196e..03f2eeb2c 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -400,6 +400,11 @@ private writable mappings.
 Populate (prefault) page tables for a mapping.
 For a file mapping, this causes read-ahead on the file.
 This will help to reduce blocking on page faults later.
+The
+.BR mmap ()
+call doesn't fail if the mapping cannot be populated (for example, due
+to limitations on the number of mapped huge pages when using
+.BR MAP_HUGETLB ).
 .BR MAP_POPULATE
 is supported for private mappings only since Linux 2.6.23.
 .TP
-- 
2.25.1
