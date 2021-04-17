Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 656D33631F4
	for <lists+linux-man@lfdr.de>; Sat, 17 Apr 2021 21:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236212AbhDQTUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Apr 2021 15:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235234AbhDQTUm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Apr 2021 15:20:42 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49B02C061574
        for <linux-man@vger.kernel.org>; Sat, 17 Apr 2021 12:20:15 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id y124-20020a1c32820000b029010c93864955so18283732wmy.5
        for <linux-man@vger.kernel.org>; Sat, 17 Apr 2021 12:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lhULlnqcCiqBKtqWy0x+9PH1Y1o28fsrZkIgKUwa8ds=;
        b=p29j6lakjHq8GRbB7M8I0py61UIJf+F9lWv3U8lTnmc9bVMYe+fi44QR9aQ7rFXsWY
         AHCRaSsh+Z3hJ0wV7Grg8c/XS/RxPEo8YhSJdRUAVA5kN+m0HlUxfFQEB32X8wQgIzZe
         vJ6+OgtQ2H4kD2Ehkh74jB83NFYgQoVyBStafoXzYbGafJqdMrSX1ag9DFNaT1fQ7wyp
         JnGzV8O/TqNAWxNTfWVUtYQipfiTzOO9f8DwyN8O5P1gfnTwqIqzH2/zVTRH63p6H0SF
         XJzi89U//4MjX0tfgdLFzmwsus5sAt1eXWFTwZeOWdzTZoH3wtMp4VlX973Xhx8TkS3/
         yEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lhULlnqcCiqBKtqWy0x+9PH1Y1o28fsrZkIgKUwa8ds=;
        b=WrZ7e2mBSpQNg0a4PKJbQ3d7sgkwUCOxVdO7qlo8za1vPFixWSNeeTkvhyttB8M4+y
         LGpjvPZrobH1AqFzWJEWbStx4UB/PkdV0t/cVtxoV8SY2e0v4mGMrd+ZWcVziSuhYHYf
         MwlKZAfCsqW4SIFwxkv1Phv89pc2hum2DWHOr514ykfr3vhVsfbfCmWSH81ezbOFZXL9
         uaceHukkr+DIF7dKWMKTRM2Qw8/vchgcPLSVoWjELc6R5p3vyji3Ke7locJ1+YVLwaCm
         CAT9m8ZjGrCuJXkmST/3Ed6inwxtY9p6zES4BpoHmFCOMV3lCs0jWnb/RQoZy6xoVSgS
         NZCQ==
X-Gm-Message-State: AOAM530MmQXwW0YyClGGhk2qKSOEw09rDYeb7WTo7zeSOqFYLc4xuLiW
        7bZnSg5OtcQTL1ciBlC6WgLAolfxnc8=
X-Google-Smtp-Source: ABdhPJyNMMjSCxLqLQapMBCwxLFfjciDiIshUXkX7zHlSEy+cTTCe/jaDG/AAb+kaNoSLPtIEtL0mQ==
X-Received: by 2002:a1c:f608:: with SMTP id w8mr8977583wmc.44.1618687214036;
        Sat, 17 Apr 2021 12:20:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v4sm12943415wme.14.2021.04.17.12.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 12:20:13 -0700 (PDT)
Subject: Re: AW: umask.1p: Can we add a table for octal and symbolic notation?
To:     Walter Harms <wharms@bfs.de>,
        Utkarsh Singh <utkarsh190601@gmail.com>
References: <878s6cbmm1.fsf@gmail.com>
 <747334490ab842f7b7816bad09a6d2fd@bfs.de>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5702b8d2-165b-b5eb-c84e-1518a5da94a8@gmail.com>
Date:   Sat, 17 Apr 2021 21:20:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <747334490ab842f7b7816bad09a6d2fd@bfs.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter, Utkarsh,

On 4/16/21 5:46 PM, Walter Harms wrote:
> Hello everybody,
> i did no see any answer. 
> 
> How is maintaining the posix-pages organized ? 
Thanks for the ping.

Well, we only have a script to transform the original HTML POSIX manual
pages into actual man pages.  We maintain the script, and apply minor
fixes to the resulting pages when the script fails, but other than that,
the Open Group is responsible for the content; I guess (but I don't know
for sure; Michael will know better) the permission to redistribute the
pages is to redistribute them without changes.

> 
> re,
>  wh
> ________________________________________
> Von: Utkarsh Singh <utkarsh190601@gmail.com>
> Gesendet: Mittwoch, 24. März 2021 16:24
> An: linux-man@vger.kernel.org; alx.manpages@gmail.com; mtk.manpages@gmail.com
> Betreff: umask.1p: Can we add a table for octal and symbolic notation?
> 
> WARNUNG: Diese E-Mail kam von außerhalb der Organisation. Klicken Sie nicht auf Links oder öffnen Sie keine Anhänge, es sei denn, Sie kennen den/die Absender*in und wissen, dass der Inhalt sicher ist.
> 
> 
> Hi,
> 
> The POSIX.1 standard man page for umask is a really well written
> document but lacks some notes for beginners.
> 
> For example comparing umask.1p to <https://en.wikipedia.org/wiki/Umask>
> I really liked how Wikipedia added table for showing octal digits in umask
> command to their corresponding action.
> 
> Can we do a similar thing for umask.1p or how can I contact The Open
> Group to make changes into their manual?

I don't know how to contact the Open Group.  Michael probably knows.  I
tried some time ago, but their website is a bit complicated for me and I
get lost.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
