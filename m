Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAF26483518
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 17:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234918AbiACQuA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 11:50:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234836AbiACQtx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 11:49:53 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D49C061784
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 08:49:52 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id r17so70969928wrc.3
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 08:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5YOa7Jnsn02ANQK/+OeCCURoQIOQnmGBrLKWobn/Jgo=;
        b=NVLrcTkqL311F9Ehz2sInrbk3BAD1W+KiITJ0H6EA4d8cqVzIquwPVY+xswLhoLsn4
         PiD4wm6Mi2a5QmPNwcHhkpgjYE/HVNauPL9TjiptZTU3yxQg4UBobxulBGnVqfDS9N0k
         ElyEeukTJo7DIcUl5WSt8czvO1rGq5Zi+s6ak2/6a1NBtQfipM0foy19IFQQ9NE9Vx/4
         ja6K5rmsnptgdc/O/0Yubiz7Dbgj4Fft1sMh8hTzCCRoP6Pxmf4TtSHXTLyT1q+ifgen
         g2sCEZ4ewa47YECyyJAr3ox8JGIt1pCIsyoTtOoC54LIre5nDAF+5MH/8os4zgmP23H+
         LUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5YOa7Jnsn02ANQK/+OeCCURoQIOQnmGBrLKWobn/Jgo=;
        b=wDcXSKaz6EWk+iq7eKKhsfCasmYVtHxAacD9U/q1bPPABvFayuwVIFw99oxj7fvA98
         7LnAghpV/S+qbRhSh7VVIzVqzOmmptPvOTAQGIksTEvLSV7XYuzXVfKCsTvuHiBHqUMg
         3KgQT0zpIrKvZlnB3DhACnp5o0IDXLI3rvjy2h8nNjGLEnWMmqb7Z1bQdkwQx06Ji1Si
         gKK0SsbCeyWa/Ah6SCBJdac0LC9fNcengPD4Bv3pSt6A+zjPMowsjTfej+HGy1xwHu46
         YUbR2IbW6bCDxO5eSkM7P//uYzQbno0ms9ZEBXVm4dIMPbbXTLxdEOOSgm18N153ocki
         uuHg==
X-Gm-Message-State: AOAM533n2jIATnXaCAT2C8zclxiKfv/WfwpUsUfmp2MjT8Uf/0cnhzl6
        by66ISk0h0J4bFR0SqQYcTN31LPVQIo=
X-Google-Smtp-Source: ABdhPJyIAASpgjxaVNaB32NUyytUS9z+6VWpxT1E3R5iOdWUpD03GsdEIpAm3t9teGwto+m4GMkpHQ==
X-Received: by 2002:a05:6000:92:: with SMTP id m18mr39878772wrx.676.1641228591557;
        Mon, 03 Jan 2022 08:49:51 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i12sm35700176wrp.96.2022.01.03.08.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 08:49:51 -0800 (PST)
Message-ID: <cb677780-c486-29ba-5928-5d9a56c1f233@gmail.com>
Date:   Mon, 3 Jan 2022 17:49:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/3] tee.2: ffix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <a59610f1d397bf532e4ce46481f439ac089fb05e.1641224016.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/3/22 16:33, наб wrote:
> ---

наб, patch applied!

Thanks, Alex


>   man2/tee.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/tee.2 b/man2/tee.2
> index d2ceef331..14a927c93 100644
> --- a/man2/tee.2
> +++ b/man2/tee.2
> @@ -143,7 +143,7 @@ Here is an example of its use:
>   .PP
>   .in +4n
>   .EX
> -$ \fBdate |./a.out out.log | cat\fP
> +$ \fBdate | ./a.out out.log | cat\fP
>   Tue Oct 28 10:06:00 CET 2014
>   $ \fBcat out.log\fP
>   Tue Oct 28 10:06:00 CET 2014

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
