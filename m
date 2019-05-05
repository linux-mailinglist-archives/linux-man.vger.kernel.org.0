Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 96BC013ED5
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 12:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726310AbfEEK3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 May 2019 06:29:24 -0400
Received: from mail-ua1-f65.google.com ([209.85.222.65]:47093 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfEEK3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 May 2019 06:29:24 -0400
Received: by mail-ua1-f65.google.com with SMTP id n23so3620318uap.13;
        Sun, 05 May 2019 03:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ngE1v/roJrFfxSr+M5MOTBoi9LFMhuczy5UEliQhyos=;
        b=eOVish7tliuZfTfwkoJ0aoVqem/Ew08LIYfFIyt5PpibWGXoV5MM+LfQ4J5Mf0Fxmq
         JwgMGXsRe8qrzs3m3oTtDjwi6scl1GfRm0UaK0v+bQdu048hO3ACXBeivZzzu7B0zxNq
         VTjXk9OflVfQiJ3HFTBcs8Rdw7qWAleboenhOPMqbOu0If3DLQv8kktkPxdyP8wTYXFd
         q+5qGASTzXQ7PgnqiUPrKXRkfnKmkV+urldOZI78E3agwuAfZZtYi0+e9oMuvbbSjJMC
         furtlWW4W92yXn1sLO6kKfjmsCB6lKwbKuaqaI28S8ZkOjSMCw9lYmYBP3/nzNGI5jIy
         hFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ngE1v/roJrFfxSr+M5MOTBoi9LFMhuczy5UEliQhyos=;
        b=Yx48aSd9vVKzB8N4ntqUfyE1ZEK6AUIX+Be6xSjuqFKAmg1niXOKwm4eKs5B4L80fq
         JjYVR0vkHCspiBCH7Tz3zM5A70/CCUXShnvddCEBeW48Xv8RwHRDDrge8vXqqwejA8wo
         5DL2xFHDwBGQEvEKSNuipjlNb9MzbqWx/FSjujbXGAxcvJNTWEBYY8nBUgH5t1XoE/tj
         DOm/9tds9UGIiqOF55BKp1XGFjL74wKnMvs0emoTBg8i2BmRCZwpKED7ozyguNeEeG6Z
         P/ysIXWUtH24ll+JAh5edcreMh3h1f11d+k4j34jfvRTxQRfoOMdl+jnDG3frmWdV2Gz
         fXZw==
X-Gm-Message-State: APjAAAU8SA6MQ7XhAVt4ehLAxKjZwnNoJ0w2Zmm7LJqNKUPZmbhd7Qw8
        Oiu2Re71GF6mAtMyzKC7jZs=
X-Google-Smtp-Source: APXvYqzs56ahJS+BejdH+7KnYtPou4LjnKIUUHl9oQRYerw3E/Va2EdD9anF7YGhsMlMDbMDBPqLOg==
X-Received: by 2002:a9f:3603:: with SMTP id r3mr858594uad.73.1557052163321;
        Sun, 05 May 2019 03:29:23 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id v132sm2050219vkd.44.2019.05.05.03.29.21
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 May 2019 03:29:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, slavomir.kaslev@gmail.com
Subject: Re: [PATCH 1/2] splice.2: Note EAGAIN can occur when called on
 nonblocking file descriptors
To:     Slavomir Kaslev <kaslevs@vmware.com>
References: <20190412140247.9897-1-kaslevs@vmware.com>
 <20190412140247.9897-2-kaslevs@vmware.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ef394bac-705c-70ac-5ceb-adebf4cfece8@gmail.com>
Date:   Sun, 5 May 2019 05:29:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190412140247.9897-2-kaslevs@vmware.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Slavomir,

On 4/12/19 9:02 AM, Slavomir Kaslev wrote:
> Signed-off-by: Slavomir Kaslev <kaslevs@vmware.com>

Thanks! Applied.

Cheers,

Michael


> ---
>   man2/splice.2 | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/splice.2 b/man2/splice.2
> index 57988d9d6..af3fa4e74 100644
> --- a/man2/splice.2
> +++ b/man2/splice.2
> @@ -155,7 +155,9 @@ is set to indicate the error.
>   .B EAGAIN
>   .B SPLICE_F_NONBLOCK
>   was specified in
> -.IR flags ,
> +.IR flags
> +or one of the file descriptors had been marked as nonblocking
> +.RB ( O_NONBLOCK ) ,
>   and the operation would block.
>   .TP
>   .B EBADF
> 
