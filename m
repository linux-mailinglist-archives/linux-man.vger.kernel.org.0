Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3C34200904
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 14:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732007AbgFSMuT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 08:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731835AbgFSMuS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 08:50:18 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 706B1C06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:50:18 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g10so8324320wmh.4
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LPWvPmHE3PiDGXgejqNQlK0pEopqnXIBq4sDSU+FohA=;
        b=MmKZ2xfjDpOWbH+3vcXOM1cnxT6M3M1krkSVGDJshDCDEN/3g6xt+jrzjJGtzRSAXQ
         XuZLTLBjCmloppHNv/2wTLWgVJGHY9i/F7AU4wtnFDAsoGnlz4HCOxHsLXV3Odz5lduO
         VmvWsTt1d2c/A3h4uuT5lg/MF4EREX6TiBHwJfnk9wVL3CCgmbRPsW1aE7tjZAMz/snT
         NK90Fh2dysTTbrkjOjNiv+RpXIJMNu2PkEoGjbT5tkLOT2Orcbh2yU83JeygHTzBex4a
         XCq+yn0KRlzThy7LhpiG780/LY5ill/OGYPb4DlVRMD8jEOxY61+szUNLXWsyt8o6XSF
         LC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LPWvPmHE3PiDGXgejqNQlK0pEopqnXIBq4sDSU+FohA=;
        b=c+/po+1kXFkLXsxENa1I9ckmyG+bCazC+fKclhH8C2nZVr1iHqkDMv5qF7HNlQpQuK
         XFbMbg5yCanjXrL2VQsLnSa3fDj3IGzvVL6CtSICpPi+MEF77uHgDViOVuiIo0IgQzr5
         HiOeAhoAY7f+COMXCwXPfL6/LByZofbOHsy+tngx31FNXZxhiiVlAr9Qu1Ba3Ia0mdKA
         seKHVc7EXeAvHKetomoCNE0RhGOPZElWZIC9Z9hE4iTSYriMQHWCeMyMIca0PItW7izh
         htvHFLjW531cUmZ7EqDj22OP/sicWiOt2cmqpDUcDkQI+ekrGAsjK5HrOgxji8HnqU0T
         1o5w==
X-Gm-Message-State: AOAM533eMqmiOt48rQbnxzjqjk2GQ3xQXtz7wDLcVpzZ+ftC93p4mKWh
        N9PuqkKT7/zmgY72r2O3e6eMOYf+p1g=
X-Google-Smtp-Source: ABdhPJw1zoIG5rWwiHLKj9UjHYzGfJcexXK6GJpxp1JvfmLH3Z7rf8eNmFneZDloUfE4tSZVZwNSvA==
X-Received: by 2002:a1c:23d2:: with SMTP id j201mr3570377wmj.186.1592571016939;
        Fri, 19 Jun 2020 05:50:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id w3sm7085008wmg.44.2020.06.19.05.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:50:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] keyctl.2: declare auth_key
To:     Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
References: <20200612153533.23783-1-open.source@oleksandr-kravchuk.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e3e6fa75-1371-3f14-f861-e75f548f4400@gmail.com>
Date:   Fri, 19 Jun 2020 14:50:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612153533.23783-1-open.source@oleksandr-kravchuk.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Oleksandr

On 6/12/20 5:35 PM, Oleksandr Kravchuk wrote:
> The variable is used in the code example, but not declared, leading to
> an expected compilation error:
> 
>     `error: ‘auth_key’ undeclared (first use in this function)`.
> 
> Signed-off-by: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/keyctl.2 | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 3dea4266c..08ae92d6d 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -2103,6 +2103,7 @@ main(int argc, char *argv[])
>      char dbuf[256];
>      char auth_key_payload[256];
>      int akp_size;       /* Size of auth_key_payload */
> +    int auth_key;
>  
>      fp = fopen("/tmp/key_instantiate.log", "w");
>      if (fp == NULL)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
