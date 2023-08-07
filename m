Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CACB477295B
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 17:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbjHGPgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 11:36:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjHGPgG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 11:36:06 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2466C99
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 08:36:04 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-307d58b3efbso3606372f8f.0
        for <linux-man@vger.kernel.org>; Mon, 07 Aug 2023 08:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1691422562; x=1692027362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2JEf3utevydIOODKox1iBOGMEhQeV9e/P6NfeCY+f/Y=;
        b=cPulozFPujEUh4hwmg3d9j618fR7TAwoR5DWsAUf0D5+qW7N+U5s1SJ5R2uz9VJd7t
         yKv3uBAuO9UVFzR8omL0lzOabGA0Y5YlNI4ekRt0B5KI73Z6KHcT/FfdRODka0i3t2on
         r1Mopx47wvTtNrX9p/EFYkoea7Jt9wHzIEe7fDCwWk5JL0bW9pQhZ0POXDQ7lsE4SpAZ
         /uBPCZWON/P4Ov4T7PmF9VR5FU1TqMQ24Sj6ZMLGvSOBxNcaxeS6A7cMjSG0ZHioFiQ9
         hD+tYSb0WwkL7fAWgCv0PfqkIPRpW7eZGi6OAa5tqsqt+Cw2tPlHD/L6VFP1Drgz0nFN
         xP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691422562; x=1692027362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JEf3utevydIOODKox1iBOGMEhQeV9e/P6NfeCY+f/Y=;
        b=hRlB/Rn7FmlUHjz93tDTU1vJYq5RpM1s5TROAA1vzSUXLEvO35YwWh3WVXKl26snMz
         vdh+86pLinwd3kN0DuUNT7BJ+mKpiaycK7XpkAkPQnhgKM+7oR9VX1rEol3IVLKbOLET
         GT5yfQQmh4jTboKEY5KpqZd95TJsiwvWMx1mYSDkicEaS4/2wD3ZDhqVmgx75hbl2lIG
         jylCxTlF275C73XM4d0gvXZk7eodUcUyd0yU3rX2aQrkecxiTvl2/jX0QQJ5aCzskalm
         RCi4vP2iDldBAQEU5bFkUlRlWcRkP7VfHbDB3NFApa12GaDNQMOUyfINEyHTVNKMuQ/I
         Xu1A==
X-Gm-Message-State: AOJu0YxfZr4d1XMI08U8wgCSo5lMWzoQ5o/iizA90i09Ij54spGuKL7W
        CGWj++MCOs5fPMKRPcv/U+9Wo+dKBdJ88B4vAs0=
X-Google-Smtp-Source: AGHT+IEHjT+ZaXv3M5CPBHZz65MC9ajzaqL5xZV8/KDP206cuYwqaIAzCkR+0SejM2VjrFCUW4qlHg==
X-Received: by 2002:adf:e7c7:0:b0:317:50b7:2ce3 with SMTP id e7-20020adfe7c7000000b0031750b72ce3mr6008556wrn.51.1691422562573;
        Mon, 07 Aug 2023 08:36:02 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id y7-20020a05600c364700b003fe1c332810sm15442223wmq.33.2023.08.07.08.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 08:36:02 -0700 (PDT)
Message-ID: <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>
Date:   Mon, 7 Aug 2023 16:36:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
To:     Alejandro Colomar <alx@kernel.org>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
 <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
