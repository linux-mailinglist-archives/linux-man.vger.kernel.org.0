Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC39327FE49
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731839AbgJALYz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731134AbgJALYx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:24:53 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E94FFC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:24:52 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z4so5258247wrr.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e5AiOQ1iBflZ/P76rMgvEvbBwF6DV/LYeEL1/9Qd74w=;
        b=oIIICgZW4CH7rWh6/8yGASFpLR9jfPWtjYqurLvGN8JoejTEeUzFL5n1iH7PLCtEEF
         ZFBTFQ0Xy1JfoM9oM6FWrfzcSPqCMveLW5if5mLi67XURVzBL7d+3nF2GFuQODJoR1EX
         JR6DLCBziz48HcM5Wywf0Xb8C0TOqlsuupObbS1704WX5g+iclziOSr1iALea93fOfmC
         C94yA8Sk1h8HWxje2q/GyTixeBeMvsfOewDmRh8EyAC5X1b8+KV0mm/fh0t/xtFAnIbg
         iI4/olaodc03ZlaqrwQQVP4EgSONSVkxWLyUoJcdx/58ltvvJFjw+4xjrJrZsuGhgv1n
         xOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e5AiOQ1iBflZ/P76rMgvEvbBwF6DV/LYeEL1/9Qd74w=;
        b=Vau1VbKdw4VOie+qvELKXPPpNAO6EqXRhkQ/lUpNYxmK5UiAEsV+lqgrtEp7dlYjEe
         IuMkeh8zFNRd5FMiPJlDGQfDA1hAta1ZKId70dAuiutG9a1i88OPniDLWNqrOKH6E5fM
         iRIL1eDfBGiLUrH0xLAlfvBl9QHfHiuYQ+XmMJnqNARDxwHgFD9Mws/lZspMCwFNDAct
         /IsaGEGnPNVmmyheyyJWMhCbeN6KOPUoVGizgn1mBIkvKNAogTc6DW5wcn1P0PPuJzbj
         7oYKqftmuhQKyHx+gETo3s2zapbLrRTkHc1HkPQRd673NvLiPYB2fxTcAqG+/ULqqWki
         BDow==
X-Gm-Message-State: AOAM531Paz5aVYMEM3to76//xfUTvti+Tv5zjdsiNowdloptMeDARmkr
        9QanozGYlajzksZ3x0YJekrxJrzalEVlug==
X-Google-Smtp-Source: ABdhPJwVikdMd1QbEMDclvQwv4AZguQb92VcGMUiGO8PwGs7MzYbFgeNH7AhGYhe66xgHFNmEwbb2w==
X-Received: by 2002:adf:9f10:: with SMTP id l16mr9007574wrf.77.1601551491672;
        Thu, 01 Oct 2020 04:24:51 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v128sm7780099wme.2.2020.10.01.04.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:24:51 -0700 (PDT)
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
 <CAH6eHdS6PQfQN1ZLgNOyco3DyEA9xaHGqsFZmRySMFFA5B2rJA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <193018da-3926-5cd5-c60d-78dadd08b4e0@gmail.com>
Date:   Thu, 1 Oct 2020 13:24:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdS6PQfQN1ZLgNOyco3DyEA9xaHGqsFZmRySMFFA5B2rJA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan,

On 2020-10-01 12:50, Jonathan Wakely wrote:
>> Ok,  I thought that GCC is part of the GNU project, but I don't know how
>> much...
>> I'll use "When using GCC," :)
> 
> It is, but the GNU project is a large organisation, and has nothing to
> say about non-standard types defined by GCC. Just because GCC is part
> of a larger proejct, doesn't mean the entire project defines
> something.


Ok.
>>   >>         Conforming to: GCC 4.6.0 and later.
>>   >
>>   > It doesn't conform to anything, shouldn't this say "This type is a GNU
>>   > extension." or just "This type is an extension." ?
>>
>> That's what I had first: "Conforming to: GCC extension"
>> Then I thought that I could include the version information,
>> so I changed it to that.
>>
>> Maybe "GCC extension (since GCC 4.6.0)" would be better?
> 
> I don't think that information belongs in the Conforming To section at
> all. The version that added the type is nothing to do with
> conformance, because it's an extension and there is nothing to conform
> to.
> 
> Look at 'man clock_gettime' for comparison. It has a VERSIONS section
> and some individual constants are annotated with "(since Linux
> 2.6.12)". That seems more appropriate for annotating individual types
> within this man page which are not universally available.
> 


Thank you!

Updated:

[[
__int128
       A signed integer type of a fixed width of exactly 128 bits.

       When  using  GCC, it is supported only for targets which have an
       integer mode wide enough to hold 128 bits.

       Versions: GCC 4.6.0 and later.

       Conforming to: GCC extension.

       Notes: This type is available without including any header.

       Bugs: It is not possible to express an integer constant of  type
       __int128  in  implementations  where  long long is less than 128
       bits wide.

       See also the intmax_t, intN_t and  unsigned  __int128  types  in
       this page.
]]

Just one more thing:
Would you say "GCC extension" or "GNU extension"?

Thanks,

Alex
