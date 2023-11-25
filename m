Return-Path: <linux-man+bounces-162-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FD27F875E
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 01:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73552B21344
	for <lists+linux-man@lfdr.de>; Sat, 25 Nov 2023 00:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9137630;
	Sat, 25 Nov 2023 00:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jguk.org header.i=@jguk.org header.b="pzxwY5Q+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91B2019B0
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 16:47:54 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b3d4d6a64so6683795e9.2
        for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 16:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1700873273; x=1701478073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g7zu7+/LXra6K0KovHJBDnO3gcEXyL/+hD37+L6+lv4=;
        b=pzxwY5Q+d825uL/PSs0ZVp2skQ1I38asRX1lu7O9XRsm+yDc4hzLWiWof5JWLz7AEs
         OWsMAFxf8rvdP0tH1LYNRmbEACNn08znJ4wyBad3BjdF+LqCOiAy03qpFi5ggc2sSaq8
         SNuaG9Lw8Hj13qcJTCo1WHfI3SQujCP18xuiMRToLruVK0tx/UIrvBHJk+KWqYfpxnNb
         /LYMOMPBW3tyiQo3k8jMEpfYYkhPNGO8MZAdhCsKWLO3VwXJjWBSns0yTxKO+BLRo2X2
         i/Fpdj/Hh8zkFa639rD1cEEFwNRKUyFuTvyJzcmzq22uK8mIG6T0Rwq0eOlT0tHyMzjE
         KuHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700873273; x=1701478073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g7zu7+/LXra6K0KovHJBDnO3gcEXyL/+hD37+L6+lv4=;
        b=jU1qWz3RICUxQgPtGag009I27vmxz3LkNaKpwNa+Ws7a3KgQZs/ps9r5qpCdK0/X6+
         L7g/UGGGLBYbwv/fJRscgGrc01KC5iiCzqDMMdSkfwMRMQ/hx3kSU2XfEc1Ga6tqcSLD
         ZwTMNdxxYmDk9Gv0WU9IXe89TWne1SJpZmVE4bbdx0LZYKLwuB0j/AyxF2danaLyykrt
         cdiCNa6jfUwUK8zWV2qrRzCQPtWNYGDwx37U0jUbDGN6SIDyqWzeRuf76dfXs4TCahTu
         cjQQDMzjf7KAke/L1sIeo4mXHb4l4xiD3rFjT6tJT1zmQd6UPB4A9YFNLWPfQ9gW5Z99
         xMsw==
X-Gm-Message-State: AOJu0YxmZITRpZtJLlWplqSw6ZnfhZaNIMbxGj9qr83ifFCqPrjjWUnB
	Qy6aJkxYx6FMlOub83RZyNrwQgUmxtCcmB0ek2U=
X-Google-Smtp-Source: AGHT+IE6MTBt1omEb6/dKsYtdUwza6iVfbG736+nG0DtLK1C81MAIo7Pr/9A0eBst4PX9yIOUa7S5g==
X-Received: by 2002:adf:e946:0:b0:332:c3fc:47e5 with SMTP id m6-20020adfe946000000b00332c3fc47e5mr3612583wrn.14.1700873272751;
        Fri, 24 Nov 2023 16:47:52 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id s15-20020adf978f000000b00332d41f0798sm5502386wrb.29.2023.11.24.16.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Nov 2023 16:47:52 -0800 (PST)
Message-ID: <dc2fd7ae-d702-417a-a1b4-b81c63e53152@jguk.org>
Date: Sat, 25 Nov 2023 00:47:51 +0000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Online PDF of the Linux man-pages @ git HEAD
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Elliott Hughes <enh@google.com>, Deri James <deri@chuzzlewit.myzen.co.uk>
References: <ZWDZTY-jjJg9wkCw@debian>
Content-Language: en-GB
From: Jonny Grant <jg@jguk.org>
In-Reply-To: <ZWDZTY-jjJg9wkCw@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 24/11/2023 17:11, Alejandro Colomar wrote:
> Hi,
> 
> I've set up a githooks(5) to generate a PDF book, running the script
> contributed by gropdf(1)'s Deri James from within the hook, every time I
> `git push` the main branch to my server.
> 
> You can find the book here:
> 
> <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf>

That's great, will be very handy to have that to see the git version presented as a PDF.

Chrome said the connection is not secure, probably "Let's Encrypt" would give a free SSL certificate for your server.

With kind regards, Jonny

