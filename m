Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8540A2E69FE
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 19:25:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728620AbgL1SZX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 13:25:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728583AbgL1SZW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 13:25:22 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51173C0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 10:24:42 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id k10so146247wmi.3
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 10:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=atCV6d/0GwviOW6yXtzwJhBEXtPgZU0x/QLguGTIqy4=;
        b=XYPqj1+GPoe4DOcsTNgcNtWdfau6BDk2X/NNgkEzcFvGFmH3RxylFvv9Z6ciR71b8v
         QiSscHX/cTrNtQz8B0HjIuI7PtFrF0GpnWpxa5IsDCxAbUYDxOvLmwhxj6Db1U7TGWkZ
         l7HWqyQpRdbRlw6oSC3GvYhWRPBDkH8mxWfmnYvKkzrHTjQ4Ti2ACIz9te7g77R1HvEI
         IfsCm84Ha+JHCNQLNZ8IdUWgsH/+g3Hu/j+f+Oa62E6kijoyELrRVk5dn/b79vY6BQma
         Iwyfb0JANy2IIW//zRX9fYJb2T+FfEdfTbweSZY5W+bNSnmp7NcWc1IZy+XDRWabsHA+
         oDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=atCV6d/0GwviOW6yXtzwJhBEXtPgZU0x/QLguGTIqy4=;
        b=cHJHHuYprH8M9nSFtdohFxvK0cgl58C+xCAtMvQvkk/n2eh/+hPVYcHBn6rgbNy1PJ
         7qbbsFozzsDCj46oGcpAJfW/Pn0vJOxi+3nMEAT70Z8+xbQjQEC1yH9EkOf9MG1gSCXd
         GEc0+mnHRy452kUtv9swwVQ7zFhnVWhQM9z5JG33hoUIc6mCw/XTVZF+sTpIOxp4ohHX
         4uw7j2qatnhP1Csh6+IjBc6zanfu7sjWbmhpBCQRVJP5yci0JbC/7z/XrxGTZOv8WBIu
         k7dzK00XmPVQezDgG7UpFf0m6hOM0PFcO2k7hgTyKwQa19DFQuV+gMQOYn45xhaSqfv1
         MgSg==
X-Gm-Message-State: AOAM5330TixfegSj1FlyV5c9XEsKstqS5CimCKR7O3GpOO/DZfu1Xp25
        Wa8Np7zUhWAghIfX75TGKypl/7D9oQQ=
X-Google-Smtp-Source: ABdhPJxwDdTrGuUfvTe7niN2Wk8+EqA/NmUIb+dzmQQa5r3tZDzpPQGP7qKrSH/roxzblTT8q3RK8Q==
X-Received: by 2002:a1c:b742:: with SMTP id h63mr151610wmf.122.1609179881050;
        Mon, 28 Dec 2020 10:24:41 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c10sm59936451wrb.92.2020.12.28.10.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 10:24:40 -0800 (PST)
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     linux-man@vger.kernel.org
References: <20201223182911.4066380-1-krisman@collabora.com>
 <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
Date:   Mon, 28 Dec 2020 19:24:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael & Gabriel,

I disagree on a comment; see below.

On 12/24/20 10:18 AM, Michael Kerrisk (man-pages) wrote:
> Hello Gabriel,
> 
> Thanks for the revisions!
> 
[...]
>> +.IP
>> +When
>> +.I arg2
>> +is set to
>> +.BR PR_SYS_DISPATCH_ON ,
>> +.I arg3
>> +and
>> +.I arg4
>> +respectively identify the
>> +.I offset
>> +and
>> +.I length
>> +of a single contiguous memory region in the process map
>> +from where system calls are always allowed to be executed,
>> +regardless of the switch variable
>> +(Typically, this area would include the area of memory
>> +containing the C library).
> 
> s/)./.)/

That point is ending the full sentence starting at 'When', not just the
sentence in parentheses.

See <https://www.thepunctuationguide.com/terminal-points.html>.

Quoting that, "The main sentence takes a period outside the closing
parenthesis no matter what punctuation is included inside the
parenthetical element.".  So that you should be able to:  s/(.*)//

s/)./.)./  would be more correct, but I think ').' is enough.
See my quotation above, which is a similar example :)

I'd also s/Typically/typically/

Your thoughts?

Thanks,

Alex

> 
>> +.I arg5
>> +points to a char-sized variable
>> +that is a fast switch to enable/disable the mechanism
>> +without the overhead of doing a system call.
>> +The variable pointed by

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
