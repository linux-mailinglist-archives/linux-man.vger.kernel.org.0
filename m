Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D54E495781
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 08:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729260AbfHTGo0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 02:44:26 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40853 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729346AbfHTGo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Aug 2019 02:44:26 -0400
Received: by mail-ed1-f65.google.com with SMTP id h8so5103636edv.7;
        Mon, 19 Aug 2019 23:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oEFTgpEWSDjHqddSma5LxHa8wGnGSmp4SJ4iq5CNJgU=;
        b=DGGTM8udoc0JbVyPlGZUXA6tKFZ0rdpDngFbUGMp+k0NQLFLxBHqrKwcOd5MPYY/rN
         kueBzwM+KcBznDkI93gg9pbx1OQQ15Ql7JA5kVbjTeHGbE5wTfLddshqwkwnFXfBGwY/
         Lz9S9d97nywfhTwKdOxeLWNVH6Ou6YhXiJmnJMTF4Xi33heP80uUDe8b7DlElSORotwX
         lOzwFbGO3XGLkiCG/hk8Nh0gWKbjlwdUPT1VXe49ongDXUOZ6dTm4f/2oM3XQyOGL4Fk
         pKzgRIe045mORV6/5C6EtnI7tmV/CyiNbZMYEsRCWAAufgfp9kTk13ea5/a7u4YfPDup
         fJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oEFTgpEWSDjHqddSma5LxHa8wGnGSmp4SJ4iq5CNJgU=;
        b=XzO60+duWRKzwvteR4HscnDoM3csNWpN9vBj5RlORcmq+vnADBU2anAl7yCvd2B983
         0OXJtmY6RmlPSyS+klGIrgSsTu1SoBCuTFEzTnOLy6m2TQ7KJh8PBP9P/7LSeoX3z5+T
         QVGe1LbjGROmUELARpbt69pHuUREUzQINZhTuOXsSmXuXoT3i40+tEhiZFXLeP+wK6CA
         2ni/YzfI1QaQzRCGAxOoZzLKcxFAEcXVe+8U8fzq4TNnBQ8IhL6FjeflQO/BRnoG2BVf
         B7vNbGbzitiqKzX4DqWSg9KPTya0nl2pZX41SwXN0aH0avTRGCyMAmznXnq7ffEvwst6
         6lZg==
X-Gm-Message-State: APjAAAXhgxjTXo+Pd/V09WnW1kzXxTp9Ptz6Pg/g92YPZnF9cYTYXYKO
        XtlFf4U/B/YeWUvE9lt72/M=
X-Google-Smtp-Source: APXvYqxYq5t08yjIVlZoNJGzExoUHv32TI8jr7Q049RHJIrNQZ1JmjbjC6rayGBcRRVAxHbjBLSfkQ==
X-Received: by 2002:a17:906:3fc7:: with SMTP id k7mr20514533ejj.208.1566283464563;
        Mon, 19 Aug 2019 23:44:24 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.61])
        by smtp.gmail.com with ESMTPSA id qc9sm2430904ejb.47.2019.08.19.23.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 23:44:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-aio-owner@vger.kernel.org,
        Damir Shaikhutdinov <Damir.Shaikhutdinov@opensynergy.com>
Subject: Re: [PATCH] io_submit.2: Fix kernel version numbers for
 'aio_rw_flags' flags
To:     Matti Moell <Matti.Moell@opensynergy.com>
References: <0718906b-181c-e04c-288a-e6097e6d7e89@opensynergy.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b91eb798-27da-a9ac-8ea0-3142a489840b@gmail.com>
Date:   Tue, 20 Aug 2019 08:44:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0718906b-181c-e04c-288a-e6097e6d7e89@opensynergy.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matti,

On 8/9/19 8:20 PM, Matti Moell wrote:
> Even though the RFW_* flags were first introduced in Linux 4.6, they
> could not be used with aio until 4.12 where the aio_rw_flags field was
> added to struct iocb (9830f4be159b "fs: Use RWF_* flags for AIO
> operations"). Correct the version for each flag.
> 
> Fixes: 2f72816f8680 ("io_submit.2: Add kernel version numbers for various 'aio_rw_flags' flags")
> Signed-off-by: Matti Möll <Matti.Moell@opensynergy.com>
> 
> ---
>   man2/io_submit.2 | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/io_submit.2 b/man2/io_submit.2
> index ed98da46c999..49dcbd46169d 100644
> --- a/man2/io_submit.2
> +++ b/man2/io_submit.2
> @@ -91,7 +91,7 @@ The
>   field is ignored.
>   The file offset is not changed.
>   .TP
> -.BR RWF_DSYNC " (since Linux 4.7)"
> +.BR RWF_DSYNC " (since Linux 4.12)"
>   Write operation complete according to requirement of
>   synchronized I/O data integrity.
>   See the description of the flag of the same name in
> @@ -101,7 +101,7 @@ as well the description of
>   in
>   .BR open (2).
>   .TP
> -.BR RWF_HIPRI " (since Linux 4.6)"
> +.BR RWF_HIPRI " (since Linux 4.12)"
>   High priority request, poll if possible
>   .TP
>   .BR RWF_NOWAIT " (since Linux 4.14)"
> @@ -118,7 +118,7 @@ field of the
>   structure (see
>   .BR io_getevents (2)).
>   .TP
> -.BR RWF_SYNC " (since Linux 4.7)"
> +.BR RWF_SYNC " (since Linux 4.12)"
>   Write operation complete according to requirement of
>   synchronized I/O file integrity.
>   See the description of the flag of the same name in
> 

Is the version number you propose correct? When I check:

$ git describe --contains 9830f4be159b
v4.13-rc1~70^2~30

So, should be 4.13, no?

Thanks,

Michael
