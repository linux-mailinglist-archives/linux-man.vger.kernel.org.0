Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECF413BE8DA
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 15:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231438AbhGGNe2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 09:34:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbhGGNe1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 09:34:27 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FB75C061574
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 06:31:46 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id i94so3091455wri.4
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 06:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HRJDeTFUY5mmTjO/OPJmG3mHWr0OI2b6jynVTUIt5bM=;
        b=rKLQS73Vjho+hK278ZzSskYhu0MrgZPCWWwEwq4lZuFE0noBjIM1qDDjKsB6rdM2WO
         lH9F9YUAzn3JVX4Dhj4okkvYZv315rZBvEWotfJYQop1y4HXsBKHyWCaGJLZuEsOTUY5
         JmLJB9NTERUPS1AtswvBCom85P2y0KZn8MeVldLsh3j5OElcwS0ZgecW2EE01Uy63dML
         cOgAe0Elm8BJ532trPpWlN8iAhLKYW62w61kOUm9chODZWp2WJIYBRJeyv/sEHaW7xnp
         AKC9Na2xsDFWCKLe61zdF9Ncx7AUk5XdPLTKaoBO0ttA9ZlJazutF65nUwM74M0YPHBq
         tFtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HRJDeTFUY5mmTjO/OPJmG3mHWr0OI2b6jynVTUIt5bM=;
        b=iNe+uyfo+WHdQCnfzwmvfryuGt6SaOg77MxvpLGUYyCh8a+rIuWQ8DK/Mt3p/u3itx
         w2UUKZiQMQuaRBSKQn1UR6KY6mVT26UDF1XnKP+1JS77qx6mhTZs0FXFBsGvKDUMDGgU
         gVEVCbbNdalxPzYh8oUKit2rWb8gQQvufS26OJCrDVfYpLvXQ51WdCcTp5MckX9zWTcg
         oVIIyKCYHInmXyCA5dg9PweE2hoNw0D3f+bG5tBYPKOuqXL8hyHduP4e/+fAyncOwdCa
         elKxA4lLrVS3/uYAwO4l850BI0Ey/xYWmQV3POV9K8dohExRRKISCNhjGutO0Gh5HheF
         tE+A==
X-Gm-Message-State: AOAM532lPz0jTbgDMuJVVqsemW33+QvRQmcY5iZhpSlZN56QEOnosv3R
        XZr5VrTmRsuSiXu0UHE7CO2bhYe40Trqyw==
X-Google-Smtp-Source: ABdhPJx+SkFL2qZA+BnsJEdiP254pgSnar1wlh2QSMLqSSNwvewbgVr7q8jjhtlNPN+EYVvsAmRCnw==
X-Received: by 2002:adf:e101:: with SMTP id t1mr28202297wrz.215.1625664705102;
        Wed, 07 Jul 2021 06:31:45 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id l4sm19101032wme.26.2021.07.07.06.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 06:31:44 -0700 (PDT)
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
Date:   Wed, 7 Jul 2021 14:31:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 07/07/2021 13:31, Alejandro Colomar (man-pages) wrote:
> On 7/7/21 2:22 PM, Alejandro Colomar (man-pages) wrote:
>> I disagree with this.  It is likely that the behavior is that, given the current implementation of Linux/GCC/glibc.  But it is undefined behavior, and anything can happen.  You should just try harder to avoid it, and not rely on any possible outcome of it.  GCC people may decide tomorrow to change the behavior to do some more agresive optimizations, and the documentation shouldn't preclude such a thing, as long as it's legal according to the relevant standards, and sane.
> 
> The standard (and implementations) define a set of thing you can do in C.  Those are an equilibrium between usability and room for optimizations.  Some things must remain undefined for the language to be more efficient and simple.
> 
> If the language, or an implementation of it, attempted to provide a defined behavior for absolutely everything, some optimizations could not be done, and also, it would be much harder to actually implement it (and also document it).  So for good reasons, UB (undefined behavior) remains undefined.
> 
> 
> Cheers,
> 
> Alex
> 
> 

Hi Alex, Florian

Do you think this would get optimized out by GCC too?

size_t safestrlen(const char * s)
{
    if (NULL == s) return 0;
    else return strlen(s);
}



Maybe the man page could just state:


NOTES

The calling strlen with a NULL pointer is undefined behavior.

Cheers, Jonny
