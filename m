Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54A9E37944D
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 18:41:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbhEJQmW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 12:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbhEJQmV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 12:42:21 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A055C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:41:16 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id l2so17306379wrm.9
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 09:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fIjv1rhyeqgvC0sBW6RQn3gOQSXpWk//OuDkq2swnw0=;
        b=SRVYjRkbJ8XPezYtTFON2d+TDCHQthtoIRBCWlTXG2ED6eWR5GiLqbx5sSN3m0VVDG
         j+rp9mr2aQ69UG6AOXn7+G2HlMTTxiY+9ghuQjQRmUvuFWo61Tk076raim3jUvpCr1Ny
         WWpwdhby0Fb23KNQZvdSbDXJysQn1iLCBhXtX2ZxzJJAF8JVawpZIX9aQHEWmYtrzk3+
         MMfITzVqLNSxvlWVvppBmvbzh6UAqIayHNqxaodPbXth7KyN3v2AOT4Dc8U936yCsoW9
         eLLgEw364vi3VmmNP3fuBn+/g5TInAnwdkNCEFMyvZK+/NLKp7Za+l952MpySCmiYWSb
         yyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fIjv1rhyeqgvC0sBW6RQn3gOQSXpWk//OuDkq2swnw0=;
        b=haTB27EyG+mzh87qNRyj/fXc+srLxF7RKIWLph/yg6lIonHiq4PR+wYx5uysRhIPNq
         mrek8XmY//opWi0cPiekPOjks7ks5I6TlN8degCqLDoD5qMdcOlER9wdxfFT7OOcPyJf
         A18PM+Cw3NAag/7q5e2BSdA0uI8IigipOybF0t+KmTeXhUJmhfrIAshvxdKFlG4Qvz4b
         aQVWTTnz+82ryYikfPNKAP8CRnWHxyZXOaQqwQMAoQwT90odZIfRDUe4Qg1m3E9xIIuf
         XmzrqmQ2n81UVYqB9HJZ/mvIfWGd+MPi3yLtqbfrq9QOQVSUL1eCp1akM7U3x3Rcdgvc
         OuZA==
X-Gm-Message-State: AOAM530eYM38u6qobRywyDt1w2rjEIMDpM2/YZle4BdFPOqYmW1SmbE8
        29dlBO6GFzqkdD+7fFckG2qg1mKIC5Q=
X-Google-Smtp-Source: ABdhPJxLa5GlB5kAyVEc3PuK7LxNn036X3e8qvLaUMT7X5JwkxAuY7yXrdlbjgxeVWXjYXF86k9LFg==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr31926406wrj.328.1620664874850;
        Mon, 10 May 2021 09:41:14 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f22sm19889620wmj.42.2021.05.10.09.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 09:41:14 -0700 (PDT)
Subject: Re: [PATCH] Makefile: Use standard features (IMPORTANT: default
 prefix changed)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-33-alx.manpages@gmail.com>
 <9f4a8c0c-ced3-4192-05a0-d126afda3285@gmail.com>
 <745152cf-d533-d090-d3ad-273e5de22ae6@gmail.com>
 <17aa6586-53a7-bd49-9732-1a12eb9e7917@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <df9e8c55-54c8-ec7c-df4b-a82e30dc8078@gmail.com>
Date:   Mon, 10 May 2021 18:41:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <17aa6586-53a7-bd49-9732-1a12eb9e7917@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/10/21 6:33 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 5/10/21 7:13 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> On 5/10/21 1:39 AM, Michael Kerrisk (man-pages) wrote:
>>>> - Specify shebang
>>>
>>> Why? It's not quite obvious to me, and the commit message
>>> should really explain...
[...]
> I think I'll remove it. It is kind of idiosyncratic, leaves the
> reader asking "why?".

Agreed.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
