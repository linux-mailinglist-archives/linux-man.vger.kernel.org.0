Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3C0C13C40
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 00:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727344AbfEDW4P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 18:56:15 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:44051 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727259AbfEDW4P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 18:56:15 -0400
Received: by mail-vs1-f67.google.com with SMTP id j184so5875024vsd.11
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 15:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eK2yITWpDO226jWBQB88XzH2m7s2cz+hurEZbPghdts=;
        b=a488h82OtbeJuGqgJXXzYEsM3L4v+M5GI+EKQ6v4xISyeyPkfuo8fw8FR9jbu0VG4i
         0RAjbOjbI8qhtLhrrU9Pto2q4VzkfWe6EOAIBQATjdJSpCPyBxgCcMjdfEE1QjileY+Z
         NS673oBM0Ozn1v/DQTnrpU9DugggWstHw+xrQMFkox+HGQ5jXRDG8L6dgBBaploV3G78
         bsIx1gjdK5C4Rp3BjVMPKpdvQRc7F6a+xytzbD+9H3xDu9TBeZ+3EFAflgwvXYZ/83ji
         IL6cYIaodfUrH2PtKG3peLxnDpQTGxB/pddfvGRf2EPc8oMrv57E2nZmD45p9Xhs+Eu4
         KsUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eK2yITWpDO226jWBQB88XzH2m7s2cz+hurEZbPghdts=;
        b=ApHzHB3I6tpHHOHgfA1w6HJlzhk58OAj8SEJeoodIJZsl8KxoVVzI2Muqfk5kZBvtI
         exDczUa0ArHPp6OsHfDCagitf0QlOhEA78z526Ny/YpmxaD4hU97cvW/rZxbm1V+NGEa
         6mqs1p6PrjIy+SMq6O5RJkgXV7628ccNmiZ3PIpwlz3m1JdP2NE5MDXYMFAVl858S2v8
         794bbSQnDy+B8uKCaIV0uy846DRekD4dWUJzOG6K4jwPZVivXaP0my0+ZEH4+Yc5O3D4
         zZ3vDsUePyqIaF14J3tXFKrapv9EvAvnlb59pC11u0xHzqWU8OYTFO3tN8v29Jt1qqpG
         e1pA==
X-Gm-Message-State: APjAAAVRP2LkUn4zwh3X3rhu5OTE4MOroS8cAWi/N0MpIsV2exYJsndd
        Nv7T5w9Ix+/S0UgaZY6dIwYN0fDh
X-Google-Smtp-Source: APXvYqyksM+hdelqrwIiM0DSzzgbr63PBdR87EPzYeDObblEwJnGOC4OulNyFhNGPUjItsD0lKhHsg==
X-Received: by 2002:a67:ec94:: with SMTP id h20mr9594885vsp.195.1557010573709;
        Sat, 04 May 2019 15:56:13 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id j42sm1479591uag.17.2019.05.04.15.56.12
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 15:56:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch: Do not use const arguments in twalk callback
To:     Florian Weimer <fweimer@redhat.com>
References: <87ftpvuape.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ad5756ca-90f3-bd07-e02a-7b7ace9c7cd3@gmail.com>
Date:   Sat, 4 May 2019 17:56:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87ftpvuape.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello FLorian,

On 5/3/19 4:49 AM, Florian Weimer wrote:
> The const specifier is not part of the prototype (it only applies to the
> implementation), so showing it here confuses the reader.

Thanks. Patch applied.

Cheers,

Michael

> ---
>   man3/tsearch.3 | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 33213a029..b64c9c6b7 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -39,8 +39,7 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
>   .BI "                int (*" compar ")(const void *, const void *));"
>   .PP
>   .BI "void twalk(const void *" root ", void (*" action ")(const void *" nodep ,
> -.BI "                                   const VISIT " which ,
> -.BI "                                   const int " depth "));"
> +.BI "                                   VISIT " which ", int " depth "));"
>   
>   .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
>   .B #include <search.h>
> @@ -271,7 +270,7 @@ compare(const void *pa, const void *pb)
>   }
>   
>   static void
> -action(const void *nodep, const VISIT which, const int depth)
> +action(const void *nodep, VISIT which, int depth)
>   {
>       int *datap;
>   
> 
