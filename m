Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98C2A2F07A0
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 15:50:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726228AbhAJOue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 09:50:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726069AbhAJOud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 09:50:33 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96D7CC061786
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:49:52 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id q75so12659059wme.2
        for <linux-man@vger.kernel.org>; Sun, 10 Jan 2021 06:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z+KDowLTOB6sb7H3WlEMDz3h0gote1M1nvpzkj4O8Go=;
        b=aTWMCgIPWdDMF/5NH02x+29PDsAsg1xNdofSpC1kpIQ3NMDlxVH+Bv8FyEZylT0iNR
         4XqWYILNEsffz+sYtltBLsm72RVecxiz88UY2NO7Z63g3n+IP9U/L7+waeQFW/GCb2Su
         Z+Xxb9Z/P04H0y04VOGjwvQQYmolwKKKilCB15P+YRtOlHnALpbuM4qTWjuS19F0x9c7
         UsyLlB1lH3xcjdtJyFMyvvndXRdrI0WLV97ha5PEbaKX2AuyAn4OYbnUMcFYBnr9ncQt
         6ki5V7/Ku2QanOnRS1h626O+Wfz3XS1aJzyK3MZKNIQRTkYRhIIJCynxihkCaUvEmRAh
         BELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z+KDowLTOB6sb7H3WlEMDz3h0gote1M1nvpzkj4O8Go=;
        b=JJcqU9Ykiv24FO97dtp+iBhIOGCgASV/IG0EvG5PUW2bIpVQADGYJ3nmGUN4Y0b2U9
         v1gfjQ78XnIInorgQKXy4LYMS6VJ3z1bqqQ4PWd2VLmyjHDc2GBqAaDjXz1kGB3X0X37
         hl8S81CQyIuCTJEXNQq/6AXnp2NNaTfsy5TzHQBmb0y5WEL5iLl5ZKqiyQYF+MB/wc0I
         UrE5jt8AePpgYftxW7EAldzmWW5Rk/GIJYAu9jCkqUa8y+QvH3SP41hCZqKBM/qNKpzM
         evomINT1vx8jtMUN5T0bAfpzIM08Q4e+fFXHrNdY9IiX8lWgragHjvUquZKxHybksomk
         1H7A==
X-Gm-Message-State: AOAM530KhAV4nyLhJd6pFr3eodTpZtBg4mgjx1NIg7tGZVCdD0htXZJe
        dFCmtRsOOaXYv6jv8L4k548isUdJ5Bc=
X-Google-Smtp-Source: ABdhPJwaRm6u1NYOPkg/U7OnJGKixfm7FjbkG4A0NHiH6o6oG2ShAPNrS8+BrPQnpizw5+ii03T++w==
X-Received: by 2002:a05:600c:cc:: with SMTP id u12mr11442361wmm.42.1610290191405;
        Sun, 10 Jan 2021 06:49:51 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id m18sm20831235wrw.43.2021.01.10.06.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 06:49:51 -0800 (PST)
Subject: Re: [PATCH] netlink.7: Fix minimal Linux version for NETLINK_CAP_ACK
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210110140027.14937-1-pali@kernel.org>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <880e9bdd-9046-a7eb-4d21-697b56cb1d7e@gmail.com>
Date:   Sun, 10 Jan 2021 15:49:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210110140027.14937-1-pali@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/10/21 3:00 PM, Pali Rohár wrote:
> NETLINK_CAP_ACK option was introduced in commit 0a6a3a23ea6e which first
> appeared in Linux version 4.3 and not 4.2.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>

Hi Pali, patch applied.

Thanks,

Alex

> ---
>  man7/netlink.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index b14e981d1..ec5d0e71f 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -491,7 +491,7 @@ The
>  .I nsid
>  is sent to user space via an ancillary data.
>  .TP
> -.BR NETLINK_CAP_ACK " (since Linux 4.2)"
> +.BR NETLINK_CAP_ACK " (since Linux 4.3)"
>  .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
>  .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
>  The kernel may fail to allocate the necessary room for the acknowledgment
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
