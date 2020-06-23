Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4F3D20558D
	for <lists+linux-man@lfdr.de>; Tue, 23 Jun 2020 17:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732862AbgFWPKj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Jun 2020 11:10:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732781AbgFWPKj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Jun 2020 11:10:39 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 403F1C061573
        for <linux-man@vger.kernel.org>; Tue, 23 Jun 2020 08:10:39 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id o11so13201517wrv.9
        for <linux-man@vger.kernel.org>; Tue, 23 Jun 2020 08:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=FfLgauf0Tgk4mSN2XMydbABLQOucf4Ic8LJkVjr29TI=;
        b=UPJQWt8WDe5qxsDup6jbMX4lPSpWpBZU6j1oZbb+yEJoZV+tInhPWybZ5eueBseobp
         PyuDpuUDUKfENV6b0JxtfnlV7z9zdVfNZLlPntUoyEjGEn8+HI0gGaiOEonzAthsdEqo
         z3uJaqU4WqVcujXsq5xNOjFuOt9qvaTu7p+ukyG6O9xTb5UUdI5QDUf9gCcdhB4GCUc0
         o2hKLxjFTu9/ymmIyK9V+ZUL3pTjZuKiovadAW3e8LUqY1CJWJO+Yc8hpPntim6JT2WO
         IaqiK6+1jhLk+ITOae8mwQeTtqx4hzcOi4PK7xEhBDChE1Yrhm8DI4qJOVA6RZb7YbIO
         4SKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=FfLgauf0Tgk4mSN2XMydbABLQOucf4Ic8LJkVjr29TI=;
        b=c0Sbb9CdcnCR4+9RBX5ZdfB908/+qUKJUtF3pBB+YMcXCq12Fz2FRp70WeFaSs7VtW
         gQOeXsGiZCwC2kD+ywyibSE7gb/dJyvDhMFrb3micH+Aqh9IRhQFGc9eg0fSD3J6F7m5
         naqd1mEhFIEnt9QRWZwMm3IdwcpZ5uviV7zzg3YcjVuy56HpDwJ7JOdI0wQLMXK39sG6
         gx5cinvK7Fhgwgd7+HyGY8tIH7oPHaHfCBBo1grwhDpjzL3x4rug64F+28psIJk9QKl+
         RizZ5vzVy7SBGuE5ImEsvejE8XEqrrK4UznpIK4FD3N5gxuvC/jl9dOpapFJ4s4VnFfV
         Rd/A==
X-Gm-Message-State: AOAM531TS8oUnmkQzw7MH9QQ/+l/cG8hRLVavoJbiXvlya9I6LLQiqDB
        a8WBWpOHfAadAm3nDJMdVvGOlisLNiY=
X-Google-Smtp-Source: ABdhPJznw2gW+LRPWjnws/lUlA5bpSEdDZGl9MaA/4x9Mk+UMqyPLHqF8Wdp0+Buu72QxTCSwDtj0g==
X-Received: by 2002:adf:f452:: with SMTP id f18mr1988929wrp.78.1592925037863;
        Tue, 23 Jun 2020 08:10:37 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id a81sm4512202wmd.25.2020.06.23.08.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 08:10:35 -0700 (PDT)
To:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Subject: cfree
Message-ID: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
Date:   Tue, 23 Jun 2020 16:10:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello
Is it time to remove this old man page? it's two years since it was removed from glibc

2017-08-02: glibc 2.26 released

https://man7.org/linux/man-pages/man3/cfree.3.html

Thank you, Jonny
