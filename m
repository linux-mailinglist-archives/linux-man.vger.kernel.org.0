Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94F7429ACA2
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:01:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1751610AbgJ0NBj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:01:39 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:37542 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440804AbgJ0NBi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:01:38 -0400
Received: by mail-wr1-f65.google.com with SMTP id w1so1823732wrm.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 06:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B4ohPAWDOm7PjUXLa+mGDzelCo7IQAODhL9D6ZnXSWw=;
        b=VxovbMu5skS/RcAmJ36eQPgHVXWCLBSe7sqyss0ZM70zgRfA9drgA7WTCcfMFhoqah
         QSTwEKmOXH+QihEdxmeNmGWg8Zr0eSJcrBSob/f8hafQsi/MUyTBwGM9xoUBqgYnce1r
         aRpL1GcB45qBEEwTF1mAkjJcmQ41rSr88aTgbNprGqwntW8y+g/02EEkcPD0MohXF/yA
         rPVVlxkWQRsUjLNm44bTr4HCP/VQMfZ0k0Q5seNYWhxxweOg89v8MdKL3bodP9COJgQW
         xH78m14EXXOmq3JI+KlSsUvAt/T890t9W5mRTV1LOL2NrE6J3juKxTtyFbfIJiXRWN8V
         OhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B4ohPAWDOm7PjUXLa+mGDzelCo7IQAODhL9D6ZnXSWw=;
        b=jH6h1d7EdfJ7Z8PflIVJj9qOZ5An1ytNgt0OGqv9cOrzIXhUrUJLxUA5MWjKdu8iPP
         jDjgH6jKDIKc6YHbDLMjKiRnPsO1OYf/IxeKnvzURsXlrYHQbtS4SN9/UkRvNAcbqitV
         mihlowqNV/heZ99oMOl18estPK8tMurM5D8WW+0vB/DCRpp76zNbLZJZiYR7Vc102zFM
         3tPYRky0HB05ZeesjAXLWzq5ADw6+XRXApzszLuFL1/Kfwi3O1DaM7vMXdw6bLYdbtc2
         bSNo8qIpdKa+JWVjT3F5Zik1FjH2sN0aF5OpSGML00+g3KrfLPkm7JFJuZeRi8HNlWdF
         +L9Q==
X-Gm-Message-State: AOAM532bzK6Z3WnWGgR3CsN+PxbIGiYs1hDNWB/xqKR8Lh86gNRfKA3s
        +sa0RxBl7v3fvKzq0oTcniKDHJEuDA8=
X-Google-Smtp-Source: ABdhPJzfAnNT6C6KopvhFFFDSaVDtcNCowNbnqMUBOUulttISw4LeFaW/ZcorNkzEpcIsMZcpXq6kQ==
X-Received: by 2002:adf:e444:: with SMTP id t4mr2963003wrm.58.1603803696348;
        Tue, 27 Oct 2020 06:01:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id u9sm2000314wrp.65.2020.10.27.06.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:01:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: argz_create
To:     Jonny Grant <jg@jguk.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
 <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
 <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
 <0b3cc00f-e0e3-deed-f3b8-5446bcaa7742@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ede6e5d0-53af-aacb-3bdf-95ad1ffad097@gmail.com>
Date:   Tue, 27 Oct 2020 14:01:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <0b3cc00f-e0e3-deed-f3b8-5446bcaa7742@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/27/20 11:43 AM, Jonny Grant wrote:
> Hello Mtk
> 
> I noticed "nonzero" needs a hyphen "non-zero", could that be changed please?
> 
> Also there is a word "nonempty" which isn't a word, and isn't needed I feel :-

Please see man-pages(7).

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
