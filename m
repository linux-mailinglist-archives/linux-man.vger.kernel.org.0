Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D187787B35
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 00:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbjHXWHY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Aug 2023 18:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243923AbjHXWHX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Aug 2023 18:07:23 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E251BE2
        for <linux-man@vger.kernel.org>; Thu, 24 Aug 2023 15:07:07 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31c71898109so214659f8f.2
        for <linux-man@vger.kernel.org>; Thu, 24 Aug 2023 15:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692914826; x=1693519626;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DASKa/li088gpEX1WP1cXzYvf31jysy6F6skaH6JKao=;
        b=INAy9U8MMHh/OEkkODPHOURAjgzg3i532rCVfvPg9iDmralkdUL29lxk73X/lCK1T7
         ATweWcqyGzKYiIMdsB0fYtbTZEezljuO0hY0kHF4zlEfKvNAAyuLOr4yLzMEKYJlI/w4
         2adaO3iic8YF58jv7c9O3sqnUqhysNiBIsU4sw5EKtl+09ipjMruVp+n3bKWIpL7hGjO
         /VCS+Wo3M8+9VecpxqYIVgqkLBaDboeWjsIYONqFJ9uwty5KE2afpQEfDJTwDgy46jUo
         juaHRlzY/lBjJtdrKneyX4lR7/RIf9xRef6b37L/W6EltrT5dgxtdwDvl0hODR6WUUhk
         7pCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692914826; x=1693519626;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DASKa/li088gpEX1WP1cXzYvf31jysy6F6skaH6JKao=;
        b=lbx5lCUejomhkaoXRnIRwmyGMYQZ/TFeShU4VpSi2/hnoWdIk2vCBpbepfMgfHHtHd
         TX2bw64Cg99MeflBK+3T+IhRrHB+zjeJcZ8fK0llprkvPNvETxGl3jJquG6k61g+cPm4
         8gpRRIWktixGGjAu7oOqyk5qUicULfNw2yqZ3ldblbkYyoi9uBVbNtsIX+TRilE9MHKQ
         Wb2J//XijSjgsQK4Px28KYuF/kJUGdx9YFiaOyY08L/kiJOSRxOKce8Q4oAEHfbi51Wv
         P/+wUurwe+XR7IjbnNQIJ0hyKqu3ol100qa7nTWHv9XNvv4wNBvM/bm9Bm79Z1xdDsVu
         pWZQ==
X-Gm-Message-State: AOJu0YwoPtmJfnu5zyd5HuSAjS0OVsTPhZOe4hzvMlyBf9sAqUjgTdCy
        92vpkbuI2j2YgLuiTB4kV+eskO8qsIWjc61Eyx8=
X-Google-Smtp-Source: AGHT+IEtnfju1jhosxtUM5rYuV6SAdLh7A5zngGJA99XTJYqR+0Em7ihPxx7Pe2tcsxlb05AY7szbw==
X-Received: by 2002:adf:cf02:0:b0:317:6b0d:1b1 with SMTP id o2-20020adfcf02000000b003176b0d01b1mr13045359wrj.4.1692914825486;
        Thu, 24 Aug 2023 15:07:05 -0700 (PDT)
Received: from [10.96.0.3] ([146.70.48.3])
        by smtp.gmail.com with ESMTPSA id p24-20020a1c7418000000b003fef60005b5sm521982wmc.9.2023.08.24.15.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 15:07:04 -0700 (PDT)
Message-ID: <45b86bac-faeb-b39a-6be4-5c5f1c4bdc6e@gmail.com>
Date:   Thu, 24 Aug 2023 23:07:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] abort.3: Note that the glibc implementation is not
 async-signal-safe
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>,
        Glibc <libc-alpha@sourceware.org>
References: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
 <ZOThpIa46irPESgE@cremorrah>
From:   Gabriel Ravier <gabravier@gmail.com>
In-Reply-To: <ZOThpIa46irPESgE@cremorrah>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/22/23 17:26, Tomáš Golembiovský via Libc-alpha wrote:
> Hi,
>
> gentle reminder that this has not received any attention yet.
I assume this is because there are currently efforts to make glibc's 
implementation async-signal-safe - which would make this proposed note 
quite quickly inaccurate (though the fact it has been 
async-signal-unsafe until now still seems notable enough to be mentioned 
here).
>
> Thanks,
>
>      Tomas
>
> On Wed, Jul 26, 2023 at 01:55:27PM +0200, Tomáš Golembiovský wrote:
>> See https://sourceware.org/bugzilla/show_bug.cgi?id=26275
>>
>> Cc: Carlos O'Donell <carlos@redhat.com>
>> Cc: Glibc <libc-alpha@sourceware.org>
>> Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
>> ---
>>   man3/abort.3         | 6 ++++++
>>   man7/signal-safety.7 | 5 +++++
>>   2 files changed, 11 insertions(+)
>>
>> diff --git a/man3/abort.3 b/man3/abort.3
>> index 0b57e10ed..827d5c9db 100644
>> --- a/man3/abort.3
>> +++ b/man3/abort.3
>> @@ -85,6 +85,12 @@ terminates the process without flushing streams.
>>   POSIX.1 permits either possible behavior, saying that
>>   .BR abort ()
>>   "may include an attempt to effect fclose() on all open streams".
>> +.SH BUGS
>> +The glibc implementation of
>> +.BR abort ()
>> +is not async-signal-safe,
>> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
>> +in violation of the requirements of POSIX.1.
>>   .SH SEE ALSO
>>   .BR gdb (1),
>>   .BR sigaction (2),
>> diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
>> index 3d6ddc7eb..431a22f89 100644
>> --- a/man7/signal-safety.7
>> +++ b/man7/signal-safety.7
>> @@ -335,6 +335,11 @@ The glibc implementation of
>>   is not async-signal-safe because it uses
>>   .BR pthread_mutex_lock (3)
>>   internally.
>> +.IP \[bu]
>> +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
>> +The glibc implementation of
>> +.BR abort (3)
>> +is not async-signal-safe.
>>   .SH SEE ALSO
>>   .BR sigaction (2),
>>   .BR signal (7),
>> -- 
>> 2.41.0
>>

