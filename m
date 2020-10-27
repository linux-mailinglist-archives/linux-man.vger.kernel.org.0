Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA3CB29B487
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 16:04:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1789888AbgJ0PDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 11:03:21 -0400
Received: from mail-wr1-f45.google.com ([209.85.221.45]:43469 "EHLO
        mail-wr1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1789865AbgJ0PDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 11:03:18 -0400
Received: by mail-wr1-f45.google.com with SMTP id g12so2263714wrp.10
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 08:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iQplNavkjDIQ75j00bOCfUgLggBUEtWOpxwZQaDlLm4=;
        b=B/8P9Z/pBbRiuYiZcdpQJdDlw6OqJ9lOgEBgYEln4cZfY444+L03iBb4HoII8bF31Y
         QMvRGp6t8LTQ+fLDpvch4+icSFKKYhdvcdhRw8dkRzg7TVCjYReAuxYxjwmjpB8D4m2G
         TEOL8vH4w+fKzSZLG/ZQc9J6+ceir2FyJqxhQcP5dIgjtNRoyKlMjPUwLsQVY/8gTqKW
         MBV3XeSZNj59H9ea9rpttXzK7B0awtnk09YOl5x3O9k1NXbIp9Gqc3jXEsTujLMzoT5f
         skWbNWELjyG70+izs4JNvdqA/UolmO0UKJQm578gDIPkZFedL3sb+eYfDtxkTjVKsN04
         JV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iQplNavkjDIQ75j00bOCfUgLggBUEtWOpxwZQaDlLm4=;
        b=po3VFPnmAdweUDXnlYTAvWT8DEd2nUq+stwd+5YosQhimw71lVOs9f/uqBubEhChPt
         qoJodHuCbSCDGyiUOGc3q4M6xnFjA8aUFHoRpw3SUaHm4InK1ZpZgs/IGozfu/ICTf+R
         p8J1PdKD7udlV3higttpZvUBz3SPcnlnIBSI6Lj3EjafTZjWgy8D5e0j1InzLeFdNxz+
         mHBIL0xDxasv8SX5qFSTtnCHDwSI8394OaIIbV6npQafY0I0qEDBgjswQLJBJJyU0S49
         O1qIRSY63TsNHCf9HxDL2BDeEO4cOioXfzeEyvcfLhUScyI+VgqR/MEha6ud0qGtA9QQ
         DvEw==
X-Gm-Message-State: AOAM532vecirkSrBfnbGbySx4lzAMAW5LuxFLc06jVoELY/FZNp+u/Yf
        hfZ81aN8l8fb1PFpGl4XhtmvAhblj7O5Gg==
X-Google-Smtp-Source: ABdhPJy/wXd01ZOevL/6l7R4zXHiX6QIpkCwu+txhUSSsniC49vZJcR0l9T4E6MituJR8S0m7VGrwg==
X-Received: by 2002:a5d:4103:: with SMTP id l3mr3405980wrp.260.1603810996393;
        Tue, 27 Oct 2020 08:03:16 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o129sm2172016wmb.25.2020.10.27.08.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 08:03:15 -0700 (PDT)
Subject: Re: argz_create
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
 <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
 <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
 <0b3cc00f-e0e3-deed-f3b8-5446bcaa7742@jguk.org>
 <ede6e5d0-53af-aacb-3bdf-95ad1ffad097@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <eefb1d45-ab48-e32d-596b-43d748f192da@jguk.org>
Date:   Tue, 27 Oct 2020 15:03:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ede6e5d0-53af-aacb-3bdf-95ad1ffad097@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 27/10/2020 13:01, Michael Kerrisk (man-pages) wrote:
> On 10/27/20 11:43 AM, Jonny Grant wrote:
>> Hello Mtk
>>
>> I noticed "nonzero" needs a hyphen "non-zero", could that be changed please?
>>
>> Also there is a word "nonempty" which isn't a word, and isn't needed I feel :-

My proposal was to remove the word "nonempty", rather than replace it.

> Please see man-pages(7).
> 

https://man7.org/linux/man-pages/man7/man-pages.7.html

Yes, I can see those listed there.

Google "non-empty" 1Bn  results
Google "nonempty" 6M results

However "nonempty" is not an English, or American English expression we would ever use. Even "non-empty" isn't English, we'd say "not empty", although in this sentence there is no need to have this at all.

Some are sensible, eg "pathname" is actually typically an argument name, so although it's not an English word, we know what it is. Same with "username" "timezone" etc.

Maybe in another 50 years "nonempty" will be a word, but for now it isn't, so the hyphen is needed. Same as "non-NULL"

How to go about proposing this improvement to man-pages?

Jonny


