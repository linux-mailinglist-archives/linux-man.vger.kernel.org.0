Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44692B1177
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 23:26:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727682AbgKLW0g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 17:26:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727518AbgKLW0a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 17:26:30 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3EBC0613D6
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:26:19 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id j7so7670546wrp.3
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 14:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=+Oou+mlgnZejBX0xlphHOlHtuvZaHWLzajXFGp64Wg0=;
        b=XOCDl185ww5SVFYkpcfNN1UJDhFdvbeIuPXMKGsPOha+UrecSqaJZeYHWUlADRXSbs
         omDLSlPRd+A8Uvgixx5KJMClYXtAx5d2ERiwdTv8xud+8Z1xzaZwTP/qt8iTUhQ0xMOG
         ivlj66H8w7LtC+B61DmctSo1r3LGt26YG01CfPqma0ZpGNDzvaZiN8tnKjqUK7Oqzhui
         n5mFDLs8qkHXxRTYV+IVouBJdaaa4mJ+p8j3au7QLuErAM6SEGvi7S2zRp9EW+BlSKAF
         Ve/pza2EAiQsy46jL6QiEywnMtM6DQfPZCyNAVOqjVa52WeGDq3TDwSDCNfS7ncrDzHo
         Iguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=+Oou+mlgnZejBX0xlphHOlHtuvZaHWLzajXFGp64Wg0=;
        b=XR5ayiQSn3GyvZquVNVVxfnwOunzNYmwsqOxXZEnsq6k/6CxjMVwFDKZjdbXh9Uyj4
         vyui90l9/2zfgrhuRC9d9YpYaI+w6P/+8nHWrYpdIiG05rzZtliqqZJHDKlMG7tibuZ6
         RCB2Nd+cyOzfCOJ3Swjz0vbFzruGQJmZg7RCHPJX47e11rssezX7cIB8tEd2rKarOb/m
         OrQTGsJizlBGpS7FWOME5/j7nVRe1mPf3BT0vogXj4Y2UPV2S25gJIrKmn0BD5ztCfUC
         ZfuTMA38Pc7ic9mSte9Y6AELRnKYFrFQs5nrBA+j2KnycZ1lPXewJSFpohUyAFSugaYg
         hg7g==
X-Gm-Message-State: AOAM532JB2DmpF5hWIO3O+d58q58yFTndcJ9ZFz4A2bgBarmDKlc9bq0
        qkFu4+9OZzOwQzPOmtp1IOxD3mc6KMBZ4w==
X-Google-Smtp-Source: ABdhPJxS6g/oeCj3Oo0kp39c/8te/2N+OWoN5yzeguHKj2gK1+A8lOUAvF2H6fON6jIkWHSW0JgvHw==
X-Received: by 2002:a05:6000:36f:: with SMTP id f15mr2132457wrf.78.1605219978280;
        Thu, 12 Nov 2020 14:26:18 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y16sm8186792wrt.25.2020.11.12.14.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 14:26:17 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Rationale for .PD 0 in old commit
Message-ID: <6b34f96a-7930-3338-e286-c17fad67b5e3@gmail.com>
Date:   Thu, 12 Nov 2020 23:26:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

I'd like to know, if you happen to remember it,
the rationale for using [.PD 0] + [.RS] + [.TP 24]
in perf_event_open.2.

It was added in commit 2b538c3e5380cbe81a5c053cd183788e3a13f0cb.

I guess it's related to the fact that
there are too many levels of indentation,
but is it really needed?
I think everything fits correctly in an 80-column terminal
without needing that workaround.

Is it maybe for other than terminals?

May I remove those in my attempt to simplify and standardize the markup?

Thanks,

Alex
