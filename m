Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED8ED2680C4
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgIMSaw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgIMSau (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:30:50 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CF01C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:30:50 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id s13so8639125wmh.4
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FN5VnkRDY8Q40I630ZLFHIxVYVoPh2oEX0eEW6xaz20=;
        b=pXRswXlSyjj2e3kL1AJ1PfFA6eTmDXXAPpFY5C1UhhDP1sD9RI3EFaNOiIhzDWQUk8
         Rh6JunWhAtrJMK7GYJxtM8UI438XiNmrTx3pATaKn1UbnFbyzS4bQ7RFKAH5oZ2t9NKu
         BkEzDFU9YI1BrFiD8MpiBG+PjWWRN0VYS1h5zo/44itm5s+Ds/Ymo3Xs7IpEbfYC656B
         LoUcN3JvIou7qoVoYOQlyrA+9jhr/BerqO5hsFeh67wg1fXBzdGWJQA9Q1Wm+wGqu35Z
         9ddUGNMz4xCN9jCnG4Sm26zNtxRxcBK3VV7hfUDyA0wjTPKx5cAdbrY2JQRitiDkVIOC
         O3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FN5VnkRDY8Q40I630ZLFHIxVYVoPh2oEX0eEW6xaz20=;
        b=h7T+wGfdfedFGSQmkbn+jicykhTHKKa/syqDHnG8fgxkuKQwE7zpGb9Kgx+qTw99IK
         Be/HrwEYgmK9Wv7uURCfyo4KHnyWrvs656uJWqE70qphuB9dW7FyV3uRUcs8j4ns2FK3
         aCjxthMUKFQr4ty2pc66otRmDDVFBZCgBrx0XxWrwiCDSYHwXHQo4eOCZZZJRr7ybyHK
         jo10lWsLBtSKAUMBCuMGlpqYzrFV+9I69p+gL5kRnZcguu13L0JQbtouZ6NWiH+1yNxT
         2DmAwiTjiqHjLuwz+xBlA+5Sqa0zusn39h5RqTzuLANfpF+A1omMlSsYOr4ZSopfV5Fl
         viHA==
X-Gm-Message-State: AOAM5338DbUTeoxm68dq2IlZpR49ihTKs+e7PwKWeJWR0Gbj70uB80O+
        C30xoGgPo4VfZ967EpcOaSw=
X-Google-Smtp-Source: ABdhPJy/cHnveCjuG613HnERVRn0OYT21rRvMv4/mGxMa8moPAYG7XHsmHH9304pYtbWm8x+5bOEOA==
X-Received: by 2002:a1c:1f42:: with SMTP id f63mr11224782wmf.1.1600021849143;
        Sun, 13 Sep 2020 11:30:49 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id p16sm16546757wro.71.2020.09.13.11.30.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:30:48 -0700 (PDT)
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
To:     Konstantin Bukin <kbukin@gmail.com>
Cc:     "Dmitry V. Levin" <ldv@altlinux.org>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <20200913173801.GA15488@altlinux.org>
 <9f5d1d00-9946-5cc0-cc74-3c4820b37c59@gmail.com>
 <CAF98MAKanUQtQN18Rh1F-YEhUqFix9+6aWVHuqSPLWHrJA93TA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <ee5cc545-b04a-647f-e8e2-2692af9f1f8e@gmail.com>
Date:   Sun, 13 Sep 2020 20:30:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAF98MAKanUQtQN18Rh1F-YEhUqFix9+6aWVHuqSPLWHrJA93TA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Konstantin,

On 9/13/20 8:16 PM, Konstantin Bukin wrote:
>> Do you agree it solves this problem?
> 
> No, that does not solve the problem. There is still casting to a
> signed resulting in printing negative inode.

True.  The definition of ino_t is unsigned, so the example was wrong
from the beginning.

> 
> Using %llu might be better since that would not require including an
> extra header.

We just had that discussion in this thread:

https://lore.kernel.org/linux-man/20200911231411.28406-1-colomar.6.4.3@gmail.com/T/#m971e4dcfae5f25e0f26c906679aa7176b6786bdf

We decided to go for [u]intmax_t.  But the patch has not yet been
applied, so you arrive just in time to give reasons against it.

> 
> Mind I'll send a new patch?
Sure.

Cheers,

Alex
