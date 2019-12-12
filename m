Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2D211C84E
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 09:36:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728207AbfLLIgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 03:36:07 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:40308 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728192AbfLLIgG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 03:36:06 -0500
Received: by mail-wr1-f67.google.com with SMTP id c14so1726270wrn.7
        for <linux-man@vger.kernel.org>; Thu, 12 Dec 2019 00:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BgssPnNUo708q6zo/mpHsTDV9V1Ui0B8PAjgLEslr4w=;
        b=bMqaisxHDs/TLmjWjRUIujdPnqkOV2KS0vUduzVkov4hes8oAmB9AWPPoDVJtm4sxU
         tiMOX2s1DE1wQ99vDcEUJ/rBEecG8Rco+gEmRYuH4fYnL/Ket+JBTcFLPbmGqr78GYus
         4S5GSkaL1le8YXfyXvKXFZ+xEvcCpiWcGFBKITic9mOpytKcwthlGM6oz4ESTZjPTlkV
         qnTFpSL5C7b7eE1rKEekgdCzS51q6ICWciDM6CewvUekGWSfwXdrEABLi1irBmwjQX+d
         FLIG69d7FXcQ/xs/qBllu28NZDs4Zl9Jz8Fp+Gd+DzBupOiWFgtCn6VwiB3v6/ZEd2Wj
         uWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BgssPnNUo708q6zo/mpHsTDV9V1Ui0B8PAjgLEslr4w=;
        b=O6uAIs4lpz9liX5GSNu8E/+xiXmGmbEGPG27XO0860g/FgW6qOBCer5vBfZh7yuuBy
         Xiz8Tu3DKmVec1ofBESt6VHIBlLj1lA3Le98i38WTkE+jJwTo+nYev7dtpBqLayRBsEb
         3UoPby7xs0XTM/qMQjcVNW6kn5o4Dip8VieSIM8fMWopK6mU/twJxeui5uG4nPRtYZHK
         W1+JtNMKWlqb9KrFujKGLgF6ffv4JEjKrJjfmtyFFTKluEctkIyIIZzdgBjjCCTArAOi
         /oEBXqPUw3En6UPelx5tzeu3DeQwDybANh1zju6Q9M1+gg6WC3P5mRGIPDJncXktfGhR
         5wmg==
X-Gm-Message-State: APjAAAWVVtGZheYBgKj2PxMBUxGadvij1Jl/4v3752gmxuPtv1xy4aa+
        9a5kHzz1O9ynLci59zNWQwxMeHB3
X-Google-Smtp-Source: APXvYqzr5YVrHxOOOKeXbK+NNhdMynBJ/34ot1nBCJnAfchauie0CivZSFWRqMKv9oUXFB0dWjUTaw==
X-Received: by 2002:adf:f581:: with SMTP id f1mr4985260wro.264.1576139764662;
        Thu, 12 Dec 2019 00:36:04 -0800 (PST)
Received: from ?IPv6:2001:a61:2426:9c01:6648:18:8d7:e4e0? ([2001:a61:2426:9c01:6648:18:8d7:e4e0])
        by smtp.gmail.com with ESMTPSA id x16sm5268119wmk.35.2019.12.12.00.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 00:36:04 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] inotify.7: wfix
To:     Brennan Vincent <brennan@materialize.io>
References: <CA+OW2AD5aENWxfPrYfcLKfny=NFxRBPD=_35wXfdreAVTQnWwg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6e3ce23b-4101-6f3d-c192-7df1fcaa0045@gmail.com>
Date:   Thu, 12 Dec 2019 09:36:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CA+OW2AD5aENWxfPrYfcLKfny=NFxRBPD=_35wXfdreAVTQnWwg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Brennan Vincent,

On 12/11/19 6:14 PM, Brennan Vincent wrote:
> ---
>  man7/inotify.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man7/inotify.7 b/man7/inotify.7
> index 032d78d25..c052acfe6 100644
> --- a/man7/inotify.7
> +++ b/man7/inotify.7
> @@ -145,7 +145,7 @@ The
>  .I name
>  field is present only when an event is returned
>  for a file inside a watched directory;
> -it identifies the filename within to the watched directory.
> +it identifies the filename within the watched directory.
>  This filename is null-terminated,
>  and may include further null bytes (\(aq\e0\(aq) to align subsequent reads to a
>  suitable address boundary.
> --
> 2.24.1
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
