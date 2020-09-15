Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4729526A221
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 11:27:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726119AbgIOJ1P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 05:27:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726102AbgIOJ1P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 05:27:15 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECFCFC06174A
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 02:27:13 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id d4so2624345wmd.5
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KmlkL9GVvWoO5vpa7b/rHg1VcfgnbemdQvTR55NLASc=;
        b=c6D9lJP8UlhvOb7CEoO9QlUPXq12xap/aj25L+juEsjcPq0AVKxVVL1pJjXqR/tSp1
         h59atkAaBPTVOVVss2Y/ilgV916MWmLkWKkd7YuYasBm5QmHcylDpJtoc5yXTx/xsg3v
         aXVnx/pQbotKIG5l3HWV5nW5lHrZt5V/CWcFX5TciIRedxrn6G16w8wz/vWCWbvGgahN
         6ybZKEbALYOU8JHaRDQPjy4Vw0AHSVHn7ag/Px6hPk5sMQex37xbniU9eOKExXYaTsus
         YpXT2PJkv9rt/yTqOkhwU0PJmqb5AIEPggGFjHX8+WMoQvl1kruJYbBqM9W7CD1DK0LN
         H8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KmlkL9GVvWoO5vpa7b/rHg1VcfgnbemdQvTR55NLASc=;
        b=M6rBn+Nt+Z6tPTUl7/YFZmRWEYoIBoJ2fKxfnDeSUNgnsUoiWudBf9Be+Amv/xxif+
         JI9z/o2PepHy4U5Ie1uVk1nsDl6Y78fssbNp5N+6DaHGlzzkfZh4oG6tC8rOVF9cbSkg
         epZ0FmEIaG+j5wo168egAf4TJuQwqigAkD0FVprX1LzP0EzijG6ieatHRxMHMS0LzjPj
         lpKctu/A104nKefgSXg3VWCpmuJrhEya8wi/bgx0gimtUVdC+Ujtvwiym7c6f0h1nL5a
         EfN2LFlr6AWIYwfMwg+kfQ2PJ/i3MQ1DG61VPMtpEF3vnkgj1KK25d5sl2tkIgn0NSdY
         e5Lw==
X-Gm-Message-State: AOAM530hlNlyl13MUuuS5O0TzSGPC0kBphgqWRMY9QKIi/gSkxwC2qK5
        AW2qbynJu5teyTMSCXCXm/TYinvrMybq4A==
X-Google-Smtp-Source: ABdhPJx5mtlTv2x9+ZsFGhPlp0GCt10xYYg25tB4zdQr012oYiPeoj6bkvgAfPmPCja5IvRqdx8w3A==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr3723753wmd.104.1600162032170;
        Tue, 15 Sep 2020 02:27:12 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q186sm24824348wma.45.2020.09.15.02.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 02:27:11 -0700 (PDT)
Subject: Re: [PATCH 01/12] dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t'
 for printf()
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-2-colomar.6.4.3@gmail.com>
 <20200912055232.s6lp2hspbuwvscps@jwilk.net>
 <77bd61be-5044-c14c-a888-a09e64d14d39@gmail.com>
 <20200915073522.ct56hlmeatpcv4mw@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <91277f3a-dfeb-e6c1-4c74-a2ed1df965f6@gmail.com>
Date:   Tue, 15 Sep 2020 11:27:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200915073522.ct56hlmeatpcv4mw@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-15 09:35, Jakub Wilk wrote:
>> Maybe 'ElfW(Word)' would be more appropriate?
> 
> I wouldn't know what "ElfW(Word)" means.
> 
> I'd write "Cast ELF types to uintmax_t" or something.
> 

Much better, yes.  However, it doesn't matter anymore: fixed by this patch:

https://lore.kernel.org/linux-man/98c426d9-6dde-5578-c1d5-942f21c5080a@gmail.com/T/#u

Thanks,

Alex
