Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD1A298F06
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 15:19:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1781161AbgJZOTT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 10:19:19 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:39289 "EHLO
        mail-wm1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1781110AbgJZOS4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 10:18:56 -0400
Received: by mail-wm1-f41.google.com with SMTP id d3so12665048wma.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 07:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=r/G7nY0gHsdoyEBP8Dsbsf9kNsp1OUm5DDXJRq4Of2k=;
        b=joc72hqW3Gn8X98/dHq+Zb4TnUMEHzNg24HlrTkqInT4WCpDTjYDHynOYe8s2Q4tfk
         G8LalPcI+OizKRddW5fxxbnQv/F497OMZDvoQb1JUjQVs6eIAaB3fHLYn2tMg3SZFIjH
         goHR9QGsMTmqFZitRVCRBcEMzd26Bc1M4AcEddNTq4Km/p0s+4NwqHd4c5Spsc19iX5k
         3hU6i3aDGZj96/PoPcOz7ah7ae5ddxyD9FYKQ++XtFxB8u4LonCVAbBAsvWb9vP4o8f7
         SyhS4OBrbF8wPxknIhlBA+j68gSTe6X6lIPrmnLapN7F4qrRmGXbgM/fhIQTLLlZd0nN
         4c9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=r/G7nY0gHsdoyEBP8Dsbsf9kNsp1OUm5DDXJRq4Of2k=;
        b=pwAAWxhyH33AtvBPpQ3axk9gCp7tpPxUwS7O+Ow7WC0vpEnoJe7Odxe1sYWKzhUlqn
         633uzpP+4tDSuCDJmLdKH31ZZn5Y69iTxlUM0wW/WViHQJXXHRCUTFTQn/kIK3azDZHX
         yfQr+yAKKcX/+3X4C//Mrcc9hqWdFQiuPspiW19wnKcCmeScek323BaGbg6JlbZeumSX
         K+YiuU8dQ7ynpIlHf1VEQ/F9+OtLPMdy13eU5K1Mpo5eD3ldZF3sJjXRyq8v5iQ0yX4R
         /SoYkwaJVE5KpA2OsGAGJDZvXGDiIKMCRCXjBJCGlNlItoYeu2OhXKsYGKrHTT1ecJ1q
         M8yA==
X-Gm-Message-State: AOAM531VaBJCr/YBgJwNP1ktagtOWsM5x/yQ82jdbIWYA2wRYMOdEUgF
        hvPO/riIleGwOHxZcXq6SpFbphDZ92qAdw==
X-Google-Smtp-Source: ABdhPJys3iUskBadRoxkwnWHrkOP90YgrTAvfkPgEvhRu3L+70zHUvJfvhm0UIgURxa60SYWJdEz7Q==
X-Received: by 2002:a7b:c451:: with SMTP id l17mr16712563wmi.127.1603721932820;
        Mon, 26 Oct 2020 07:18:52 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id b131sm1865782wmc.3.2020.10.26.07.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 07:18:52 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: argz_create
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
Date:   Mon, 26 Oct 2020 14:18:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man3/argz_create.3.html

BUGS         top
       Argz vectors without a terminating null byte may lead to Segmentation
       Faults.

Doesn't feel like this is a BUG to me. Is there a better section to add this? Almost all string handling functions may cause SEGV if passed a string without a null byte. Or even being passed a NULL ptr like strlen(NULL)..  I expect some of these may crash if passed NULL.


May I ask if there is a way to link error_t to the definition, should be in errno.h

Kind regards
Jonny
