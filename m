Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8C0F483667
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:51:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233403AbiACRvM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:51:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232374AbiACRvL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:51:11 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B938C061761
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 09:51:11 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id v10-20020a05600c214a00b00345e59928eeso14920331wml.0
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 09:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=hXE8pm1D7/hXVP6HIGyKd9LyTJrLUDe4KDHnqo5bcvw=;
        b=MT3lsG9SfYfo22FNaXOPeur7KwwcPSXSLkj3+67Ywtw83uIRluX96tmfdwGAw5CTst
         ZvtvYkw7+TewZkwr9UuJ4Oyx7NqhjW59xHNcbfMtXQGGucxNH0zKw3nJvRR+64T73HnX
         Gi5yyQ5ayXMg5+dR/MtRYKKB53lKCcvrwMqrh5eyMyW3xT59sofP7Z3Llx5CNgekOZIc
         d70c8KmD6YuyeuA4bNOnYo7oSuZquqyimD/rRKMNOIktx4Gi/O96XWjpkO74lrJm9bPp
         si2TM4C2kcNjj01rr6YC1ebkBBk2hd9etYzUMukGhYD+MG73thYQ7yarDcgbKFWXmwL4
         egKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hXE8pm1D7/hXVP6HIGyKd9LyTJrLUDe4KDHnqo5bcvw=;
        b=tz1IOUZPESoVLK82/EhlL4zL+8a7OOP5hRO9G3jym5XdB9OSOMgUcnyVDZ6qjI6Vmr
         nfS5yWRgctBWrPBTraowK4CYQfq079G++y+zjpF5zkeTDT9y5KePR4NZ75l9PoqR565k
         eMsr2YyYARfUceEqsNFTweUgLubyF2gSSveqkqMtzTZtFp13fxy2i8toNgzDea8489cH
         +tktDv6VMiYNHKnCK6biSDGsDIhgfkh2g26J7EhH3JGO66SwzNJuYl6JGT8zbzJ0LkkK
         tj8z/hklWOxBMPwHk56WFOT0EyNYCe6wwq6m+kYvARwu96urRO+2GbS03u6C2EUiOVeZ
         xyjQ==
X-Gm-Message-State: AOAM530K1x6TmYYe05bdL7EcJFGdXgXKpkC4JmgnXv7geUY72Pp1C0B0
        tqjAfm7v8i+UFh7dFsjh5X+rgvdLIYY=
X-Google-Smtp-Source: ABdhPJyRaqtnyroRQvF0gZNxap8VDPhZ0OFZHZVRpLEhdq32+EEIEX3ZzIZK8FiNEoqW4gc6My7PjQ==
X-Received: by 2002:a05:600c:c6:: with SMTP id u6mr38823064wmm.8.1641232269393;
        Mon, 03 Jan 2022 09:51:09 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y3sm35464245wrq.12.2022.01.03.09.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 09:51:09 -0800 (PST)
Message-ID: <06c21be8-da4e-d4a7-c40c-c435ce0ad354@gmail.com>
Date:   Mon, 3 Jan 2022 18:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v2 2/4] tee.2: use proper types in example
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
 <be236ff0a523fb44c3b88cd9d26c1c1255714725.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
 <90821738-61de-7993-8382-718d1caf8bbf@gmail.com>
 <20220103173523.jge6gyisl43khm4n@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220103173523.jge6gyisl43khm4n@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/3/22 18:35, наб wrote:
> On Mon, Jan 03, 2022 at 06:27:36PM +0100, Alejandro Colomar (man-pages) wrote:
>> On 1/3/22 18:03, наб wrote:
>>> diff --git a/man2/tee.2 b/man2/tee.2
>>> index 14a927c93..9d83ee982 100644
>>> --- a/man2/tee.2
>>> +++ b/man2/tee.2
>>> @@ -183,7 +183,6 @@ main(int argc, char *argv[])
>>>             */
>>>            len = tee(STDIN_FILENO, STDOUT_FILENO,
>>>                      INT_MAX, SPLICE_F_NONBLOCK);
>>> -
>> I removed this change, since I guessed it was a rebase mistake.
> Not really, I left it in deliberately, for consistency:
> neither fd= nor slen= have a blank line after.

Ahh, okay.

I reapplied your patch, to get this change, and renamed it to ffix.

Thanks,

Alex

P.S.: I thought the C.UTF-8 locale might show your name better, but it 
didn't; I just get '?'s.

> 
> наб

Author: <D0><BD><D0><B0><D0><B1> <nabijaczleweli@nabijaczleweli.xyz>
Date:   Mon Jan 3 18:03:32 2022 +0100

     tee.2: ffix

     Signed-off-by: Ahelenia Ziemia<C5><84>ska 
<nabijaczleweli@nabijaczleweli.xyz>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man2/tee.2 b/man2/tee.2
index cd7c2d72d..15db551b9 100644
--- a/man2/tee.2
+++ b/man2/tee.2
@@ -183,7 +183,6 @@ main(int argc, char *argv[])
           */
          len = tee(STDIN_FILENO, STDOUT_FILENO,
                    INT_MAX, SPLICE_F_NONBLOCK);
-
          if (len < 0) {
              if (errno == EAGAIN)
                  continue;


-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
