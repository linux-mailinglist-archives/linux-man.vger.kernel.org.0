Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF7BF426D1E
	for <lists+linux-man@lfdr.de>; Fri,  8 Oct 2021 16:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242625AbhJHO77 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Oct 2021 10:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232200AbhJHO77 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Oct 2021 10:59:59 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A443CC061570
        for <linux-man@vger.kernel.org>; Fri,  8 Oct 2021 07:58:03 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id e12so30705445wra.4
        for <linux-man@vger.kernel.org>; Fri, 08 Oct 2021 07:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pZOh5E6wIj82vJH3ak+n0fSeYRhma11VV9GE5HBvWCE=;
        b=f3yUY0qyPiUGVuGigepO4sHUsDK8Q5ldgraGixv+EHjon+AfIuQSvZK9WTA48pT37q
         SaYTAB/voGPeKjqeG+8kg7tcITJa98Ci0J5OQIIO7mr8CsTaf/dLL4sE0HU+eNzJqFKC
         6roNRnSr/W66d7t4B7GckOaARKJY5toUhl76xRUYnPNxDkzqZn9IkPpnVc3EKC5ntM0t
         XT7cCyqwSi98jVpnbXZ41VBrNjLFx3WO8jSxMGj0ztZK4zycNlTrMtRCam8YKSD0Iku7
         n7jNSaMeDFKV+pVjuqZKzBZoRq4tzzOpfNPeHZSSAP9VisBN3qdoBy2h2shodOlmjUV6
         Ifgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pZOh5E6wIj82vJH3ak+n0fSeYRhma11VV9GE5HBvWCE=;
        b=aZehq8f8uk084s/Mif+yLwUcX0xk9xKBmw5RH+OWOHhxd8gEk45qOksqKFGFXixBoD
         bOOqQjw5MFgHPhDSzjpxNK8hARhKzn3Zaj0mNzyUdaD3TWhhvnOhtQdfyD3TpTn4myr7
         bWotiS9BLwB3UcclLGoYVVeauqm1WObKiDkQuJi5k4S/XQS2/gTDxTMEL0x4B2yLdrUn
         gDL+nKYfShfrhOi8nx0RnrLMwAzFcUR/j/hnqFGataLS3o4MxOzTlUxwEN6dIC8l8iuP
         g8Tipdj5/xJbqZn7g7VLPANkddqV6XOGbe9AYMV1drjscU6jq8MhfrmiSV0A2rgCV4B5
         Mbpw==
X-Gm-Message-State: AOAM5318uGBuCP5OWg+xx8S05EAi6naVWknqVHSD88H4lGj6OzYPrd2E
        xx1DDfMNZ7qr9Tq5XvwnqGLRlqZvoeI=
X-Google-Smtp-Source: ABdhPJylo4hWzIWGHKRRCcRaXq5w8p5jWyQXZtqkMJ85+sM9O0rVew6JeF2rJLRt4MGh1yQyn9Cx3Q==
X-Received: by 2002:a05:600c:1907:: with SMTP id j7mr3949217wmq.184.1633705082267;
        Fri, 08 Oct 2021 07:58:02 -0700 (PDT)
Received: from [10.8.0.18] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c132sm12418836wma.22.2021.10.08.07.58.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 07:58:01 -0700 (PDT)
Subject: Re: should free() refer to posix_memalign?
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
 <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
 <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6bfeeca4-66c7-6349-4009-e724c2eb2fd5@gmail.com>
Date:   Fri, 8 Oct 2021 16:58:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 10/8/21 3:28 PM, Jonny Grant wrote:
>> I don't like that list.  It is incomplete (the first one that comes to my mind is asprintf(3)).  Either we provide a _complete_ list of functions that can be free(3)d, which I think will be difficult to keep up to date, or we use the same wording as POSIX, and say that it deallocates memory allocated as if by malloc(3).
>>
>>
>> What are your thoughts?
> 
> That sounds reasonable.
> 
> "deallocates" sounds better than "frees"

When I was going to fix it, I noticed that we already had that fixed 
recently:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=cfc381be29fb7b4f642b8b333882f22628112abe>

Kind regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
