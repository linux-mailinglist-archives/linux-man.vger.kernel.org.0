Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C607129A45D
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 06:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506126AbgJ0Fy6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 01:54:58 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34587 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506125AbgJ0Fy5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 01:54:57 -0400
Received: by mail-wr1-f68.google.com with SMTP id i1so495937wro.1
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 22:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5tCvymFT4CID0RXl/vT4UlsraTNcw/SJBQlryzqUVu0=;
        b=RzxuMV4Cgqt8CnqrakB/Hq4nEJknfEqdprjcMuTO9xHBPHJ3JrTMfQOW72brgCO7pS
         J7xbq7uYEmCWUW8jZ1G9IZ0CJADL0JZ8MX+W+laBBuzbvog5P1NGSuyPqG4YjtKIBBYw
         tdGjvlzfL/5xdlDOIPmsOI1/nK8FgF4QBMZq15bhRv3EwblX6VIi37bMddjuU58v3HzY
         6dWiHBCGU7xiYbj61KFG5SkN/lkayPIKWFI3ITLdWemhQL7GwRgbik2VuTQqS38QAFnU
         AqPHrJHxfgAysbon4aAjly4lEgivOJgdj5Fw5hoTa8fGj9pu6HX7PXswHT+wGhJ5H3f2
         OJ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5tCvymFT4CID0RXl/vT4UlsraTNcw/SJBQlryzqUVu0=;
        b=YWnOY5hXzlaHPk5HFUr/T8CpiNCSNmDHVT4L7Xne/j/z+P7aEkG8IOUlADtYCFuM4A
         gnUzoINhbNb4DDd2CusTl5pAY2wTbmQmfMQH89A2t9EjBPXtDkExjibLedUWEb28HDwH
         1rYpRxmMprzu9GYPTJUcJu093+Zb+x0Y4bLnli6RfyOjkbuDcuVyNVPBpCCm09bXb9Fi
         PKpCrLyZViayoKCKhLCtM881uFgvTIGsDPl2L74y/snjQT8+TYnbWhPtCqsi6CLNw4Gt
         a3yNbd8Nq/+/9FwLTBcFXKAxP8xak59Z4EmlGKsRezr0YAjhMfAOI1RRo5er45xIrJGP
         QW6w==
X-Gm-Message-State: AOAM530PE4O0DxKfB1Fazs3w4aD1FZX33d2QIoMmGCiNdlyIiKzEM3hS
        A21BGQdYO/4hRJTqIW1+HDg1BAeVpvY=
X-Google-Smtp-Source: ABdhPJyIIsO5X/Ij+r0CBhYW+2XmC2dzf6j02SlwFiRySwYPDoDqwFVAz9ghutPwhcKH6/SbS8itSw==
X-Received: by 2002:adf:818b:: with SMTP id 11mr689334wra.74.1603778095118;
        Mon, 26 Oct 2020 22:54:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id g14sm545567wrx.22.2020.10.26.22.54.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 22:54:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: srcfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201026223450.28183-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0a104f3b-fdce-f094-7dee-966378b6f760@gmail.com>
Date:   Tue, 27 Oct 2020 06:54:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201026223450.28183-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/26/20 11:34 PM, Alejandro Colomar wrote:
> Remove comment specifying the layout of the page.
> 
> The page has grown enough to document the layout by itself.
> Anything that is not clear enough in the current layout
> should follow documented conventions.
> 
> This comment is not needed anymore.

I think there's still some value in retaining this comment!
IMO, it's not completely obvious how each type should be
described from simply reading the existing entries.

If we retain the comment, the "Notes" piece could 
definitely be removed though.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 22 ----------------------
>  1 file changed, 22 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 4930aac8b..7eba87cde 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -28,28 +28,6 @@
>  .SH NAME
>  system_data_types \- overview of system data types
>  .SH DESCRIPTION
> -.\" Layout:
> -.\"	A list of type names (the struct/union keyword will be omitted).
> -.\"	Each entry will have the following parts:
> -.\"		* Include (see NOTES)
> -.\"
> -.\"		* Definition (no "Definition" header)
> -.\"			Only struct/union types will have definition;
> -.\"			typedefs will remain opaque.
> -.\"
> -.\"		* Description (no "Description" header)
> -.\"			A few lines describing the type.
> -.\"
> -.\"		* Versions (optional)
> -.\"
> -.\"		* Conforming to (see NOTES)
> -.\"			Format: CXY and later; POSIX.1-XXXX and later.
> -.\"
> -.\"		* Notes (optional)
> -.\"
> -.\"		* Bugs (if any)
> -.\"
> -.\"		* See also
>  .\"------------------------------------- aiocb ------------------------/
>  .TP
>  .I aiocb
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
