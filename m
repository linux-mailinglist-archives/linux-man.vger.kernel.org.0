Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38E661444E2
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727350AbgAUTOl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:14:41 -0500
Received: from mail-pg1-f181.google.com ([209.85.215.181]:45766 "EHLO
        mail-pg1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726229AbgAUTOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:14:41 -0500
Received: by mail-pg1-f181.google.com with SMTP id b9so1989594pgk.12
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AspKPGO5Tka81SpTUnXEkvPHwS/LsNZNXfAIWeNrrkY=;
        b=gGwxAK7KmMZ8gwWGEpE+CBU8u8F8v8duYCDwyIKH8aQbK06a9QyFfMB5MWI8hBeDvg
         elXzQ2kPKFZQG+fZOdr7YFujMnW6iYjI9zmZUmir8mdoXMw/Nvp0HkhJ+gRFNE4Xz6ND
         fNeUXI3hUh8E7mRN1gSlHhd+3ZMEHF2HQTTblU8e9k+z5+zKGj6A6oDKfpygWtzRb9Ph
         LnbkFkKomAXOYIThQrDPrgob7n1/S69C1wbb4nLsijJH/OwlEEwCYuziuGRhBOBrW30A
         3ydPpf8X1X1oHXeNpxm9RqgKJfySPnHHIydnONXwSngpUkhZKLa1FZCNH9TRDsj7zUOv
         d9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AspKPGO5Tka81SpTUnXEkvPHwS/LsNZNXfAIWeNrrkY=;
        b=RwQkEzen7O85+IBanDtVDg7M/iPfBeC5Dzx0ELpmTmINS7poudAJhENI9KcQWSqRGW
         jgkoFD1ChBY2WA/HaLiZ6UgzTHxdOB/wDSkie9u94GGB+jUiabRcbJdXTLnMGmkITAo7
         FC0RhfPlc+9fWEYTsu4m7sDUXpM/ZvTFDd1ZsxJ/WgHuhVRvA8npbhpVqi+y4y5Lox2T
         LFyEac5sf3q4dtfKr5/tp/Qq4zXxBSJG3MU1bDoEM32DHcT2oOpg/UGGEwbQillhM7yZ
         9QOn4owPyRM3AJmLARuIC8P4oXFm4FaJfGyVd6QfwpjF5VWg+uxJ26yTYOtq/G5lpYXs
         BOGA==
X-Gm-Message-State: APjAAAVV+cknHe1eIqX3cCL1jQAWLouTy4I9t4vjI+HynfwHRmRCduuZ
        UCA15miHdtpUuIjK7L/tEe37hfR7
X-Google-Smtp-Source: APXvYqxjlhBL0tHCb/LqyH5hgE7KPN/F7evMhrsBLBsuexSjs2MBgMn80tg/64YHX53H+wMle4yBoQ==
X-Received: by 2002:a63:f142:: with SMTP id o2mr6851753pgk.181.1579634080010;
        Tue, 21 Jan 2020 11:14:40 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id l9sm40067452pgh.34.2020.01.21.11.14.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:14:39 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] getcwd.3: wfix
To:     Mike Salvatore <mike.salvatore@canonical.com>
References: <bf93b481-e246-d281-f952-a7ece96aa697@canonical.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <44912de5-33ec-dcbc-fcad-5c060f1ba7de@gmail.com>
Date:   Tue, 21 Jan 2020 20:14:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <bf93b481-e246-d281-f952-a7ece96aa697@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mike,

On 1/16/20 10:15 PM, Mike Salvatore wrote:
> This patch is a minor wording fix in getcwd.3 that changes "In the case 
> getcwd()" to "In the case of getcwd()". This patch should apply cleanly to the 
> master branch of the git repository.

Thanks. Patch applied.

Cheers,

Michael

>  From 3b68ad225dbaada2b1b55153dc57807b04531cd6 Mon Sep 17 00:00:00 2001
> From: Mike Salvatore <mike.salvatore@canonical.com>
> Date: Thu, 16 Jan 2020 16:08:08 -0500
> Subject: [PATCH] getcwd.3: wfix
> 
> Signed-off-by: Mike Salvatore <mike.salvatore@canonical.com>
> ---
>   man3/getcwd.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getcwd.3 b/man3/getcwd.3
> index c8a691b4a..e5ed2c5d9 100644
> --- a/man3/getcwd.3
> +++ b/man3/getcwd.3
> @@ -155,7 +155,7 @@ is deprecated.
>   .SH RETURN VALUE
>   On success, these functions return a pointer to a string containing
>   the pathname of the current working directory.
> -In the case
> +In the case of
>   .BR getcwd ()
>   and
>   .BR getwd ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
