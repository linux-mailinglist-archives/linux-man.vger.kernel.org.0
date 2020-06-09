Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDE221F37D2
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 12:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728782AbgFIKTP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 06:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728703AbgFIKSN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 06:18:13 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE208C08C5C2
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 03:18:12 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so20645559wrp.2
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 03:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L0YCiMZXX3hDwJxJys4wtJCFdlMISLYQXJsVtLYZWHc=;
        b=r9et1HxJTfehuhs4fdsMudwLQOquwt/dHBUf4E1yWpIYcrpZO9fpTA9kjuNIANyikP
         HlYJWxl386ygV5O8Nj5ejsa5vLBrzRxR7F0iMytlfjQpXCVgFuDmlf7ux8i1w2Xz7ORO
         Rroir+Yg4/VlD64tBHVNNmM/mOLHpyLPrb/Txf9rekK469oMKbtOKabkvTZrU6kV80jN
         Qc1dRi3jBKyHXSHqDky6hX+stLIv/htxCKvd2QErSoP/A0AL8xYwIFWcyK8vh+TaoeE8
         CsIfqYG3FBtPygDOiVXi35s0AM84eyz7i1TJnyA69p92wHtMUdWEcvy7PuS9PH1aPqwF
         wTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L0YCiMZXX3hDwJxJys4wtJCFdlMISLYQXJsVtLYZWHc=;
        b=DY3nnNBYk0CQxvClAvHy+y2Y5sUpQmqrx0i20YpZAqH39lhAZNzm3ukaE2fCsQX5fv
         i8B5voPF/X5FeSf6uaiO22GhKFbSr+tnabWPTdpJM8XNx91srEQ/505zCZCoD6ucrd4P
         VxAZCpqmV9URU17nb67DXhporOdiPYF4NfFuEJj223khAK/qp8NoF2X7NVbhr1JQTuqg
         mjhKNIWFkHIVYNiPzXCAByBh7Hg+gfoneHx5pfytWPo0SzWG7V0AadC6xR+f53nhlLZq
         Bmw28WPdCgodwT3gukN5mjoR9xgYNsmSjmARFrZw5f5DowX5YhTPem8/LUjvtXlcsVuv
         /jIw==
X-Gm-Message-State: AOAM532U7o5Ub6NLn6Pvk1Mo6deXxnrhE7HZihr8fB5YIgfI/L1s6KtK
        Vh/kkW/VUfzd6OcPyHo1lIs=
X-Google-Smtp-Source: ABdhPJyeMlExqhK7CCvCcbAIYowBDcClzAtNmvjQr0sTx2D1g+DO/ecm0kWjZgMa38Hi+wF7GY082g==
X-Received: by 2002:adf:f446:: with SMTP id f6mr3605381wrp.59.1591697891595;
        Tue, 09 Jun 2020 03:18:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id d9sm2832819wre.28.2020.06.09.03.18.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 03:18:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: core man page %e
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c72b844-c99f-ec66-02a9-a12d688ece13@gmail.com>
Date:   Tue, 9 Jun 2020 12:18:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <ae5293ba-17dd-fd6d-54b0-312a008e3167@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 5/30/20 12:39 PM, Jonny Grant wrote:
> Hello mtk
> 
> I've noticed "%e-%s.core" often gives something other than the
> filename and the name is truncated to 16 bytes:-
> 
> ThreadPoolServi-5.core
> Chrome_InProcUt-5.core
> 
> This was set:
> sysctl -w kernel.core_pattern="%e-%s.core"
> 
> 
> 
> In multithreaded applications it looks like %e is giving something
> other than the filename, perhaps a thread entry-point symbol name.> 
> https://www.man7.org/linux/man-pages/man5/core.5.html
> 
>             %e  executable filename (without path prefix)
> 
> Could this be updated to:
> 
>             %e  executable filename or thread name truncated to 16 bytes

I changed it to this:

           %e  The process or thread's comm value, which typically is the
               same  as the executable filename (without path prefix, and
               truncated to a maximum of 15  characters),  but  may  have
               been  modified  to be something different; see the discus‐
               sion of /proc/[pid]/comm  and  /proc/[pid]/task/[tid]/comm
               in proc(5).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
