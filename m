Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC14620AE86
	for <lists+linux-man@lfdr.de>; Fri, 26 Jun 2020 10:49:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725793AbgFZIts (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Jun 2020 04:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725792AbgFZItr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Jun 2020 04:49:47 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C4A6C08C5C1
        for <linux-man@vger.kernel.org>; Fri, 26 Jun 2020 01:49:47 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id d15so6286645edm.10
        for <linux-man@vger.kernel.org>; Fri, 26 Jun 2020 01:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lDn80fdZcbgw5wc8TaMsfoipj22ia9QihIIKJTGjnEw=;
        b=CoGDpnQDhGdoEELkUWhGRJv9TCUNiV3AUlIL8yy9YFwYFjnNTxufp+P8zVurf+MAqQ
         vav+JvTL5h5Jf/kIJVjks+BXLKiqAfsH/RRPuNgWgoXOzJrKNtdPhaxE/GPXKNYXZ6bH
         w+R8HBnjE3GcLBlka63g6c2qjKzmrbYWDG1U9wXoUAv4q93ukBH/M5MTa3TdqofbTOYG
         vHMT/0O6hyZ3ZW70fVx6KCElmI8W0jka8TH2beiwzracfWVPsn5qOwYA1ZzFRajAYG9O
         6zgjPalevlZSP+xu78NrW/YsVA7+VroNCMp5/PBTj7sE6ideI1i3KypGy1syK7jvh2SZ
         K3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lDn80fdZcbgw5wc8TaMsfoipj22ia9QihIIKJTGjnEw=;
        b=B9fidb7uaB1a2rxWWqwmiWt5r9GoeXrudSbw8gApAjMpsKG+GcihH4UIUrCQ5LJEOY
         l3hxUAWWdOTZmGnObluEyKXIfN3aC5O4cp7UE7I72TONBilgN8x84Yu0PTWQQuBdWp2S
         3IfiioNqPp/aTHJ6UN+3By1ncBUYI9mglxz8H5+2mi0EAzZADysrhyRxa6uqK6AcMqSa
         +59oJ/Tnni1O7j0GjJ7DTIr4rMg5CCSwvl8zrz4ZlZ26mxdZDjTj+tbWRDlj/PpO6L8r
         snC3lfxNX7zvsDcJW1zJp8v9kpNHErvEET7lIXTUFRgh16Z7A6hPSZbamP+dWHA/LI+0
         vHIQ==
X-Gm-Message-State: AOAM530yWbz4gzC2dSkX8IoanOhsBoaS/yi9pKoWu4AU16ap62wwJLWb
        TmghP4zAXehJ+lTwBsM4rr9sPEbc
X-Google-Smtp-Source: ABdhPJyW4zTIBZmjtTZ9/vZi/SfmxDytQXdsMqi0ooAio/EUmnyvClr+cGZUTlUzDaEWnajjJmv1gw==
X-Received: by 2002:a50:f01d:: with SMTP id r29mr2303890edl.158.1593161386188;
        Fri, 26 Jun 2020 01:49:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id l24sm18344224ejb.5.2020.06.26.01.49.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 01:49:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] tcp.7: tfix
To:     Philip Adams <mail@philipadams.org>
References: <a670021f-79a1-435b-9abb-ae8c3fe95d8b@www.fastmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a6cf5ce9-dab4-f5a6-f53f-b65d4098b8c7@gmail.com>
Date:   Fri, 26 Jun 2020 10:49:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a670021f-79a1-435b-9abb-ae8c3fe95d8b@www.fastmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Philip,

On 6/26/20 6:46 AM, Philip Adams wrote:
> diff --git a/man2/poll.2 b/man2/poll.2
> index 73a206e75..940c51da5 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -183,7 +183,7 @@ file has been modified (see
>  .RE
>  .TP
>  .B POLLOUT
> -Writing is now possible, though a write larger that the available space
> +Writing is now possible, though a write larger than the available space
>  in a socket or pipe will still block (unless
>  .B O_NONBLOCK
>  is set).

Thanks. Patch applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