Content-Language: en-GB
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 07/08/2023 16:13, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On 2023-08-07 15:47, Jonny Grant wrote:
>> Hi Alejhandro
>>
>> Just looking at the COLOPHON
>> https://man7.org/linux/man-pages/man1/hostname.1.html
> 
> ```
> COLOPHON         top
> 
>        This page is part of the net-tools (networking utilities)
>        project.  Information about the project can be found at 
>        ⟨http://net-tools.sourceforge.net/⟩.  If you have a bug report for
>        this manual page, see ⟨http://net-tools.sourceforge.net/⟩.  This
>        page was obtained from the project's upstream Git repository
>        ⟨git://git.code.sf.net/p/net-tools/code⟩ on 2023-06-23.  (At that
>        time, the date of the most recent commit that was found in the
>        repository was 2021-12-12.)  If you discover any rendering
>        problems in this HTML version of the page, or you believe there
>        is a better or more up-to-date source for the page, or you have
>        corrections or improvements to the information in this COLOPHON
>        (which is not part of the original manual page), send a mail to
>        man-pages@man7.org
> ```
> 
>>
>>
>> Noticed that sometimes the '⟨' doesn't render, perhaps it is not in all fonts, would it be possible to use consider using regular '<' and '>' character in the man page?
> 
> That is implemented using man(7)'s UR, which is for URIs.  The source
> code of the manual page doesn't know about the glyph that will be
> produced in your system.  In your system, groff(1) will try to find
> the most appropriate one.  You (or your distributor) can also tweak
> that.  You can for example change it to use ASCII '<' and '>'.
> 
> In man7.org, I guess that you read it correctly from any machine.
> In your systems' pages there's no COLOPHON anymore (I removed it
> in man-pages-6.01).  If you're on an old system, you can tweak it.
> 
> But you'll still see that character in pages that have URIs in them.
> For example, let's consider hier(7):
> 
>     $ grep -n '^\.UR ' man7/hier.7;
>     640:.UR https://refspecs.linuxfoundation.org/fhs.shtml
> 
> which renders as (including the whole section):
> 
> STANDARDS
>        The   Filesystem   Hierarchy   Standard   (FHS),   Version  3.0
>        ⟨https://refspecs.linuxfoundation.org/fhs.shtml⟩,     published
>        March 19, 2015


Fair enough. Some pages even have both. I saw sometime <> is used, as I expected, other times '⟨⟩' . "SEE ALSO"

https://man7.org/linux/man-pages/man1/cp.1.html

But though "COLOPHON" looks like it was appended by a man7 website script with the '⟨⟩' instead, so I thought maybe that could be changed for consistency to <>. There are so many different characters that could be used, but <> is on every keyboard :)
Kind regards, Jonny

>>  Or even just no angle brackets at all, it's not that common to enclose links in <>
> 
> I'm sorry, but that's not an option.  Links /must/ be enclosed in
> some other pair of unambiguous quoting, such as <> or "".  See uri(7):
> 
>    Writing a URI
>        When written, URIs should be placed inside double quotes (e.g.,
>        "http://www.kernel.org"), enclosed  in  angle  brackets  (e.g.,
>        <http://lwn.net>),  or placed on a line by themselves.  A warn‐
>        ing for those who  use  double‐quotes:  never  move  extraneous
>        punctuation  (such as the period ending a sentence or the comma
>        in a list) inside a URI, since this will change  the  value  of
>        the  URI.   Instead, use angle brackets instead, or switch to a
>        quoting system that never includes extraneous characters inside
>        quotation marks.  This latter system, called the ’new’ or ’log‐
>        ical’ quoting system by "Hart’s Rules" and the "Oxford  Dictio‐
>        nary  for  Writers and Editors", is preferred practice in Great
>        Britain and in various  European  languages.   Older  documents
>        suggested  inserting the prefix "URL:" just before the URI, but
>        this form has never caught on.
> 
>        The URI syntax was designed to  be  unambiguous.   However,  as
>        URIs  have  become  commonplace, traditional media (television,
>        radio, newspapers, billboards, etc.) have increasingly used ab‐
>        breviated URI references consisting of only the  authority  and
>        path portions of the identified resource (e.g., <www.w3.org/Ad‐
>        dressing>).   Such  references are primarily intended for human
>        interpretation rather than machine, with  the  assumption  that
>        context‐based  heuristics  are  sufficient  to complete the URI
>        (e.g., hostnames beginning with "www" are likely to have a  URI
>        prefix  of  "http://" and hostnames beginning with "ftp" likely
>        to have a prefix of  "ftp://").   Many  client  implementations
>        heuristically  resolve  these  references.  Such heuristics may
>        change over time, particularly when new schemes are introduced.
>        Since an abbreviated URI has the same syntax as a relative  URL
>        path,  abbreviated URI references cannot be used where relative
>        URIs are permitted, and can be used only when there is  no  de‐
>        fined  base  (such  as in dialog boxes).  Don’t use abbreviated
>        URIs as hypertext links inside a  document;  use  the  standard
>        format as described here.
> 
> Cheers,
> Alex
> 
>>
>> https://man7.org/linux/man-pages/man1/hostname.1.html
>>
>> Kind regards, Jonny
> 
