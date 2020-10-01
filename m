Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24E9928040C
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:35:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732342AbgJAQfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQfY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:35:24 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDE3BC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:35:23 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id 13so94402wmf.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vnjks/Iu/u07UujIbudn6X9f6k1p5Vp0ZFcd3HnTlX0=;
        b=gL/EBOI1lVW0csmIp5BpVendy2ozcc2DwpwVo2R/bWpuYkXgDzYdwy+KE3CMzsj20H
         1QOHvDh0nrEAX7hEHdIXBHpxvHDeh34wYI9k+rEDZ4eXyENN2sIahDdtprmK2rJvPyKe
         kN2yRBLk32T+uuWEnycPrVYtEpGsaU7zTD1217Jz3cJA9OPWapb2A642rThCz769fgEL
         X26/AkuYvuPbvOlqN4fIPu1WpQ97x0B6K1yuqbVjANUvgOL0xWY40LFcHAjkRQXRSyvG
         9feTIrtU/Q+Cww+od0MPah0ZIxFMmeu9aDA379ImNiH266SdLYkN/+T4emckJol45QGo
         crhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vnjks/Iu/u07UujIbudn6X9f6k1p5Vp0ZFcd3HnTlX0=;
        b=DvneOorbWH8bWp/CETL1vre7qbw0yYjfzutL/Io0WS6oft1/XoTZhRCC6oqrXXnkcw
         xOfEIXJnQ0kwH84UYwNs8BnsXlM/QGViC3ylEwzGEKo8wBADici48OpqrJeTsBaOli+k
         3ByHBqXmg+VTRkYqZIs1sXjvEpJo4dH412EDAaZxhyGnbZjY/bJKXxdjaUaGvYiz7M8a
         6U8VKGa4RrlSNUkHFwJIm/j1JonCxg1E7ItuvIKFHO8dUl+3el9dNY0joGbreowJxsF2
         nwkmuzJcoGM70xRjzyTFAQF8KeyMj4rqzpMbV+hpK5TFmaVZtKY1rd13NLs6y2EOqiz0
         TO5w==
X-Gm-Message-State: AOAM53010G3M9MIvJkZ8SW7dWWLyjTN+7J4lZBrgMBc5S3JHFs2dAEPz
        3zlGs+ebRgKV/FGeVt91ilc=
X-Google-Smtp-Source: ABdhPJxBV27xauNFVVh5BpdLH7pOMQj7E3QX3TQ/Od/bp98XaU3T0V9h4A/0c02RONFdLOmmEvY9IQ==
X-Received: by 2002:a05:600c:219a:: with SMTP id e26mr888095wme.185.1601570122580;
        Thu, 01 Oct 2020 09:35:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm10660997wrt.53.2020.10.01.09.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 09:35:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 4/4] unsigned-__int128.3: New link to system_data_types(7)
Date:   Thu,  1 Oct 2020 18:34:44 +0200
Message-Id: <20201001163443.106933-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/unsigned-__int128.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/unsigned-__int128.3

diff --git a/man3/unsigned-__int128.3 b/man3/unsigned-__int128.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/unsigned-__int128.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

