Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2D20C197780
	for <lists+linux-man@lfdr.de>; Mon, 30 Mar 2020 11:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727881AbgC3JLK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Mar 2020 05:11:10 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36523 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727848AbgC3JLJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Mar 2020 05:11:09 -0400
Received: by mail-wm1-f67.google.com with SMTP id g62so21038656wme.1
        for <linux-man@vger.kernel.org>; Mon, 30 Mar 2020 02:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gpI+SXJ1BULFCAW9vkT9zsP4j/QkipA24d4Ex+Ad1Uw=;
        b=fsox30+ElDr35P2IArzxXWAfxfQXuPllpHKSrfh6PnKLPqoz4Voei6DE6RdxVpvZD/
         h1mxCmHP02mh+VDI3lwvDaIIuLg/5dHPTACt6BaKlk0c3IUo8ogxQVqjodeEvISi+ndV
         VAPIPOyeC7RbhM+K+IUEwaiZURJ97cUy8p/32lebsaQFFqXtmnxTgBCxW5SVbOyxb3bz
         h3xOB7+WB8qnUnNudOv+7Q2KSBf1Db4ujQRcpfc/YZoy91zSCFMOeeRWyscCWxn16KZk
         ayRi2QkQVjbPIQzPgOyiM7ZTvOE92yVYGaOWwSszvawcPm1SxVkjIu6vF9r2DteObrHH
         b86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gpI+SXJ1BULFCAW9vkT9zsP4j/QkipA24d4Ex+Ad1Uw=;
        b=sgEObt+dN0bIPPMqM9wcBCVisFOUavWUqjh68cg/c+oTm3JTSXgmYR4fzB6YHPESuP
         MBLW8HBslLqPJgKTOBJiMj4Oy/U7GBFuBwIoAUJ2P1WSxs8CZiNhCmw9OU4pfNqL9iwl
         8X3WM9R2lApL99kP6vjUHVFukeJ7MJZb0DcFcHTP2GFJZ9gI/43bK6cyEPgShkCE9qRs
         ye+OBhEHVgier2mEdUKckT8/80BeZyz6U00Mzt/QHBoWxPYvB5f+eYh/AGVLLj9/T6/W
         Ajm9jS69mTM/+SN9bQ7KZLrvcDb//AmEJPVoF3RBT8lDtBbWElqhhDWu46ZxgHrGpAD2
         6R2A==
X-Gm-Message-State: ANhLgQ1vbR98jSP38XgpoaI697Sb4Bkr6vRq0oURq7hzcLaLDyv6D0/W
        H5RMhWdsatY4w7dg66W1PQfVQdtK
X-Google-Smtp-Source: ADFU+vvx+g44sX5i5bEUqzfuZJUBweGNFQ4F31SlsaxaznnLTjbaZtwBZtLkc+iuYGKRvLs0olgqdw==
X-Received: by 2002:a1c:7412:: with SMTP id p18mr5780610wmc.11.1585559468069;
        Mon, 30 Mar 2020 02:11:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u131sm21967517wmg.41.2020.03.30.02.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 02:11:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [patch] socket.2: DOMAIN's are defined in <bits/socket.h> not
 <sys/socket.h>
To:     Anvar Nasar <anvarnasar@ymail.com>
References: <1890759341.185699.1585415628792.ref@mail.yahoo.com>
 <1890759341.185699.1585415628792@mail.yahoo.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6c4dbd2b-4eed-82a8-cd62-2cff87c0fcfe@gmail.com>
Date:   Mon, 30 Mar 2020 11:11:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1890759341.185699.1585415628792@mail.yahoo.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/28/20 6:13 PM, Anvar Nasar wrote:
> diff --git a/man2/socket.2 b/man2/socket.2
> index 0b3b90bb8..3c4f025d2 100644
> --- a/man2/socket.2
> +++ b/man2/socket.2
> @@ -61,7 +61,7 @@ The
>   argument specifies a communication domain; this selects the protocol
>   family which will be used for communication.
>   These families are defined in
> -.IR <sys/socket.h> .
> +.IR <bits/socket.h> .
>   The formats currently understood by the Linux kernel include:
>   .TS
>   tab(:);

<bits/socket.h> is included by <sys/socket.h>. <sys/socket.h> is
the standards-compliant way of getting the definitions.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
