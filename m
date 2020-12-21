Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA7D42E010F
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 20:35:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgLUTdt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 14:33:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725807AbgLUTdt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 14:33:49 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E428C0613D6;
        Mon, 21 Dec 2020 11:33:08 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id a12so12264979wrv.8;
        Mon, 21 Dec 2020 11:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H/z8zMeT4cBZ14P1v2RM6IB2IKdsLvXJBzG8BIyhwPY=;
        b=sEjdKJksGvjeIyln0e1VSqUK7VKUWfi63w0cgEsmLGuLThRhQFa3okcHZrxubADj5r
         tWrCjI1bVDNPX01TGyH01BKFcvMhO/nisbLkXe82T3BZq3zA27vPPVxBISb9V9AswW2l
         JLgrigJVMGxjdzQ6u764Ma0KtcyZIEH5WmWh8LnKu2s8GsA2fW89kMFNKSXaVaQk5SUD
         h8ipEudch++JOw56c+F/raG2BDWnsae1hjEnjLGn4DP81iqebxKLL9HXpcOLG9EYjjZ6
         OlSxTtkA4OSLRHu+qlJ2cdvZEtJKNGfMiRkgilwZ1wzKKTKlsViwhTvXNAlEjzoMLfwC
         7a/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H/z8zMeT4cBZ14P1v2RM6IB2IKdsLvXJBzG8BIyhwPY=;
        b=ouNTz6Pjrx8oM2dLbTM2JVpNHEYBnLYPw4NR2QPUq1ipVmcp2gD+qF9BSLnipZX6sG
         eMRvBOAqsjD7N8maI1aJurRQZrwIyjl+VnlotVE4hPtMju9jcyUQMfgyMSHHgQ+ebTkP
         1OfArqvGbsAQkWYeiqsQSEVb1+Bepv5+GShppW3z/i8euoyndhhyHPpWPP7jnUAFaJU2
         gBj7nxJrAJKoh/5pHGTYNOpJPaNt538LVLVvH2d1AzQ5x4V2hMmGNJDmPDxJMAVT099x
         Cp9DuQbnXY78be5y4Bfsx2wT4oPnTtic9zu8CSBpFLOac1rUypTgROf90pcmQENOywhi
         dL0Q==
X-Gm-Message-State: AOAM531ouZeJ524ft3owURIXuw8ORf8vyXyYyVUo/7DCL16b+pONs6WS
        keAb+Mvsy5eNuZCg58sFjbnXmWfUIfc=
X-Google-Smtp-Source: ABdhPJyzy4c0sHB8vuSS3x0pf+C9mZhwAqOX6bICkWD7w7WQVigeK1wi72x1wOgFJuSulZxL2y6GeQ==
X-Received: by 2002:a5d:404b:: with SMTP id w11mr20793163wrp.14.1608579187356;
        Mon, 21 Dec 2020 11:33:07 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o7sm28330084wrw.62.2020.12.21.11.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 11:33:06 -0800 (PST)
Subject: Re: [PATCH v3] close_range.2: new page documenting close_range(2)
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
References: <20201218165815.6963-1-steve@sk2.org>
 <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
 <20201221202425.168fdaaf@heffalump.sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cd13ed9f-4156-d76d-c485-9d67ea610ce2@gmail.com>
Date:   Mon, 21 Dec 2020 20:33:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201221202425.168fdaaf@heffalump.sk2.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 12/21/20 8:24 PM, Stephen Kitt wrote:
> Hi Alex,
>
> On Sat, 19 Dec 2020 15:00:00 +0100, "Alejandro Colomar (man-pages)"
> <alx.manpages@gmail.com> wrote:
>> On 12/18/20 5:58 PM, Stephen Kitt wrote:
> [...]
>>> +This program executes the command given on its command-line after
>>> +opening the files listed after the command,
>>> +and then using
>>
>> s/using/uses/
>
> It’s the same form as “opening”: “after opening ... and then using”. The
> overall sequence is “open”, “close_range”, “execve”.
>
> Regards,
>
> Stephen
>


Ahhh.  Then I think the comma is misleading.
What about the following?:


On 12/18/20 5:58 PM, Stephen Kitt wrote:
> +.PP
> +This program executes the command given on its command-line after
> +opening the files listed after the command,
> +and then using
> +.B close_range
> +to close them:

This program executes the command given on its command line,
after opening the files listed after the command
and then using *close_range()* to close them:


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
