Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F52831D746
	for <lists+linux-man@lfdr.de>; Wed, 17 Feb 2021 11:09:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232152AbhBQKGL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Feb 2021 05:06:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232093AbhBQKGF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Feb 2021 05:06:05 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45A51C06174A
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 02:05:25 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v15so16726597wrx.4
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 02:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=exIy6Sv4s62dVU+DYHxLhA3TJXFcgRZjKiSgUXNnlmI=;
        b=HId2jUJl1r11CCt3YfkMlMou1xy+H4URPtMO7xF0/Bmo21A8wv3717eNpTcsHSSihv
         5W2MF5HF9PprHc30JsK0qSe7d5PnELbdygnje689rVvKV6kyt5mYJ5meLUtRvCOSLvf+
         +KGymR4YphKZllBcgnHSdBQKGtDJvCitROTAqLSqTgYwi51OcxK7woj2ITIKy/NJi8PF
         blHX7CGSyvRaggzqveuUTIIxWFxI4hLZMYJZB/opHyt8jCxndbX3o1AOOiy5Zl7HeVhN
         4ZcK1lCZc+KW4nzJxmWHCGptJBWd0EEHFYDlmSVjWBnF5Bf+UM7akhqFK12GSGdprJ2d
         H0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=exIy6Sv4s62dVU+DYHxLhA3TJXFcgRZjKiSgUXNnlmI=;
        b=Lc3Owb9LwzpNsGGMzHX5d/3ePAMeJUZ8cxYr8+0vUWQHSl7GX/1zZ87Lnrj63zaCFm
         XmQ8hCSJ2+SvM1Q2KEJX8FB9REprbVBVnOQ/x0zifBw7FQmhT46w/MfiYMabzc9XpQrl
         397TMJombg/4MtxF6nZY0tMrk25hsqwQsSyQa9ni71NFzML339v+58g8qSzl6Lml5TY5
         CJ8ofJ5L6ku7h0ln/biUhz1rel3jB3PZNyQL8Wkk0wOVdoNSNKuhq+N73ukfiptua/EQ
         VN2I1iseqdhseiMwngS/PA5YfHbKml4Cx+zteRNPBJ/BRMaD18WwodQQAyOP8PIlox/g
         KjoA==
X-Gm-Message-State: AOAM531WeB+3UhV7JLYI9DwP+NaEGlDsnMYv5jc3xCHqe9iQii1vtyEq
        4MSSHWrwYiEndd30O3cbUYE=
X-Google-Smtp-Source: ABdhPJyitS2mBVYas2VU0qKcW+Y++PqW3JQ4J9b37rtB+ryaUjtqtX9nTvCOVw/Ym0lAdjznFmH3rg==
X-Received: by 2002:a5d:6089:: with SMTP id w9mr28415718wrt.412.1613556324071;
        Wed, 17 Feb 2021 02:05:24 -0800 (PST)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o13sm4093261wrs.45.2021.02.17.02.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 02:05:23 -0800 (PST)
Subject: Re: [PATCH] strerror.3: VERSIONS: Document that strerrorname_np() and
 strerrordesc_np() functions first appeared on glibc 2.32
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210217095231.27727-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5bb47a4f-ca2a-2a65-3d40-2b69d4caab7c@gmail.com>
Date:   Wed, 17 Feb 2021 11:05:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210217095231.27727-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/17/21 10:52 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> I struggled to use strerrorname_np(), until I found that these were
> so new that Debian Sid didn't have them :)
> 
> Cheers,
> 
> Alex
> 
> ---
>   man3/strerror.3 | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 5dfe76f69..07684c40a 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -235,6 +235,11 @@ Insufficient storage was supplied to contain the error description string.
>   The
>   .BR strerror_l ()
>   function first appeared in glibc 2.6.
> +The
> +.BR strerrorname_np (),

tfix: please remove that comma :)

> +and
> +.BR strerrordesc_np ()
> +functions first appeared in glibc 2.32.
>   .SH ATTRIBUTES
>   For an explanation of the terms used in this section, see
>   .BR attributes (7).
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
