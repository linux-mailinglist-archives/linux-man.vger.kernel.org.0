Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ECFC380A57
	for <lists+linux-man@lfdr.de>; Fri, 14 May 2021 15:22:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbhENNXK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 May 2021 09:23:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230075AbhENNXK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 May 2021 09:23:10 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E65A1C061574
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:21:58 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v12so29996392wrq.6
        for <linux-man@vger.kernel.org>; Fri, 14 May 2021 06:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P2Z2L2vXaq2N3vv2XNt/9TaLSn2VfZMPMdO6WDXp23U=;
        b=XmMVshzxNjCyrretUTiv/CXeTJVwVXjGDJfbDUiasjztwRNXzzDM0j85cNXgcOYfja
         AyBMcyxfs2ZGbkCApcvp7sMc59vU/Z95vkUPUSQF1QqNfA9LB/wDVRCXG4tFuT4zKMVI
         1jY1SNklvoWS9/V+K0NCaJzo3PpUzEHwxdkX79MOs3VuTQLOCTIRYQsuvk8Qid92sNMn
         VBiz9vUVZmyrUMpsUh/TC/zVRp9/3AL3/vy8vFsD9Nv/aOiclhirBsjKsF7UfQcwLg/j
         CJzpBklwzRGggCTmYpOtBwJI7WYKBioP2dZNPftrebzaNvYl4JE0h20YC+hcxxo2/3R4
         sUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P2Z2L2vXaq2N3vv2XNt/9TaLSn2VfZMPMdO6WDXp23U=;
        b=ZiMHjTI7pFgGn6VwZ5UpM104SLOOqMRotk/GnDshjzSXAqy9serACjujriqx/VNNqN
         ik+gElKNaW2fpXoRiTXfkvY1wXuK7QIalufxuS19jUsVlllXkQOGNMhn4QHsUWSh9jt4
         rTbzMr+LBGlRQ78GN6U20c5C3stqO3exJSbyXHo2yOk41BLfKmp/Usku/gsGPnCj/GIl
         BXl3/1monaEucHDBMnt6FZ2jTZrFbwVBtT0F0ainC1SRiW2k7Sm1zgBImUR812Ltg3Ws
         g9XqLAqf0N/Waa9PosKar3F0ozWDNlMZ00nAVPP7aKuO++sK+X4U5ZErZdOHkG31gprb
         plog==
X-Gm-Message-State: AOAM533dry1rA/pb1vubuXu4Kk9bt1eAFHqKGOx08h5knuT9TqTwAy2d
        +S4LcHEv+YfqiEWKTDx4dM3q1QLeiac=
X-Google-Smtp-Source: ABdhPJwjvKny9IrxykATWQ6Zrm7LFGfGWKgn8PKC98bLjgIyOFoxOgkWIt++Qg6703Lwg4TqDH5AKw==
X-Received: by 2002:adf:d084:: with SMTP id y4mr59419896wrh.0.1620998517753;
        Fri, 14 May 2021 06:21:57 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 61sm7216225wrm.52.2021.05.14.06.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 06:21:57 -0700 (PDT)
Subject: Re: [PATCH] getaddrinfo.3: Fix includes
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, jwakely@redhat.com
References: <20210514131158.16904-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <499d96ce-cc52-e463-7bd2-86f7bea7e260@gmail.com>
Date:   Fri, 14 May 2021 15:21:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514131158.16904-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/14/21 3:11 PM, Alejandro Colomar wrote:
> - Remove unnecessary includes
> - Add a comment about why each include is needed
> - Sort alphabetically
> 
> All this has been done using iwyu(1):
> 
> $ iwyu getaddrinfo_server.c 2>&1 \
>    | sed -e '\,^#,s,//,/*,' -e '\,^#,s,$, */,' \
>    | sed '/^#/s/\w*\.\.\./.../';
> 
> getaddrinfo_client.c should add these lines:
> 
> getaddrinfo_client.c should remove these lines:
> - #include <sys/types.h>  // lines 1-1
> 
> The full include-list for getaddrinfo_client.c:
>   #include <netdb.h>       /* for addrinfo, freeaddrinfo, gai_strerror, ... */
>   #include <stdio.h>       /* for fprintf, stderr, perror, printf, NULL, size_t */
>   #include <stdlib.h>      /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
>   #include <string.h>      /* for memset, strlen */
>   #include <sys/socket.h>  /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
>   #include <unistd.h>      /* for close, read, write, ssize_t */

Oops, the above should be:

getaddrinfo_server.c should add these lines:

getaddrinfo_server.c should remove these lines:
- #include <sys/types.h>  // lines 1-1

The full include-list for getaddrinfo_server.c:
  #include <netdb.h>       /* for addrinfo, gai_strerror, freeaddrinfo, 
... */
  #include <stdio.h>       /* for fprintf, NULL, stderr, printf */
  #include <stdlib.h>      /* for exit, EXIT_FAILURE */
  #include <string.h>      /* for memset */
  #include <sys/socket.h>  /* for bind, recvfrom, sendto, socket, ... */
  #include <unistd.h>      /* for close, ssize_t */


The code contents are correct.

> $ iwyu getaddrinfo_client.c 2>&1 \
>    | sed -e '\,^#,s,//,/*,' -e '\,^#,s,$, */,' \
>    | sed '/^#/s/\w*\.\.\./.../';
> 
> getaddrinfo_client.c should add these lines:
> 
> getaddrinfo_client.c should remove these lines:
> - #include <sys/types.h>  // lines 1-1
> 
> The full include-list for getaddrinfo_client.c:
>   #include <netdb.h>       /* for addrinfo, freeaddrinfo, gai_strerror, ... */
>   #include <stdio.h>       /* for fprintf, stderr, perror, printf, NULL, size_t */
>   #include <stdlib.h>      /* for exit, EXIT_FAILURE, EXIT_SUCCESS */
>   #include <string.h>      /* for memset, strlen */
>   #include <sys/socket.h>  /* for connect, socket, AF_UNSPEC, SOCK_DGRAM */
>   #include <unistd.h>      /* for close, read, write, ssize_t */
> $
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
