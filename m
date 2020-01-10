Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FACC1377EF
	for <lists+linux-man@lfdr.de>; Fri, 10 Jan 2020 21:31:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726595AbgAJUbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jan 2020 15:31:42 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:41091 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726582AbgAJUbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jan 2020 15:31:41 -0500
Received: by mail-pf1-f195.google.com with SMTP id w62so1661413pfw.8
        for <linux-man@vger.kernel.org>; Fri, 10 Jan 2020 12:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z9U+e564BTH7oV5/QgES6KncXae0geLoxIH+RTfM3R8=;
        b=I45PTQt4lwAsWQKq7OaJiR2jMjBYXUICDGNw2HDUyxViygmvksaPAPDki+oU1Gotex
         GjSjIVcJMOOoZt+X6J8mTqAF8wTOqWJHexUhpUp5merktFl1EZyfInJ48vzk5haWQTTw
         IW6TE6be6t/S5eBUa71rgmAh2wPp5CgBOS1ZNMO0OrAIzVd2dXPLoRA+KIVJGDJLac9Z
         UblOtaiXjNFw7zkeh/uYIuqtv5B0UC/jaFV7EjonN5MIbaBV+7oJ5Va5KhT3K8QDQXNk
         R3Fg96pbvG5iQZJS5cAOYqVCpvYohtPqoyq22ytyJYeG01dizbgfLfQgOzUUl65IjjYc
         XNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z9U+e564BTH7oV5/QgES6KncXae0geLoxIH+RTfM3R8=;
        b=oiR8LPCWiYt9ns/DyUrvASIGzbRNu1XS5FfxjK819iGwF8yuh4GLAun5FHY6MWUmPT
         WkKDAy7AQzTYqqyHpCzJG9XNf80U7HhffKPnAdOdWNENUZT9uozj4p3+nFuazpvjvcLF
         xc7qwLxNZJ4Gdi1IM57T3uaAP6qmtJn44N1BbSmwh/YaRatUNySRIaaZpbz62ivTdpOn
         xsk4TL8w/JG7m/TdYv0FoSLdu9atxqf17ttFXa0zgrhod9xow8RnQzrvPeDYgfr2ePPU
         7eLSJP8BrcItjyRYdO7Ai50VcHxUA7VIAuEPXtaBlGNA7kT3uotlfjJgZFJ8ZxCyRESo
         LWbA==
X-Gm-Message-State: APjAAAVHdyVsu3MXMf5S6W9LvdXQnOgwBgdmF6H/xTNoQT5g2L518tUn
        IzZJWACoTphdrCzTJ0+Uw3qGq+nT
X-Google-Smtp-Source: APXvYqzhzUau6BnhwbjHJdK/B4IDisOgRox0iHcq0fje1I9wbqqeztCACQnEhW1yd5N5bCEnlFlzYQ==
X-Received: by 2002:a63:fb05:: with SMTP id o5mr6580815pgh.355.1578688300875;
        Fri, 10 Jan 2020 12:31:40 -0800 (PST)
Received: from ?IPv6:2406:e003:5fa:5f01:e752:f840:6823:1947? ([2406:e003:5fa:5f01:e752:f840:6823:1947])
        by smtp.gmail.com with ESMTPSA id f8sm3981243pfn.2.2020.01.10.12.31.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 12:31:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] futex.2: Fix a bug in the example
To:     Ponnuvel Palaniyappan <pponnuvel@gmail.com>
References: <CAOL8xrWJgOLpwx97vOvZ7dTvH9D-1=WvzRNi_a4Sd_BbT850Fg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <26198107-0996-8196-53bc-cbe3429fe013@gmail.com>
Date:   Fri, 10 Jan 2020 21:31:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAOL8xrWJgOLpwx97vOvZ7dTvH9D-1=WvzRNi_a4Sd_BbT850Fg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ponnuvel,

On 1/8/20 10:09 AM, Ponnuvel Palaniyappan wrote:
> The man page contains a trivial bug that's discussed here:
> https://stackoverflow.com/q/59628958
> 
> The patch was against latest master (commit:
> f7d3e6aac109528e6f22f7c9cc5439a6ceeaa7de) and tested on Ubuntu
> 4.15.0-72-generic kernel.

(Inline patches arep preferred, rather than attacments.)

Thanks for the patch! Applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
