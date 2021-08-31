Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C66E23FBFF4
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 02:28:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232360AbhHaA1B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 20:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbhHaA1B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 20:27:01 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2E6C061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 17:26:06 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id j10-20020a17090a94ca00b00181f17b7ef7so712264pjw.2
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 17:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UMB4jUN6l/ITelsTbKop/eJv24YlZ1jjp/4ZI9AjOF0=;
        b=nmI+Awk2iqqtBmQHm5WRCywjjm0HaP54jDjn3H/fJB7XMycsrnOFW7N7ZsPc7xgNEE
         AWNwBLX9zXR5p4Vj0/Dz3E+J0HggFIlSEq5neaE6P2kyWFlToW65KYK4H5ISzNClwTMd
         l57DHVymV2PlCFixu5yrrNDwH/QtHr30FGGQR3YsmxaNNdP8BdPPXOInHyVe3msg/cbF
         HUK8RKyGsMI7RirmmIyy+/Vgc6JOLY0wtLYHfZ5Fu5PvS3VDUr2o+OHuFlUSRZTwfRmL
         soBqPJ/TI3U4BR9EEwpG1pui9qGMdJ0uvzLXdH7mvR8JawT8qTK48Tb2EHQ+0IZlq1cJ
         /K2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UMB4jUN6l/ITelsTbKop/eJv24YlZ1jjp/4ZI9AjOF0=;
        b=LVKgcb4H/oYYJzGzFTAO1kgmLHIJMpSO6vP8/SLvpSw1FfSEHQqcx+RGejEjblZ5+X
         DO/LHS0o8djnp0DH+L50WCFx9QSyEKl4Mzde5IEAkWmuWJ4jsPeptsP/h3Q6aryD9yYf
         KiGAbFTebBkrjFY7BFmPYfCV+KL03fUiHtW37q0QBtyz4G+z5mnL6H4piEeUAFrQYvyK
         Ey6Hvcrb1UP0l9enoqvq63AWwWnnrFbrajNh1x2DIa/Q+hxv5vts60b/U7VDjxaTAZmg
         I7Gs5kXi/qKRMss79AF9sXvGFq+bDOYAzx0JMX6yUDJpUqtxlnRRMDZmpXksoKxWaDDO
         N9ZA==
X-Gm-Message-State: AOAM531BkiBf1cEcoZqT/hhxHLlQj6ZoHFZ7+mtdTcMDtf/QR4Vy8nTz
        2/3fWUVj8CaMx97e3Rf+Yg1d8FedsHE=
X-Google-Smtp-Source: ABdhPJzeCE7gikXu1GCb9MkJy8QNeGnX9fWsIfH9pOScBT8n4kxG9xUe2xG6TLcD//fc2ccjsgcKhA==
X-Received: by 2002:a17:90b:38d1:: with SMTP id nn17mr1970461pjb.37.1630369566132;
        Mon, 30 Aug 2021 17:26:06 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b7sm15800152pgs.64.2021.08.30.17.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 17:26:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Use bold style for B0
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210830112711.18542-1-pali@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <554ff7f1-8c82-6a80-aa23-7ee664bbb1b6@gmail.com>
Date:   Tue, 31 Aug 2021 02:26:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830112711.18542-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali

On 8/30/21 1:27 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man3/termios.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index f888c15d754c..ee0b8cad9c33 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -987,7 +987,9 @@ constant is defined prior to using it.
>  The zero baud rate,
>  .BR B0 ,
>  is used to terminate the connection.
> -If B0 is specified, the modem control lines shall no longer be asserted.
> +If
> +.B B0
> +is specified, the modem control lines shall no longer be asserted.
>  Normally, this will disconnect the line.
>  .B CBAUDEX
>  is a mask
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
