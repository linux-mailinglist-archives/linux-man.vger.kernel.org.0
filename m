Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4972D369061
	for <lists+linux-man@lfdr.de>; Fri, 23 Apr 2021 12:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbhDWKbu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Apr 2021 06:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbhDWKbu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Apr 2021 06:31:50 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C725C061574
        for <linux-man@vger.kernel.org>; Fri, 23 Apr 2021 03:31:14 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so924240wmq.4
        for <linux-man@vger.kernel.org>; Fri, 23 Apr 2021 03:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=FtP2ruFd4CTISQPkwAkos4uF//XzQVQD8RYM2+ky/dw=;
        b=pSV7ADK31epETFDVHJiGwgiPjjCjhgA3vc+3dH4loK5ckv2Gc9fzZenwDeHwS9KXHp
         7aLPAQTzD3D5vD3QOOlXhtDGE+KPrnMzpCxatvCCCN5mKRHzdA04yz7Tv+5ZFKcvrRrs
         iJyIySJUQKYq9JT9uzblnGN/XINd8Lh2c1kCkBmuee6Gpl2xi6zBuBhZhqNFhlyBzxLc
         Wyyp09qxO8XPosFISb46X+oYZ3SBntaTArf2nB3m20aTs+BtyHh+do2mFf+MjbwofqMX
         oSHaTRko43dOkkWyXzgfefdNu+II4BnNbxquGHsQqwXBFG9ntREVq+XAAeVyoobTkMDQ
         XNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=FtP2ruFd4CTISQPkwAkos4uF//XzQVQD8RYM2+ky/dw=;
        b=qw9MwcDSI9qhERQ+6jvPoESHSnqpgIdzNzG5hW08vpUQFNjz6hb0av0CDK4OrZxB5V
         agBPolhnnL9CLSUlCn1UKgbhGRlUKA3pqHg/jVN991nGfPPCfSbmIHu1nMA131/ixgKA
         F1rDre25NlWDgU5mM67PYVsZ2qD1opdvzqNWeLW8L2KZ+vHkH+6+jmHGpLd/uR0evp3Z
         JwsrB9Swxkl5TYeYe/2xhD4x97VXqvM4hyBB3CEWIKkSxlaKNgYiYSh15L42439wFRo9
         j6fHpFKMB/OT5S7s8hNtAU7zdSwPM/olIE0C0tx7HXiriSmw/5m4fcfJj9o13pM97R6U
         ccyA==
X-Gm-Message-State: AOAM531lxbkji9PweasEsnLP+BaRT3ItyZO+arxzre7YOKKlZSWkan5u
        ADZKHbIFamVbOpsS8QSLVn0HScvX4WM=
X-Google-Smtp-Source: ABdhPJzliTQW1VAPUFqKNJapKUQ3lJZDM0xVmciUx8OEoqmd+NPAvLoKp1CDZBj3UEHdnb5mFfASTA==
X-Received: by 2002:a1c:b48b:: with SMTP id d133mr3369710wmf.182.1619173873025;
        Fri, 23 Apr 2021 03:31:13 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t206sm7249289wmb.11.2021.04.23.03.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 03:31:12 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: perfmonctl.2: Is it up to date?
Message-ID: <fdec43d3-bb0e-cbcc-8d65-db26222f6a0a@gmail.com>
Date:   Fri, 23 Apr 2021 12:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I haven't found any of the constants (PFM_*) used by this function in 
glibc.  Also not in the kernel, although in the kernel I found other 
PFM_* constants different from the ones in the manual page.

I checked that this page hasn't received any patches in a very long time 
(except for "Various pages" patches), so I suspect it may be out of date.

Also, does <perfmon.h> really exist?  I couldn't find it either.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
