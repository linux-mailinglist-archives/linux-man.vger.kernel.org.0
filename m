Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425993F9E91
	for <lists+linux-man@lfdr.de>; Fri, 27 Aug 2021 20:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbhH0SMY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 14:12:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbhH0SMY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 14:12:24 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 362CAC061757
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 11:11:35 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id z7so474240qvi.4
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=l/DDsdkmOnEzFkZAmNNJ5T3/3WHvaL/rSeXDDYzcVEE=;
        b=NW8EQcoc++wO+UlRqyMBU1MIsiovglyZUCXyiqz4ykcTF8hPfrBfTb5xHXnVJn3rEq
         I7u/tnxvBaJxAYrlU5vqy2bdb2Gxol8b+QScmp4VCK9b+6kY+qsVZ+Ov7iPzWqd/PloD
         Fc7VSjvPZyikcheUWhscbQNaMlPw5FbAVQh17Z92Hx/CHFxIKL7ae19VSeISLb3W0zg5
         bhSI1igvy4EipT63fzFwv0xdWXtIqMIt3yL2xQ2SbrjOxYmjRqFL2F+2xlKwaTUUHVcg
         g6sAUoFPK+81ROMaKrNCMtaFOGAe5Xr72afOu9H+Ud3TW2oCK/B5IjTvbvyQGgA5SF6J
         UPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=l/DDsdkmOnEzFkZAmNNJ5T3/3WHvaL/rSeXDDYzcVEE=;
        b=T/D1x4duFE+DuxmAFpORuS7r6YYR/FuRCbVauDhoxNqRsaYqAiVZ9/u32cPZUxyxo+
         NLi97OekV6V/R2i3oozy5o0ooYkN5TDUxNF+oJR6X4RMm9992JK4r90UTy1slWHyT+Nw
         NdolNiy7KIl7bu2fNZCivrSDwsHwRW79ln8gLcBx0ieAabyriJxjKhwjT6DcGniPXtwS
         eaI9Jtxrs4g02zE8/wMdLmbXVhrxNnrMt3A2FTRfZATMJxGcvir6Hx3T09gtw6IfNAMK
         tJ9qbWhRce5CRS8cGc84OsVM1vVA2inndMRwZJiAcLtQ2kFVQ5ctxBv/Zpp7JBd5q0z2
         TBDA==
X-Gm-Message-State: AOAM530lU/VyHCMJ3scBTOuFIMEgMdBkIWaGmQfxAiblY7S6n21/IHPj
        YST41BL60Ci6vF2ijVZ7GSSJbK/XST2yIA==
X-Google-Smtp-Source: ABdhPJwJ5dbXqeBiIs1PxO+J4Zzpo2M8KEFd3mXWWSoXxKq/KL9XfAJBocZlIhU0f77MTrgoUlUpvw==
X-Received: by 2002:ad4:4b30:: with SMTP id s16mr10709857qvw.61.1630087894238;
        Fri, 27 Aug 2021 11:11:34 -0700 (PDT)
Received: from [192.168.1.18] (c-73-152-9-216.hsd1.va.comcast.net. [73.152.9.216])
        by smtp.gmail.com with ESMTPSA id s187sm5552641qkf.34.2021.08.27.11.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 11:11:33 -0700 (PDT)
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   David Sletten <david.paul.sletten@gmail.com>
Subject: Error in 'man operator'
Message-ID: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
Date:   Fri, 27 Aug 2021 14:11:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I've run across what I believe is a minor error in the man page for C 
operators (https://man7.org/linux/man-pages/man7/operator.7.html ).

The man page lists casting in the 2nd row of the table:

        Operator Associativity   Notes
        () [] -> . ++ --                    left to right [1]
        ! ~ ++ -- + - (type) * & sizeof     right to left [2]
        * / %                               left to right

However, in "C A Reference Manual" (5th ed.), table 7-3 on pg. 205 shows 
that all of the operators in row 2 above have a precedence of 15 except 
for casts which have a precedence of 14. Consequently, the man page 
should display casts as the (new) 3rd row in the table above.

Thanks for your effort in maintaining this documentation.

-- 

Have all good days!
David Sletten

