Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96380278E78
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 18:30:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729393AbgIYQac (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 12:30:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729392AbgIYQac (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 12:30:32 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19CF5C0613CE;
        Fri, 25 Sep 2020 09:30:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so4301117wrn.0;
        Fri, 25 Sep 2020 09:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4jdg6HluSD0IAXD+xCNl8iJ0heD5lzYJS/e0fwkN9Ko=;
        b=YLBOmdYQC6Ni3ZJrTi0GnJS/nbroYdTPlm+td7OsuC6S5LXI+maw/Kx+k1/A7B6IeE
         hBZlsGuaSthhEQUPZamUD1H5Z2RFQV/vL4tzSzCK2nu+YXtxh5rhjcjS16kays5OhRP1
         XI0IXs+lHy1/euABIl+cnJBTR+1+Ihdv8N2iElCrwN+QfYbAzFk4BfWvB0mCEelbksAj
         MoNiszFEGbX9FWI5jwqrcevtXBqnZ/k9C+p2XFz6qFWnDZ94yr2iJGwWevD9mm5wDxm8
         oiguJtJ28Jtl2PJCXIWQw2plA5UQSYn7yMN1RUkWry+7rws0eZ+eEm6+pAuu+0WZ6eJf
         wu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4jdg6HluSD0IAXD+xCNl8iJ0heD5lzYJS/e0fwkN9Ko=;
        b=S2lvU8mUddEYfY8BPRaU1oZfehD26hRBgsCsRyxBYuTvbugIaGgIgUyM+l44odYphF
         yOTo5V3zz9LIyZhh4wm+4rBYA2UkNGDTpSmRf+zBQmZYrKAulWsPFgSfmmI+rIdB66cn
         7Lyq0uLVAz+bR4Vt7bFTR2hrf4Eiu5V5spZPVj9tw06L5nrahENn1pcoyiOEb6BKtYCm
         giI6v+/q3h8HBus6G4mJNpNmwGds2EtQPlg0yyCS6hwD5i7RWi45FpAAQdsxbFUJ277E
         mF3vHamFVGzySU9HlDnryLZ2RbDjl85fVLtVIbN8NWsqeCbXmCmCQDG9zvLgG8v9SpaM
         LgPg==
X-Gm-Message-State: AOAM531+OgE4BpP9o1p+A7G3TdBX85q7iHvCjwsPr+DDyvBR0m0ywjUU
        7kUZOPZKPS1Yq7F1/8zMWWU=
X-Google-Smtp-Source: ABdhPJwUYMkkzTAcy3o+2DS9BEZxnAyPQJfcTA1zfupyyyVTxpoOPurKoyhF0HOL9AigWj18wG4/2g==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr5353193wrr.402.1601051430708;
        Fri, 25 Sep 2020 09:30:30 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n3sm3439469wmn.28.2020.09.25.09.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 09:30:30 -0700 (PDT)
Subject: Re: [PATCH v2] <sys/param.h>: Add nitems() and snitems() macros
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     libc-alpha@sourceware.org, libc-coord@lists.openwall.com,
        libstdc++@gcc.gnu.org, gcc@gcc.gnu.org,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        fweimer@redhat.com, ville.voutilainen@gmail.com, enh@google.com,
        rusty@rustcorp.com.au
References: <20200922145844.31867-1-colomar.6.4.3@gmail.com>
 <20200925132000.235033-1-colomar.6.4.3@gmail.com>
 <f6257d7d-1cea-b45c-a858-b80bbc1f18b1@gmail.com>
 <20200925144822.GM6061@redhat.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <22c110fe-4c92-e5e6-dc35-dbf00a97cfa2@gmail.com>
Date:   Fri, 25 Sep 2020 18:30:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925144822.GM6061@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonathan,

On 2020-09-25 16:48, Jonathan Wakely wrote:
 > Do you really need to provide snitems?
 >
 > Users can use (ptrdiff_t)nitems if needed, can't they?

They can, but that adds casts in the code,
which makes longer lines that are somewhat harder to read.
To avoid that, users may sometimes omit the cast with possible UB.
BTW, I use

IMO, array indices should be declared as 'ptrdiff_t' always,
and not 'size_t'.  More generically, I use unsigned integer types for two
reasons:  bitwise operations, and library functions that require me to 
do so.

I don't intend to force anyone with my opinion, of course,
but if I were to choose a type for 'nitems()', it would be 'ptrdiff_t'.

However, for legacy reasons people will expect that macro to be unsigned,
so I'd have 'nitems()' unsigned, and then a signed version prefixed with 
an 's'.

Some very interesting links about this topic:

Bjarne Stroustrup (and others) about signed and unsigned integers:
https://www.youtube.com/watch?v=Puio5dly9N8&t=12m56s
https://www.youtube.com/watch?v=Puio5dly9N8&t=42m41s

The two links above are two interesting moments of the same video.

I guess that might be the reason they added std::ssize, BTW.

Google's C++ Style Guide about unsigned integers:
https://google.github.io/styleguide/cppguide.html#Integer_Types

And the most voted StackOverflow answer to the question
'What is the correct type for array indexes in C?':
https://stackoverflow.com/a/3174900/6872717

 >
 > C++ provides std::ssize because there are reasons to want it in
 > generic contexts when using the function on arbitrary container-like
 > objects. But for an array size you know that ptrdiff_t is wide enough
 > to represent the size of any array.>
 > Do you have a use case that requries snitems, or can you assume YAGNI?
 >

I have a few use cases:

1)

int	alx_gnuplot_set_style		(struct Alx_Gnuplot *restrict gnuplot,
					 int style, const char *restrict opt)
{

	if (style < 0  ||  style >= ARRAY_SSIZE(styles))
		return	-1;

	if (alx_strlcpys(gnuplot->style, styles[style],
					ARRAY_SIZE(gnuplot->style), NULL))
		return	-1;
	if (opt)
		return	alx_strbcatf(gnuplot->style, NULL, " %s", opt);
	return	0;

}

[https://github.com/alejandro-colomar/libalx/blob/master/src/extra/plot/setup.c]

2) I have many loops that access arrays; I'll just make up an example of
how I normally access arrays:

void foo(ptrdiff_t nmemb)
{
         int arr[nmemb];

         for (ptrdiff_t i = 0; i < ARRAY_SSIZE(arr); i++)
                 arr[i] = i;
}

Grepping through my code,
I have a similar number of ARRAY_SIZE() and ARRAY_SSIZE().
I could have '#define snitems(arr) ((ptrdiff_t)nitems(arr))' in my projects,
but is it really necessary?


Did I convince you? :-)

Thanks,

Alex

