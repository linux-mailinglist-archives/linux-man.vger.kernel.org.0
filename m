Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD8E61023AC
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2019 12:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbfKSLzs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Nov 2019 06:55:48 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:32785 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbfKSLzr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Nov 2019 06:55:47 -0500
Received: by mail-wm1-f66.google.com with SMTP id a17so2309029wmb.0
        for <linux-man@vger.kernel.org>; Tue, 19 Nov 2019 03:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d69rPeX8U9Cpqbn595g3XfHRCs//A+y/bDBDk8BS8S0=;
        b=Q9UQO9XzuhpZXNc2PF/0oFu94B7Tsbj45+PmN3hE+xojfK2Wi1Z5Ebl/gvMHKle3qK
         jeWcBs3C18mXKI9CNKawRHFzoCLuMfG1M7mXel6wHF2gyP6yRM5TU1EotQeWEGqvjloH
         p+fnRwHfP83d5jx/zdnG6KeVLnoj+Q7OcnE3cXBBQEjOchBxyOSIi55pp3uwCBMGztg9
         RUiDbKxPVpur3a8a0IipalpEa/FURYf98OCRBG/3xJzUml16hdwBLWXLfFkCI4PrEVlx
         DNc2ZEvFDiKC0YN9KJBO7+XxRchoY9+MoEhJ+ngVa/K8dJTyMtYFV0HZ2MBnZQ5v6LlO
         9CIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=d69rPeX8U9Cpqbn595g3XfHRCs//A+y/bDBDk8BS8S0=;
        b=qKNqw/DBL3Tw6UnlZ3LPS1P/Ksb5hj74S+fF0QU1DqbwQ+mxoEo95TX+hx4al+6eme
         JfkyiML5waR+2/jS+8i3kGxI06vT4csHZhU7xz8nKAWOuva1TkTNyHaPYLPwWYLNWrTv
         u1dICKdIAZnFFHAl6Ah9c+5VS2Yw2GWnAU1t23MOKTJwFmSueMNpzXwQ/Gb6z9arVkyg
         cflrxzdL8FfshWel+ugHEXGAGeQtlYVw5puiJ1gtkTnzGn98hrDiiIOc7lqlUxRFF2Xp
         vtNST3MuBIXS6sGHb1/1y6qj+UmqoN3qHnuuV+zXUmYAEIP9yhSrW2rCcvHbBMwsfuBx
         Addg==
X-Gm-Message-State: APjAAAWwyijTLyd4j4sivBE0vf5KqP7rQcNhYuh1clk3rNalzT0hkxGk
        KbrtXSQi7bk5LAP4kQxUhaW6Xw==
X-Google-Smtp-Source: APXvYqwsNR3svFurQ6pIOkLjo4JdWb11Yuwqfobjj/6IGVcM4V//ii9ih/NT1cGl7jmyCzRA+Drgsg==
X-Received: by 2002:a1c:e386:: with SMTP id a128mr5345672wmh.52.1574164544580;
        Tue, 19 Nov 2019 03:55:44 -0800 (PST)
Received: from [172.20.1.104] ([217.38.71.146])
        by smtp.gmail.com with ESMTPSA id f19sm29752965wrf.23.2019.11.19.03.55.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Nov 2019 03:55:43 -0800 (PST)
Subject: Re: [PATCH] bpf-helpers.7: Remove duplicated words and add missing
 articles
To:     mtk.manpages@gmail.com, Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <87bltgdb00.fsf@mid.deneb.enyo.de>
 <CAKgNAkitxPz-SuuQP6du2s332x_1tdbcFQEYpw7ZAJ_6sX8sSg@mail.gmail.com>
From:   Quentin Monnet <quentin.monnet@netronome.com>
Openpgp: preference=signencrypt
Autocrypt: addr=quentin.monnet@netronome.com; prefer-encrypt=mutual; keydata=
 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
 RHhSHGnKaQ6MfrTge5Q0h5A=
Message-ID: <5f77e4e8-8280-e049-fdfd-167d357a9937@netronome.com>
Date:   Tue, 19 Nov 2019 11:55:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkitxPz-SuuQP6du2s332x_1tdbcFQEYpw7ZAJ_6sX8sSg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian, Michael,

Sure, I would be glad to help or even to submit the changes against
bpf-next tree if it is easier for you. Just let me know. And thank you
for the fix!

Best,
Quentin


2019-11-19 12:48 UTC+0100 ~ Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com>
> Hi Florian,
> 
> This page is autogenerated from text in the kernel source. See
> man-pages commit 53666f6c30451cde
> 
> [[
>     Generating the page itself is a two-step process. First, the
>     documentation is extracted from include/uapi/linux/bpf.h, and converted
>     to a RST (reStructuredText-formatted) page, with the relevant script
>     from Linux sources:
> 
>           $ ./scripts/bpf_helpers_doc.py > /tmp/bpf-helpers.rst
> 
>     The second step consists in turning the RST document into the final man
>     page, with rst2man:
> 
>           $ rst2man /tmp/bpf-helpers.rst > bpf-helpers.7
> ]]
> 
> I've just refreshed this manual page as per the above steps, and the
> typos you note below are still present.
> 
> You'd need to craft a patch against the kernel source file
> include/uapi/linux/bpf.h. Or perhaps Quentin or Daniel (who I think
> roughly own this file) might make the changes directly.
> 
> Thanks,
> 
> Michael
> 
> 
> On Tue, 12 Nov 2019 at 22:45, Florian Weimer <fw@deneb.enyo.de> wrote:
>>
>> Signed-off-by: Florian Weimer <fw@deneb.enyo.de>
>> ---
>>  man7/bpf-helpers.7 | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
>> index 6f07f476e..0ac569c1d 100644
>> --- a/man7/bpf-helpers.7
>> +++ b/man7/bpf-helpers.7
>> @@ -1546,8 +1546,8 @@ Where t_enabled is the time enabled for event and t_running is
>>  the time running for event since last normalization. The
>>  enabled and running times are accumulated since the perf event
>>  open. To achieve scaling factor between two invocations of an
>> -eBPF program, users can can use CPU id as the key (which is
>> -typical for perf array usage model) to remember the previous
>> +eBPF program, users can use the CPU id as the key (which is
>> +typical for the perf array usage model) to remember the previous
>>  value and do the calculation inside the eBPF program.
>>  .TP
>>  .B Return
>> @@ -1605,7 +1605,7 @@ the return value of the probed function, and to set it to \fIrc\fP\&.
>>  The first argument is the context \fIregs\fP on which the kprobe
>>  works.
>>  .sp
>> -This helper works by setting setting the PC (program counter)
>> +This helper works by setting the PC (program counter)
>>  to an override function which is run in place of the original
>>  probed function. This means the probed function is not run at
>>  all. The replacement function just returns with the required
>> --
>> 2.20.1
>>
> 
> 

