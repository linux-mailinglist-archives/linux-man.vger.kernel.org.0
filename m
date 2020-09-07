Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5626B26064B
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 23:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbgIGVh4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 17:37:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726926AbgIGVhz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 17:37:55 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4253C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 14:37:54 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id o5so16988828wrn.13
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 14:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=y5I3ENJHITaupNT6MSUXI0y8rsn8tmMuP3VoMqVWD4Q=;
        b=vIqr+p7Ry353RjtexKsp9ZUxf6mIEnUp6LQUYhRBLtPM4MQvO7wVXbJ+h0jN+BPNKC
         u2RsWo4wIOTk9WeAEYu/jdcEb9MOQNOCGC2hhjW6Tm5q3/7RE5/pT7RREvb55Pe2xDWS
         pThDwvpQ7Rrg7v4om0CBPPT6Toy6zTNo/01UWWjxCrfICVgxq0AxTtirl9NSUvPeB7RK
         7CA5jZckqmE/73cUuldCGKJA0/N4JcZDa9ER44qj46xzU7DrNTPQ8H5EeJMkVMu3WIxU
         dXrCgw8FzAUOO7uqTdKqbstmVQ5hmaAGIfo3OgTDwtpUjM2E/L8TNuUDHRV5inzrI9lx
         PhfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=y5I3ENJHITaupNT6MSUXI0y8rsn8tmMuP3VoMqVWD4Q=;
        b=iORGYf+OWwH+Hy9O95HWccUDQMbPhwu0UtThsPHM0Eyb3qyHvr1h6BbxQK8wBvRTFC
         YwSN8Iz+xxf3klChJfeMX4O3+7YBEIID152rtaVZ55D+d03VC/ILl87HjHiX1ADLFBpu
         R6T4/wzhqPCYBxClBGUwForqcDEVe6VWRA8nDUnmxdtOJbXBZba/T50xy9mSRuJldTcH
         4NZZ6ho+CAZ7mwjgRltPZGP5eEryPw9WWVmQ0k7Txd3IaZo42D4rmzXsk3pHLj4aGnIe
         ThPcvD3Xh2UiJKme9Yo1vPzmbuqBXMhz7kmCGuW+fx7NGQx4U+UJRfBM/BxI2rHKi6eT
         W6/w==
X-Gm-Message-State: AOAM531NyrxofAU2H2kZszuzdVFv7Vs4hFe1Qq9hJ/m/WMOn1LNUF9vT
        CfojHMRbgyAqMzFJQzRHho5/ijZyJpbQdg==
X-Google-Smtp-Source: ABdhPJzLsyofP+ugZcVtEMo62S4+wGxJZjFOP9mXzZxNdVFsV/wYDrZwm/KaG/gQGCqvO5SkH64JeQ==
X-Received: by 2002:adf:cf0b:: with SMTP id o11mr12947553wrj.94.1599514671234;
        Mon, 07 Sep 2020 14:37:51 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 11sm28050999wmi.14.2020.09.07.14.37.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 14:37:50 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: BUFSIZ vs magic numbers and co.
Message-ID: <84fe18ab-7ba1-a8eb-0f36-6b0dafe6562d@gmail.com>
Date:   Mon, 7 Sep 2020 23:37:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

There are a lot of EXAMPLES where buffers are created.  In those 
examples, usually there is either a magic random number (e.g., 100, 500, 
1000) or a custom macro such as `#define BUF_SIZE 500`.

Those examples could all use `BUFSIZ` from <stdio.h>, which would reduce 
code (not having to define the macro), and be more consistent (not 
having a random magic number in each example).

However, I see a slightly good point in having magic numbers in the 
examples section:  a novice reader could infer that you are focrced to 
use BUFSIZ if it's written all over the place, while if there is a 
random magic number, the reader probably will deduce that he can use any 
number.

What do you think about it?  Would it be better to consistently use 
BUFSIZ, or just keep the magic numbers?


Regards,

Alex.
