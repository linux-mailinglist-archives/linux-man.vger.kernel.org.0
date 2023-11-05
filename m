Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D55A7E16C7
	for <lists+linux-man@lfdr.de>; Sun,  5 Nov 2023 22:16:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjKEVQc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Nov 2023 16:16:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjKEVQb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Nov 2023 16:16:31 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25FAFC0
        for <linux-man@vger.kernel.org>; Sun,  5 Nov 2023 13:16:28 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32faea0fa1fso1991392f8f.1
        for <linux-man@vger.kernel.org>; Sun, 05 Nov 2023 13:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699218986; x=1699823786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wFMu9pYiHbEk9/lw5O7iJnW733z23hnRYcMoOGIF91M=;
        b=jtyV1O35eoUBuFHN8gxcTZ35TaoJOquiEy+Ed2Qurkqel97TnvDnUFptmHhjnQSVqL
         0AlKOZi8eVagJjC1xcqNuTctFEXDhZjftvPtrfQXHz7Btoz3MfITNlozQ2l3F8GUhyXe
         UuIYmZSltZwz9JPzraWD56nv4rvzes2wQa79CoHphDVhXjz4HxIU27gtsL+h/QKXHZCn
         0P7gzP6N3zHq92alagZV+aBLksaewsaybsUxLzYboMLCemprRGqofw3Reewk3CfPGlEq
         3/nsh+9FZIEjKPMhOohbjmSKxEGl5rFDhUPeP14bHVuP6VKku4UuN6+/KD6XVT1rXHm0
         qnhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699218986; x=1699823786;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wFMu9pYiHbEk9/lw5O7iJnW733z23hnRYcMoOGIF91M=;
        b=iQaDoF1zJm2jCvYg2peh2gTgV8DFK5zTlI7ON4W84lnUaSEzF5gWAz94OyQi15i4hZ
         jqff3ReihiQJHa2Nt32SoRd13vK5Yc8gW88EmXfVXoPMFpCfMeX0vtAFD8DYKL4LUt4u
         FhggfbkbchNDr5fTOtOUT1Mhzj+mRlxGHzGU7W6RojZl/aYD/Sj5mnIIyA//QNRKBS2k
         cPV8zT2Evlmvpma+mlLE+XTASvmB+vKcQjfEA49clFn6YvSAJwzR8abfIoJBr2ysuaM9
         gF1zTz2morSRAzBjJ3qxiguhtbkBdwK3lczuKfNyCUgZF1IipOQ41xMU/4UKfIKvpLJP
         qkHw==
X-Gm-Message-State: AOJu0Yw4Elp03qkyF5/dzzQVVZ589BHCPF8G006Vzh+znZtGyVhuBQDn
        0t0cVHX4W+yUdR3S8XpxceFjnQ==
X-Google-Smtp-Source: AGHT+IEK3NrELiun742Jaf4K2efDCyBvPQmCmdpR90xysJIaExnAq4YYOPpUfwluJWneQtcXH5VVkA==
X-Received: by 2002:a05:6000:400e:b0:32d:d4c5:272b with SMTP id cp14-20020a056000400e00b0032dd4c5272bmr13079399wrb.26.1699218986563;
        Sun, 05 Nov 2023 13:16:26 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id m12-20020a5d56cc000000b003232f167df5sm7585602wrw.108.2023.11.05.13.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Nov 2023 13:16:26 -0800 (PST)
Message-ID: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
Date:   Sun, 5 Nov 2023 21:16:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <ZUacobMq0l_O8gjg@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 04/11/2023 19:33, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sat, Nov 04, 2023 at 11:27:44AM +0000, Jonny Grant wrote:
>> Hello
>> I have a suggestion for strncpy.
>>
>> C23 draft states this caveat for strncpy. 
>>
>> "373) Thus, if there is no null character in the first n characters of the array pointed to by s2, the result will not be null-
>> terminated."
>>
>>
>> https://man7.org/linux/man-pages/man3/strncpy.3.html
>>
>> "If the destination buffer, limited by its size, isn't large
>> enough to hold the copy, the resulting character sequence is
>> truncated. "
> 
> The use of the term "character sequence" instead of "string" isn't
> casual.  A "string" is a sequence of zero or more non-zero characters,
> followed by exactly one NUL.  A "character sequence" is a sequence of
> zero or more non-zero characters, period.
> 
> To be clearer in that regard, the CAVEATS section of the same page says
> this:
> 
> CAVEATS
>      The name of these functions is confusing.  These  functions  pro‐
>      duce   a  null‐padded  character  sequence,  not  a  string  (see
>      string_copying(7)).
> 
> Saying that these functions don't produce a string should warn anyone
> thinking it would.  The page string_copying(7) goes into more detail.
> 
>>
>> How about clarifying this as:
>>
>>
>> "If the destination buffer, limited by its size, isn't large
>> enough to hold the copy, the resulting character sequence is
>> truncated; where there is no null terminating byte in the first n
>> characters the result will not be null terminated. "
> 
> strncpy(3) should !*NEVER*! be used to produce a string.
> I don't think that should be conditional.  Your suggested change could
> induce to the mistake of thinking that strncpy(3) is useful if the size
> of the buffer is enough.  Do not ever use that function for producing
> strings.  Use something else, like strlcpy(3), strcpy(3), or stpecpy(3).
> 
> Cheers,
> Alex
> 
>>
>> Kind regards, Jonny


Michael, what do you think about this documentation suggestion I have made. Interested to hear your opinion.

Should the man page follow the C spec description of the strncpy function and how when it copies the arrays, it may leave the resulting array of characters not terminated, and warn about this pitfall.

C99 had this, and it is still there in latest C23 draft - worth clarifying on strncpy(3)?

"7.21.2.4 The strncpy function"

"269) Thus, if there is no null character in the first n characters of the array pointed to by s2, the result will
not be null-terminated."

Note, I'm not using strncpy myself, it's a documentation clarification proposal.

Kind regards
Jonny
