Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4185038E2C8
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 10:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232396AbhEXIzI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 04:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232362AbhEXIzG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 04:55:06 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DD10C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:53:38 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id x7so8064625wrt.12
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ATwT62oITIZ1W7GLk++xqfHtgefshb/u7VG8GZo/vbo=;
        b=koR8/h8/+9AN7B1V0Xmprt17wHrs/XYsH+TjdYUOi/mcNBKeagvFAE3mm8YGqzwP4y
         KQ1/m1I4JaqOv8/ynm46qpZK2wosX7KRoADmoWnWZ0gZxK69zdzZerfyu+ZbNi2ExEwW
         DMbIIskLfuF6gwPMqo/LNMWX7HVm41DRl9t9LBd2hHKd4R4HNkQa/r2WE/TXoV/A6x2I
         g0YstER93Gi/q2sDB6r1wMAZO+Mh4eI3bnE8OnC8qHdHA5J/yL9SaAOo40AIv1ZNnAxi
         3HPkBo/+H3JQ7GFu8buayb3NczQJdJCuKH8/XriqA9lQ47jKvdJvW1SIaS6+1zGqnksi
         K0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ATwT62oITIZ1W7GLk++xqfHtgefshb/u7VG8GZo/vbo=;
        b=pIiYeKyJqcWy975BI9Fep9Jirdg2VXy34cDel+pzh2nLHUax3LnSJAVdqFRxZfN0hv
         2hoYDSX7imaG3vdJ7vhskDgvbYYMHZ7z74Cin6IfQk3Rcwa00xhmHFeo+m6fgWBXw2bx
         A4Q9+Rk7qw/WQl1DdApchBWG7qFJzLsNAS5JhR5TNBw0pPrcVN2iYtDKYvR/AKwwpt0z
         m3mW42j1yVATTVJO1D+6ExZzv6ZLfTDMlWwL+Wi++NMFvKmMfHuYFNPcibqyFU0VAIbL
         Imzlj8G/NFvvv6/3rZJ4durZuJAdm5gURp4wGg6krfaGh0eV72PEU2GWSuB4UZjq8Ayf
         SyPA==
X-Gm-Message-State: AOAM531TLKr9vNStCRlzOiTwunTCD5DuP7SZTMPQCFHYb2T1k8ZOhaTq
        mjSrc7hdhJMpzO1y6N0RbntkF/eAE8Q=
X-Google-Smtp-Source: ABdhPJx1u2+yF99l569QWcDXSJ9p4PxORafXsKAEWph4Tuxn6QBFCLYX5dP9h8c5s0APD8vuXLxfnA==
X-Received: by 2002:a05:6000:108f:: with SMTP id y15mr21491087wrw.115.1621846416959;
        Mon, 24 May 2021 01:53:36 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f20sm8175900wmh.41.2021.05.24.01.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 01:53:36 -0700 (PDT)
Subject: Re: [PATCH 1/3] stat.2, system_data_types.7: Document 'struct stat'
 in system_data_types(7)
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
 <20210524082810.374535-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d854eabd-9b88-83a9-5ae4-025d55912158@gmail.com>
Date:   Mon, 24 May 2021 10:53:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210524082810.374535-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/24/21 10:28 AM, Alejandro Colomar wrote:
...
> +.IR "See also" :
> +.BR accept (2),
> +.BR getpeername (2),
> +.BR getsockname (2),
> +.BR socket (2)

Oops, let me fix this in a moment.

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
