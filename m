Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AC544593B3
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238541AbhKVRM4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:12:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238230AbhKVRMz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:12:55 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A10C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:09:48 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id i5so34062092wrb.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kn+nwXM8ajrudCbaWWYWDB3L6qtHuKinSI1SwAvs/Yw=;
        b=i7ZDtxRJlPN1yodWW8liyKt74bNo2bO2ixoR+erbYLUxSbU3g/PRF/kRL3MW71Y1yD
         d0bPZdIyh28zkFcig//iVu4VxTw2Fuz/+hcNnFfitVcJo84OTfPG3GdOFCv8esjnkLVk
         P1MYfHATx73BFshKWIBkOJ8ldJEEVP/LdzyvaSsHaIw32t2cOv0WnaJBt1JHBxOEuU49
         WXX/2UZ39W2UGaPpmgFF9aFebpAsuaFstxWB5F0qG7ab0APgiT1kCPTjcXa4KCWfrxOR
         IBbk9aeXbApWzDjTj/unj/6HHG+Ag0KZiTlHKbhziQPjwPsqYaACn3Q45DCOTwy9HFB9
         xdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kn+nwXM8ajrudCbaWWYWDB3L6qtHuKinSI1SwAvs/Yw=;
        b=Tp3Y9KpDFcWxKhtHM5UDVj0cApPUvmBYzWP0VQ/3BEQfmpttBPbCyS8gAsYG0yG+Ou
         ikP54pKbVDjyDHDwDnPjifytbBZzWWJOvoo7h1pmsE1TnaB4Df4YSWvijEjZzLmVaQ7k
         +mtzjQCgbiaD1PZIkINEGJ74gXB0DFtpxKTr246R4+4KpXZWVUf4ONsmJ/JSaAolIW/+
         yooVVSZdnd+b+pAu9mrtxMDRolBgCQAlfAlR/5ukdTGwJmhZ//XCjLrAXO/CFa5AcVTQ
         xRUYLIrd+5Oa4W/MQsXYLQaZdQqyUIRI78Rrj7GNvB0OYVVwPUpryrKafumXLr8BdXi4
         M2WQ==
X-Gm-Message-State: AOAM532A/0ZwjAr/eIGhXgZq2urLUFNOSxQdFhkUVgRiapw7QnYCJe1a
        ILNdOd+M9nSRlRwna15KPt0=
X-Google-Smtp-Source: ABdhPJydDXV1JcRWs0yzpSoFBl/PaZymhQqWg24umjIwKFkNjIkT72/cs17VHWxg+dE0/bUHwteUXg==
X-Received: by 2002:adf:e2c5:: with SMTP id d5mr40020402wrj.338.1637600987522;
        Mon, 22 Nov 2021 09:09:47 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u23sm10165630wru.21.2021.11.22.09.09.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:09:47 -0800 (PST)
Message-ID: <eda92c0f-9175-7e2e-3b6d-4c510c60afc3@gmail.com>
Date:   Mon, 22 Nov 2021 18:09:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] pthread_cancel.3, pthread_cleanup_push_defer_np.3,
 pthread_setcancelstate.3, pthread_testcancel.3, pthreads.7: tfix
Content-Language: en-US
To:     Samanta Navarro <ferivoz@riseup.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20211113115656.5oomvy443gapjtx4@localhost>
 <20211113124015.tr5wdkrxzinn4qjf@localhost.localdomain>
 <20211113130024.zka6elp7mmshsrlv@localhost>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211113130024.zka6elp7mmshsrlv@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Samanta,

On 11/13/21 14:00, Samanta Navarro wrote:
> On Sat, Nov 13, 2021 at 11:40:17PM +1100, G. Branden Robinson wrote:
>>> Changed cancelability to cancellability.
>> This is a localization issue.  Words like 'travel' and 'cancel' usually
>> decline to forms with a doubled 'l' in Commonwealth English but retain
>> an unmodified stem in U.S. English.
> 
> You are right. But e.g. pthread_cancel already contains cancellation.
> So I think that cancellability would be matching the already existing
> style. Or cancellation is also changed to cancelation.

In general (with a few exceptions, see 
<https://lore.kernel.org/linux-man/ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com/>), 
we prefer US English.  If you would like to send a patch for 
s/cancellation/cancelation/ I'd like to merge it.

Thanks!
Alex

> 
> Sincerely,
> Samanta
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
