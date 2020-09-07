Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27E1525F5DD
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:00:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727953AbgIGJAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728293AbgIGJAK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:00:10 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30EDFC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:00:08 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id c19so11866237wmd.1
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=APSmEyFFgiZ0NCZWDlk2trmGE2s5nFZuVVacVlrAkgk=;
        b=ZFfjDa5JHHE7MAbxP6oP74hvTdnZDo6OQJwlWp0Ipr0H8mYynmvO+xT4iQlEAwbytB
         mq8mixuh3Ciqb2nxMdzdf4RWxnTKpI9GVQIKQomIXZ19b6UR1e1vkA6+uE9w4dpLHxhO
         DU0muxIyA3Q+IHmwVgOGDO6WdKe2f0Tlxg5LAGsaqUtZqIe0L0IDtA3+ho7AQ89Hv0cJ
         tnJN+Ldai5e0B7ZW6s9QETuOtAZ/bY0pZRaGXwYOPBc7lyzHoRcnXsZLuhxB27Q+zed+
         5rIt9H05IpzTv5sNBO18zmmfto4//LOrQAXhhnoxqvFpVJhtCt0ub9t8ytPbYEUfvK2Y
         puWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=APSmEyFFgiZ0NCZWDlk2trmGE2s5nFZuVVacVlrAkgk=;
        b=Z+wOdhoW4KfZcBSIG+iss1CI5f/zEtPGeVeDTnKfxEjvgWsTS+fw2KKEbRYvxaNTYc
         S/d/JCjs91xQSqt52uQBCzQrcPatzVp5DRCp2gOuRXiqvpftASToUDCJTvWjf97AZRBH
         fXNzCbu22IYzRJS8BaIGO1Ol99vuvASPja4gGGL2KuYetyrO46h9m5B9FdVumDi+p2fN
         rvGzU6lFBak5tv+ma3FZ5hDeoLalvIWFTW+APHgK901DH0Z6m3Okz9ZTWbSqG64Uh8xT
         qLiT9LZyIgiipFwB0aFENjcqIzucM2/9ln1+sdc2deildLLtNxZaRAMxpwSUJ7jDW6AW
         AizQ==
X-Gm-Message-State: AOAM531sPko6++3kbma4USZU7S2uzYFDA1ZhaYqXCZ+WjJ6UMiEIqHIO
        ZVBwOKjuTUL7oKtAeVljrRQ=
X-Google-Smtp-Source: ABdhPJzm8Lgg6Pn1Xzl35/4fmR1vb8aLQn9VjyFyNS0hAPWLzOVSFCVOZo+H+QhBgimf1VkpDuIurQ==
X-Received: by 2002:a7b:c095:: with SMTP id r21mr20822879wmh.133.1599469206915;
        Mon, 07 Sep 2020 02:00:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id w7sm26999722wrm.92.2020.09.07.02.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 02:00:06 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: Bug or misdocumented feature in pthread_setaffinity_np.3
Message-ID: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com>
Date:   Mon, 7 Sep 2020 11:00:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

pthread_setaffinity_np() and pthread_getaffinity_np(), "on error, return 
a non-zero error number".  Usually that kind of library functions return 
-1, and I don't know if this case is different.  The RETURN VALUE 
section doesn't specify. Actually the words "error number" hint that it 
is an `errno` value, because it's the same words in errno.3, but it 
could be clearer, and maybe also point to errno(3) in that page.

In the EXAMPLES section, however, the return value is used as if it were 
an `errno` value, printing the corresponding string with perror().

Is that example printing random strings (a bug)?

Or is it that those functions return an error code that corresponds to a 
valid `errno` error number?  In that case it could be documented better 
IMHO.

If that is the case, do those functions set `errno` and also return that 
same `errno` value redundantly?


Thanks,

Alex.
