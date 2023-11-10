Return-Path: <linux-man+bounces-24-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 208957E86A9
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 00:44:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A35B1F20EBE
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 23:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744653C684;
	Fri, 10 Nov 2023 23:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="f3iN9eOY"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BEE3D969
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 23:44:36 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08F8E3C15
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 15:44:34 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4083f61312eso19563055e9.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 15:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699659872; x=1700264672; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bsiM/Frfga0gfj7lsX65hhyovVfXZ9CO9O6ACEnfuTk=;
        b=f3iN9eOYAg+WqpaDOD456A2W49ymtm4y/mPxJsvu+9qvpep7IZ5Fwze9EHidLTo+7A
         woqFetEqZmX3ed2OuExZZEY4qTyeHfJxXpHFxqOx/jFZ3OHYyf8QgcnfLmSe8nlUC5OF
         LGMniR5KV+uHGJ2EQM6X/RDKjzOgwxyrDB2hLCHIoUTY+gRxx8OryVnWE98WTB9MJOjL
         XHBgvSo3e89jj2x8MTBKMj/NvHs/AzoJ9lH+f3Qfy8oRWiHacdPOV4GC00IAgPblo/tv
         n7dITXF0wZfyyNfB5aOXkedtea56zeC/tSxMd7YlS/jBSPb3eZV7kwJxfFixUMbiS5dr
         pn3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699659872; x=1700264672;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bsiM/Frfga0gfj7lsX65hhyovVfXZ9CO9O6ACEnfuTk=;
        b=JjGl36/vtOwZBoZu+9ASFZmLKvROe+fjapMq8bpb5wdXeaPgrDG00ryr4yT09rweGG
         tNDwDppFylTuwGSRffXo8/ocAxU4xXnrSt5mrgu5RekkVuwKDhGvhrJgRUupNcDSGUL2
         wchPBNRFA5NHHmjAIDuQt7o4eo82sNWtsXbQo9LseeW1u/PaWD9XMwwHqY+uMhyIUxwY
         fobEj6+J5c+oZ3WENlIw7vXgLmxtYgQp46vGMhRvw+qoHAZ8Cca20SD4eN0X80C2Q/m/
         vuvBGOjqqANFOuFnJ97yN4o8PNkf+tDdLAC0dw3fHoS6IacUYm7ywAdWQZMAN43Qwo0R
         bn5w==
X-Gm-Message-State: AOJu0Yy84kAdCapOVBfwteCJ4r24Eb0jzq2m+QHD9DRL5+g3LVUZ6Q3f
	F1OkwLhPvWTr0DcbalVlCfMYZCL2etl9npSGqxk=
X-Google-Smtp-Source: AGHT+IEfeaQSUwOAOTIgYER9/wdKRnoUlY6ycX19xihRkDILoRP4F77v42jqH6nfA9EJcaDcLtpqVw==
X-Received: by 2002:a05:600c:4f4a:b0:40a:4432:6b01 with SMTP id m10-20020a05600c4f4a00b0040a44326b01mr540399wmq.20.1699659872338;
        Fri, 10 Nov 2023 15:44:32 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id a17-20020a05600c349100b003fee6e170f9sm667448wmq.45.2023.11.10.15.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 15:44:31 -0800 (PST)
