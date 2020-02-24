Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC7BC169F73
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2020 08:46:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727170AbgBXHqb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Feb 2020 02:46:31 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:44362 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726765AbgBXHqa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Feb 2020 02:46:30 -0500
Received: by mail-wr1-f68.google.com with SMTP id m16so9085011wrx.11
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 23:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9L1p35Zh7OGSaiiL0RwRSTkIvES7jNO/QMzEntOA3Ms=;
        b=hOYb8f8mmyd98+3KS1X4VnEQrQe33i4FJdeO/T4uBfXOYNVaI2NLh5Zy0R9vZobCwE
         e9JMU33FF84kP3LEurSTgT7aUGD5Uu7CPfpA1klWZx0HGoMPLWHLNMYNdlmTbNRnXUSH
         Qe1CXEcZwhfNrgYrsOyPkyxQvrZtgkcCjgta0pVhAsCv9+bhjGPie1HhILQirLJrNya7
         scAhoCg1uYK+xrLGa03ndyEli49bUi/MSIZ6g/1VaIW5hzII+VZnNLA24rU+9FeRref7
         j2cvOCRqyA2IbJidTWsM9IAWkqGTaeV5FnVUxRvy4r03bxNDfZfC2ZCeEU5YwGeutw+H
         dbBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9L1p35Zh7OGSaiiL0RwRSTkIvES7jNO/QMzEntOA3Ms=;
        b=D/W1Aer97DPVdKoksSQjELyzDblIryu6CQQXVTIA1T0RCCQXBY1+BN+pgmcp+S8HMd
         UNVvovZR6R3MKo6fjSsQYP0AVta9/aOHoGzcwEoMLCl6lkdGHEz6/iTGFoZrHuH79MDK
         AY4LvgMy1GGvLHW3U+qajxP+fD5/ZF+N8j+hqzzfSMygU3bUczwl+BfV6Q+4cgl+E8Qf
         JImCw91w3IO+20knEq/kP45LKQY3y+4CWbs1MBJ6g3n3ojqpt5WTFDLiiAGuIGrcE/T0
         HVxskClRuT837e6ewXAKyOSNzv/Zdc75zdtOjGE+QrnuLcaE11qOd65wSbpCmmxQVPs7
         ZkyA==
X-Gm-Message-State: APjAAAVuH6Wtof42IW8l7C9lSIVv3sZiHHVyLf9q66e04nxlKr8aLZKw
        mlFKHCLsBo5uQ8e5Fs1gQTOgCGmI
X-Google-Smtp-Source: APXvYqw1mLFuLQZT0DdFWwpYdDsI1CYT7WodCxEOp2aOzsbTo4e6Q7FmbOg/nwaqUkib1NsVn1DI8A==
X-Received: by 2002:a5d:484d:: with SMTP id n13mr64086176wrs.420.1582530388978;
        Sun, 23 Feb 2020 23:46:28 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id s1sm17219527wro.66.2020.02.23.23.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 23:46:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7/namespaces.7: srcfix: Make the number of .RS/.RE
 macros equal
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200223233945.GA9772@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7a60a76f-acb4-4094-ebd1-f57edccce161@gmail.com>
Date:   Mon, 24 Feb 2020 08:46:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200223233945.GA9772@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 2/24/20 12:39 AM, Bjarni Ingi Gislason wrote:
>   Changes are based on the latest (23th Februar 2020) revision of my
> local git repository.
> 
>   Add a '.RE' macro to terminate the last .RS block.
> 
>   There is no change in the output.
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man7/namespaces.7 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man7/namespaces.7 b/man7/namespaces.7
> index ec1e2cb62..fa6a5837a 100644
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -340,6 +340,7 @@ for the creator UID in the ancestor namespace is not exceeded.
>  The aforementioned point ensures that creating a new user namespace
>  cannot be used as a means to escape the limits in force
>  in the current user namespace.
> +.RE
>  .\"
>  .SS Namespace lifetime
>  Absent any other factors,

Thanks. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
