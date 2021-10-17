Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A1EC430BDC
	for <lists+linux-man@lfdr.de>; Sun, 17 Oct 2021 21:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238200AbhJQTpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 15:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235221AbhJQTpK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Oct 2021 15:45:10 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFFBBC06161C
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 12:43:00 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id u18so37370891wrg.5
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 12:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nrbbz+XqEVX/XgXlN1KNgJCL6+YqZcR7Qho2Bw6CS6o=;
        b=UCvQcjuyQgFCnetqQKzptIeHne2hEobktgsw0YsCJ1VjvApKaKMM4B5/3VO56fRxVU
         44VTzkziWgcDrmQDBwnc/tts5aM50V5vvGM/3/iwixFIW7hBQHFEcaojXG2yFqZ9oB8x
         IeglcS0TQ/Ch7XTCEAsVgLAzkSPu04bRFTsXRSPqisvEWCrqv3OaiYLcIRpb5AJ+aUlE
         v/37XCviYlwNbpFJL4BTj9EzD5GQNmDS3AH+URLkcX2GDmZrJ6gJ/2KUZdmh3/OgCgMb
         u0XYZBUXUJ1wdOUzJIu84RpK+C/rHeLZUFNR7UXkL72cUJW2kOW2ud0M6IEhUKzpkQlT
         E5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nrbbz+XqEVX/XgXlN1KNgJCL6+YqZcR7Qho2Bw6CS6o=;
        b=vBSRB0g99oyh8W5zvi7MYOCE9Z2TeIus0TJI85aymf6WLofYuLwsJLcpzyAbLg/7zf
         P+nq0lu7fJs5j40ko6dqLZuipKVwrWvgr9ei/oNwydFCpv/b5xSCTCB01emANdBE48I3
         AiVK+XLh9fLx0k46wgkez2AHjpeUyKSz1mDY3NTq6GbtPLzBxx3R7f/4xQsmL7NpMzx8
         JmHzP62xT04qd2KnGeFYFfmHd4b1dgTUk5aE/Mm6lDl3VnGFzAx8OsV8jCGShNq9/7ai
         deHfAPzrH1rpbJQJQiEcppJASyAREFtoqsragcpO+3homCipCBunPqO4rTkRQ9lGJjoX
         8ghA==
X-Gm-Message-State: AOAM532QG3Oqga8FVPk/dWOKbVh1UhuajKFqq8em3ynmFUrB/2KZvYQJ
        P429nXldaGVfOlXmhv1tCvqkEpUk4Xg=
X-Google-Smtp-Source: ABdhPJyDd8dU7gILEHINsVzZAbxieeUqHuJLHScPfzs9tUr6WT6ZFMB7DiBrP9H0R/QotJtDpEpX2g==
X-Received: by 2002:adf:ec46:: with SMTP id w6mr18007153wrn.240.1634499779426;
        Sun, 17 Oct 2021 12:42:59 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 133sm266215wmb.24.2021.10.17.12.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 12:42:59 -0700 (PDT)
Subject: Re: [PATCH 16/23] man-pages.7: wfix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-17-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <dbcef825-11f8-3fc0-8b75-fed4843c55be@gmail.com>
Date:   Sun, 17 Oct 2021 21:42:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-17-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> 
> Saw this while preparing the "switch to \~" change Alex invited.

Ping.  You're still invited :-)

Cheers,

Alex

> 
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>   man7/man-pages.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 6cb805343..3819dfd97 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -638,7 +638,7 @@ makes it easier to write tools that parse man page source files.)
>   .SS Use semantic newlines
>   In the source of a manual page,
>   new sentences should be started on new lines,
> -and long sentences should split into lines at clause breaks
> +and long sentences should be split into lines at clause breaks
>   (commas, semicolons, colons, and so on).
>   This convention, sometimes known as "semantic newlines",
>   makes it easier to see the effect of patches,
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
