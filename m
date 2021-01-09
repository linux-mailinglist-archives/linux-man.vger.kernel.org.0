Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBCAD2EFDE5
	for <lists+linux-man@lfdr.de>; Sat,  9 Jan 2021 06:20:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725847AbhAIFUa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Jan 2021 00:20:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725826AbhAIFU3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Jan 2021 00:20:29 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 891F4C061573
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 21:19:49 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id q205so13900276oig.13
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 21:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=LNneK+TyY7ylOpNsZ9FLyU/39kLCmDOwY1IpuNcVcio=;
        b=Ko5UosrNY3pmsEaC+z5pwCJqFw+Dl5CMNDWBB/dTZeYa12MXiha1gHpIiJydPy8hmE
         XjkL3aR2XgVDhMCCvoH5d+IhiUhPNYJJf2oab/HRO6Cpdi3povy/fYjt24SJAWZw6fCm
         olcr/7GLTYbGTWpINks/p3FJUZZMBCXtaDeQsejNnNaL28AAzowNhwfctVcF+SIm2l9y
         yOd34EuZYTPpfQRPhtEoKRGc/s+c1OuP1NnlEFfDfRssQzVBcCRBWyZubZ8djnS6HRsa
         0sl9QiB/gAA3J9lclfEMJmxhQOoPqd0gHKNaYF2T5Rq2QCVp7aU+jqv7uWwRN72L7ioR
         qb6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=LNneK+TyY7ylOpNsZ9FLyU/39kLCmDOwY1IpuNcVcio=;
        b=T0epDfSPLAuYoVN4RdynSwODhoiF5wevqXRC+yk4NwCBL3IBCv/3ddsBqF80YMRu8S
         Vf4j0RT3+y3cWLIGmHQCf6ORKzoA0V3ssqYtRJ1yCB2sseulE24PCvAgZ27gjEkAJXDD
         tMO2CA4+cvqs7684eBHkKmtFD7oz1L5tyDCa2ZJVvchodTwPwt5oLf5l7OUwjLvggE4p
         M7+NHt8ViuRLDuHmW5478u76C2E13tC+GUaBjTzoBmz1rqdAnPCjvcZiP+JZDTx/gIT6
         b5C0S9WA9XR6J2n1pVGJ0hBkXgePTCWur5Zks6UfmBhaI2i+7pJAHghAL93V8B1/pEg/
         rHRw==
X-Gm-Message-State: AOAM5303fUrpoMv2OZk1Opz/Hpbp/06Sp/y63j7pU2mYM2vPR32zZ/k2
        B/pnDUgEfI4bwocF0rfH6UA=
X-Google-Smtp-Source: ABdhPJzajAjVb0MBAZ0U9pqaOUu6nrvBS9TOR/ipxwwoB+ZM/PIqdZkroZUeZZd0T5bnfFiGTJ99JA==
X-Received: by 2002:aca:ec13:: with SMTP id k19mr4442882oih.97.1610169588920;
        Fri, 08 Jan 2021 21:19:48 -0800 (PST)
Received: from localhost.localdomain (99-6-134-177.lightspeed.snmtca.sbcglobal.net. [99.6.134.177])
        by smtp.gmail.com with ESMTPSA id y35sm2231356otb.5.2021.01.08.21.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 21:19:48 -0800 (PST)
Date:   Fri, 8 Jan 2021 21:19:46 -0800
From:   Enke Chen <enkechen2020@gmail.com>
To:     Eric Dumazet <edumazet@google.com>
Cc:     linux-man@vger.kernel.org, enkechen2020@gmail.com
Subject: Documentation revision for TCP_USER_TIMEOUT in man7/tcp7
Message-ID: <20210109051946.GA4015@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man7/tcp.7 b/man7/tcp.7
index 6c91f058b..2ce831c90 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -1161,7 +1161,8 @@ This option takes an
 as an argument.
 When the value is greater than 0,
 it specifies the maximum amount of time in milliseconds that transmitted
-data may remain unacknowledged before TCP will forcibly close the
+data may remain unacknowledged, or bufferred data may remain untransmitted
+(due to zero window size) before TCP will forcibly close the
 corresponding connection and return
 .B ETIMEDOUT
 to the application.
