Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE75D3C254A
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 15:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231761AbhGIN4w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 09:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbhGIN4v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 09:56:51 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D773C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 06:54:07 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id y21-20020a7bc1950000b02902161fccabf1so5939957wmi.2
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 06:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=90fhIyoBAEzc4pAHffwze8Sz0S5WG73c2BpX8ZqqvKw=;
        b=lNeZVKXxq7e1PidXS3vU4E0PvKLT3X1DlhhXyWMBcGEz13QSlR+eOCJVUx6kXYsxlW
         lGFpDP2jdqe3m4UXBfAkRd75EuCj0C/s1g/sz75pCqBz/+UzanC7jxKsKbmFqngkjrUO
         OaPIPitIWrxXUKaPKyrhqH0YVtWWCfvBirflwGWckiGWES8fN3h2FpnwIwrtdY8qceMa
         MZkaercUuIrwYQFknFSHfHlMc4lMxB/JDP73iAd/fCghu9iDiHmkZSRv75G9tqy052LG
         ggQN5uU0FqYXgVb+wGpvStgTGLGwS4lLPuuK+3aU6bFlRs66GPS1Q5C3MfllGdbG/2Ub
         n93A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=90fhIyoBAEzc4pAHffwze8Sz0S5WG73c2BpX8ZqqvKw=;
        b=fvjz7ln8yxiMY5bJRd38wb6IAua/h8pTNZw8GJnSgrOnz/ZD3mZptgs6TjbUZrYyrZ
         eHnpWSnPRABA//QFxMriRjwRFq5zOf5urSsCiAtYnablo/pBpiiBFoye158IGPsPlBGS
         gCpcjVULJ42Rhu+5xV8s4hr5V6EF/jtqRd9kM088Dv+gZZfCSAu4uZkybjYAEb5Da0qU
         vj5pnxVNwaGa/NNjIpvtoSub/SoA7BbzKjEaC/yRJgratvfvdbSbp3tQR8+ax93o4z5A
         wwykzyBPH97uk+Jzn42S1SvI2n8u7pEMAxIGLhk4FL3E+PshJUuiyr5NWAkEx6igFRkG
         WDFQ==
X-Gm-Message-State: AOAM532xiSHqr86ac9+ZBulJO0QFiugx1hfG3qKsII47ThntaWzTgWS7
        wjt3xAGewbVCwvxmxH9pco8Utg==
X-Google-Smtp-Source: ABdhPJzW5E4z9pRbCvA+PhoQcbD8syt+qqTo03NYeIdvAYXBq5Cm8mTOU27l33epCT/nBbvBUmeopg==
X-Received: by 2002:a05:600c:a01:: with SMTP id z1mr12061602wmp.77.1625838845789;
        Fri, 09 Jul 2021 06:54:05 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id z12sm5195889wrs.39.2021.07.09.06.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 06:54:05 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strlen
To:     Segher Boessenkool <segher@kernel.crashing.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     gcc-help@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <20210708234929.GU1583@gate.crashing.org>
Message-ID: <3ddd0291-04d2-b35a-ce81-034bb0d9392a@jguk.org>
Date:   Fri, 9 Jul 2021 14:54:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708234929.GU1583@gate.crashing.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/07/2021 00:49, Segher Boessenkool wrote:
> On Thu, Jul 08, 2021 at 01:06:17PM +0200, Alejandro Colomar (man-pages) via Gcc-help wrote:
>> On 7/8/21 12:07 PM, Jonny Grant wrote:
>>> We can't guarantee safestrlen() won't be called with NULL. So because 
>>> strlen() itself doesn't check for NULL in C standard we'd need to call the 
>>> wrapper so that NULL can be checked for.
> 
>>> size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
>>> {
>>>     if (NULL == s) return 0;
>>>     else return strlen(s);
>>> }
> 
>> That also allows differentiating a length of 0 (i.e., "") from an 
>> invalid string (i.e., NULL), by returning -1 for NULL.
> 
> It is incorrect to return any particular value for strlen(0); not 0, not
> -1, not anything.  Since there *is* no string, it doesn't have a length
> either.
> 
> So instead of making some function for this, I recommend just writing
> something like
> 
>   bla = s ? strlen(s) : 0;


Hi Segher

Yes, this could work. But it does rely on programmer typing it like that every time... Maybe an inline function better.

inline size_t safestrlen(const char * s) {return s?strlen(s) : 0}

Perhaps there are too many email addresses on this cc list now.

I'd prefer a Annex K of C11 style function ISO/IEC TR 24731-1 for strlen() - but there isn't one such as strnlen_s.


> 
> wherever you need it.  If a function name isn't self-explanatory, and
> even *cannot* be, your factoring is most likely not ideal.  Code is
> primarily there for humans to read, it should be optimised for that.
> 
> 
> Segher
> .

Good point
Jonny
