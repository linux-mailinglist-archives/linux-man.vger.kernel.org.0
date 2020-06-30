Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D9F420EF63
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2020 09:34:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731033AbgF3He3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Jun 2020 03:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730089AbgF3He3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Jun 2020 03:34:29 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B53CDC061755
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 00:34:28 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id n2so6183530edr.5
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 00:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KQbAEvdCV3rR5co4j6NysNIn7tFccMNGMBz7xCIrj/8=;
        b=n3aK8voHYxAb+twsT2RySkLWHRSM98duo+fGFEuSh92/UHTFs+pDgVpTZ6U5/pV4ex
         JpkWwMTvptqEx1f79mXcbivr687OIBUSElng5r4T5xFR/XDr8UBBraCuuy/yrhRkwmfO
         DmzcMSrQy3XTUuYIcdbsuxtElU9g6HA6oWWHM7pFcuYwE81z/ktwMDd1g7vTcknIQ0Sx
         75M9rvKhjJkWUwwK7+2MmINBYMKMIK7j0F2qcZGGb/5xOIEvh2d3xt/+hrSUI9ivDoG4
         n+fLDeuyWwykSpi2PiTiyXBnPm0SMOCJd4s6/pMRjdhq+iljfSozSggPmhP1+iCI6UJE
         8S9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KQbAEvdCV3rR5co4j6NysNIn7tFccMNGMBz7xCIrj/8=;
        b=hbvP7FGPeoCPu8lv8zzteNSzXcj0WOMNzKIr7hXEe97LdnpMswU/VaZIHkQGfn7EJp
         E3dTgc4aTF0wNsg/Yfb22rC4cwszIMGDOBRTd46fV/mC5rjD+lw7SdOYvctYOh32l2Sf
         EC6OiLKvwkAao6wrZuz1Yiu9XngqeDn4GB0thWTynG9ujT1WenswB1brhxIWaJ39WMoF
         AHBhEl5jMBvLdpJKfpENvSrUN106GMkEZaZ5w04XTjEIT3hxduLAJzjtCuGmAqw+jVvd
         8IxJwnnE89M5gMKySHcOl/1UIux42p4IOMQ9SiLLIlyeSLqKUBVEzPyUHtp7BV5JKiO0
         dVDg==
X-Gm-Message-State: AOAM532YfeStGpA/3lYCCK1/KeP4DkzwECCCK7eapNsfqNHuBtaAusaD
        sjyWbiCT+waYR7xzW4flvo8=
X-Google-Smtp-Source: ABdhPJy+L1vVg9EyAQO+c2hWWKKkbVK7myXHhr0+KndPZiDhEzQ5+J0bWjCMuonyuuVghsIKmvf9cg==
X-Received: by 2002:a05:6402:b57:: with SMTP id bx23mr20544272edb.304.1593502467463;
        Tue, 30 Jun 2020 00:34:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id c4sm1364712ejb.17.2020.06.30.00.34.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 00:34:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@i4.cs.fau.de
Subject: Re: [PATCH] hosts.5: Clarify capability for IPv6 outside of examples
To:     Thomas Bartelsmeier <t.bartelsmeier@gmail.com>
References: <20200629150716.3086-1-t.bartelsmeier@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <886b35b3-00da-6240-127d-6b85de3679ec@gmail.com>
Date:   Tue, 30 Jun 2020 09:34:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200629150716.3086-1-t.bartelsmeier@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On 6/29/20 5:07 PM, Thomas Bartelsmeier wrote:
> Resolves https://bugzilla.kernel.org/show_bug.cgi?id=208279
> 
> Signed-off-by: Thomas Bartelsmeier <t.bartelsmeier@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
> 
> The first addition should be relatively uncontroversial.
> As the prevalence of IPv6 continues to increase, it is about
> time to not only mention the IPv6 compatibility of the hosts
> file in the examples at the very bottom of the man page.
> 
> The second addition is in relation to the Bugzilla report.
> It is a simple statement which is true even for the default
> version of the hosts file and its two entries for localhost.
> However, I do not consider it necessary for any casual user to
> add both IPv4 and IPv6 addresses for any hosts.
> Therefore, I cautiously did not change the wording criticized in
> the bug report in case of any possible negative interactions.
> As a result, the second addition is meant to be for completeness
> and for use by people who know they actually need this.
> 
>  man5/hosts.5 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/man5/hosts.5 b/man5/hosts.5
> index cb055f5f6..1230f9303 100644
> --- a/man5/hosts.5
> +++ b/man5/hosts.5
> @@ -42,6 +42,7 @@ line should be present with the following information:
>  IP_address canonical_hostname [aliases...]
>  .RE
>  .PP
> +The IP address can conform to either IPv4 or IPv6.
>  Fields of the entry are separated by any number of blanks and/or
>  tab characters.
>  Text from a "#" character until the end of the line is
> @@ -53,6 +54,8 @@ alphabetic character and end with an alphanumeric character.
>  Optional aliases provide for name changes, alternate spellings,
>  shorter hostnames, or generic hostnames (for example,
>  .IR localhost ).
> +If required, a host may have two separate entries in this file;
> +one for each version of the Internet Protocol (IPv4 and IPv6).
>  .PP
>  The Berkeley Internet Name Domain (BIND) Server implements the
>  Internet name server for UNIX systems.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
