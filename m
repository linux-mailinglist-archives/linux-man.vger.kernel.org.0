Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5C61361DA9
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 12:09:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240663AbhDPKCg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 06:02:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234291AbhDPKCg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Apr 2021 06:02:36 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14AAAC061574
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 03:02:10 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id m9so13354301wrx.3
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 03:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GKKdAl8sTCjyD3h49fD8H/B9Xtr5BUqLVnYWey2xHkk=;
        b=c81xgmPX84L1rkhHt6dCoaVYo1SVdRqvaQIBjVJIWcRSfFQ0DGa9VWBJ/DOR5j/gxg
         uWauO2fTa19WwMoHwJQSGHAJ3FAW3JhrmAdu7n4zwrJtZ4zN2NS8PtcPLgHF5kT6hyBg
         nLXv5HZqCFdWxHHJywJK+YXOAmk+Nh32ukBpCmqhpmXBd1xBJG09Ggw7METoqv4tPjyL
         Rmm0516gfp8gqhXwJJWogHPHCqDFLvv5YFoAV5UTlAmhZEpg/N5KAwnHkI1qHj505/b2
         7yYXdzhsPiXqkRrNBINX8wSAVFmbffwjGTdIaJxQvgwgOKOUPe3Mh2asErrcv3gk+/GP
         43xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GKKdAl8sTCjyD3h49fD8H/B9Xtr5BUqLVnYWey2xHkk=;
        b=QQfuIwBZDsNuFbc3qmKrCHHDqeXFiisbatCnvAwnt7OBsQDk15vmXFybUFwuOS+ONK
         J2Aq4FzOj1g+TWuDEwH2JQ3+qQ9lklZNFPcb+tbQgCbPpAN1UunTxjEA90MIzdRHmRWc
         A0mlIGEKTOaQ6GpgrcoJlAqA8VBgkXr92J8p67xYJkmuKWG4+Oaz4TA9dDUMno/w8JwH
         IJ1AanP2xa9fxbJ7yKbhpZfi+xUbeCD0WIdamLKMNVMaugJFSled07HYrq5poMK0ECKO
         27Q0PV36+RYpHibHlNDTPsuq+IOqEdPEpb4qgRkhHENqminuCBZit+xnyb8i0Zs2wt0f
         qw8A==
X-Gm-Message-State: AOAM532epmZm0xn6Yx6wjjAVFd37oI3pjgqCcGsbOLQXJfxiysWxB1Uq
        jysbaISQNtkw2KByPCXrJuiUQahddfU=
X-Google-Smtp-Source: ABdhPJxiFvBtWm2/ITce5aCbM6gITr1Uag6hw+XA/WlzlYsZHBmJtQdFUmszgmxgl3UrcbZ1JVg9bA==
X-Received: by 2002:adf:9042:: with SMTP id h60mr8099786wrh.362.1618567328865;
        Fri, 16 Apr 2021 03:02:08 -0700 (PDT)
Received: from [10.8.0.194] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l5sm9030224wro.4.2021.04.16.03.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 03:02:08 -0700 (PDT)
Subject: Re: [PATCH] setbuf.3: fix the error in section BUGS
To:     Zhiheng Li <phoenix_lzh@sina.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20210412074443.15363-1-phoenix_lzh@sina.com>
 <67c8cd43-4a0e-570a-4e4d-7539a3cd3ec8@gmail.com>
 <37c86142-a8a1-55ec-de3c-0fe48876860b@sina.com>
 <CACKs7VDhYRbGAvuvr3C_2nyBD1QR--9XCcjDzXucbv-=VYFgaQ@mail.gmail.com>
 <4fcc0db7-f9b9-a6ec-992b-84205e301618@sina.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ecd9f370-40d2-e2a0-400e-068a6029dcba@gmail.com>
Date:   Fri, 16 Apr 2021 12:02:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <4fcc0db7-f9b9-a6ec-992b-84205e301618@sina.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zhiheng,

On 4/16/21 11:28 AM, Zhiheng Li wrote:
> Hi Stefan
> 
> After doing some tests, I also found that the buffer was flushed out of 
> main. Thank you for telling me that.
> Even if the following program can print "Hello, world!"(Just replace 100 
> with BUFSIZ in your example), it is illegal. Because buf is used outside 
> the scope of buf when fulshing.
> #include <stdio.h>
> int main(void)
> {
>      char buf[BUFSIZ];
>      setbuf(stdout, buf);
>      printf("Hello, world!\n");
>      return 0;
> }
> So there is only a typo of 'stdout' in man pages. Could you fix it? Thanks.
> 

Sure!  Fixed.  Thanks for the report :)

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
