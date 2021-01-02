Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA9BB2E88A5
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 22:16:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726689AbhABVQR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 16:16:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726687AbhABVQR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 16:16:17 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1605C061573
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 13:15:36 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id g185so14238455wmf.3
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 13:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=yl1AKe191TP7njpD2wUMEchb9V+wyym0B4vvMtF69YM=;
        b=kKMobL1Ci1N/pXnE/UfLtiyULYrb5pu6tTJPNESX6sCCmgXEc42sSvBH1wUdwb3ZVZ
         zfyfaGyMG94VmEIeXocTanYrg5hNKICF15yXj5VunbH5i3J8yczWiGfO0TqdO5JRpPaU
         DnxxV/1nn5lVKltvpRPzkVHN2GtJMU3FZfcRSLw4LE8/CD7/pHfV8TGUDDBHudHN0eIb
         Zd4cuvamGqVy7uLxEhCr6b5JT1+7e71PaPt94fJxziuohWlucxTX9v1HE2NwFxKVAluQ
         mZzp0VBZp4Xnb4Ei5P5XTAd7yTe1RW5bdNDZc+tHbvR1xiB4U//++tgtiDZrqsAtuniT
         T3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yl1AKe191TP7njpD2wUMEchb9V+wyym0B4vvMtF69YM=;
        b=aIFBY5Jr+OHxRxex3t/r6ATCAWtzK2yGuDdOmRhOQwxeZf6XnH5xoWMSOSiexwaGGl
         u+UpAdc2w/Vz+4WkN4GFVZIkPVpUdjP/caaWUe64HJBSZFzBcTq/kazomkwcfcqnpNQV
         oQMK6qe/ccZCYOdHaPYdyzOsczg9W5glrpjZOPK+EuVdMqJeVStHosTAisR3AyuSRHn1
         C3jxZABqYk47FJnHGUc6irj6IimHfvtqefzOcD89sOKEvVwE2x1viA8IlDtYW81ta0V0
         UXhCsscWO3TDouJeLNokBJ8cx1thPRHOvUxQdcXWx+gpQV2i5wLnWC13/bIk4uTxSLX0
         /7SQ==
X-Gm-Message-State: AOAM532R61oL/OKQKgJLdmZj5/qWhVKxb5V98IVo5EV9aBQ98jmR9nnT
        cfzZj1YkXThFzkY+34J2JreYnjf2SvqbkA==
X-Google-Smtp-Source: ABdhPJxqzD9ZctwA9IwKyRn1QjWts8DC6bpMV7Z7UciXQE4w6EFXNjsfzU/POjLUoRA8DPe3zKRxCQ==
X-Received: by 2002:a1c:2783:: with SMTP id n125mr20328074wmn.74.1609622135059;
        Sat, 02 Jan 2021 13:15:35 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id r82sm25173645wma.18.2021.01.02.13.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 13:15:34 -0800 (PST)
Subject: Re: readlink
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <79e09e31-c33e-3fbf-158b-30344e7aae68@jguk.org>
 <63d3bfdc-93dd-6f3e-8ed4-7036b01f9751@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <daa49f83-22c7-7c62-b318-e00f23e56af4@jguk.org>
Date:   Sat, 2 Jan 2021 21:15:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <63d3bfdc-93dd-6f3e-8ed4-7036b01f9751@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 30/12/2020 13:56, Michael Kerrisk (man-pages) wrote:
> Hello Jonny,
> 
> On 12/24/20 6:52 PM, Jonny Grant wrote:
>> Seasons greetings Michael,
>>
>> May I ask, could readlink be updated to use the same wording for null
>> termination like on sprintf, scanf etc?
>>
>> https://man7.org/linux/man-pages/man2/readlink.2.html
>>
>> It says:
>>  "readlink() does not append a null byte to buf"
>>
>> Perhaps it should say:
>>  "readlink() does not append a terminating null byte to buf ('\0')"
>>
>> In addition, is it worth adding a BUGS section to remind that there
>> is no terminating null byte?
>>
>> "readlink() assumes the caller understands that no terminating null
>> byte ('\0') will be written in the provided buf. If the caller didn't
>> memset the buffer to ('\0') or allocate an extra byte for the
>> terminating null byte, there is a risk the caller could overrun the
>> end of the buffer, or use uninitialised values in the buf."
> 
>>
>> Finally, perhaps also the EXAMPLES program could be updated to clarify this:
>>
>> "/* print only nbytes of buf, as it doesn't contain a terminating null byte ('\0') */
>> printf("'%s' points to '%.*s'\n", argv[1], (int) nbytes, buf);
>> "
> 
> I think that having (1) the existing statement at the start of the 
> DESCRIPTION, (2) adding a comment to the code, and (3) adding a BUGS
> section all to cover the same point seems a little excessive.
> I've gone for 2 out of 3.
> 
> Thanks,
> 
> Michael
> 
> --- a/man2/readlink.2
> +++ b/man2/readlink.2
> @@ -93,7 +93,7 @@ in the buffer
>  which has size
>  .IR bufsiz .
>  .BR readlink ()
> -does not append a null byte to
> +does not append a terminating null byte to
>  .IR buf .
>  It will (silently) truncate the contents (to a length of
>  .I bufsiz
> @@ -332,6 +332,8 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> +    /* Print only \(aqnbytes\(aq of \(aqbuf\(aq, as it doesn't contain a terminating
> +       null byte (\(aq\e0\(aq). */
>      printf("\(aq%s\(aq points to \(aq%.*s\(aq\en", argv[1], (int) nbytes, buf);
>  
>      /* If the return value was equal to the buffer size, then the
> 
> 

Looks good, thank you.
Jonny
