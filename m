Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB74D29AA0D
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1421494AbgJ0KxI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:53:08 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:41714 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1421459AbgJ0KxF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:53:05 -0400
Received: by mail-wr1-f65.google.com with SMTP id s9so1330598wro.8
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zA/Pp9hDCCxEJAO7vRg/pwz3rqIaQGenU9y2VDHHKwI=;
        b=lNVOR9Ae3F5N/T5agXABGJA34D2rxyn4/uPkgGrXqtqmrL8lQLbTNbd18jptWj0OZr
         +QuwuBci9c5QJXhLWtijfZUZbKvsC5rKbidXn4DU1kjhe1n4b6AOwVlPJ2vzPUAKGozf
         7vIPu/kS2vRY+4VyyxY7ClTgFrlF1l2O4SCPGQf4++nPzrQjXgu0VdlF065QaSTIOFZF
         dlM4A5vf9VM7FtqgSTsFo/R13y5SWBiOKX009sPZ/QWc9gz+gPfvR0OfaAH8ygtLlGh7
         sE1Dq7FHJ+VZUqFdCxn3bUJLQ9Xx/eL8gAbd5S3NHZ3lH5+49LUTUVouKRzRh0OpT91M
         bB7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zA/Pp9hDCCxEJAO7vRg/pwz3rqIaQGenU9y2VDHHKwI=;
        b=oSSgnwI4A3eXMiqd9LFyNJJlsWn60GlViRJRYt1940NNlgvVVRMaCSeejxWLGWL48H
         hsmlmvGqYIB+FzWThXVsBw8r6HBIvUwzuy/1zrgboT58PoaRLXJoq3KrCEe5K4iRwLNJ
         HMemDmaVj6W9VxW01DGzfiF5aWeGxWfo35APVrzHKTdmZ427LbcOM1VmpRFYoT9kZyxN
         3HnD/IQ6MvZ9kfa4Ku5Tu0yeCOLzdmia2mFiZBMHmQs42sG33FjhIir9laNc5Le6TRDP
         8Ovojkr2t5TWPkpeDNxPWjLAW5z3BtlEmXaNk0bR+h+re8u/7FGkBlYuq/dv52eOuw5J
         5jzQ==
X-Gm-Message-State: AOAM533S9OemtuJ/4L/afgwPx0B55ioQ6uECyq9pFICzifCfOqezdJw2
        r964ly49snTFGGJqZ2ZwCbZbB6pfqZQ=
X-Google-Smtp-Source: ABdhPJyb5ngwS2nDVBrbSHuVhJun8vaG6i0HtU+cjJe1XI0QGilMNSeyjfeFGKM2rolE+fv0d07grw==
X-Received: by 2002:adf:f482:: with SMTP id l2mr2128780wro.26.1603795983091;
        Tue, 27 Oct 2020 03:53:03 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t19sm1599988wmi.26.2020.10.27.03.53.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:53:02 -0700 (PDT)
Subject: Re: [PATCH] system_data_types: ffix
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201027104737.26615-1-colomar.6.4.3@gmail.com>
 <40613102-84bf-ea3b-254c-0739998cc40e@gmail.com>
Message-ID: <a7a213b2-c76f-1f13-d70c-f54a2b6cd6ee@gmail.com>
Date:   Tue, 27 Oct 2020 11:53:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <40613102-84bf-ea3b-254c-0739998cc40e@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ooops, '.7'

On 2020-10-27 11:52, Alejandro Colomar wrote:
> I forgot the '.3' in the commit msg again :(
> 
> On 2020-10-27 11:47, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index e98782545..e1e8f01ca 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -775,7 +775,7 @@ See also:
>>   .TP
>>   .I pid_t
>>   .RS
>> -Include
>> +Include:
>>   .IR <sys/types.h> .
>>   Alternatively,
>>   .IR <fcntl.h> ,
>>
