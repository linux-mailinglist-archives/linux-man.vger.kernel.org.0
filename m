Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93DDD29A520
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 08:02:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387707AbgJ0HCf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 03:02:35 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:39094 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387603AbgJ0HCf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 03:02:35 -0400
Received: by mail-wr1-f65.google.com with SMTP id y12so604165wrp.6
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 00:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dIeWlTWThJfHgpEG3vO9AT5C+NsCbTXNqMtmoYstENE=;
        b=Xr40A1Nu7qc9dztQVLlIxDNZUtKfub09+jRl4oLOq4k9MtaaxeCh6yazlNXkYmx52G
         MAlBzgv/3WaYsqQNO4jZ6OBRQG4JGg2CtMiS7Y2S4P79U1F7idnsZbogBnJIz9b75TP8
         MLsv9n50Q2Ho5o5wr+Xn6VZO+SXwGPhof3FVYutIvcEjsm4c21UhDvdsDaY4ZDeDVrnb
         oP/tByxQgKaet8epAX/UlZhtyOSzImnvG95Wwco/YvS262CbqBuHA09kcWZPamuEYXMe
         EbIpk0Kvm5A6MbhUtreLFrYSJiYmO/ATO8aoi91o0wajFkA6Q3VSW8Z6UeQ+EDUOMUhd
         X7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dIeWlTWThJfHgpEG3vO9AT5C+NsCbTXNqMtmoYstENE=;
        b=XZ3vYrNkxf30oL/+UQAI1hNahie80MySYcRjWu8ZxETT2COr9QhKJYB0f6ICut/esC
         9njq4LUT2L/sPtODVaszN56L8UFj8MaqEeHfK3uzauvggYqPZMKv97PL8e3cVGEwYX6T
         Dy+wsutsTvMMInU0VhidJyB6nMVZ4sBJqeL7IIuOQSyw8kYEeqL12EoWktzBXQP4RYt6
         c07ClPEmbHjM2uFsDS75GPwQqXxvZ2O5u+m0jq+GI0wbXKDwyXsETbDBgFiJwFiEvPQI
         au/1Wz6itka32sl+lSj5HsIwYceQ6RB0DF0GuNPGBYsATUGz+BSQMEpunqCFSIGYX/MD
         7R2Q==
X-Gm-Message-State: AOAM532WAfmag2mFelkMv8opNLIgzrItJPABaOliDG24/gxJg6paCS4C
        WglTZCjeTCts0ltLwr5u/Fw=
X-Google-Smtp-Source: ABdhPJyCpu7dkYc7DTDlSEAvT+pCMp0yGSg6JZAGMQdSZguJuTYpKrZ2nGBz5dcH4f6qvepD0NetEw==
X-Received: by 2002:adf:eac6:: with SMTP id o6mr1020680wrn.117.1603782153354;
        Tue, 27 Oct 2020 00:02:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id c130sm602085wma.1.2020.10.27.00.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 00:02:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        musl@lists.openwall.com, ericonr@disroot.org
Subject: Re: [PATCH v3] posix_fallocate.3: add EOPNOTSUPP error code.
To:     =?UTF-8?Q?=c3=89rico_Rolim?= <erico.erc@gmail.com>
References: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
 <20200913141808.GM3265@brightrain.aerifal.cx>
 <CAFDeuWM5Bu1Hq7FFUBvoxHJfEUTD=FDK35aJUQEYFGyCnx37NQ@mail.gmail.com>
 <CAFDeuWNrOMC=qrTLXdRO01ZUrBCKttn7+TWHDqr9hkTWS0QiyA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7f4ad844-7552-64e4-0206-432f2bc938f6@gmail.com>
Date:   Tue, 27 Oct 2020 08:02:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAFDeuWNrOMC=qrTLXdRO01ZUrBCKttn7+TWHDqr9hkTWS0QiyA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Éric,

On 10/27/20 12:21 AM, Érico Rolim wrote:
> As can be seen in
> 
> https://git.musl-libc.org/cgit/musl/tree/src/fcntl/posix_fallocate.c?id=73cc775bee53300c7cf759f37580220b18ac13d3
> 
> musl libc returns the syscall's errors directly, which means it doesn't
> perform the same emulation as glibc, and can return EOPNOTSUPP to an
> application, which isnt't listed in ERRORS.

Thanks. Patch applied.

(By the way, your mailer is wrapping text in the patch;
I manually fixed.)

Thanks,

Michael

> ---
> 
> Made a small correction to the formatting for fd.
> 
>  man3/posix_fallocate.3 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man3/posix_fallocate.3 b/man3/posix_fallocate.3
> index 3152dd54f..8ea37261a 100644
> --- a/man3/posix_fallocate.3
> +++ b/man3/posix_fallocate.3
> @@ -98,6 +98,13 @@ There is not enough space left on the device
> containing the file
>  referred to by
>  .IR fd .
>  .TP
> +.B EOPNOTSUPP
> +The filesystem containing the file referred to by
> +.I fd
> +does not support this operation.
> +This error code can be returned by libc's that don't perform the
> +emulation shown in NOTES, such as musl libc.
> +.TP
>  .B ESPIPE
>  .I fd
>  refers to a pipe.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
