Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E61029AA0C
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1421376AbgJ0Kwf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:52:35 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:33035 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1421348AbgJ0Kwe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:52:34 -0400
Received: by mail-wr1-f66.google.com with SMTP id b8so1380559wrn.0
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZYCzedhQaKvexa0bhyP5RsqU41K9vEIUlAx283v0od4=;
        b=pWX2bXAv+iLlvXZeUOIZcNasv1hPoe9QXT1q6QPDD3VWs/EQBgr2VTsvQQOpH30VAV
         6Lj/BoUnFCJ25vPNOM1kYOtKL0XgxessWYsjpyijK49Cwxziifcax3rKuNb29fiJd9H0
         lHMU0Keb+8GMxxfAfBTh4ANYu40IPAqbPuV8SxDacV3ywMB/hiHUdJOzMFMxwN9aDN6T
         LpsFC6r3a4mmdnBSpZTcRl266m9QaTVG97/AfhXPb8ni8HJZSn1cM+uFzm8ItSpo1QEh
         ZpfPAxUVh/SXP9vaN18wX3rjCaMazXTujnXGV03YHyXf8VRy8vrHAW2ei725CP2xoIvf
         Kc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZYCzedhQaKvexa0bhyP5RsqU41K9vEIUlAx283v0od4=;
        b=CJskL7C+jEBsARoq+5oxerPnwEcZxB50h2kiN1egXvk+BA1go4ibDIA/+j5YGXT6hE
         FBQiyd7aNPpzMm3O0Agn8hmB9r7QhDHT4j6+HjaKzIPOpv6VTe4KweQxZOy6gyLqri/T
         46A1vFcYN25zqbRyGxiFRVoonf6nUNl0PO5hDI8eatlHZ7PigA+gfILSSmj4Po78VWUV
         FLXCQkuADsjp3oanoOGEGK4FIzAy1ppPQjjKGoJS2567HW5PAnhvyktZYPb8qfJoAdZT
         UMKxMVDrml+DupabBbkyUsbKbtGwyfV5TsSR1iQZdkp2q8kzt1+I66rNh2/f+sydyATP
         xxjw==
X-Gm-Message-State: AOAM531hWZXU7z7TntE8AhCgxc6Ab/x5EDcLHOt68g6CpHy6alp2X07u
        hHze9HzIFjYypZqkWr5YKTAXBEwGQPw=
X-Google-Smtp-Source: ABdhPJw9Z/jZf9QfwFkT8OoaM6adorMvRrUQ7R/uEIECBYQUwIZ6Vr0pCMeEqqWPUgwoCfrGwlE2fg==
X-Received: by 2002:adf:fc51:: with SMTP id e17mr2022301wrs.45.1603795952547;
        Tue, 27 Oct 2020 03:52:32 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id r3sm1493613wrm.51.2020.10.27.03.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:52:31 -0700 (PDT)
Subject: Re: [PATCH] system_data_types: ffix
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20201027104737.26615-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <40613102-84bf-ea3b-254c-0739998cc40e@gmail.com>
Date:   Tue, 27 Oct 2020 11:52:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201027104737.26615-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I forgot the '.3' in the commit msg again :(

On 2020-10-27 11:47, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man7/system_data_types.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index e98782545..e1e8f01ca 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -775,7 +775,7 @@ See also:
>   .TP
>   .I pid_t
>   .RS
> -Include
> +Include:
>   .IR <sys/types.h> .
>   Alternatively,
>   .IR <fcntl.h> ,
> 
