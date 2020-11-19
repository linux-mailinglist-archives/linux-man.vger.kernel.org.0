Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF6E2B989F
	for <lists+linux-man@lfdr.de>; Thu, 19 Nov 2020 17:55:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729169AbgKSQvM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Nov 2020 11:51:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728666AbgKSQvM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Nov 2020 11:51:12 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D247C0613CF
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 08:51:12 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id a186so5044768wme.1
        for <linux-man@vger.kernel.org>; Thu, 19 Nov 2020 08:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=l1bIPtgYL1KK1//DLkcvfqM4YIraCyusMCuhP5lJeHo=;
        b=Daio9pRJJAgIdau2aoZnjaD24Hy8pNmXcbWFmLuO2ZaR/zV1Ngs7tq8k7dA7SRpyIT
         L3LuY7UDTglJJrdaGdVctFWSqz+DrzGse7TW/TkTykmqfxJmVXr42/2lHRwNUzQHF4jl
         jk9NsxLw0NQufA2kf7IR/YdBtfQrGV0H+DeHqH+hzCr4PkC1TDGWFUqKiLpXdh0O7OFj
         Jxotj5moB6jlS27ud/HsyXGG4yGwILKriKGXJfVoeeg/Y3/9+hollu/TP2bTS2wHazzK
         a789A7sIynkLH98/91ta01a99JzPgAoZpaKjKybWitoirD1kyWe1yVNRGNJgkyfXOuyc
         q0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=l1bIPtgYL1KK1//DLkcvfqM4YIraCyusMCuhP5lJeHo=;
        b=TmR24+1+bFgg2e5WFD5M+ZjzGph6hq0iK6xidgFtzFga30Jx5JlwH9JvyOH910kptr
         iVKBHiDY32S9vnADce4kRPFRhYByWSIj8lILPTb49oX8aAN2sQxCiaeeqrAWBa9MghcI
         OpVq0zSV80AHZN+sV0OKSzmqqxkvIF1YtZnsbb/FpNbA0vhm18gTgkT+JIl8lLGYeOuh
         N/BFNxEnkK+w39R8yTMAiS+bbUkAXnRHjpYtVgh2PPQItS1soatmzvyl3zssSX8o5xHT
         WSObaR09RTgV+2RETg08RgV15aHzzDjPiYp5viLHQ3EEpfQnQHRxA/xCukRo/NiO1dAG
         PQyA==
X-Gm-Message-State: AOAM532FPrQMuLLI8miNtrDv8POklOP0Jys9pVTnrZqRAervgplDIHId
        ZKZ7fSBWv75XF8jY8MaOZ0SoRwO/hsUmCg==
X-Google-Smtp-Source: ABdhPJzyDbJ75VUCn0AQhk18T9+6nv1aaLz1xQaJSb6kqG8vIvO11aKz0B5WtYqviNU15lEDUUIQsw==
X-Received: by 2002:a1c:ddc4:: with SMTP id u187mr5740590wmg.55.1605804669525;
        Thu, 19 Nov 2020 08:51:09 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l3sm763487wmf.0.2020.11.19.08.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 08:51:09 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Unneeded double quotes
Message-ID: <df4fb157-b71a-4aec-d554-5ed91d71fd39@gmail.com>
Date:   Thu, 19 Nov 2020 17:51:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I don't know for sure the intention,
but I found the following
(https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man5/proc.5#n729):

[
.IP
For example, an epoll file descriptor will have a symbolic link
whose content is the string
.IR "anon_inode:[eventpoll]" .
]

Those '"' are useless,
but I wanted to make sure that you didn't want to output quotes,
in which case you would need to use \(dq.

However, most probably they can be removed,
so I'll remove them as part of a patch I'll send you next.

Thanks,

Alex
