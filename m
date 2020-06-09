Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6DB01F38E4
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 13:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbgFILAU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 07:00:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725950AbgFILAQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 07:00:16 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3B34C05BD1E
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 04:00:15 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c3so20756090wru.12
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 04:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=uJENQKoX7s/2I4h3H+GhXVVvGtrvyncs7GvNZksQyWA=;
        b=rHzPb7RIVeHorLW05Ol46RxwBHBha4VLTnCI1KHPCIkoZWrLfL50I/lmmO7rURPe1t
         qMP2lX+nTCmd0VX3Q5lFNXlkDOwbBi3qgSRpsIioPLYOqIyD3FbV+NSv7lo6gXAgHXnZ
         NAvqnk+gyflC9IVWjF0cu1YUewGSN/Dfu0kHb9X8ohqdqR/oIQEWFmjh02bdUY/WyHr4
         W/qK1YsY9on72RM8/0S05fHvkIBnwY37O6A2gdv/DWpELLNMIb7hlZivIkSj/7scKpKR
         iaN6q6jB6bQ5wxElsGTH4qaun32vcH2m4TXMaWJYyo0FsPdTPPDcXsK0JEw71Si6ZgVm
         fRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uJENQKoX7s/2I4h3H+GhXVVvGtrvyncs7GvNZksQyWA=;
        b=EQrpPfC3N5Wf9gJSME/aD43W7wk1qnEI4sv+GQ333680fKuafWQ/Yz3tvEb4KBZX1y
         Lqvx0EEb+8GtSHMUMempMpyHfpOUaLmrZuUM8LIXkZ2KZ+k+XyLuGEDUmRwvXhop72Oc
         ZW/3OZgvtMKPnFKIFmFwFwN894aPbdOl7wz2ZRjdLkrtvNZC76reuYJH9gwI8XRMWdbE
         Xx9xbzMmfIsJzM0SYEImOJhJLFArXBx/KDIXdwl4msumqzj2oCt9mWy7LYwI4sxyZjvj
         o98rRdJrOuT1/fTQyZgjcZonXVIjtJG7kkKrugyaUksw1XJuTJIxMPYYpnCY4TDHrgtI
         ha2Q==
X-Gm-Message-State: AOAM530p73xmftsgif4WqT/QiSBG3NzaFLCk6tvvyNq23JP/+A1uAFG5
        /9sIjGZHzw8pDxIyew3PfSMmIuYfqrI=
X-Google-Smtp-Source: ABdhPJx5Cb47PECIodYYpnAcVQqjumERTXPqk9YXQ2ioip9CITSpGxk0IH7PGq+u+GtsLkqa+TLlfQ==
X-Received: by 2002:a5d:538e:: with SMTP id d14mr3738367wrv.174.1591700414124;
        Tue, 09 Jun 2020 04:00:14 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id u3sm2959561wrw.89.2020.06.09.04.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 04:00:13 -0700 (PDT)
Subject: Re: core man page %e
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
 <99a02979-3d47-6ef8-c619-00d9115321ec@jguk.org>
 <e7172932-4584-916b-9ccc-29eb71b17fac@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <10fea5f9-408c-d1db-941b-133057f6eab5@jguk.org>
Date:   Tue, 9 Jun 2020 12:00:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <e7172932-4584-916b-9ccc-29eb71b17fac@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/06/2020 09:25, Michael Kerrisk (man-pages) wrote:
> On 6/1/20 12:21 PM, Jonny Grant wrote:
>> Hi Mtk,
>>
>> BTW, if I add "%P-%e-%s.core" every core starts with the same
>> "P1000-"
>>
>> The man page shows:
>>    %P  PID of dumped process, as seen in the initial PID namespace
>>                  (since Linux 3.12)
>>
>> Do you see similar? I was only needing something to make the filename
>> unique, so %t is enough.
> I don't see the same. What do you see when you verify the change with:
> 
> sysctl kernel.core_pattern
> 
> Thanks,
> 
> Michael
> 

It must be some mistake I made, can't reproduce it today

Jonny

