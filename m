Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36D243BDE72
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 22:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbhGFUdC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 16:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbhGFUdB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 16:33:01 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F20C2C061574
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 13:30:21 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id f17so436750wrt.6
        for <linux-man@vger.kernel.org>; Tue, 06 Jul 2021 13:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5w90vTB9nxKplWLQAujfxK4oOaQJ8aYio5B5glp3gHU=;
        b=R945dw4iML3OekQW7c6y9quaQ8TEx6/ZIqm0w6wDKXMxa0ytah2m/WiJu74M+PQOIQ
         wCuV8fUXTqjIweNBinTZ1rmI/RJ07K5YniyVMOYb6OAZPHisl9CCgtHGbePW54CgPAfK
         /BlFsZoZu6Ka3Di3CGWq2gcJHsTQFGBekXAQZ/nB7ZabTWz8swNcxW3fgblENE67ROuK
         vwxL/dRL1EFj4fv7rVkN7gKz0vHD6KnA3USXApgB5/GCylWkU3t8OkRbzOYmenDHabIj
         zoR9A8FnsCDquckJ1K3IsWv+W8OFQGAI4GBykAfyn2h4+8UJtJzlE7l+SlM41V1f8d26
         E/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5w90vTB9nxKplWLQAujfxK4oOaQJ8aYio5B5glp3gHU=;
        b=id4dgXy8KP4DFVHt8T9hbVrvNDUfD51jZ0myaVyIAJxCuFGYbJhEtNhMbmNFBDU4PA
         uix3YS+NLTOmsddoiFmLTzg8R6uoUSBdrwwx+CRIilunXpYAWAqsmgzz4a7Wpo6fjH5I
         zZQchXaZwGo6/KnsGPdKT03OvH8NN12m/+LvT17Z37rJ3oA7g7E3X6efjfWSIs57yLZd
         iu4N23MT2TssI9/Zwsnn47fYTLN3i6rs3eQ5aoNjD3/j5GaRz/44JYRdK9lwi7kgrklh
         /QXYbTlidP9vwNXUN+4+DV2RdUcpNsOYlcfXICiwO5MqeNEAJoDixNBNGGXCEG748/N0
         QUPA==
X-Gm-Message-State: AOAM530Xt6gn4bswkIpl3l0O5SOO8uq5YSbzHhumS5tF/SkgooCGx6je
        z3bAU7GiwsKnPSMA9RIJ4145cQ==
X-Google-Smtp-Source: ABdhPJwhCX9qVo9OmadRz6LJM8vSRNclE28LunHamL3auHEP5uAQ092C17Gnp60groOjr/9beBllrQ==
X-Received: by 2002:a5d:5403:: with SMTP id g3mr5340514wrv.403.1625603420577;
        Tue, 06 Jul 2021 13:30:20 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id b20sm17322455wmj.7.2021.07.06.13.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 13:30:19 -0700 (PDT)
Subject: Re: strlen
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
Date:   Tue, 6 Jul 2021 21:30:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87363whf2z.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 05/09/2020 08:12, Florian Weimer wrote:
> * Jonny Grant:
> 
>> On 04/09/2020 20:21, Florian Weimer wrote:
>>> * Jonny Grant:
>>>
>>>> Hello
>>>>
>>>> https://man7.org/linux/man-pages/man3/strlen.3.html
>>>>
>>>> Is it possible to clarify :-
>>>>
>>>> * glibc will SIGSEGV if 's' is NULL
>>>> * there are no ERROR returns
>>>
>>> That would be misleading.  Whether strlen (NULL) is undefined also
>>> depends on the compiler.  They know that the argument cannot be zero
>>> and optimize accordingly.
>>>
>>
>> Hi,
>>
>> Do you know a compiler that has a different behaviour? I only tested
>> gcc and clang. How would a compiler optimise?
> 
> Here's an example:
> 
> #include <stddef.h>
> #include <stdio.h>
> #include <string.h>
> 
> void
> f (const char *str)
> {
>   strlen (str);
>   if (str == NULL)
>     puts ("str is NULL");
> }
> 
> int
> main (void)
> {
>   f (NULL);
>   return 0;
> }
> 
> When built with -O2, GCC 8 prints nothing, and there is no crash.
> 
> My point it's not just the C *library* that makes strlen (NULL)
> undefined.  It's undefined according to the language, and even if we
> changed the glibc implementation, things would still go wrong.
> 

Hi Florian, Apologies for tardy response time.

The reason it does not crash appears to be because of this warning which removes the call to strlen due to the return not being checked?

strlen.c:11:3: warning: statement with no effect [-Wunused-value]
   11 |   strlen (str);
      |   ^~~~~~~~~~~~

https://godbolt.org/z/caoes5nGa


.LC0:
        .string "str is NULL"
f(char const*):
        test    rdi, rdi
        je      .L4
        ret
.L4:
        mov     edi, OFFSET FLAT:.LC0
        jmp     puts
main:
        sub     rsp, 8
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        xor     eax, eax
        add     rsp, 8
        ret



Changing to this, it does crash


#include <stddef.h>
#include <stdio.h>
#include <string.h>

void
f (const char *str)
{
  size_t len = strlen (str);
  printf("len %zu\n", len);
  if (str == NULL)
    puts ("str is NULL");
}

int
main (void)
{
  f (NULL);
  return 0;
}



I could not see why in your original example it doesn't output as expected as the assembler does show it 'jmp puts' although seems to have optimised and added that code to 'main' as well?

I had expected to see:
$ ./strlen
str is NULL


Cheers, Jonny
