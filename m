Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7332B265A4F
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:18:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725601AbgIKHSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725536AbgIKHSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:18:02 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD7AC061573;
        Fri, 11 Sep 2020 00:18:02 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z4so10412129wrr.4;
        Fri, 11 Sep 2020 00:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KyjLVfX45KSXSuX8Vg6Kw3nP1R1rfFVQFcRdTFRc1ik=;
        b=CuZgTYBjPvyld2IOdnG+BsGnfywWsIBPNPolw+WH6JCvSsYBunctm4hZSg9iI/pAKF
         EkFWpMO3eCEAJA8M9R6StsQjT9/A4W4nGNpgGRFtcNFVR79+0fmC3ni0h+l2fKIWv+Gw
         g0vShpOh/y27yyZMEvf/+dBrfG+AQe7SZZGHGpfagIL1gTlCTCrbuTnwbuaixu0dz6Tv
         815Y/rockJPkM/YokD8qlco5vH/jYJd/fIER94P4MbYSnK8FSU2vryYhlAU2P8mB3RgX
         EgFVKV1Wd88puoDhlfSY1eTg7Jgjlgn6vRkjVm5jQkrq53nkj8F/L46eHiB+XeeaiWdD
         dM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KyjLVfX45KSXSuX8Vg6Kw3nP1R1rfFVQFcRdTFRc1ik=;
        b=R0s1p8Nfhe/IJQJFeXML8mQzVo8oe2F26ZfAHBwcy6IlSac/mSKjgABOMggr+3hEJU
         8R+6plj4smXAOu1NHms3g6sxEUKg9FyWC/URhWiC4gDzDlOpE88UmOmfUkulM8D7FEKJ
         Y4LgW7AKLzCVZgNrQLKPkkYFQZaUWvDge6gPMce/MRS3ulUtH/Xj20af4lRch+5J/E2B
         qT5Jrqkz4ToxBIv9A3x4HOuBU5A/c/TMLTpmfaKGae/zfe/ZZHXi82DKx2rzxk/QuluQ
         HOaeF43kP/xFSGXihM1T6ypb2WGp4uf90A8gwHkadLbBiLxajD41IxPDtbiYmEjR4JOs
         8ong==
X-Gm-Message-State: AOAM53168rA1izDgBCZ6ShEdCmMPHiSD0q7j+jaApJF+y2KThF+Nko+A
        F+AByrjfyymRt7tdD8MAlKTpPIRTDSU=
X-Google-Smtp-Source: ABdhPJxG9p9bT+f3dZchsVX8Fy1j8440ouPXphLAq8Ylk1sAHjrKSZrUimOYAr9pffFvCqDg+FONqQ==
X-Received: by 2002:adf:ee01:: with SMTP id y1mr646358wrn.2.1599808680539;
        Fri, 11 Sep 2020 00:18:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id j135sm2634955wmj.20.2020.09.11.00.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:18:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/24] getpwent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-14-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cea29593-930e-29bc-47cc-376c469fa301@gmail.com>
Date:   Fri, 11 Sep 2020 09:17:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-14-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/getpwent_r.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
> index 64f27dbfb..0f7581091 100644
> --- a/man3/getpwent_r.3
> +++ b/man3/getpwent_r.3
> @@ -190,7 +190,7 @@ main(void)
>  
>      setpwent();
>      while (1) {
> -        i = getpwent_r(&pw, buf, BUFLEN, &pwp);
> +        i = getpwent_r(&pw, buf, sizeof(buf), &pwp);
>          if (i)
>              break;
>          printf("%s (%d)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
