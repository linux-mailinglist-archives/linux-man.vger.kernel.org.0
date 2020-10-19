Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B61CB292CFD
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 19:40:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726124AbgJSRkN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Oct 2020 13:40:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725952AbgJSRkN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Oct 2020 13:40:13 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39B7CC0613CE
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 10:40:13 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 13so349975wmf.0
        for <linux-man@vger.kernel.org>; Mon, 19 Oct 2020 10:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aCPyec/RkNv0cYoFuRd/oYbc8R+XWTF5Ds+EA4qULig=;
        b=pKB49sqSaOLeiMpGOMJvP4jTn+ByG4RBggplXriHmhFPK5fo1ael3dKhS4xZiqgoOD
         uK9+a5Gzqr5u/eVMwqUYysngrRzVZ7iBENlWybSuRDJT3AZ4aYZkYl3XAiYGqUCRjM5M
         ZTyMwABPV0vL+QJuw1g3hnqD1BSHMp7OSKoo9qmAOET9tkBD+SXeZvQldulKLm5bThZU
         2aMqWWAlCmV+cys9Hj8V3kUDdQ3yY3PzDtTkvx/IxOCKzxbButdmrg1Sptf3zARoZV1B
         sLUEegjWhPgQRs9lJI8cFbs0cmW/NqGKR6nGU+dFCqdGgvME9I7xI14TZaUrgHPDTHaz
         1vsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aCPyec/RkNv0cYoFuRd/oYbc8R+XWTF5Ds+EA4qULig=;
        b=M6pkHaM5SrX/f1QTiYZ3NypPBTtx0TuwEHk3WfzXvgqSiCBLB1OgvSTew9pY7TeV9c
         bbwNU+yzt4Ifp/sO5F3qhgvXoj/z4fnDlyCPqwFFxxiobuc5UhozQhYJ58Bxat1YkTJO
         xk9rkEqfyl+7Q7PEmEtniOCO1IBGbF/ZO+z2ImOBmcKdpuh3EA8IjgTO/Acr92H2rMkp
         1RXEzhP1PwcXn3HBRacgq+yQMhT2q6DBbCWWcPwWITIlTvX8LGS5Qq3UFtxc7eqwa7yz
         +4JWsZ91lH7yuxMZRJqr1p+J75uJffBuqvSzxxHaFcUvUYkhnWXOcMsgSfDAoUJ61bEe
         KCAA==
X-Gm-Message-State: AOAM532s090gm9aWH6ppISNYtEHZRraeMzpeSwYTvp7f+rNHHUE/BlUS
        vSpK/Lt6JkrFZUa9Rx8WwK8OYuV7WWw=
X-Google-Smtp-Source: ABdhPJwJfbo59qqR2epwadZHMuqZ1Z8fw9KpWtP9Q+uqUzijsP9bLMPasowUA5OeBu/ElV1LPqhF4Q==
X-Received: by 2002:a1c:740e:: with SMTP id p14mr403792wmc.34.1603129211965;
        Mon, 19 Oct 2020 10:40:11 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id a15sm502162wrp.90.2020.10.19.10.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 10:40:11 -0700 (PDT)
Subject: \- vs - (Was [Re: [PATCH 2/3] system_data_types.7: Add 'clock_t'])
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <706d3eea-60f8-c208-0cd4-3412ebfef263@gmail.com>
Date:   Mon, 19 Oct 2020 19:40:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-18 07:56, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/17/20 11:37 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> Does that dash (in "real-floating") need to be escaped?
> 
> No.
> 
>> In my terminal I see it correctly,
>> but I've seen you escaping some of them and don't know the reason why.
> 
> See man-pages(7):
> 
>     Real minus character
>         Where a real minus character is required (e.g., for  numbers  such
>         as  -1,  for  man  page cross references such as utf-8(7), or when
>         writing options that have a leading dash, such as in  ls -l),  use
>         the following form in the man page source:
> 
>             \-
> 
>         This guideline applies also to code examples.
> 
> The point is that a real-minux sign is needed to that code snippets
> can be cut and pasted.
> 
>> Should they be escaped always, or is it only sometimes, and when?
> 
> In normal text, no escape is needed.


Hi Michael,

Then, in the following code (taken from printf.3)
the escape is wrong (unneeded) by those guidelines?:

[[
.SH NAME
printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf, vdprintf,
vsprintf, vsnprintf \- formatted output conversion
]]

Thanks,

Alex
