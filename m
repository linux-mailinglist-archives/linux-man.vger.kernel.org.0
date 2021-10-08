Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C4FE426FCA
	for <lists+linux-man@lfdr.de>; Fri,  8 Oct 2021 19:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231245AbhJHR7U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Oct 2021 13:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231237AbhJHR7T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Oct 2021 13:59:19 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9696C061570
        for <linux-man@vger.kernel.org>; Fri,  8 Oct 2021 10:57:23 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id r7so32102005wrc.10
        for <linux-man@vger.kernel.org>; Fri, 08 Oct 2021 10:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=esjFrEgah6vXr4YCez98dzjDe8swtJYRuN+Wr87L/I4=;
        b=iUZDezqITAeoVdcRId9xz3upS1nknGp9fno/pujxSkw6UqKX/ZZwrCDdggcRW77vNx
         xQ3xgKCDJX6Qm+hFz1eKZecQFPm3LHd4t0lrF9j5nLF8NEJSoJiUgm+3rd+jMR/c9dfs
         L2at2g6/87n5dHJJdubAjCpjqyyy6vEFnOkjpQNkkRHhMNUQaqTTkR4YFu3i9SWIH1yA
         u/m9Wp2EpMDVWtRPpCdRpRiouT/GD3QwqkHbAnPun26kiQzkUNT8Boc72lLx+Tetfw1F
         E4ymNlucWRe6WkMQRCHJGDcJ81N8tOIayrq/vS8nNkmXG/Az133fDOvEU4v68g3MXlMY
         u4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=esjFrEgah6vXr4YCez98dzjDe8swtJYRuN+Wr87L/I4=;
        b=US4YkGB++E4rPaVIa72mGFBSG/KVdbhtIyOTbFv9zdE2z0Ij6Me8d/nYWKNJ3e8mGl
         GXKN8yJhVRNpSe/B87FD7itTPg1zNhXBqDKVddXHhW/DXkxtAxggdRgiuTYB81MSx452
         1YgzHXqOv9Mg972dI0jBNnnFvg+Tg9nx+85bArzCba5fjv5T2bQZm54Y37v5w6/Q+NeW
         HNgC5PY6nDeehuxARwxAZskVhrDL6HwIMUJAJqbUg9Hh+H9VsRlTw4LshjP9ryjj/wBh
         z2HCFlQ6ZznFBWxK4zUQMFRv+XMcJkway9k1FNmejTsCsQI9fhsgiOrTptH7mlXpvgki
         s8xA==
X-Gm-Message-State: AOAM5305n3BgqPoghiNFlxr7VRxy7tadHnoK5xmM11vHZIWsOrDm71kC
        pooDCV6TZrAdFJQmIvY+Oa9kjXID2VGdxA==
X-Google-Smtp-Source: ABdhPJwy7u1FfHT75VOmbMVzdGO6UMxuYg0Pz1iZBlXSdtY1ai0OPAakIvQbkYiW/eRuZYBqAuuB+A==
X-Received: by 2002:a7b:cb82:: with SMTP id m2mr4767578wmi.171.1633715842147;
        Fri, 08 Oct 2021 10:57:22 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id v191sm3202822wme.36.2021.10.08.10.57.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 10:57:21 -0700 (PDT)
Subject: Re: should free() refer to posix_memalign?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
 <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
 <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
 <6bfeeca4-66c7-6349-4009-e724c2eb2fd5@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <63fc78fe-ea5d-d351-0a2e-f05395e1cade@jguk.org>
Date:   Fri, 8 Oct 2021 18:57:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6bfeeca4-66c7-6349-4009-e724c2eb2fd5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/10/2021 15:58, Alejandro Colomar (man-pages) wrote:
> Hi Jonny,
> 
> On 10/8/21 3:28 PM, Jonny Grant wrote:
>>> I don't like that list.  It is incomplete (the first one that comes to my mind is asprintf(3)).  Either we provide a _complete_ list of functions that can be free(3)d, which I think will be difficult to keep up to date, or we use the same wording as POSIX, and say that it deallocates memory allocated as if by malloc(3).
>>>
>>>
>>> What are your thoughts?
>>
>> That sounds reasonable.
>>
>> "deallocates" sounds better than "frees"
> 
> When I was going to fix it, I noticed that we already had that fixed recently:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=cfc381be29fb7b4f642b8b333882f22628112abe>
> 
> Kind regards,
> 
> Alex

That's great.

I noticed this page has a date  2021-03-22     for the 5.13 at the footer. But the release tarball is dated 27-Aug-2021
https://man7.org/linux/man-pages/man3/malloc.3.html

Possibly there is a reason the date is different?

Kind regards
Jonny
