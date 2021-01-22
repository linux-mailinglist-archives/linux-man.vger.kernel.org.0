Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8A33003A8
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 14:03:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727499AbhAVNBk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 08:01:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727519AbhAVNBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 08:01:32 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32BA7C0613D6
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 05:00:36 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id v184so4275530wma.1
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 05:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=oxQzhSUJq0XD/SpD76ctiKnStHv64LNIJiAkJM0vlIw=;
        b=MtZvct5clp3B3KytmL9p2jCjZ8v7RcEYKX4YANsBkcswiEu8IhSXN45K8ur14x3Uck
         mxHcK5mBQKamlrsNhzvSGZr0Oz0SyO6afXLVCXSEHp8672sNnAyqwwWWW7T+MwIJmre8
         ChjZNhmSncHryX88aEr18CqAxnrJsmH7JEZwdUOwXGIRFtpvY63nBidZO8Ht5i/seqdQ
         KHhsjf2vaaO4sGRg3MqXE09jR5Tjksr+iUET+CW46blNmDVKkC7Zl4vYRPRvDoF/9ej7
         r99kCUed1UD5TM+IiQgo1cPZBy0qnFYT8B/DHQBOI66BQ64M1Uccz3Q1XWpZikVSbfDH
         0iLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=oxQzhSUJq0XD/SpD76ctiKnStHv64LNIJiAkJM0vlIw=;
        b=fo7FfgmMpQkNUTo3O7Tm/8Rei3kqKFmpn/C64D7K1vaLJFJAqBe+XrDK8lxD5Nm+BD
         S9exyNoMVzbQqa93CbNwQc9IneRcdoIUWjAwR7FJ3hGLJPmwh+HL6klT2oHcGxWCugg7
         o2CEt9IpJ8ZxssKT7U6NrMZgP73v0JGMXZ6NTI/9QxdRQPRbe4t+x8fnVnIdiJ8vXU0A
         A6ApQnsD2yVhYePQa35KrtnZwxgbMDJOA+5OkI3HSU8XTyBAqSTIW5WjADKSAne2aTLE
         VEE+B5UckI/uIoHX+Sg1pqicWJaDvL+zGThh2/gBa6jFUAGSRSYPTwqzVCvB3HmWJXEo
         6icA==
X-Gm-Message-State: AOAM532tmLtccfNJx1/LjdwY5z0MatMc0DA3Sc2dUvftPdPlyZOfJc0G
        LA5l2YXs0vP6G7/u5toAS4qYSJnHMUY=
X-Google-Smtp-Source: ABdhPJz9TinBvvS9iiXvVhYecf/MdjoEo2D0sUlTR6dDcx2671hUeGEESUe80K7XHZ0X6OWDJj5OKw==
X-Received: by 2002:a1c:e309:: with SMTP id a9mr3915182wmh.181.1611320434898;
        Fri, 22 Jan 2021 05:00:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id u14sm10848897wml.19.2021.01.22.05.00.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 05:00:34 -0800 (PST)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Correctly formatting URIs: slash
Message-ID: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
Date:   Fri, 22 Jan 2021 14:00:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

Why do some pages use \:/ for the slash in the path part of a URL, but
some others don't, and just use /?

Moreover, why do the former use \:/ only for the path, but not for the
protocol?

$ grep -n '^\.UR' man7/uri.7;
173:.UR http://www.w3.org\:/CGI
243:.UR http://www.ietf.org\:/rfc\:/rfc1036.txt
383:.UR http://www.ietf.org\:/rfc\:/rfc2255.txt
396:.UR http://www.ietf.org\:/rfc\:/rfc2253.txt
414:.UR http://www.ietf.org\:/rfc\:/rfc2254.txt
456:.UR http://www.ietf.org\:/rfc\:/rfc1625.txt
555:.UR
http://www.fwi.uva.nl\:/\(times\:/jargon\:/h\:/HackerWritingStyle.html
583:.UR http://www.ietf.org\:/rfc\:/rfc2396.txt
586:.UR http://www.w3.org\:/TR\:/REC\-html40
707:.UR http://www.ietf.org\:/rfc\:/rfc2255.txt
$

$ grep -Inr '^\.UR' man? \
  |grep -c '\\:/';
56
$

$ grep -Inr '^\.UR' man? \
  |grep -c -v '\\:/';
41
$

$ grep -Inr '^\.UR' man? \
  |grep '\\:/' \
  |head -n1;
man2/futex.2:1910:.UR
http://kernel.org\:/doc\:/ols\:/2002\:/ols2002\-pages\-479\-495.pdf
$

$ grep -Inr '^\.UR' man? \
  |grep -v '\\:/' \
  |head -n1;
man1/memusage.1:206:.UR http://www.gnu.org/software/libc/bugs.html
$

What is the correct form?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
