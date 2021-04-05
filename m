Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3F6735413C
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241213AbhDEKoZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233539AbhDEKoP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:44:15 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7434BC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:44:08 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id e14so16191170ejz.11
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Zw3KO+3woW2uvk69FwO1sPphlzvJ2Yp2yzgHG9ZCbno=;
        b=LhRdD3LmXc3sX10s4UcHu1OXciAUBgLJYAQyynqsthabNm0DW+d3oei5GBJ1J4UmZH
         HG8yV46KlDFJ7WRqcyLgAW/bT1dMCHQjZZBLwYJuF/+J4OkaibcUfMdPOnAgPh5B4Jq6
         +YxKO6CBFMPc0HrDH2I6OozTQtxKTn4UaEQGs8sHDiIWhstxyJvTZ9uNuxx9pOq0pmwD
         3FvCvvhAGpi3pkI1Xmeg6qr9evaxkXrVlCbVfKsIKJhE84DzZcL2L83eg+RnzuALkEAe
         wdT0QWd0wPTSUCR2EsEB160ZQZa0eijUFTspqvdygitqBHQxe9T+VOky9v3cT3IzBaaD
         hNpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zw3KO+3woW2uvk69FwO1sPphlzvJ2Yp2yzgHG9ZCbno=;
        b=Z+eb2cNPY1b64KqmfTwrO35nxIEZkzh1+AnYUkxJFnyfhOhnl+CIpe4sfbsuR/1Dkc
         jpDONeNO776kvSKT9YoAzSNy4hlGta+HkYLlhjNjdikKs10A5NVVvGkF9SVd3Pm1NNiq
         BbRJAmvbqV5jLopRbp4emep38uEzZC0MjL9WXLYvvPw86RHNILbmoYsvsiYa5fIlacZl
         Shpg0dnRr+LFF6OqgLnhKNToR0V9ZHizc9U6LqEIKldnpI+wyhWqiHjsA8CmaLCVdlS7
         kYsJqCTCiulef9CSyeBg04RjDZJaH/RQYiSQIIPmaoyJeVRusMJ6KdpJ88tjrhUDoe3j
         3vvw==
X-Gm-Message-State: AOAM530Pom7xYj3Aj+r4OZMVMGLjwLlPk+FyGSj8mJ2X/DiuAZ5zFVBn
        aYX+CJOgJ31KTCqZXeMAomI=
X-Google-Smtp-Source: ABdhPJyLirmnpAGAu8n2PBooVMHSg4aVrYxgwERhyL27KwagFmZ+SJiMLlK3Y+eYVQ/NlhiSU1ZUHw==
X-Received: by 2002:a17:907:6087:: with SMTP id ht7mr10504390ejc.237.1617619447282;
        Mon, 05 Apr 2021 03:44:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id o26sm1654483ejx.90.2021.04.05.03.44.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:44:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 18/35] fcntl.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-19-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8559f887-233b-277e-2164-09f971ec2ea0@gmail.com>
Date:   Mon, 5 Apr 2021 12:44:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-19-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> I couldn't find a reason for including <unistd.h>.  All the macros
> used by fcntl() are defined in <fcntl.h>.  For comparison, FreeBSD
> and OpenBSD don't specify <unistd.h> in their manual pages.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Patch applied.

Thanks,

Michael


> ---
>  man2/fcntl.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/fcntl.2 b/man2/fcntl.2
> index de87eec1f..7b5604e3a 100644
> --- a/man2/fcntl.2
> +++ b/man2/fcntl.2
> @@ -69,7 +69,6 @@
>  fcntl \- manipulate file descriptor
>  .SH SYNOPSIS
>  .nf
> -.B #include <unistd.h>
>  .B #include <fcntl.h>
>  .PP
>  .BI "int fcntl(int " fd ", int " cmd ", ... /* " arg " */ );"
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
