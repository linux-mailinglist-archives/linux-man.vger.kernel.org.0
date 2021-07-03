Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF3E3BA9F3
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbhGCSMk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCSMj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:12:39 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D7CC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:10:05 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t6so6702191wrm.9
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NrZhS+yAF7DuAbURCNxMXrjuYD0Zodh3bOMbRyP4j1w=;
        b=CYQxclV29fkqHWUF3x2qzfAC7JQLHpMWJO3xndcMEF3ERwCgE45hqJG+Y8Z/zUhZ7s
         78wOIMlAJI2j3r7BoeAIrCnVNKStqnysO0pInmyp65VDgLaKXeXJD/jQHFeiOEHQKQQ/
         9SZ8IeV6VQffD4nP7bbwUbDvNBqzqE5pJyQSqD2OeODeTNPhvI8Yuejb/+YKiVwKIp/A
         q5c9LBi4B1mAX20zZrSVF0x+qCLJeJdF5tp6n2KPIcXZ7K+C0L5nwRrUvr550pf/RYgU
         q6ryqmMNv28QxhjXGXQ9g3HHpZ3LefbNBu1490BnxMUc88ovxuf9Wl3XSk3Hc9src569
         O5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NrZhS+yAF7DuAbURCNxMXrjuYD0Zodh3bOMbRyP4j1w=;
        b=hFjR7F7WX1qGp0BihZYe8UqpU+RufKio99zSMUuiumRYMujHbu/+b4SkWCqgZxJ9Kv
         WIRFiu7Mii23T+Iz+6+A2/i/SQ+PjjVi0SqdExh1O5/VFHWzcN8DG13SLWmmtbExgUJh
         gezzhlldLE+SCwGYj1N72qN4CH3jmVVaflv/sUNSC1V8Kf4q00ea3TcuWeFMQseHGF0m
         51Dgw+VrE+VsYbWgKxtezx5b4yZ3keblos9r/Q2+1ypUNGpacj/CcwSBKdH8FJ56tEyL
         Lc6nzZqSplBVYbseUuF7ui79fkM/MtR4w4dVA8EH3duxrpx0wxcVXadn+HGanmh0zjVj
         w/Gg==
X-Gm-Message-State: AOAM532CigxptT32ZqNaui86lareXOdsdSRNFJmv0TwD/Ul/AVDb7Ovp
        dcj5SXvbiVjn3GJuCFgocg4QDRHhUIg=
X-Google-Smtp-Source: ABdhPJyG7VZmMx21lO7Uz1pAKOSDK1RdksCg9QtTR/8u7Q23DeqxWmxfGrfiaMTjnu8pwyw4bQuCaA==
X-Received: by 2002:adf:d205:: with SMTP id j5mr6536723wrh.242.1625335804374;
        Sat, 03 Jul 2021 11:10:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q5sm6896897wmc.0.2021.07.03.11.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:10:04 -0700 (PDT)
Subject: Re: Adding struct-xxx link pages for structures
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
 <20210523142610.vycmifmrznf7oqlk@localhost.localdomain>
 <5b95386d-f616-e524-f161-89eeb3103358@gmail.com>
 <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
Message-ID: <553a1c22-91ec-1839-9fe2-07e7684001fd@gmail.com>
Date:   Sat, 3 Jul 2021 20:10:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 5/23/21 11:04 PM, Alejandro Colomar (man-pages) wrote:
> On 5/23/21 10:53 PM, Alejandro Colomar (man-pages) wrote:
>>> The use of a dash/minus as a separator "feels" unorthodox to me, but
>>> perhaps that is just the pull of blind tradition.  I think it's actually
>>> a better choice than an underscore because of course "-" is not valid in
>>> a C identifier, and "_" is, so ambiguity is avoided.
>>
>> I used struct-foo because man has the ability to allow either
>> 'man struct-foo' or 'man struct foo', and the latter looks very
>> intuitive from a C-syntax perspective (I learnt this from the git manual
>> pages, where you can do 'man git log' or 'man git-log').  'man man'
>> doesn't specify this behavior, so I'll read the source code and try to
>> confirm how it works.
> 
> I would need some time to understand the code, but perhaps it's around
> lines 1303 or 1396
> 
> .../man-db$ grep -rn "'-'" src/man.c;
> 1013:    if (dbfilters && (dbfilters[0] != '-') && !preprocessors) {
> 1303:            case '-':
> 1396:            if (*pp_string == ' ' || *pp_string == '-')
> 2921:        if (*source->pointer != '-')
> 3222:    if (*in->pointer != '-')
> .../man-db$ grep -rn "' '" src/man.c;
> 797:            case ' ':
> 810:                if (*(manopt + 1) == ' ')
> 1302:            case ' ':
> 1396:            if (*pp_string == ' ' || *pp_string == '-')
> 2415:                    putchar (' ');
> 4051:        } else if (cmd[i] == '\t' || cmd[i] == ' ' || cmd[i] ==
> '\n' ||
> $

A few weeks ago I found out that '_' can also be replaced by a space in
man.  i.e., `man foo_struct` and `man foo struct` would be equivalent.

However, as you pointed out, I think it's better to use '_' to avoid
using valid C identifiers.

Kind regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
