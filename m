Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 144EF3DC5B3
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232787AbhGaLY6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232501AbhGaLY5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 07:24:57 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60887C06175F
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:24:51 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d8so14813169wrm.4
        for <linux-man@vger.kernel.org>; Sat, 31 Jul 2021 04:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dLbweiWGQ8bGRB98POfzUlmudxZ8A+/F4leORVGJD00=;
        b=Sa2PJ08DRTL9tBRueQEfNljf9xs/76rV0GDBymJ3uxUkCJbH09vFuGDbQ86pZq5AkM
         KMnYGaHv6QKeqCb35pYF8ycfPZ9bCp0HogqvgBrjKHtk7vIvmbDLpyw9bnMDnHYpvoMg
         loWSQQK/vv39fTC5Ip12w0kfYO+iqNxytWz+xcjryDs34kDXPKavtL/SRqtxRzRhIU+/
         yCQlI2yqfXAAEu+QFLMrHI0Bi3l1BPFjXlD2tYEBO4ER6xweoFscTAo9cWD6VT09ELKV
         mdl8gTIkk1Yu1+b0RMbNKKJmYEHbtToyKO31YIOl+gLAMIPWYlb/egtMyXpqNoyJRhpn
         Jp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dLbweiWGQ8bGRB98POfzUlmudxZ8A+/F4leORVGJD00=;
        b=JQy/PY2QJWNF7PMMeGGq1VA9jzMaehGaAS/msdr2fzR1ERM/s3epRuHnM8J0E0vNkD
         itl4PdcMbz56TLXxm5TNzPWKpEpmHpmNsUn4AEkYmDBYt7qcKyp5i3zKC7XWTHqZBYLp
         9GIkHteNcHKkXglM4OflEAqcseLca35t9KXo3p3Se0mQA0BFVEERX/4OaA7XL0tbqZ7/
         XsJstvF8rKrfFsHmXqFN5YpAaFEkLlLc8frf8RpILTr+Qtntui4vFKI/sEPNrAIWRCCN
         +ZVd9jzEHFpksghYhce2DegHek1lplyXI4aIr3IqlzF8H3J5gjYwc/VWdzIu7F+SqtO9
         V3oQ==
X-Gm-Message-State: AOAM533vRlBPvWzQ0twBDR8ubKFKRBROhH0a1gWwxSYxhfPXoAFMh13a
        SvCf/EJyAuObqdjEM3YDNaoRD7Tvecw=
X-Google-Smtp-Source: ABdhPJzz3EQnvuQUAxUTm/j7nSCMEjoNixLg2oUapWAlQqnuKtriPv5hsAxroIWm2tpTxYJHSelOfg==
X-Received: by 2002:a5d:4009:: with SMTP id n9mr7759950wrp.397.1627730689124;
        Sat, 31 Jul 2021 04:24:49 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m20sm4167547wms.3.2021.07.31.04.24.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 04:24:48 -0700 (PDT)
Subject: Re: [PATCH] termios.3: Add information how to set baudrate to any
 other value
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210730153044.23673-1-pali@kernel.org>
 <d8e81fd3-0a7d-8fc8-4d2f-863aec8f6f14@gmail.com>
 <20210731015043.zbdab35mm36nfwsc@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2ce98cb8-8bba-8972-22cf-ce69760fa125@gmail.com>
Date:   Sat, 31 Jul 2021 13:24:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210731015043.zbdab35mm36nfwsc@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/31/21 3:50 AM, G. Branden Robinson wrote:
> Hi, Pali & Alex!
> 
> At 2021-07-30T20:29:24+0200, Alejandro Colomar (man-pages) wrote:
>>>    for the speeds beyond those defined in POSIX.1 (57600 and above).
>>>    Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
>>
>> I think this should go on a separate paragraph, don't you?
> 
> I would line break after the comma, quote the multiword literal in case
> the bold attribute gets stripped out of the output (copying and
> pasting man page text into emails, for instance), and use font style
> macros instead of font selection escape sequences.

I would too, but that was already existing text that was out of the 
scope of this patch :/

> 
>> .PP?
>>
>>> +Setting baudrate to other value than defined by
>>
>> wfix?:
>>
>> Setting the baud rate to a value other that those defined by
> 
> I'd say "baud rate" as two words in English prose (contrast with C), but
> "than" is correct.

Ouch!  I meant "than"; "that" was a typo that I introduced.  As I 
already applied the patch, I'll fix it myself in my tree before sending 
it to Michael.

Thanks,

Alex

> 
>>> +.B Bnnn
>>> +constants is possible via
>>
>> s/via/via the/?
> 
> I agree.
> 
>>
>>> +.B TCSETS2
>>> +ioctl, see
>>
>> s/,/;/
> 
> I agree.  Comma splices are evil.
> 
> Incidentally, when checking for semantic newline issues, I use the
> following search pattern in Vim.
> 
> /[.;:].
> 
> Strictly, I should say
> 
> /[.;:!?][^\\]
> 
> and were to bind that to a key, that's probably what I'd use.
> 
> Regards,
> Branden
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