Message-ID: <79020a8a-d499-4040-92e7-ecb63965a4e8@jguk.org>
Date: Fri, 10 Nov 2023 23:44:31 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To: Alejandro Colomar <alx@kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Cc: Matthew House <mattlloydhouse@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
References: <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org> <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu> <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu> <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu> <ZU54MidyZDCdj3FX@debian>
 <ZU6QNhyx6YKFhjC-@debian>
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZU6QNhyx6YKFhjC-@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/11/2023 20:19, Alejandro Colomar wrote:
> Hi Paul,
> 
> On Fri, Nov 10, 2023 at 07:36:33PM +0100, Alejandro Colomar wrote:
>> Hi Paul,
>>
>>
>> On Fri, Nov 10, 2023 at 09:58:42AM -0800, Paul Eggert wrote:
>>> On 2023-11-10 03:05, Alejandro Colomar wrote:
>>>> Hopefully, it won't be so bad in terms of performance.
>>>
>>> It's significantly slower than strncpy for typical use (smallish fixed-size
>>> destination buffers). So just use strncpy for that. It may be bad, but it's
>>> better than the alternatives you've mentioned. You can package strncpy
>>> inside a [[nodiscard]] inline wrapper if you like.
>>>
>>> More importantly, the manual should not push strlcpy as being superior or
>>> being in any way a "fix" for strncpy's problems. strlcpy is worse than
>>> strncpy in important ways and besides - as mentioned in the glibc manual -
>>> neither function is a good choice for string processing.
>>
>> Hmmmm, that sounds convincing.  How about this as a starting point?
> 
> Something slightly better:
> 
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index 3cf4eb371..8ffedae01 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -67,6 +67,88 @@ .SH DESCRIPTION
>  }
>  .EE
>  .in
> +.\"
> +.SS Producing a string in a fixed-width buffer
> +Programs should normally avoid arbitrary string limitations.
> +However, some programs may need to write strings into fixed-width buffers.
> +.P
> +Although this function wasn't designed to produce a string,
> +it can be used with appropriate care for that purpose.
> +There are two main cases where it can be useful:
> +.IP \[bu] 3
> +Copying a string into a new string in a fixed-width buffer,
> +preventing buffer overflow.
> +.IP \[bu]
> +Copying a string into a new string in a fixed-width buffer,
> +with truncation.
> +.P
> +Using
> +.BR strncpy (3)
> +in any of those cases is prone to several classes of bugs,
> +so it is recommended that you write a wrapper function
> +that encloses all the dangers.

Some feedback about last line: "that covers all the risks" is clearer.

> +.TP
> +Copying a string preventing buffer overflow
> +.in +4n
> +.EX
> +[[nodiscard]]
> +inline ssize_t
> +strxcpy(char *restrict dst, const char *restrict src, char dsize)
> +{
> +    char  *p;
> +
> +    if (dsize == 0)
> +        return -1;
> +
> +    p = stpncpy(dst, src, dsize);
> +    if (dst[dsize - 1] != '\0')
> +        return -1;
> +
> +    return p - dst;
> +}
> +.EE
> +.in
> +.P
> +If it returns -1,
> +the contents of
> +.I dst
> +are undefined,
> +and the program should handle the error.
> +.P
> +You could implement a similar function in terms of
> +.BR strlen (3)
> +and
> +.BR memcpy (3),
> +or in terms of
> +.BR strlcpy (3),
> +and it would be simpler,
> +but this implementation is faster.

I suggest to add a little more information, could append "because it accesses less memory".

> +.\"
> +.TP
> +Copying a string with truncation
> +Truncation is almost always a bug.
> +However, in the few cases where it is not a bug,
> +you can use the following function.
> +.in +4n
> +.EX
> +inline ssize_t
> +strtcpy(char *restrict dst, const char *restrict src, char dsize)
> +{
> +    char  *p;
> +
> +    if (dsize == 0)
> +        return -1;
> +
> +    p = stpncpy(dst, src, dsize);
> +    if (dst[dsize - 1] != '\0') {
> +        dst[dsize - 1] = '\0';
> +        p--;
> +    }
> +
> +    return p - dst;
> +}
> +.EE
> +.in
>  .SH RETURN VALUE
>  .TP
>  .BR strncpy ()
> 
> 
> However, note how many branches we need to make a function that handles
> all corner cases.  Is it still faster than strnlen+memcpy?  stpncpy must
> be heavily optimized for that.  Also, strnlen(3) might be optimized out
> by the compiler in many cases, so maybe in real code it would be better
> to use memcpy.  I'd very much like to see some numbers.

A benchmark test would show performance. Can't be that many lines of code in a loop to measure this.

strnlen_s is in the C standard Annex K, but strnlen didn't make it in yet, even C23.

Kind regards
Jonny

