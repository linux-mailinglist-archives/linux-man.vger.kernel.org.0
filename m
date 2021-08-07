Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53B8F3E3721
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229607AbhHGVks (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:40:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGVks (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:40:48 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52FDBC0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:40:29 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso23509361pjf.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E/eubVRzgy/wz6tL1NZ0pKJYuaehhjhwDLtgf3q5ZaU=;
        b=QfLkJxvVwTZYaqRONLR2SCqtxUn56ZPdJiXakaOfkXjgBO4aJg20nY3jxwxgsCQkoN
         m6yV0gdObC5jbhusFzodqVQgZT4gqmKL12fm3tt+ZdnRhlshfl5ap+7kB8qLUU7mvItY
         jDWQ2dGaV/LC33eUWmrge5L4aIrwtjIedFdctM2bie55nNUXy1cO87CsCduYfwDgje4q
         VOfymg+DEQXaQ4btSLtN+uIg/OV6OQxRm9bSzYuJDPQzt0FiDsq2hyNW937aYt/wsK6G
         ivK7xkG/fNPjJqMEcQnzSnLtrtbKgsiZySVrUzqvkdp/r7WGBl/jNJfTe3svLzKgk3M8
         /HtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E/eubVRzgy/wz6tL1NZ0pKJYuaehhjhwDLtgf3q5ZaU=;
        b=pf0MrnwxM8sO4o905HtUkUDcfxXtNJBZxfuQhtR2r2v1tVBCtLjUR+t8MURMcnaYD9
         ObByLodLwhoDTUeqtAPdZAp6KMoAJYvjU/Ks6H9alRutx0F/AmsGRrcsDFBEkUs8AE4i
         XyhDVE+qGkTLhKuAgmb61aEFEwx2QB49Bc3mcNTiDvnVJCF3Mo9dLSZId6zs4ZEhQJ1J
         tKUYSS/36iwdqoOYtM5zy5zOx7SGLf6QPSbx9FSIw1kiFaF94/k0OPva8LPLp8CHnvv3
         uvc5wKgLSVRRA0ECu1SGeh0VlzmIo/4y9J272Z7jawZZVxn7yz8+Jdls5Kyy15K+i4Dw
         7igg==
X-Gm-Message-State: AOAM532eXQ0ZMcf/ry9kZu8T5rqnE1+CFSqy6+9lYKepHcFUIq58dUPL
        N0jTh8NsiMKYAh72fVBCrYmcVK5CyGs=
X-Google-Smtp-Source: ABdhPJx1G5Dm8xGjztza9izHClpmDlfwTPCRqaIPb1mzTx9ItfluuXsZLHaitDWjsivWhyT2ZIxlyg==
X-Received: by 2002:a65:63cf:: with SMTP id n15mr244394pgv.392.1628372428701;
        Sat, 07 Aug 2021 14:40:28 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id r14sm7632867pff.106.2021.08.07.14.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:40:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 13/32] user_namespaces.7: fix a ref
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-14-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <78109a7e-998f-6a36-73fa-01b8b6ee9f95@gmail.com>
Date:   Sat, 7 Aug 2021 23:40:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-14-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kir, Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Kir Kolyshkin <kolyshkin@gmail.com>
> 
> The file being referred to no longer exists, as it was moved to
> *.rst first (commit 20a78ae9ed297f2) and then to under
> admin-guide (commit bf6b7a742e3f82b). Both those commits
> are from 2019 (Linux 5.3).
> 
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man7/user_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index f2e02c978..518e7a3bb 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
> @@ -1383,4 +1383,4 @@ main(int argc, char *argv[])
>  .BR pid_namespaces (7)
>  .PP
>  The kernel source file
> -.IR Documentation/namespaces/resource\-control.txt .
> +.IR Documentation/admin\-guide/namespaces/resource\-control.rst .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
