Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14C9027D7CF
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 22:15:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728825AbgI2UPY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 16:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725372AbgI2UPY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 16:15:24 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5A1EC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 13:15:23 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so6887458wrn.0
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 13:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+5kIx3Nqmp/S0JC6mzG3k+zdE6V8kopeRci/NenVz0c=;
        b=d4FdDk5hiIuTrE21q5DBn1Nw3lw4HfXlOQ8W3qs0YEGiu6zOPXaYprOJOZ43Nx4fI4
         1cDQqz7jBnbjFJN+6cDPTMbkvqja7r78sdwgsVlYQBXJnBlT81rAc+zryyBGIxvSfrZE
         jwRktNImGd4qgnUC7nGEVblr4kVacf+/upCiKYFrM6C6h7chnZmZ1qYRgYubZjfbMqyK
         7ialt6U9+KzBEeH4oGzT1gtJxMNAxkb8O74rB+gQeLtnGg/WW3RVNqP1bXlQ+DAGJbpT
         v9VUQ+K2r8kntTseiyMA4gt414m+jN5onVwHrILbqkMJ9I0OTozMyBetp0SrvGodCiL2
         6/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+5kIx3Nqmp/S0JC6mzG3k+zdE6V8kopeRci/NenVz0c=;
        b=oQgs4lxoVIR1tt5ByhjO2jk4kRU2mz4vorEHSxkM/a6cv8ce/07PvZXY8jID8NpAik
         kNiz3/FQhkIUSFU3Pw/zG0zZPxawwy62QLLxlnSQjKc5ckBWt7DLJarrFSQ9VECqdyv+
         +8+Is4dROuwOgi25A80q3+TQBgsMiCbun0INxu3aYMuE5hi/cigS83RBsU1Fz4yqBLo4
         ZkxM23L1jvegB+j1yMl8ecPeUY69uUv4FA5MiLoiGHtZwOtlgQdW0RaeL7THJplFkUch
         7lehgTk7gy7dKn6I/LnaFh7OH/Kvzoe7MUyrU7ZwKPp5dHzP7JhoTVwhJA4ZaiWPEpiV
         lgOg==
X-Gm-Message-State: AOAM530ik4yCIGEnChxPTLoKv+ijyL6R7kWcEC0zqAgqy4MBxlN/vRV2
        /Dl3uTKOp7ZazTTD9QcfCR1gaHJVQ3U=
X-Google-Smtp-Source: ABdhPJwgwSEwv9Qi4JewLFXQlIV+BKhvsYKc1fyvfj0HOTQV1qz0XhTNGBZWjGr78CjFv51P0zlESg==
X-Received: by 2002:adf:f101:: with SMTP id r1mr6156326wro.314.1601410522503;
        Tue, 29 Sep 2020 13:15:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n3sm6963140wmn.28.2020.09.29.13.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:15:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35b5a9ff-4133-8301-bb75-4b13f7861c9a@gmail.com>
Date:   Tue, 29 Sep 2020 22:15:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

I want to circle back to a point you raised...

On 9/21/20 4:15 PM, G. Branden Robinson wrote:
> At 2020-09-21T09:49:11+0200, Michael Kerrisk (man-pages) wrote:
>> On Mon, 21 Sep 2020 at 09:32, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>> Indentation of structure definitions, shell session logs, and so on
>>>
>>> When  structure definitions, shell session logs, and so on are included
>>> in running text, indent them by 4 spaces (i.e.,  a  block  enclosed  by
>>> .in +4n and .in), format them using the .EX and EE macros, and surround
>>> them with suitable paragraph markers (either .PP or .IP).  For example:
>>>
>>>                 .PP
>>>                 .in +4n
>>>                 .EX
>>>                 int
>>>                 main(int argc, char *argv[])
>>>                 {
>>>                     return 0;
>>>                 }
>>>                 .EE
>>>                 .in
>>>                 .PP
>>>
>>>
>>> That could be simplified to the following, right?:
>>>
>>>                 .IP
>>>                 .EX
>>>                 int
>>>                 main(int argc, char *argv[])
>>>                 {
>>>                     return 0;
>>>                 }
>>>                 .EE
>>>                 .PP
>>>
>>> Or is there any difference?
>>
>> .IP indents by 8 spaces by default, I think.
> 
> 7 "ens" on nroff devices (like terminals), 7.2n on troff devices.
> 
> An "en" is a traditional typesetting unit of measure, the width of a
> letter "n" in the font being used.  For monospaced fonts, including
> those used in character-cell terminals--barring the employment of CJK
> "fullwidth" code points--this is the same width as a space.
> 
>> Also, .IP won't indent further, if we are already in an area of
>> indented paragraphs.
> 
> This is true.  In my maintenance work on groff's man pages I have
> devised an idiom of calling .RS twice, putting in the desired material,
> and then calling .RE twice.

If I understand what you are saying, then iif we are at an indented
level (.TP, .IP), then we can use your idiom:

.RS
.RS n
...
.RE
.RE


But, this idiom won't work if we're not at an indented level (?).
In other words, at .PP level we should not use .RS/.RS n/.RE/.RE, 
right?

By contrast, ".in +n/.in" works regardless of whether we 
are at an indented level, right? (I'm not saying this recommend
the use of .in; I just want to clarify my understanding.)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
