Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B0BD2B0FEC
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 22:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727139AbgKLVRi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 16:17:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726337AbgKLVRi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 16:17:38 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A88BC0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:17:38 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 23so6951079wmg.1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VrOtSVQJv0gakBnIZW+Ni1a09HwrKxbVZ4uCT/akGHA=;
        b=DFVbqavWShR8p+cI6JnQ5ppgYvOOu/sHhwciLMWmQ92rREoT4BfQ2bfFzgueKpS/bd
         c/8QjQUl4rxXEj9qmHdOYAFtswd3sgv+V/VtDV9gd/PzDizoBvVkm9vv/7rFE8obW78Q
         5fZWcUVNIFdX4/YUbeJJc0kChSj4w0npN0FHXvEO8KyaAhdbiGx4zBMOalgvV9K/mFGX
         L/n23uyZSkx0rD2nR+Kr3Sw2xffGXD5v1nue16re382x66n9njxqBYETiKeknptlx9C/
         sw305Jx91WHeJ14nVXikxa12WWn5PrMPEV2QLNg2CdhwoPE1G1+YKfthKtD5nV1kJrB0
         Ot5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VrOtSVQJv0gakBnIZW+Ni1a09HwrKxbVZ4uCT/akGHA=;
        b=BrCDkpFlDCyq5zHwCiBXxIEUL3ZwIKfj0UKbA3B1wHIJnHq0POy09W63Fbhjnw3wlm
         x7izDpIN3wyxGXiUD2b2Jc89YjKDW/7G4L+SaZSiwvwcqT5htXFeEh0287bZPI6/5bzW
         GWu89KHfFYzdqHveVANpygV0Sqt6zbbcTKmt+U6Dmp3fneZmxcyzCoNh51FgPo8PqnsM
         tUjB0okP6bYuZI7MBGluqdGSRjXkMwpnFfYOK06N+YeWjvfRyw4CMUPGa9oYbsKGSWqP
         2M2ZRbTXLcWasXzJN+SvLTqyRABisGQcnOZ03yGa+vCiazonKuyoGmYgB79Jz6mM8qJR
         qbCQ==
X-Gm-Message-State: AOAM5317p+MttSWcdn/u9mfI/kl33vGp79aRuoIBlbCODtLvFkklTBIA
        W+OrMgemRFnMmyHB0v0tZy1Gq6DjKHiUiw==
X-Google-Smtp-Source: ABdhPJzEWdJg+FYtAeVA41b5XVGb6tZDc4xmMDsM48hZqJJK89DpsYs42Amu8sXgeutP8C2xRUyPrg==
X-Received: by 2002:a05:600c:2202:: with SMTP id z2mr1494209wml.115.1605215855941;
        Thu, 12 Nov 2020 13:17:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id k1sm4336137wrp.23.2020.11.12.13.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:17:35 -0800 (PST)
Subject: Re: Format inline code
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
Date:   Thu, 12 Nov 2020 22:17:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,


After the discovery I made today (See thread '.RS':
https://lore.kernel.org/linux-man/eaee2c6e-cbb7-94b2-f6c4-9039d184e129@gmail.com/T/),

[.RS 4/.RE] is not an option.
It simply doesn't work in some contexts.

I propose using the same as before:

[[
.in +4n
.EX
// Code
.EE
.in
]]

There are some cases using [.nf/.fi] instead of [.EX/.EE].
I would replace those by [.EX/.EE].

However, I would still do the change [.IP] -> [(.RS + .PP)/.RE],
so almost always you'll have [.PP] surrounding code examples,
and you'll only see [.IP] when it is really needed:
in cases where you use its argument ([.IP * n]).
In those cases, you should also use [.IP] for the code
(see perf_event_open.2:1426):

[[
.IP * 2
If
.B PERF_FORMAT_GROUP
was specified to allow reading all events in a group at once:
.IP
.in +4n
.EX
struct read_format {
    u64 nr;            /* The number of events */
    u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
    u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
    struct {
        u64 value;     /* The value of the event */
        u64 id;        /* if PERF_FORMAT_ID */
    } values[nr];
};
.EE
.in
.IP *
If
.B PERF_FORMAT_GROUP
was
.I not
specified:
.IP
.in +4n
.EX
struct read_format {
    u64 value;         /* The value of the event */
    u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
    u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
    u64 id;            /* if PERF_FORMAT_ID */
};
.EE
.in
]]

This way, inline code, and only inline code, will use [.in],
which will help grepping if it is ever needed.


Your thoughts?


Thanks,

Alex
