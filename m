Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67CF0265983
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 08:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725550AbgIKGnc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 02:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725747AbgIKGn2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 02:43:28 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A422C061573;
        Thu, 10 Sep 2020 23:43:26 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id s13so3355444wmh.4;
        Thu, 10 Sep 2020 23:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GYe5wpyzvx8P2j7CQPw4lIfyQNRx7FzXepVxnqPazKQ=;
        b=kGlqJKjnnF85kSsf4kwALo5zHKMBWhm+Wv5v7PZkD4oK3MqQXm4zaNgLOX/pyST3pa
         qiPy+uZZorTzXd1kqCIBvez4l2DRUhLPfn+FPQO6loPLNJ1q8JCimT4pzWVnVICVApwQ
         M4GWSQw1E51ULWfBeoCgZ03CZmjeRgsPNeVTqY0/7zI+J5np8tJhfPH44a2v23Eulo9p
         gGkP3FJq/sGBpyxP+ovGbbp9jdW90ZH4BY2wVjQ5XG2tfxITkaq5wUV0zaOyO138/HoX
         4zonV2kAbcrsHTp/PPBYe/PYuixBJgNWjyfIAWe7y32cj+LVmsmns7L1K6Yq7sZPDASj
         e1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GYe5wpyzvx8P2j7CQPw4lIfyQNRx7FzXepVxnqPazKQ=;
        b=KKpfRs/HY1ivKuEwbjbcHw6O/+n6mfkI27jQH0g4vbARmRaUK6tSFcXBMZxkZjwEGb
         I6IJFzKL/dK2QaOpwHuBxmDy1kEyxl0pBF0Ny9mA/7+giRWb55JjFMzadj+R8IwJpeL3
         HCT3urudPro00IvKn1MB2hnA7SmQZMcu0q1gakiU6eQKV1oHzB0kukZ89bleCmcFBfcw
         2M5A7ABswC2e+wRppmRX4to4C2DhucLj9/MqWi5e25YPleIigFatpzKxGerl5Z5B1sgF
         Wad+7k5UITNxfrS/f1cyHHOxeXwJWk8aqQvPBwe4KymeK806hWJSVyGx6IQViwNzSki4
         IvAw==
X-Gm-Message-State: AOAM532WhKbOwTsUY6qD6vgVHuXNokjcMR5/1CMhn3QRfUnIvYdxZOF0
        PhP2ahjBwOsU+2IgrCO9CQNK3QxakqU=
X-Google-Smtp-Source: ABdhPJz3DrhWjISGib7X982Rl6/r7a/qCPQdpR9v1FcnrspI6b1ZGfN3rKpMRB1DZNebMptK11f9gA==
X-Received: by 2002:a1c:4d14:: with SMTP id o20mr604184wmh.115.1599806604965;
        Thu, 10 Sep 2020 23:43:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id l126sm2138679wmf.39.2020.09.10.23.43.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:43:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 16/24] getpwent_r.3: Declare variables with different
 types in different lines
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-17-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3bee1e95-8a42-b99d-a495-4ead2431e5c5@gmail.com>
Date:   Fri, 11 Sep 2020 08:43:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-17-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/getpwent_r.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
> index 0f7581091..b6c1c281f 100644
> --- a/man3/getpwent_r.3
> +++ b/man3/getpwent_r.3
> @@ -184,7 +184,8 @@ in the stream with all other threads.
>  int
>  main(void)
>  {
> -    struct passwd pw, *pwp;
> +    struct passwd pw;
> +    struct passwd *pwp;
>      char buf[BUFLEN];
>      int i;
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
