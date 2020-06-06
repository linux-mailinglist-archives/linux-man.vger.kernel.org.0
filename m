Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7B431F08DE
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 23:16:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728479AbgFFVQe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 17:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728467AbgFFVQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Jun 2020 17:16:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9A11C03E96A
        for <linux-man@vger.kernel.org>; Sat,  6 Jun 2020 14:16:33 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j10so13372767wrw.8
        for <linux-man@vger.kernel.org>; Sat, 06 Jun 2020 14:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RUz2PmfaMuSGYWlQK2O6OMNNPQjKy+XhLbBmvHlK+Tg=;
        b=AIh8ZE1mpVQUmdj+yQ7Y5QFu3ojQrmg6jVZeRMT3l0ItNjSxGFN8aRrdPdWM09RU7E
         +0tCafstKr5piNO4g2gJcXZ4SaVga3fmiAgL+Ei/5V8qMbrChTWXjQUzpf9tiXGKopnH
         9DNQ9PBSeLxssUUg6xOm3osIp5Xz1OXGaEAPa9a7MXtM7VgzwgGguCWn1LOQiotw05J7
         ZBLQQwOiYg1exUT/BtkBlggKQfZ+HMvuovtSwCb9g3Sdd2i+W08VIS7iVTalwIHHiApX
         cTEy5EhHnHZZ2nqYMjMY88W3GWokv1vAvdB/6jmWmwUIWZexLocloKmxbpNrtnZX+T6v
         sNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RUz2PmfaMuSGYWlQK2O6OMNNPQjKy+XhLbBmvHlK+Tg=;
        b=crdHjcp7993rflOShPwrUnc8VP84fiXCZVcS5g8Krx1c56z4TWn9LCRBNPNiJA5XNU
         4FG5FiNUoOVoZWqsOMnDd6rI6rfQI6SeoVxqmcDb2DhFfjzhI2xymVJoWbhqqYYSkwCN
         G73So6QG5Lg0Ln5UzBgC7ZaapxgaCVEMHrc4XCFn4OT4BgiAysvk3kxNMuiIqVE05/u5
         dle/eOTzDSam6AtHy9nDkztXWL9H9jUjQuLUlI8RHSyQ19Q2KX1cjLQaRG9Hhwb1GYcp
         UCU8WTu+71eRu8JpOHlp/ABWjzbYyevV4sBaGDhPiSWMs2XSIdberDdchmbRxjes5h3h
         SvLA==
X-Gm-Message-State: AOAM533VuibU3GFw83OqCx7tiRiDPhBXoFmRhd/cQnIQ883OqyDuGgNv
        5X3et880XUiiEge07mVoUCji2fvsvrU=
X-Google-Smtp-Source: ABdhPJziRcpvyr5undJC/158XWcg09/jxC9fzlLmldJcooMEqwUBfmWgFU4uiaW9Bvjc+H6m4M1DbA==
X-Received: by 2002:a5d:6cce:: with SMTP id c14mr15174882wrc.377.1591478190506;
        Sat, 06 Jun 2020 14:16:30 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id f71sm16160346wmf.22.2020.06.06.14.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2020 14:16:29 -0700 (PDT)
Subject: Re: core(5)
To:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
 <20200606145003.x37j5hywuyn32lpf@jwilk.net>
 <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
 <20200606183210.2tx7rjuryxrnh7d3@jwilk.net>
 <CAKgNAkiqfE4WETiE4VBMGpnDM0twtB0B6pbMyuoMT5+WWrpKvw@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <a504a2ab-32d2-ad39-295f-47a1d5de2f34@jguk.org>
Date:   Sat, 6 Jun 2020 22:16:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiqfE4WETiE4VBMGpnDM0twtB0B6pbMyuoMT5+WWrpKvw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 06/06/2020 20:39, Michael Kerrisk (man-pages) wrote:
> On Sat, 6 Jun 2020 at 20:32, Jakub Wilk <jwilk@jwilk.net> wrote:
>>
>> * Jonny Grant <jg@jguk.org>, 2020-06-06, 16:45:
>>>>> 3) Could i ask to clarify my understanding. For this "The binary
>>>>> being executed by the process does not have read permission enabled."
>>>>> -- is this when the binary permissions are changed after it starts
>>>>> running?
>>>> No, AFAICS the permission check is done when the process starts.
>>> How can the process start if the binary file doesn't have read
>>> permissions enabled?
>>
>> It's a bit weird, but the kernel doesn't mind:
>>
>>     $ cp /bin/ls .
>>     $ chmod a-r ls
>>     $ ./ls -l ls
>>     --wx--x--x 1 jwilk jwilk 138856 Jun  6 20:22 ls
> 
> And from core(5):
> 
>         There are various circumstances in which a core dump file  is  not
>         produced:
>         ...
>         *  The binary being executed by the process  does  not  have  read
>            permission enabled.
> 
> So, the binary can be executed, but not read, and will not do a core
> dump (since that might be readable).
> 
> Thanks,
> 
> Michael

Hi Michael, Jakub,

It sounds like a good security feature. Could that be documented on the man page as the reason?

ie something like this:

*  The binary being executed by the process  does  not  have  read
permission enabled, therefore a core file would reveal information in a readable file, so it cannot be dumped.

Cheers
Jonny
