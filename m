Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83C0A2E6FD7
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 12:12:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726209AbgL2LMW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 06:12:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726166AbgL2LMW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 06:12:22 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C96CFC061793
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:11:41 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t16so14344509wra.3
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 03:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NUFAO7R9qMrXhPbzK3lNqjfG8m3NybkQGMvyjfjOhkk=;
        b=rASt9FkztGl0C1IR2VfyaNUelX5KM9hbycxeSJrGKBGvDB0DjlDGTB6Aiq4HJ7Fj+c
         xVnT46fMpqCKWrvMbaxNv0dRPc/UmABnh5rX6ZCqO/QgT6BttpfyJH1ROawb/GkaFRIW
         RijN4S4dCONaqOtibxkD40f84Bido20jd/g8NBRvFYlGPgyRhCaGvvPOHCugqQCSaT3u
         1yTRZgBJKgfgTVrtFqvB8zgNMx3RyJpbxUVgmBGBwstJtyKPQ5OAuVfuBFwEFKQty1DT
         VaGvTP1zib1xkTc0tlCnm5OvHdzpMIB/SV3K/OAtg1OxVAkkeMg26bGtWuAsXMa2iz6D
         Fw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NUFAO7R9qMrXhPbzK3lNqjfG8m3NybkQGMvyjfjOhkk=;
        b=ldLLhYIt1jh9CH0mGsrtyJljbvYD3enJ3mo4FS2hoUzfxbUqVXn5qwBwSVRSfJPUDQ
         3lITbmrIg2Wsc7XY7nB0P0M0sElSsoToYBqovlaxi9SoHK933OVak+fVmguRl5yl+fBJ
         qypWEgwVirAvF0dgSkqQ6FlMzp/0a+en17TGcYQ6971QorRfinhLA4Uo+DfETew99AOg
         nzPnz3FeVsCvQUgFDeE5dymkfSYkSivFXx/yx93jEkyGogr30n6K7vnS5S9B2JcP2+vk
         bCZzdn7j3L3mgfpOHju9Xs+oITI0EcV/AhoOGoX+x5M9ll+aBko4N2iRTI7lIQ8IzLp+
         KXhQ==
X-Gm-Message-State: AOAM532DrO7sOMlXe5AnEkv2J/g/FLWVnzUnPKuRbP6/OgwcrABlcy1F
        R+pTzBcvc7PInU2VayFFQtqLvmZ9zek=
X-Google-Smtp-Source: ABdhPJzBke3/sQPYyvg+rdJfg4HWZzKVn2bZI3/X3y7WnoOv8m27w+Y3rPMmpmWszDc8qNUHVB2k5g==
X-Received: by 2002:a5d:5442:: with SMTP id w2mr55098215wrv.418.1609240300644;
        Tue, 29 Dec 2020 03:11:40 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m2sm2958686wml.34.2020.12.29.03.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 03:11:40 -0800 (PST)
Subject: Re: [PATCH 3/3] filesystems.5: wfix: ntfs: remove FAT comparison
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201218153036.25244-1-alx.manpages@gmail.com>
 <20201218153036.25244-4-alx.manpages@gmail.com>
 <3354d6f2-be51-243d-d042-3a07bfb5df11@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ee929f4a-7eca-e804-04b5-55e0fac1e13f@gmail.com>
Date:   Tue, 29 Dec 2020 12:11:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <3354d6f2-be51-243d-d042-3a07bfb5df11@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[removed some CCs]

On 12/20/20 3:47 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex and наб
> 
> On 12/18/20 4:30 PM, Alejandro Colomar wrote:
>> From: наб <nabijaczleweli@nabijaczleweli.xyz>
[...]
>>
>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Thanks. Patch applied. I cleaned up the commit message a little
> (removed leading white spaces, formatted to 66 columns as per the 
> man-pages norm).

Hi Michael,

Where is that 66 col norm?
I've only found 75 for code in general (in man-pages(7)),
but not 66 for the commit msg.

Thanks,

Alex

> 
> Cheers,
> 
> Michael

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
