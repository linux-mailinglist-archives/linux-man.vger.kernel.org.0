Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD1B25E8D3
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728395AbgIEPl0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:41:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728323AbgIEPlI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:41:08 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3AFDC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:41:06 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c15so10313994wrs.11
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VvmeaZ6gz3Nc8KdlhVP0gGINAbQLlTXro6ZeCYCbqa4=;
        b=E8G4V115OCj7FPSY9nhNetLgGk/AG0+rlm9+gFhkMYhx42J9epr8Dka5nJWb5Y0Dt1
         A6pdyb0Lvkt/84KmHJD17XiXFPs6jCNs2BlxNQFGZ0nKdJH1ua/DXFRcERzIGqTAESlW
         VJ+3IhqmOGrM5OY32iGtw7RDIUSocD9dzrenEFDkTKGizZoT8yak9kFsAttFiWb1w15i
         I+HgdI7bnBnXjBQfwACRONFBSSUZf/NWW3+jRVVMLLt1BIUrh6sxejajs3JRjDWVroMQ
         gfr2WWWvJSEHm4jHtIR+hB8hzwf+yacOn37TA7d+pT4nEsWLlbAjV18yggRvMpwiFpt2
         HHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VvmeaZ6gz3Nc8KdlhVP0gGINAbQLlTXro6ZeCYCbqa4=;
        b=RJc47M6C0h9REbMPE7jjjhLtxEDRg0GtLVgBpdG+s7UI0CQVeJc6TG6ZhCZigbiooK
         tZO714abLWA/5Ij07ejJwdoLwHC8dUhg58fZKmVH0MhJ336iOOHdy+eoOhjRnqPPkjXF
         yFieJrBsztx1OwSb4TySBdjm0uGeU/NFKzqNnfscFynh1sdPeC1fE6KbNqudoB/OEpFi
         anq3J362dOHD+fjzIJSaG5FpqJERqHwts4tr2ZTpVn1USb7s0K+TPY0rhFp553nx4Fy8
         BTdeGvosyId+z1HY4TJ3fVyZYnzbThrKtLsPG4K+mNwtaN7EaWUCCrLJ8K9hBvSzrd2t
         S8ng==
X-Gm-Message-State: AOAM531be/Yq49Jx2EPrRjeusxHeQiNhrMOAw5DCB+72GHSCC6Kw5GNx
        WXlwr0gi1RD96lvZPLmYgr+oVjajSPU=
X-Google-Smtp-Source: ABdhPJyN/42XUgRfP0VPNGVynDH9kh/gbpaahP+/MehmREqqrASZhPlOPE/AY+D9CD8YfDsjujHHKQ==
X-Received: by 2002:a5d:46c5:: with SMTP id g5mr13393356wrs.416.1599320465317;
        Sat, 05 Sep 2020 08:41:05 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id g7sm20024632wrv.82.2020.09.05.08.41.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:41:04 -0700 (PDT)
Subject: Re: [PATCH] tsearch.3: Simplify type usage and remove unneeded casts
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200905105024.163147-1-colomar.6.4.3@gmail.com>
 <7f2cfb54-1994-5bc7-d885-0d60cd615c81@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5f25c03b-9b34-e4cf-2b70-69472bcfcfd2@gmail.com>
Date:   Sat, 5 Sep 2020 17:41:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7f2cfb54-1994-5bc7-d885-0d60cd615c81@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/5/20 5:35 PM, Michael Kerrisk (man-pages) wrote:
> By chance, I've just made a conflicting change, but also...

I noticed while rebasing, and was already preparing the fix :)

>> -    int i, *ptr;
>> -    void *val;
>> +    int i, *ptr, **val;
>
> Not quite your fault, since you followed an already poor example,
> but many people (and I am one of them) frown on declarations lines
> such as the above: 'int', 'int *' and 'int **' are three different
> types, and it's considered bad form to declare variables with
> different type in one source line. (It's very easy to overlook
> an asterisk or two when scanning the source.) Better is:
>
> int i
> int *ptr;
> int **val;

Agree.  I also do that in my code, but was following the existing
practice.

> Could you please recraft this patch against current Git, which
> changed in the last minutes...

Sure.

Regards,
Alex.
