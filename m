Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 929AE29ADBC
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2444547AbgJ0Nre (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:47:34 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:33432 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2444546AbgJ0Nrd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:47:33 -0400
Received: by mail-wm1-f65.google.com with SMTP id l20so1134602wme.0;
        Tue, 27 Oct 2020 06:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1GxNthHadS0SGIKavQRdT/1SMo8AOhU9UbZRmXimHN8=;
        b=Xl6ZcoYMNBFYCPlO7oGi2ZYYtxvHxNpqq/uAENTDWwwFt+zgwyvFHsBcyeJyiffn4J
         DLi33vVb8b60MY228CrJgfgb5zWRLa2Rh4kEjIB+q4Y7JXHVXU5krabCK9YIS4IZphvM
         UlLzCuoP+1IvkNNn4Pcz+jVMSyjeK7O0ND2YjgQqCPOuUimxKF0OsrnqqSIyi6S66iRq
         K31r/3pOXpAeNRondeVtyEWCUGDsrxFBAHTw42yEgLWPfBfc+8xCijXjUTnuk2Lzdnbs
         FMyXKztbl1bgrMW/sL/Fz2dYetbER9yZD0qrc2hNuyiiMasOgbKtYv2HF9MnAO5Lhljb
         mEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1GxNthHadS0SGIKavQRdT/1SMo8AOhU9UbZRmXimHN8=;
        b=TCXKqxibU8uVcXMB+hFZWJb0BexqlULO7Z3fS2n7HkUGD6nGEOg3c8lCwpIdDo3+rs
         bd/SqhuLxDu3jBfrxjjTw0mKJodm0wu23aG+bVo8jvR2gI3xaDPULd6rR/rL48wLfvVw
         gtZoYSQCbN2xbEl2QfOSU25kkodFJ39TmQTaGkai5VMCyPYO87gPBoEGq00YHrDVM5s/
         fwyWQT33nILKkj8LSQTlb6/fONRuzRlF31ZMhu5r2tfZDCNarKh+aEL9k0Q4EgfjR77X
         zabfwgL5yvqpymqUYM47MFQDWX+qdRZVvD8+16oBNrOe6C1PoUUlroyXfOvp1PkjVbmt
         VMfw==
X-Gm-Message-State: AOAM531bXSE2i3MHxOx3T0E7AVNuW1ZDPYteFmRJ3E8j2STozmO1LUza
        hYaymZE1ON8QdTo0kWhI9MPdrJ1kCx4=
X-Google-Smtp-Source: ABdhPJzJi8Eai8UTmcMkvBim3qcDHY4znAuMMjqMJ35GZswpz+jVTkTOcnDAbrtFfT6f2nl3Kc0pWw==
X-Received: by 2002:a05:600c:608:: with SMTP id o8mr2828571wmm.86.1603806448383;
        Tue, 27 Oct 2020 06:47:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id j9sm2115274wrp.59.2020.10.27.06.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:47:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'off_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
 <b24d9f74-d07c-5d07-0788-eb8f1711d71d@gmail.com>
 <87faeeeb-f2e0-7f1e-5692-78b43242f20b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bcfbf8ec-ca90-b736-1516-e096ef03222f@gmail.com>
Date:   Tue, 27 Oct 2020 14:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87faeeeb-f2e0-7f1e-5692-78b43242f20b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/27/20 11:23 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-10-07 08:53, Michael Kerrisk (man-pages) wrote:
>> On 10/6/20 12:12 AM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>
>> Hi Alex,
>>
>> Thanks, patch applied. And I trimmed the "See also" a little.
>> I'd hold off on documenting loff_t and off64_t for the
>> moment. As you note in another mail, the *lseek* man page
>> situation is a bit of a mess. I'm not yet sure what to do.
> 
> 
> I saw a TODO in the page about loff_t.
> Just wanted to ping you in case you forgot about it (I did).

I didn't forget it exactly. I just don't know that I have the
inclination to do anything about the messy *llseek* pages.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
