Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 760552930F6
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 00:11:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387913AbgJSWLR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 18:11:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387912AbgJSWLR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Oct 2020 18:11:17 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D9FC0613CE
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 15:11:15 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id d81so963170wmc.1
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 15:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nzEDvVmL+XkwIsXACI0jd36BDLCD7YxI1bvIhtrebLA=;
        b=nBpnJJ6ihoKASvrKYAHPm7nAlWTWBdFuPmHyl1B6/JwZpXhSaimov9LXwT7qN3igeO
         tNkYXDi650xkZpKw9uvu6hFaKPy8s5gJOa7L/koM4gLMA0XYBjkzWxz+Jp28XihZ9h99
         4NX+Wn4Uprz1zrMR5FNRcDDSyq/8hlVukdXSdWpyM3uTWuFvM80Z30eVEKOxkNeuCQvA
         xry7c8qrZC9T0FFOfXhG9VwdDyBxcAgDPUwPor19X4cz2nOE7/F7HHh2BA4GtdeacLU8
         QslHUW29tu6xnl5UbTy4jWkKWDwMa2AgFUwF9bfmoGfRLjJ5yEtbXoUefvhJBVXnFllv
         9juA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nzEDvVmL+XkwIsXACI0jd36BDLCD7YxI1bvIhtrebLA=;
        b=rVcYMnN+XCk+u9pBzfk9yQ9F249VCqIYE2IwnElPtO+oxu+sU/IDsVr6NwIW5nknj0
         T95vTd1zlAVE79GTsWbQITCm2/X/cAOdfX5HZ1LS2eiWZztJucVh7RU3nUOO9Zh3flD8
         +tBslQEFacxZ4vA0LhsaEkSuJga94IUSt87iTWJCC4yCtozb5ekHJBrAdf7VHYgfdqQ9
         l6zYkmdO4nzqNS3/pY8NhjNIrOpqm0OTNxnHG7BLMMHX4gV8LBCBzi90iB2CP2bJ6r99
         apQAft0N+5ki7PET9ddlPmFwySTXQLy41g4znA62PktWzj+OSSH3QScyQ97oI5f+l6cC
         ECFw==
X-Gm-Message-State: AOAM532lr1KmbeUXagvc6dgE7LhrslJIC/RSA4NBGoT0Zj5Kgbg1KvRA
        62/y/TwpnweUOEt9oeP3ZNq756bHlIg=
X-Google-Smtp-Source: ABdhPJzzb1GLEKIqU7Y8VrgB8ypmEvqYZsDS2j44TI2YENE/2ZbhoUB2R0KohsGhRmFNqEHcY1k3jg==
X-Received: by 2002:a05:600c:2144:: with SMTP id v4mr1323280wml.172.1603145474213;
        Mon, 19 Oct 2020 15:11:14 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id s2sm1182118wmf.45.2020.10.19.15.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 15:11:13 -0700 (PDT)
Subject: Re: \- vs - (Was [Re: [PATCH 2/3] system_data_types.7: Add
 'clock_t'])
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
 <706d3eea-60f8-c208-0cd4-3412ebfef263@gmail.com>
 <20201019181047.palj3nbvozlvnoqg@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <67b18fbb-d0a1-a9bb-d0c0-0ba16910389d@gmail.com>
Date:   Tue, 20 Oct 2020 00:11:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201019181047.palj3nbvozlvnoqg@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 2020-10-19 20:10, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-10-19, 19:40:
>> Then, in the following code (taken from printf.3)
>> the escape is wrong (unneeded) by those guidelines?:
>>
>> [[
>> .SH NAME
>> printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf, vdprintf,
>> vsprintf, vsnprintf \- formatted output conversion
>> ]]
> 
>  From the typographical point of view, the most appropriate character 
> here would be \(en (en-dash); but for historical reasons, you're 
> supposed to use \- (minus sign). This is documented in the man(7) manual 
> page, section "Sections".
> 


Thank you!

Alex
