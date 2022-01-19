Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D07C44940D9
	for <lists+linux-man@lfdr.de>; Wed, 19 Jan 2022 20:28:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240660AbiAST2L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jan 2022 14:28:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240773AbiAST2G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jan 2022 14:28:06 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77598C061574
        for <linux-man@vger.kernel.org>; Wed, 19 Jan 2022 11:28:06 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id e9-20020a05600c4e4900b0034d23cae3f0so7790569wmq.2
        for <linux-man@vger.kernel.org>; Wed, 19 Jan 2022 11:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jHO91BdMq4cLy85xJ1vFE4vjvR1iPbDSzojLCMSCrRg=;
        b=DR7F4w5/WGsjwFlqC+WuGHFmC5iCrBWbItpXTc5gToTXPqVDKSkA4VZVU37JCSMJwN
         apeLer+LkrloaSAtRDEqhYGEN36A0wYM3W4W+5Glr4LPy24AKyL19FmoEM5JDlGBZ12M
         PvkZbBjgvcYZhGg/mPd6PaTM2mWVIuF5RSO/2Yhw/YPuCo0FuF3afhdJ3GK4w2ym9HLV
         Llqvm7B2GXDo/493hTp7R6RmPpB3YglKbz7zjImPRPjA+/TUgMsWj1Jt06miNH6eGoVS
         ZD4VbPP00wI1ZPxP1sIRqKM46KmF+zRSS0V1zCsJwsjctaXi/tNkkMl7r6YAKoMNkzyx
         eHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jHO91BdMq4cLy85xJ1vFE4vjvR1iPbDSzojLCMSCrRg=;
        b=1hvFXe/nfZtpyee23eaaGjgnT5O/oYIHOG88Buo8gqHurHDArhLmjSvedXcBEojEQa
         DMaZ+qP5g2NpOHjFcnqPd9MacZrxKO37cOSmfTwGg4p2rK0ia2o0yKCzGe75fibQZzCg
         ge62NhDz7K9T4ojpglvQw81cW0vZu26SG/pw/AyjeYM3UwoVLgLOX2WAVwp+s8cmF39B
         RwoBE21UP8f1EktnirnDibCgG7E9gfRgXcUjSftbPZQNeUi0PgVrwi+/0kQ2Ty8CzfQD
         9VVYxUCwa8faYh6rbMpeeK/F9usx5bVzKJ7RUhY7sT2eYuQuI65z4ZrR5XBZL1kpHnN5
         ec+g==
X-Gm-Message-State: AOAM530FmPnujzjW3IRktOgXRe70ur3Od8gH1lN/+QNY0u1Jzx2OHkEd
        ZV9zKIy2EhQDFpeswmmrdCU=
X-Google-Smtp-Source: ABdhPJxo7agopvVSN7HnZOrCbr1cyOtzXzOAU0QTqfuy7jkSCdk5epbNviRy6c3bFSa2ABkocgfQ0g==
X-Received: by 2002:a05:600c:1c0c:: with SMTP id j12mr5043893wms.116.1642620485033;
        Wed, 19 Jan 2022 11:28:05 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i6sm413837wma.22.2022.01.19.11.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jan 2022 11:28:04 -0800 (PST)
Message-ID: <6c7390fc-bdef-24df-7974-83d68d840c11@gmail.com>
Date:   Wed, 19 Jan 2022 20:28:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Fwd: getline() manpage typo
Content-Language: en-US
To:     Stefan Rohrbacher <stefan.rohrbacher97@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <CAEKt+7MZuL3-=6HSaM_JjGougVXcsDq=JN0OUXAfTQpT8LDKtg@mail.gmail.com>
 <CAEKt+7P4ViB13mUmZJ1r5CnWeH_N8HGu6-Rj+HR2p684a3SjDg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAEKt+7P4ViB13mUmZJ1r5CnWeH_N8HGu6-Rj+HR2p684a3SjDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stefan,

On 1/19/22 19:53, Stefan Rohrbacher wrote:
> To whom it may concern
> 
> Dear Sir or Madam,
> 
> I am writing to you because I believe I have found a typo in the
> manpage for the getline() function provided by stdio.h.
> I am using version 5.12 on Fedora 35 but it is also present in the
> current version 5.13.
> The typo is  located in the "EXAMPLES" section at the bottom, there
> the variable "nread" in line 10 is of type "ssize_t" and I believe it
> is supposed to be of type "size_t":
> 
>        [...]
>        int
>        main(int argc, char *argv[])
>        {
>            FILE *stream;
>            char *line = NULL;
>            size_t len = 0;
>            ssize_t nread; <-- supposed typo here!
> 
>        [...]

I'm not sure why you believe this.  The prototype for getline(3) is:

       ssize_t getline(char **restrict lineptr, size_t *restrict n,
                       FILE *restrict stream);

which uses 'ssize_t'.  Or checking the glibc sources:

alx@ady2:~/src/gnu/glibc$ grep_glibc_prototype getline
libio/stdio.h:621:
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __wur;

So, if we assign the result of getline(3) to a variable, it should be of
type 'ssize_t'.  After that, we use the variable as input to fwrite(3),
which uses 'size_t', but using that type would be incorrect, since we
would be transforming the error code into a huge positive value, which
would be wrong.  And since non-error 'ssize_t' values are always valid
'size_t' values, there's no problem in passing a 'ssize_t' to a 'size_t'
(after doing the proper error checking).

In general, avoid using unsigned types for things that are not bitfields
(or need modular arithmetic).  Using mistakenly 'ssize_t' instead of
'size_t' is usually not dangerous.  Doing the reverse, using mistakenly
'size_t' instead of 'ssize_t' is _very_ dangerous.  This also applies to
other types with signed and unsigned counterparts.

Anyway, thanks for reporting potential bugs!

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
