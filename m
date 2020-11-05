Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC5922A7B7F
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 11:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725998AbgKEKTQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 05:19:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725827AbgKEKTP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 05:19:15 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5991CC0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 02:19:15 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id k18so1018820wmj.5
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 02:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=RWCamRY/oOg9ryzhPmA5KdmBSEcajC/Y08VvUMMvNok=;
        b=FcQRQS/1mDlY8hFeHFMd0gUbSSmcMi+hfCgshzUzhH1iX9deRbcolepaUyAx4P+jWe
         3ZdKLSkpahQiCkHXUSIaoH4tI10tIKgOVZbMRbTxlr8BqQZMzjzO/tK9FvGNCKhRa+yR
         AE2hUMHBHEwgemKXI7QB3+mXgYFEC7jQWoEpdXNEOiGcsxugIwaTDYkmlvqHHKuL2zs3
         0lgCJeM49omkoKz0MXGj3E4n4aeXFa9As9qzEAmgOX1dlOAjcM9RSX4h3aO1g5gmp503
         sE31z09DLawigZa7SHR3Ivp9Oumpkr1pr5kq1t1OxQSEglB83e15jx/GZNR3mRWTYCRu
         Kqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=RWCamRY/oOg9ryzhPmA5KdmBSEcajC/Y08VvUMMvNok=;
        b=h7G/0kBicBw20LwMB2BUxRqWlRnia/AVfMjITTekT5mdqXc6A4L3EFc11ghIiVxtUZ
         /4fpSm39v6hv3fodbGex9zxXml/8S4FB8ZpFE1cNIUToXzOUHlCfIJKb2QKtmO6I6JWv
         qXDvKuIWwCaFNyOO/hmK20NHIyd02KoJ8vZPxFr7zksX6kxpZoYfNj4vlBFj+BdP0F1o
         f6q4Xzxyg2HNRXmC0IL7o7beHwcWe/YtyKK1dwnEj8k2NxKaClTGsh3066nhOFHhJW/m
         wm7COoVsx88vX/zjrSlW8J2tcsuQSFa6iV/8b0sw8LHd5cSFv6+sNT+Sb9blGehWOnC9
         XM1g==
X-Gm-Message-State: AOAM532XnuBPfZ1dIgJccsC0LPz+k139oFaWdwPhhjj6CAfJwKefHvCP
        uS8iYSwUjO67b0FVa+UblZ7zqvmsA2M=
X-Google-Smtp-Source: ABdhPJwuGA9LVAP5FLFooW7bj916OC2tzktXhXvbOEqbDBHl9pA77+devVrP64A+ZpY9njuDKZFfmw==
X-Received: by 2002:a7b:cbc8:: with SMTP id n8mr1895876wmi.124.1604571553028;
        Thu, 05 Nov 2020 02:19:13 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n9sm1797300wmd.4.2020.11.05.02.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 02:19:12 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: Format inline code
Message-ID: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
Date:   Thu, 5 Nov 2020 11:19:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Michael,

I tried to reply to the old thread where we talked about it,
but I couldn't find it.
I think it was in a thread of some patch for system_data_types,
so I didn't know how to filter for it :/

So let's start a clean thread for that.

Currently, man-pages(7) proposes:

=================
.PP
.in +4n
.EX
int
main(int argc, char *argv[])
{
     return 0;
}
.EE
.in
.PP
=================

I think you said that it doesn't always work.

I don't agree with that:
If you correctly use .RS/.RE instead of misusing .IP,
I think it will work always.

I mean, if you have a block that is indented,
I propose to use .RS/.RE for the whole block,
instead of .IP for every paragraph
(if you use .IP, then yes,
that construct needs to be modified to use it too).
An implementation of what I mean is system_data_types.7.

If you think it would still fail in some scenario,
please show me.

Another problem of that construct is that it uses naked .in.
I agree with it.

How about the following?:

=================
.PP
.RS +4n
.EX
int
main(int argc, char *argv[])
{
     return 0;
}
.EE
.RE
.PP
=================

I don't know if that syntax is correct,
but I tried it, and it seems to work.

AFAIK, it will _always_ work
as long as blocks are correctly indented using .RS/.RE,
and it uses man macros only.

Any thoughts?


Thanks,

Alex
