Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED4213CF552
	for <lists+linux-man@lfdr.de>; Tue, 20 Jul 2021 09:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233852AbhGTGv7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Jul 2021 02:51:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233549AbhGTGvv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Jul 2021 02:51:51 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57492C061762
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:32:29 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id f10-20020a05600c4e8ab029023e8d74d693so1418663wmq.3
        for <linux-man@vger.kernel.org>; Tue, 20 Jul 2021 00:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=vlxPXS6qqXLQkrm84fqRX0SXGk+2T54DG0TzmP9d16I=;
        b=LHuKq1LPUPM/xQ0TpYv/KC/tOWQw2euAANBQuaPJd11XWd7UqzCjpmtmeMUl4Fje2e
         3KFcRJwb6gEtBOBH6lKg9PgYWHN3iFNQFN91C4BtLnvUNq2xUVIIA9XbEbGr0hY3KFcK
         IVo05ix8mCN6S3v2nIGUEyVB1CRBluokqNtJWCJ0+KR/5ZVLzBYewF5KPdAd41VcNOQ7
         +DHVYV+DIGvsPHXs3EhKgbmT2vc7i/xT/zDYJo8cVKscAXDmFDpx1SBjW5MyYseK2dop
         YMm78TX/KRemYzRjvbUVoCmms56L64neHIjoY0XWrjBR4AfMbuG90FmOKlwOWfsUgYXS
         iXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=vlxPXS6qqXLQkrm84fqRX0SXGk+2T54DG0TzmP9d16I=;
        b=k+cLgcPT17RLUU/ff1WieERRokIINehTylhWu9DCpU5ospxEar4OshlBFePwGEuVKc
         /IAJN8tQxnTjRqkyTQ3zaaMIVMEMVUXzGAn7wjzcxDrHo/G9bzJIfmJBp6SSloi8uOD2
         PetwqeWV8YUp3nt3JZDeqTScVEy4EzwWuU/6BZhBEHRkRka0hBU8rLVsrfY7j27/9Hcv
         3CKOPty9hs6BmNXrzDPPUxggIX8pz5aNxpIhFPcEkF73WgloBKld5IFVGywXNX4YsJxh
         qXDr5B81QEKbYlQS+s/6HnqeOgw67SPfvaK0STLosD1hB6NgWXvXUItX0Z3ljyh0nbjL
         CVXQ==
X-Gm-Message-State: AOAM531KtatixFqnjvIzRVgLpx8BuzvgmUZoL63SkfTOG+5jM3rnMiGH
        LevdmX4zljV69NWYWxzlZBwgKg/OrHW2LA==
X-Google-Smtp-Source: ABdhPJxn6O7jEYR/cq0vUDS7D/NgLkgglBO50Lk8GZpj6dMwbkg91enozpzZx1LH4ITtdeGFSCZFlg==
X-Received: by 2002:a05:600c:2f17:: with SMTP id r23mr36420645wmn.39.1626766347977;
        Tue, 20 Jul 2021 00:32:27 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id x8sm22690097wrt.93.2021.07.20.00.32.27
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 00:32:27 -0700 (PDT)
To:     linux-man <linux-man@vger.kernel.org>
From:   Jonny Grant <jg@jguk.org>
Subject: membarrier english feedback
Message-ID: <ff4fe3f6-d83c-3f49-37b5-f1d23ad9c0b6@jguk.org>
Date:   Tue, 20 Jul 2021 08:32:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man2/membarrier.2.html

"Use of memory barriers needs to be done taking into account that"

Sounds a bit quirky.

Could it be re-phrased :-

"Use of memory barriers needs to take into account that"

Cheers
Jonny
