Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB5EF4563E1
	for <lists+linux-man@lfdr.de>; Thu, 18 Nov 2021 21:10:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbhKRUNN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Nov 2021 15:13:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbhKRUNM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Nov 2021 15:13:12 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABDDEC061574
        for <linux-man@vger.kernel.org>; Thu, 18 Nov 2021 12:10:11 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id u3so31729511lfl.2
        for <linux-man@vger.kernel.org>; Thu, 18 Nov 2021 12:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KfSG+lVxnI5OL+HlCPQzHO60u/5agdhvp34cUZ4OQ10=;
        b=SE5AUSIATHHnOxUCdDnTwB96LPNq4V+Rw79IcpKM8RRSDgETLQB+8Y5xA4K2w4BRqC
         QqTnpREU6kshSoo/DkTk0nB/yILKFymfwvELoP23Q2rU2vy8rZ1w/PgtVqk3JFAtzKJG
         0y0oPUKokzNNGDpeDIcMNR2UTt2mZDtmlM+hjvJMZGylqrwaEdCBvDRbwN9JbX+A7Bzn
         57JryHfwpmfMUV1oShGE7mXR/VwivwnGmb4WyklJDID6A+iNDL47bVU8Vc8z/nmRh43t
         cUcgCJk9g/OhEbZiGe7jAL+WYtVjMlaoxvVb4Qud+H/+7GL3YkWEh3POxqrrpfV6ao9w
         Cbag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KfSG+lVxnI5OL+HlCPQzHO60u/5agdhvp34cUZ4OQ10=;
        b=eAvif7Fqd6zqcdrDjyK+Wra2ic7P0kL6iTToDinw8/Uqb6PvRpNb9QnK7IXesFgsE+
         ZW7BubTiBzD1WVs4tQcytonMG9FYAzbnRYcRL+sEgWH/DqY8bei2oEo/16mAWxGFUsUs
         z13qv5/Z0adwapCVYLh414cAgND0LKHZT5foxvROFQqvqk9YlOsIsoRdj+LUD6EQWyOL
         Tm32r0NyVASCifXqtRqnv2zI739Bah8Hqg2ASSZU0tWfnwomrFp/e62V2ET4M1xNeY1I
         WpmA4fdnHot9AgpByuyuA4MoyvjhuhUpVKnma3L8rM/ww+djekM6bTXXorBhAgyVn9qW
         JA8A==
X-Gm-Message-State: AOAM530XI6Pk0a5wEKGf3z9pdWJdvhp3N+rwCN3ubarVRd6rUVrkYBWH
        qiS1mODC30SaT5ADy93il/o=
X-Google-Smtp-Source: ABdhPJy8BSJoCbFtpm5h+EFqtkspg6r+g7e8sQ+CewpcTA7SdZki1VsNV7fbrHEjumyAlHSNZgaEFA==
X-Received: by 2002:a05:6512:3043:: with SMTP id b3mr26183076lfb.218.1637266210022;
        Thu, 18 Nov 2021 12:10:10 -0800 (PST)
Received: from [192.168.88.200] ([178.71.193.198])
        by smtp.gmail.com with ESMTPSA id n4sm117999lfu.70.2021.11.18.12.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Nov 2021 12:10:09 -0800 (PST)
Subject: Re: [patch] proc.5: update the obsolete column name in net section
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <0624375d-9dc6-1cfe-fbda-a385f06df9a4@gmail.com>
 <ef3ca0c4-66a4-825e-8871-d50d7806e419@gmail.com>
From:   Maxim Petrov <mmrmaximuzz@gmail.com>
Message-ID: <3b392061-1970-a7de-817e-ddf5a6926a7d@gmail.com>
Date:   Thu, 18 Nov 2021 23:10:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ef3ca0c4-66a4-825e-8871-d50d7806e419@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/17/21 9:37 PM, Alejandro Colomar (man-pages) wrote:
> Could you please elaborate a bit on the commit message?
> 
> I don't know what the removed field was,
> and can't find anything in the kernel source code
> (it seems to predate git).

I tried to do my best, but I haven't got the good answer.

I searched on Bootlin's cross-referencer and noticed that there was a change in
the /proc/net/* content header between 1.3.98 [0] and 1.3.99 [1] kernel. The
"retrnsmt" column name has been added, but no "rexmits" column is mentioned here
at all. Moreover, the amount of retransmitted packets ('sp->retransmits') was
printed in 1.3.98 and earlier, despite the absense of the column name in the
header. As these changes have been done in pre-git era, I cannot determine who
is the author and what is the actual patch content.

For the man-pages project itself the first commit introduced "rexmits" is:
fea681daf (Import of man-pages 1.70) which seems to be an initial commit.

Can it be just an error and the "rexmits" did never exist in the kernel?

[0] https://elixir.bootlin.com/linux/1.3.98/source/net/ipv4/proc.c#L74
[1] https://elixir.bootlin.com/linux/1.3.99/source/net/ipv4/proc.c#L77
